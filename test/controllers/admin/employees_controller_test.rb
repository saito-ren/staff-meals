# frozen_string_literal: true

require 'test_helper'

class Admin::EmployeesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get admin_employees_index_url
    assert_response :success
  end

  test 'should get show' do
    get admin_employees_show_url
    assert_response :success
  end
end
