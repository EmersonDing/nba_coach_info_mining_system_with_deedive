# on eduroam-169-233-210-202.ucsc.edu: deepdive do spouse_feature
# run/20160522/121612.597468000/plan.sh
# execution plan for data/spouse_feature

: ## process/init/app ##########################################################
: # Done: 2016-05-22T11:25:05-0700 (51m 7s ago)
: process/init/app/run.sh
: mark_done process/init/app
: ##############################################################################

: ## process/init/relation/articles ############################################
: # Done: 2016-05-22T11:55:52-0700 (20m 20s ago)
: process/init/relation/articles/run.sh
: mark_done process/init/relation/articles
: ##############################################################################

: ## data/articles #############################################################
: # Done: 2016-05-22T11:55:52-0700 (20m 20s ago)
: # no-op
: mark_done data/articles
: ##############################################################################

: ## process/ext_sentences_by_nlp_markup #######################################
: # Done: 2016-05-22T11:57:59-0700 (18m 13s ago)
: process/ext_sentences_by_nlp_markup/run.sh
: mark_done process/ext_sentences_by_nlp_markup
: ##############################################################################

: ## data/sentences ############################################################
: # Done: 2016-05-22T11:57:59-0700 (18m 13s ago)
: # no-op
: mark_done data/sentences
: ##############################################################################

: ## process/ext_person_mention_by_map_person_mention ##########################
: # Done: 2016-05-22T12:13:47-0700 (2m 25s ago)
: process/ext_person_mention_by_map_person_mention/run.sh
: mark_done process/ext_person_mention_by_map_person_mention
: ##############################################################################

: ## data/person_mention #######################################################
: # Done: 2016-05-22T12:13:47-0700 (2m 25s ago)
: # no-op
: mark_done data/person_mention
: ##############################################################################

: ## process/ext_team_mention_by_map_team_mention ##############################
: # Done: 2016-05-22T12:14:14-0700 (1m 58s ago)
: process/ext_team_mention_by_map_team_mention/run.sh
: mark_done process/ext_team_mention_by_map_team_mention
: ##############################################################################

: ## data/team_mention #########################################################
: # Done: 2016-05-22T12:14:14-0700 (1m 58s ago)
: # no-op
: mark_done data/team_mention
: ##############################################################################

## process/ext_spouse_feature_by_extract_spouse_features #####################
# Done: 2016-05-20T22:09:52-0700 (1d 14h 6m 20s ago)
process/ext_spouse_feature_by_extract_spouse_features/run.sh
mark_done process/ext_spouse_feature_by_extract_spouse_features
##############################################################################

## data/spouse_feature #######################################################
# Done: 2016-05-20T22:09:52-0700 (1d 14h 6m 20s ago)
# no-op
mark_done data/spouse_feature
##############################################################################
