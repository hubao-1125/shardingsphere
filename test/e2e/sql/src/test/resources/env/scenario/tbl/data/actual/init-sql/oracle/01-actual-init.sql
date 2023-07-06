--
-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

DROP SCHEMA tbl;

CREATE SCHEMA tbl;

CREATE TABLE tbl.t_order_0(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_0(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_federate_sharding_0 (order_id_sharding INT NOT NULL, user_id INT NOT NULL, status VARCHAR(45) NULL, PRIMARY KEY (order_id_sharding));
CREATE TABLE tbl.t_order_item_federate_sharding_0 (item_id BIGINT NOT NULL, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(45) NULL, remarks VARCHAR(45) NULL, PRIMARY KEY (item_id));
CREATE INDEX order_index_t_order_0 ON tbl.t_order_0 (order_id);

CREATE TABLE tbl.t_order_1(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_1(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_federate_sharding_1 (order_id_sharding INT NOT NULL, user_id INT NOT NULL, status VARCHAR(45) NULL, PRIMARY KEY (order_id_sharding));
CREATE TABLE tbl.t_order_item_federate_sharding_1 (item_id BIGINT NOT NULL, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(45) NULL, remarks VARCHAR(45) NULL, PRIMARY KEY (item_id));
CREATE INDEX order_index_t_order_1 ON tbl.t_order_1 (order_id);

CREATE TABLE tbl.t_order_2(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_2(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE INDEX order_index_t_order_2 ON tbl.t_order_2 (order_id);

CREATE TABLE tbl.t_order_3(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_3(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE INDEX order_index_t_order_3 ON tbl.t_order_3 (order_id);

CREATE TABLE tbl.t_order_4(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_4(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE INDEX order_index_t_order_4 ON tbl.t_order_4 (order_id);

CREATE TABLE tbl.t_order_5(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_5(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE INDEX order_index_t_order_5 ON tbl.t_order_5 (order_id);

CREATE TABLE tbl.t_order_6(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_6(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE INDEX order_index_t_order_6 ON tbl.t_order_6 (order_id);

CREATE TABLE tbl.t_order_7(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_7(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE INDEX order_index_t_order_7 ON tbl.t_order_7 (order_id);

CREATE TABLE tbl.t_order_8(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_8(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE INDEX order_index_t_order_8 ON tbl.t_order_8 (order_id);

CREATE TABLE tbl.t_order_9(order_id BIGINT PRIMARY KEY, user_id INT NOT NULL, status VARCHAR(50) NOT NULL, merchant_id INT NOT NULL, remark VARCHAR(50) NOT NULL, creation_date DATE NOT NULL);
CREATE TABLE tbl.t_order_item_9(item_id BIGINT PRIMARY KEY, order_id BIGINT NOT NULL, user_id INT NOT NULL, product_id INT NOT NULL, quantity INT NOT NULL, creation_date DATE NOT NULL);
CREATE INDEX order_index_t_order_9 ON tbl.t_order_9 (order_id);

CREATE TABLE tbl.t_broadcast_table (id INT NOT NULL, status VARCHAR(45) NULL, PRIMARY KEY (id));

CREATE TABLE tbl.t_single_table (single_id INT NOT NULL, id INT NOT NULL, status VARCHAR(45) NULL, PRIMARY KEY (single_id));
