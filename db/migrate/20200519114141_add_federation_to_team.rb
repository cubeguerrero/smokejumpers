class AddFederationToTeam < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :federation, null: false, foreign_key: true
  end
end
