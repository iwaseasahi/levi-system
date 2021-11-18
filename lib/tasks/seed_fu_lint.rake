namespace :seed_fu do
  desc 'Verify that all fixtures are valid'
  task lint: :environment do
    if Rails.env.test?
      conn = ActiveRecord::Base.connection
      conn.transaction do
        SeedFu.seed
        raise ActiveRecord::Rollback
      end
    else
      fail
    end
  end
end
