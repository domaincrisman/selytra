ActiveAdmin.register Employee do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
  selectable_column
  column :codoper
  column :nombre
  column :apellido1
  column :apellido2
  actions
end

form do |f|
    f.inputs do
      f.input :codoper
      f.input :nombre
      f.input :apellido1
      f.input :apellido2
      f.input :fecmod, as: :datepicker
      f.input :fecnacimiento, as: :date_picker
    end
    f.actions
  end

end
