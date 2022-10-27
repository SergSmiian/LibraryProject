DELETE FROM public.writing_to_book WHERE writing_id IN
('ad1fed84-613b-4568-9b20-056cae4d82a4',
'4f084346-2602-4af6-b9bc-63f634ce15d9');

DELETE FROM public.author_to_writing WHERE author_id IN
('828cb4a3-5e9a-46ab-a54f-517f47ebfa09',
'a5310a3e-d98a-4ea1-a5e5-b5df0755b868',
'e8f1c243-337d-46e2-b6a5-ea2c18b4b33d','f6ada4b4-619b-4b34-aac6-11d72ab27a4c');
DELETE FROM public.authors WHERE id IN
('828cb4a3-5e9a-46ab-a54f-517f47ebfa09',
'a5310a3e-d98a-4ea1-a5e5-b5df0755b868',
'e8f1c243-337d-46e2-b6a5-ea2c18b4b33d','f6ada4b4-619b-4b34-aac6-11d72ab27a4c');

DELETE FROM public.writings WHERE id IN
('ad1fed84-613b-4568-9b20-056cae4d82a4',
'4f084346-2602-4af6-b9bc-63f634ce15d9');

DELETE FROM public.books WHERE id IN ('3d278fdd-be22-4206-9e43-c43482516a5b',
'c7e4da37-b8de-4eab-be69-bb11f2255031','b6ca07fc-f26c-48a4-a696-64d9e7f79f97');
