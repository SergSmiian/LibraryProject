package com.repository;

import org.hibernate.type.AbstractSingleColumnStandardBasicType;
import org.hibernate.type.PostgresUUIDType;

public class StringToUUIDType extends AbstractSingleColumnStandardBasicType<String> {

    public static final StringToUUIDType INSTANCE = new StringToUUIDType();

    public StringToUUIDType() {
        super(PostgresUUIDType.PostgresUUIDSqlTypeDescriptor.INSTANCE, StringUUIDJavaDescriptor.INSTANCE);
    }

    @Override
    public String getName() {
        return "StringToUUID";
    }
}