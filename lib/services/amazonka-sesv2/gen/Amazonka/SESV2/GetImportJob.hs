{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SESV2.GetImportJob
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about an import job.
module Amazonka.SESV2.GetImportJob
  ( -- * Creating a Request
    GetImportJob (..),
    newGetImportJob,

    -- * Request Lenses
    getImportJob_jobId,

    -- * Destructuring the Response
    GetImportJobResponse (..),
    newGetImportJobResponse,

    -- * Response Lenses
    getImportJobResponse_jobStatus,
    getImportJobResponse_createdTimestamp,
    getImportJobResponse_jobId,
    getImportJobResponse_importDestination,
    getImportJobResponse_failureInfo,
    getImportJobResponse_failedRecordsCount,
    getImportJobResponse_processedRecordsCount,
    getImportJobResponse_completedTimestamp,
    getImportJobResponse_importDataSource,
    getImportJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SESV2.Types

-- | Represents a request for information about an import job using the
-- import job ID.
--
-- /See:/ 'newGetImportJob' smart constructor.
data GetImportJob = GetImportJob'
  { -- | The ID of the import job.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImportJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'getImportJob_jobId' - The ID of the import job.
newGetImportJob ::
  -- | 'jobId'
  Prelude.Text ->
  GetImportJob
newGetImportJob pJobId_ =
  GetImportJob' {jobId = pJobId_}

-- | The ID of the import job.
getImportJob_jobId :: Lens.Lens' GetImportJob Prelude.Text
getImportJob_jobId = Lens.lens (\GetImportJob' {jobId} -> jobId) (\s@GetImportJob' {} a -> s {jobId = a} :: GetImportJob)

instance Core.AWSRequest GetImportJob where
  type AWSResponse GetImportJob = GetImportJobResponse
  service _ = defaultService
  request srv = Request.get srv
  response =
    Response.receiveJSON
      ( \s h x ->
          GetImportJobResponse'
            Prelude.<$> (x Core..?> "JobStatus")
            Prelude.<*> (x Core..?> "CreatedTimestamp")
            Prelude.<*> (x Core..?> "JobId")
            Prelude.<*> (x Core..?> "ImportDestination")
            Prelude.<*> (x Core..?> "FailureInfo")
            Prelude.<*> (x Core..?> "FailedRecordsCount")
            Prelude.<*> (x Core..?> "ProcessedRecordsCount")
            Prelude.<*> (x Core..?> "CompletedTimestamp")
            Prelude.<*> (x Core..?> "ImportDataSource")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetImportJob where
  hashWithSalt _salt GetImportJob' {..} =
    _salt `Prelude.hashWithSalt` jobId

instance Prelude.NFData GetImportJob where
  rnf GetImportJob' {..} = Prelude.rnf jobId

instance Core.ToHeaders GetImportJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetImportJob where
  toPath GetImportJob' {..} =
    Prelude.mconcat
      ["/v2/email/import-jobs/", Core.toBS jobId]

instance Core.ToQuery GetImportJob where
  toQuery = Prelude.const Prelude.mempty

-- | An HTTP 200 response if the request succeeds, or an error message if the
-- request fails.
--
-- /See:/ 'newGetImportJobResponse' smart constructor.
data GetImportJobResponse = GetImportJobResponse'
  { -- | The status of the import job.
    jobStatus :: Prelude.Maybe JobStatus,
    -- | The time stamp of when the import job was created.
    createdTimestamp :: Prelude.Maybe Core.POSIX,
    -- | A string that represents the import job ID.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The destination of the import job.
    importDestination :: Prelude.Maybe ImportDestination,
    -- | The failure details about an import job.
    failureInfo :: Prelude.Maybe FailureInfo,
    -- | The number of records that failed processing because of invalid input or
    -- other reasons.
    failedRecordsCount :: Prelude.Maybe Prelude.Int,
    -- | The current number of records processed.
    processedRecordsCount :: Prelude.Maybe Prelude.Int,
    -- | The time stamp of when the import job was completed.
    completedTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The data source of the import job.
    importDataSource :: Prelude.Maybe ImportDataSource,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetImportJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobStatus', 'getImportJobResponse_jobStatus' - The status of the import job.
--
-- 'createdTimestamp', 'getImportJobResponse_createdTimestamp' - The time stamp of when the import job was created.
--
-- 'jobId', 'getImportJobResponse_jobId' - A string that represents the import job ID.
--
-- 'importDestination', 'getImportJobResponse_importDestination' - The destination of the import job.
--
-- 'failureInfo', 'getImportJobResponse_failureInfo' - The failure details about an import job.
--
-- 'failedRecordsCount', 'getImportJobResponse_failedRecordsCount' - The number of records that failed processing because of invalid input or
-- other reasons.
--
-- 'processedRecordsCount', 'getImportJobResponse_processedRecordsCount' - The current number of records processed.
--
-- 'completedTimestamp', 'getImportJobResponse_completedTimestamp' - The time stamp of when the import job was completed.
--
-- 'importDataSource', 'getImportJobResponse_importDataSource' - The data source of the import job.
--
-- 'httpStatus', 'getImportJobResponse_httpStatus' - The response's http status code.
newGetImportJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetImportJobResponse
newGetImportJobResponse pHttpStatus_ =
  GetImportJobResponse'
    { jobStatus = Prelude.Nothing,
      createdTimestamp = Prelude.Nothing,
      jobId = Prelude.Nothing,
      importDestination = Prelude.Nothing,
      failureInfo = Prelude.Nothing,
      failedRecordsCount = Prelude.Nothing,
      processedRecordsCount = Prelude.Nothing,
      completedTimestamp = Prelude.Nothing,
      importDataSource = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the import job.
getImportJobResponse_jobStatus :: Lens.Lens' GetImportJobResponse (Prelude.Maybe JobStatus)
getImportJobResponse_jobStatus = Lens.lens (\GetImportJobResponse' {jobStatus} -> jobStatus) (\s@GetImportJobResponse' {} a -> s {jobStatus = a} :: GetImportJobResponse)

-- | The time stamp of when the import job was created.
getImportJobResponse_createdTimestamp :: Lens.Lens' GetImportJobResponse (Prelude.Maybe Prelude.UTCTime)
getImportJobResponse_createdTimestamp = Lens.lens (\GetImportJobResponse' {createdTimestamp} -> createdTimestamp) (\s@GetImportJobResponse' {} a -> s {createdTimestamp = a} :: GetImportJobResponse) Prelude.. Lens.mapping Core._Time

-- | A string that represents the import job ID.
getImportJobResponse_jobId :: Lens.Lens' GetImportJobResponse (Prelude.Maybe Prelude.Text)
getImportJobResponse_jobId = Lens.lens (\GetImportJobResponse' {jobId} -> jobId) (\s@GetImportJobResponse' {} a -> s {jobId = a} :: GetImportJobResponse)

-- | The destination of the import job.
getImportJobResponse_importDestination :: Lens.Lens' GetImportJobResponse (Prelude.Maybe ImportDestination)
getImportJobResponse_importDestination = Lens.lens (\GetImportJobResponse' {importDestination} -> importDestination) (\s@GetImportJobResponse' {} a -> s {importDestination = a} :: GetImportJobResponse)

-- | The failure details about an import job.
getImportJobResponse_failureInfo :: Lens.Lens' GetImportJobResponse (Prelude.Maybe FailureInfo)
getImportJobResponse_failureInfo = Lens.lens (\GetImportJobResponse' {failureInfo} -> failureInfo) (\s@GetImportJobResponse' {} a -> s {failureInfo = a} :: GetImportJobResponse)

-- | The number of records that failed processing because of invalid input or
-- other reasons.
getImportJobResponse_failedRecordsCount :: Lens.Lens' GetImportJobResponse (Prelude.Maybe Prelude.Int)
getImportJobResponse_failedRecordsCount = Lens.lens (\GetImportJobResponse' {failedRecordsCount} -> failedRecordsCount) (\s@GetImportJobResponse' {} a -> s {failedRecordsCount = a} :: GetImportJobResponse)

-- | The current number of records processed.
getImportJobResponse_processedRecordsCount :: Lens.Lens' GetImportJobResponse (Prelude.Maybe Prelude.Int)
getImportJobResponse_processedRecordsCount = Lens.lens (\GetImportJobResponse' {processedRecordsCount} -> processedRecordsCount) (\s@GetImportJobResponse' {} a -> s {processedRecordsCount = a} :: GetImportJobResponse)

-- | The time stamp of when the import job was completed.
getImportJobResponse_completedTimestamp :: Lens.Lens' GetImportJobResponse (Prelude.Maybe Prelude.UTCTime)
getImportJobResponse_completedTimestamp = Lens.lens (\GetImportJobResponse' {completedTimestamp} -> completedTimestamp) (\s@GetImportJobResponse' {} a -> s {completedTimestamp = a} :: GetImportJobResponse) Prelude.. Lens.mapping Core._Time

-- | The data source of the import job.
getImportJobResponse_importDataSource :: Lens.Lens' GetImportJobResponse (Prelude.Maybe ImportDataSource)
getImportJobResponse_importDataSource = Lens.lens (\GetImportJobResponse' {importDataSource} -> importDataSource) (\s@GetImportJobResponse' {} a -> s {importDataSource = a} :: GetImportJobResponse)

-- | The response's http status code.
getImportJobResponse_httpStatus :: Lens.Lens' GetImportJobResponse Prelude.Int
getImportJobResponse_httpStatus = Lens.lens (\GetImportJobResponse' {httpStatus} -> httpStatus) (\s@GetImportJobResponse' {} a -> s {httpStatus = a} :: GetImportJobResponse)

instance Prelude.NFData GetImportJobResponse where
  rnf GetImportJobResponse' {..} =
    Prelude.rnf jobStatus
      `Prelude.seq` Prelude.rnf createdTimestamp
      `Prelude.seq` Prelude.rnf jobId
      `Prelude.seq` Prelude.rnf importDestination
      `Prelude.seq` Prelude.rnf failureInfo
      `Prelude.seq` Prelude.rnf failedRecordsCount
      `Prelude.seq` Prelude.rnf processedRecordsCount
      `Prelude.seq` Prelude.rnf completedTimestamp
      `Prelude.seq` Prelude.rnf importDataSource
      `Prelude.seq` Prelude.rnf httpStatus
