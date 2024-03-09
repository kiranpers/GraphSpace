-- Enable pg_trgm extension
CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE INDEX edge_idx_head_label_tail_label ON edge USING gin (head_node_label gin_trgm_ops, tail_node_label gin_trgm_ops);
