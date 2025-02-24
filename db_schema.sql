DROP TABLE IF EXISTS WeaveVMArchiverPhala;
DROP TABLE IF EXISTS WeaveVMArchiverPhalaBackfill;

CREATE TABLE IF NOT EXISTS WeaveVMArchiverPhala (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE TABLE IF NOT EXISTS WeaveVMArchiverPhalaBackfill (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NetworkBlockId INT UNIQUE,
    WeaveVMArchiveTxid VARCHAR(66) UNIQUE
);

CREATE INDEX idx_archiver_txid ON WeaveVMArchiverPhala (WeaveVMArchiveTxid);
CREATE INDEX idx_backfill_txid ON WeaveVMArchiverPhalaBackfill (WeaveVMArchiveTxid);
CREATE INDEX idx_archiver_block_id ON WeaveVMArchiverPhala (NetworkBlockId);
CREATE INDEX idx_backfill_block_id ON WeaveVMArchiverPhalaBackfill (NetworkBlockId);
