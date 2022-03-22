library(glue)
machines =  c('combine_harvester','diesel_minitiller','diesel_pump', 'disc_harrow',
          'paddy_thresher','petrol_minitiller','power_tiller','pump_set','reaper','rice_mill',
          'rotavator', 'thresher_rice',
             'thresher_wheat','tractor', 'wate_pump', 'thresher')

#create data frame with 0 rows and 3 columns
df <- data.frame(matrix(ncol = 4, nrow = 0))

#provide column names
colnames(df) <- c('type', 'name', 'label','appereance')

for (machine in machines) {
  df[nrow(df) + 1,] = c('begin group', glue('{machine}_group'),glue('{machine} Group'),'field_list')
  df[nrow(df) + 1,] = c(glue('select_multiple spare_parts_{machine}'), glue('spare_parts_{machine}'),glue('Please select a possible spare parts for {machine }that can be manufactured in Nepal'),'compact')
  df[nrow(df) + 1,] = c('decimal', glue('total_machines {machine}'),glue('total_machines {machine }'),'')
  df[nrow(df) + 1,] = c(glue('select_one {machine}'), glue('{machine}_working'),glue('Are are the {machine } in working condition?'),'')
  df[nrow(df) + 1,] = c('end group', glue('{machine}_end_group'),glue('{machine} End Group'),'')
}
