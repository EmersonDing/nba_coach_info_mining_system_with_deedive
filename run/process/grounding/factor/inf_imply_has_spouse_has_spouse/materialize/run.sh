#!/usr/bin/env bash
# cmd_extractor  process/grounding/factor/inf_imply_has_spouse_has_spouse/materialize
# {"dependencies_":["process/grounding/variable/has_spouse/assign_id"],"input_":["data/spouse_candidate"],"style":"cmd_extractor","cmd":"\n            : ${DEEPDIVE_GROUNDING_DIR:=\"$DEEPDIVE_APP\"/run/model/grounding}\n\n            # materialize factors using user input_query that pulls in assigned ids to involved variables\n            deepdive create table 'dd_factors_inf_imply_has_spouse_has_spouse' as '\n          SELECT R0.id AS \"has_spouse.R0.id\" , R0.id AS \"has_spouse.R0.id\" \n          FROM has_spouse R0, has_spouse R1, spouse_candidate R2, spouse_candidate R3, spouse_candidate R4\n        WHERE R1.p_id = R0.p_id  AND R1.t_id = R0.t_id  AND R2.p_id = R0.p_id  AND R2.t_id = R0.t_id  AND R3.t_id = R0.t_id  AND R4.p_id = R0.p_id '\n\n            # find distinct weights for the factors into a separate table\n            deepdive create table 'dd_weights_inf_imply_has_spouse_has_spouse' as 'SELECT true AS \"isfixed\"\n     , -1 AS \"initvalue\"\n     , -1 AS \"id\"'\n        ","name":"process/grounding/factor/inf_imply_has_spouse_has_spouse/materialize"}
set -xeuo pipefail
cd "$(dirname "$0")"



export DEEPDIVE_CURRENT_PROCESS_NAME='process/grounding/factor/inf_imply_has_spouse_has_spouse/materialize'

            : ${DEEPDIVE_GROUNDING_DIR:="$DEEPDIVE_APP"/run/model/grounding}

            # materialize factors using user input_query that pulls in assigned ids to involved variables
            deepdive create table 'dd_factors_inf_imply_has_spouse_has_spouse' as '
          SELECT R0.id AS "has_spouse.R0.id" , R0.id AS "has_spouse.R0.id" 
          FROM has_spouse R0, has_spouse R1, spouse_candidate R2, spouse_candidate R3, spouse_candidate R4
        WHERE R1.p_id = R0.p_id  AND R1.t_id = R0.t_id  AND R2.p_id = R0.p_id  AND R2.t_id = R0.t_id  AND R3.t_id = R0.t_id  AND R4.p_id = R0.p_id '

            # find distinct weights for the factors into a separate table
            deepdive create table 'dd_weights_inf_imply_has_spouse_has_spouse' as 'SELECT true AS "isfixed"
     , -1 AS "initvalue"
     , -1 AS "id"'
        


