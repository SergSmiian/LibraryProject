package com.repository;

import org.hibernate.type.descriptor.WrapperOptions;
import org.hibernate.type.descriptor.java.AbstractTypeDescriptor;
import org.hibernate.type.descriptor.java.ImmutableMutabilityPlan;
import java.text.MessageFormat;
import java.util.UUID;

public class StringUUIDJavaDescriptor extends AbstractTypeDescriptor<String> {

    public static final StringUUIDJavaDescriptor INSTANCE = new StringUUIDJavaDescriptor();

    public StringUUIDJavaDescriptor() {
        super(String.class, ImmutableMutabilityPlan.INSTANCE);
    }

    @Override
    public String fromString(String s) {
        return null;
    }

    @Override
    public <X> X unwrap(String value, Class<X> type, WrapperOptions wrapperOptions) {
        if (value == null) {
            return null;
        }

        if (UUID.class.isAssignableFrom(type)) {
            return (X) UUID.fromString(value);
        }
        throw new ConversionException("Incompatible types");
    }

    @Override
    public <X> String wrap(X value, WrapperOptions wrapperOptions) {
        if (value == null) {
            return null;
        }
        if (value instanceof UUID) {
            return value.toString();
        }
        throw new ConversionException(MessageFormat.format("Incompatible types, expected UUID but was {0}",
                value.getClass()));
    }
}