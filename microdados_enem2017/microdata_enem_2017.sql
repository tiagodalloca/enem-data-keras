 CREATE TABLE public.microdata_enem_2017 (                +
     nu_inscricao character varying(12)  NOT NULL,        +
     nu_ano integer  NULL,                                +
     co_municipio_residencia integer  NULL,               +
     no_municipio_residencia character varying(150)  NULL,+
     co_uf_residencia integer  NULL,                      +
     sg_uf_residencia character varying(2)  NULL,         +
     nu_idade integer  NULL,                              +
     tp_sexo character varying(2)  NULL,                  +
     tp_estado_civil integer  NULL,                       +
     tp_cor_raca integer  NULL,                           +
     tp_nacionalidade integer  NULL,                      +
     co_municipio_nascimento integer  NULL,               +
     no_municipio_nascimento character varying(150)  NULL,+
     co_uf_nascimento integer  NULL,                      +
     sg_uf_nascimento character varying(7)  NULL,         +
     tp_st_conclusao integer  NULL,                       +
     tp_ano_concluiu integer  NULL,                       +
     tp_escola integer  NULL,                             +
     tp_ensino integer  NULL,                             +
     in_treineiro integer  NULL,                          +
     co_escola integer  NULL,                             +
     co_municipio_esc integer  NULL,                      +
     no_municipio_esc character varying(150)  NULL,       +
     co_uf_esc integer  NULL,                             +
     sg_uf_esc character varying(2)  NULL,                +
     tp_dependencia_adm_esc integer  NULL,                +
     tp_localizacao_esc integer  NULL,                    +
     tp_sit_func_esc integer  NULL,                       +
     in_baixa_visao integer  NULL,                        +
     in_cegueira integer  NULL,                           +
     in_surdez integer  NULL,                             +
     in_deficiencia_auditiva integer  NULL,               +
     in_surdo_cegueira integer  NULL,                     +
     in_deficiencia_fisica integer  NULL,                 +
     in_deficiencia_mental integer  NULL,                 +
     in_deficit_atencao integer  NULL,                    +
     in_dislexia integer  NULL,                           +
     in_discalculia integer  NULL,                        +
     in_autismo integer  NULL,                            +
     in_visao_monocular integer  NULL,                    +
     in_outra_def integer  NULL,                          +
     in_gestante integer  NULL,                           +
     in_lactante integer  NULL,                           +
     in_idoso integer  NULL,                              +
     in_estuda_classe_hospitalar integer  NULL,           +
     in_sem_recurso integer  NULL,                        +
     in_braille integer  NULL,                            +
     in_ampliada_24 integer  NULL,                        +
     in_ampliada_18 integer  NULL,                        +
     in_ledor integer  NULL,                              +
     in_acesso integer  NULL,                             +
     in_transcricao integer  NULL,                        +
     in_libras integer  NULL,                             +
     in_leitura_labial integer  NULL,                     +
     in_mesa_cadeira_rodas integer  NULL,                 +
     in_mesa_cadeira_separada integer  NULL,              +
     in_apoio_perna integer  NULL,                        +
     in_guia_interprete integer  NULL,                    +
     in_computador integer  NULL,                         +
     in_cadeira_especial integer  NULL,                   +
     in_cadeira_canhoto integer  NULL,                    +
     in_cadeira_acolchoada integer  NULL,                 +
     in_prova_deitado integer  NULL,                      +
     in_mobiliario_obeso integer  NULL,                   +
     in_lamina_overlay integer  NULL,                     +
     in_protetor_auricular integer  NULL,                 +
     in_medidor_glicose integer  NULL,                    +
     in_maquina_braile integer  NULL,                     +
     in_soroban integer  NULL,                            +
     in_marca_passo integer  NULL,                        +
     in_sonda integer  NULL,                              +
     in_medicamentos integer  NULL,                       +
     in_sala_individual integer  NULL,                    +
     in_sala_especial integer  NULL,                      +
     in_sala_acompanhante integer  NULL,                  +
     in_mobiliario_especifico integer  NULL,              +
     in_material_especifico integer  NULL,                +
     in_nome_social integer  NULL,                        +
     co_municipio_prova integer  NULL,                    +
     no_municipio_prova character varying(150)  NULL,     +
     co_uf_prova character varying(2)  NULL,              +
     sg_uf_prova character varying(2)  NULL,              +
     tp_presenca_cn integer  NULL,                        +
     tp_presenca_ch integer  NULL,                        +
     tp_presenca_lc integer  NULL,                        +
     tp_presenca_mt integer  NULL,                        +
     co_prova_cn integer  NULL,                           +
     co_prova_ch integer  NULL,                           +
     co_prova_lc integer  NULL,                           +
     co_prova_mt integer  NULL,                           +
     nu_nota_cn numeric  NULL,                            +
     nu_nota_ch numeric  NULL,                            +
     nu_nota_lc numeric  NULL,                            +
     nu_nota_mt numeric  NULL,                            +
     tx_respostas_cn character varying(50)  NULL,         +
     tx_respostas_ch character varying(50)  NULL,         +
     tx_respostas_lc character varying(50)  NULL,         +
     tx_respostas_mt character varying(50)  NULL,         +
     tp_lingua integer  NULL,                             +
     tx_gabarito_cn character varying(50)  NULL,          +
     tx_gabarito_ch character varying(50)  NULL,          +
     tx_gabarito_lc character varying(50)  NULL,          +
     tx_gabarito_mt character varying(50)  NULL,          +
     tp_status_redacao integer  NULL,                     +
     nu_nota_comp1 numeric  NULL,                         +
     nu_nota_comp2 numeric  NULL,                         +
     nu_nota_comp3 numeric  NULL,                         +
     nu_nota_comp4 numeric  NULL,                         +
     nu_nota_comp5 numeric  NULL,                         +
     nu_nota_redacao numeric  NULL,                       +
     q001 character varying(1)  NULL,                     +
     q002 character varying(1)  NULL,                     +
     q003 character varying(1)  NULL,                     +
     q004 character varying(2)  NULL,                     +
     q005 character varying(2)  NULL,                     +
     q006 character varying(1)  NULL,                     +
     q007 character varying(1)  NULL,                     +
     q008 character varying(1)  NULL,                     +
     q009 character varying(1)  NULL,                     +
     q010 character varying(1)  NULL,                     +
     q011 character varying(1)  NULL,                     +
     q012 character varying(1)  NULL,                     +
     q013 character varying(1)  NULL,                     +
     q014 character varying(1)  NULL,                     +
     q015 character varying(1)  NULL,                     +
     q016 character varying(1)  NULL,                     +
     q017 character varying(1)  NULL,                     +
     q018 character varying(1)  NULL,                     +
     q019 character varying(1)  NULL,                     +
     q020 character varying(1)  NULL,                     +
     q021 character varying(1)  NULL,                     +
     q022 character varying(1)  NULL,                     +
     q023 character varying(1)  NULL,                     +
     q024 character varying(1)  NULL,                     +
     q025 character varying(1)  NULL,                     +
     q026 character varying(1)  NULL,                     +
     q027 character varying(1)  NULL);
