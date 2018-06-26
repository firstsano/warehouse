def create_unless_exists(active_record, attributes)
  record_exists = active_record.where(attributes).any?
  active_record.create! attributes unless record_exists
end

create_unless_exists Storage, name: Setting.default_storage_name
