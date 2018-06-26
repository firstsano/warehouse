def create_unless_exists(active_record, attributes)
  record = active_record.where(attributes).first
  record ||= active_record.create! attributes
end

default_storage = create_unless_exists Storage, name: Setting.default_storage_name
Setting.default_storage_id ||= default_storage.id
