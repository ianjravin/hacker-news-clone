require 'spec_helper'

describe Post do
  it { should belong_to :user }
  it { should validate_presence_of :link}
  it { should validate_presence_of :title}
  it { should validate_presence_of :votes}
  it { should validate_presence_of :user_id}
end
