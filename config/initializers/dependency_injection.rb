ApplicationContainer.configure do |container|
  container.register('agents') do
    Agent
  end

  container.register('settings') do
    Setting
  end

  container.namespace('agent_interface') do
    register('common_attributes') { Agent::ATTRIBUTES }
  end
end

Import = Dry::AutoInject(ApplicationContainer.instance)
