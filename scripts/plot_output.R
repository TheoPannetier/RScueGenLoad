
tbl <- readr::read_tsv(
  file = "../github/rs_tutorials/exercise_03/Outputs/Batch1_Sim1_Land1_TraitsXrow.txt",
  )

tbl %>% 
  ggplot(aes(x = 1, y = y, colour = meanEP)) +
  geom_jitter() +
  scale_colour_viridis_b() +
  facet_grid(cols = vars(Year)) +
  theme_bw() +
  theme(
    axis.title.x = element_blank(),
    axis.line.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank()
    )
  