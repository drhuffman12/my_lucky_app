class CreateFortunes::V20220222021522 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Fortune) do
      primary_key id : Int64
      add_timestamps
      add text : String
    end
  end

  def rollback
    drop table_for(Fortune)
  end
end
