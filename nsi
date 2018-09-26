describe wmi({
  class: 'win32_service',
  filter: "name like '%nsi%'"
}) do
  its('Status') { should cmp 'ok' }
  its('State') { should cmp 'Running' }
  its('ExitCode') { should cmp 0 }
  its('DisplayName') { should eq 'Network Store Interface Service'}
end
