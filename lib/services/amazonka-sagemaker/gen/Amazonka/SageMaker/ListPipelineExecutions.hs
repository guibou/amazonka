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
-- Module      : Amazonka.SageMaker.ListPipelineExecutions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the pipeline executions.
--
-- This operation returns paginated results.
module Amazonka.SageMaker.ListPipelineExecutions
  ( -- * Creating a Request
    ListPipelineExecutions (..),
    newListPipelineExecutions,

    -- * Request Lenses
    listPipelineExecutions_sortOrder,
    listPipelineExecutions_nextToken,
    listPipelineExecutions_createdBefore,
    listPipelineExecutions_sortBy,
    listPipelineExecutions_maxResults,
    listPipelineExecutions_createdAfter,
    listPipelineExecutions_pipelineName,

    -- * Destructuring the Response
    ListPipelineExecutionsResponse (..),
    newListPipelineExecutionsResponse,

    -- * Response Lenses
    listPipelineExecutionsResponse_nextToken,
    listPipelineExecutionsResponse_pipelineExecutionSummaries,
    listPipelineExecutionsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newListPipelineExecutions' smart constructor.
data ListPipelineExecutions = ListPipelineExecutions'
  { -- | The sort order for results.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | If the result of the previous @ListPipelineExecutions@ request was
    -- truncated, the response includes a @NextToken@. To retrieve the next set
    -- of pipeline executions, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A filter that returns the pipeline executions that were created before a
    -- specified time.
    createdBefore :: Prelude.Maybe Core.POSIX,
    -- | The field by which to sort results. The default is @CreatedTime@.
    sortBy :: Prelude.Maybe SortPipelineExecutionsBy,
    -- | The maximum number of pipeline executions to return in the response.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A filter that returns the pipeline executions that were created after a
    -- specified time.
    createdAfter :: Prelude.Maybe Core.POSIX,
    -- | The name of the pipeline.
    pipelineName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPipelineExecutions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listPipelineExecutions_sortOrder' - The sort order for results.
--
-- 'nextToken', 'listPipelineExecutions_nextToken' - If the result of the previous @ListPipelineExecutions@ request was
-- truncated, the response includes a @NextToken@. To retrieve the next set
-- of pipeline executions, use the token in the next request.
--
-- 'createdBefore', 'listPipelineExecutions_createdBefore' - A filter that returns the pipeline executions that were created before a
-- specified time.
--
-- 'sortBy', 'listPipelineExecutions_sortBy' - The field by which to sort results. The default is @CreatedTime@.
--
-- 'maxResults', 'listPipelineExecutions_maxResults' - The maximum number of pipeline executions to return in the response.
--
-- 'createdAfter', 'listPipelineExecutions_createdAfter' - A filter that returns the pipeline executions that were created after a
-- specified time.
--
-- 'pipelineName', 'listPipelineExecutions_pipelineName' - The name of the pipeline.
newListPipelineExecutions ::
  -- | 'pipelineName'
  Prelude.Text ->
  ListPipelineExecutions
newListPipelineExecutions pPipelineName_ =
  ListPipelineExecutions'
    { sortOrder =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      createdBefore = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      createdAfter = Prelude.Nothing,
      pipelineName = pPipelineName_
    }

-- | The sort order for results.
listPipelineExecutions_sortOrder :: Lens.Lens' ListPipelineExecutions (Prelude.Maybe SortOrder)
listPipelineExecutions_sortOrder = Lens.lens (\ListPipelineExecutions' {sortOrder} -> sortOrder) (\s@ListPipelineExecutions' {} a -> s {sortOrder = a} :: ListPipelineExecutions)

-- | If the result of the previous @ListPipelineExecutions@ request was
-- truncated, the response includes a @NextToken@. To retrieve the next set
-- of pipeline executions, use the token in the next request.
listPipelineExecutions_nextToken :: Lens.Lens' ListPipelineExecutions (Prelude.Maybe Prelude.Text)
listPipelineExecutions_nextToken = Lens.lens (\ListPipelineExecutions' {nextToken} -> nextToken) (\s@ListPipelineExecutions' {} a -> s {nextToken = a} :: ListPipelineExecutions)

-- | A filter that returns the pipeline executions that were created before a
-- specified time.
listPipelineExecutions_createdBefore :: Lens.Lens' ListPipelineExecutions (Prelude.Maybe Prelude.UTCTime)
listPipelineExecutions_createdBefore = Lens.lens (\ListPipelineExecutions' {createdBefore} -> createdBefore) (\s@ListPipelineExecutions' {} a -> s {createdBefore = a} :: ListPipelineExecutions) Prelude.. Lens.mapping Core._Time

-- | The field by which to sort results. The default is @CreatedTime@.
listPipelineExecutions_sortBy :: Lens.Lens' ListPipelineExecutions (Prelude.Maybe SortPipelineExecutionsBy)
listPipelineExecutions_sortBy = Lens.lens (\ListPipelineExecutions' {sortBy} -> sortBy) (\s@ListPipelineExecutions' {} a -> s {sortBy = a} :: ListPipelineExecutions)

-- | The maximum number of pipeline executions to return in the response.
listPipelineExecutions_maxResults :: Lens.Lens' ListPipelineExecutions (Prelude.Maybe Prelude.Natural)
listPipelineExecutions_maxResults = Lens.lens (\ListPipelineExecutions' {maxResults} -> maxResults) (\s@ListPipelineExecutions' {} a -> s {maxResults = a} :: ListPipelineExecutions)

-- | A filter that returns the pipeline executions that were created after a
-- specified time.
listPipelineExecutions_createdAfter :: Lens.Lens' ListPipelineExecutions (Prelude.Maybe Prelude.UTCTime)
listPipelineExecutions_createdAfter = Lens.lens (\ListPipelineExecutions' {createdAfter} -> createdAfter) (\s@ListPipelineExecutions' {} a -> s {createdAfter = a} :: ListPipelineExecutions) Prelude.. Lens.mapping Core._Time

-- | The name of the pipeline.
listPipelineExecutions_pipelineName :: Lens.Lens' ListPipelineExecutions Prelude.Text
listPipelineExecutions_pipelineName = Lens.lens (\ListPipelineExecutions' {pipelineName} -> pipelineName) (\s@ListPipelineExecutions' {} a -> s {pipelineName = a} :: ListPipelineExecutions)

instance Core.AWSPager ListPipelineExecutions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listPipelineExecutionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listPipelineExecutionsResponse_pipelineExecutionSummaries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listPipelineExecutions_nextToken
          Lens..~ rs
          Lens.^? listPipelineExecutionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListPipelineExecutions where
  type
    AWSResponse ListPipelineExecutions =
      ListPipelineExecutionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPipelineExecutionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "PipelineExecutionSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPipelineExecutions where
  hashWithSalt _salt ListPipelineExecutions' {..} =
    _salt `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` createdBefore
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` createdAfter
      `Prelude.hashWithSalt` pipelineName

instance Prelude.NFData ListPipelineExecutions where
  rnf ListPipelineExecutions' {..} =
    Prelude.rnf sortOrder
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf createdBefore
      `Prelude.seq` Prelude.rnf sortBy
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf createdAfter
      `Prelude.seq` Prelude.rnf pipelineName

instance Core.ToHeaders ListPipelineExecutions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.ListPipelineExecutions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListPipelineExecutions where
  toJSON ListPipelineExecutions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SortOrder" Core..=) Prelude.<$> sortOrder,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("CreatedBefore" Core..=) Prelude.<$> createdBefore,
            ("SortBy" Core..=) Prelude.<$> sortBy,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("CreatedAfter" Core..=) Prelude.<$> createdAfter,
            Prelude.Just ("PipelineName" Core..= pipelineName)
          ]
      )

instance Core.ToPath ListPipelineExecutions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListPipelineExecutions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListPipelineExecutionsResponse' smart constructor.
data ListPipelineExecutionsResponse = ListPipelineExecutionsResponse'
  { -- | If the result of the previous @ListPipelineExecutions@ request was
    -- truncated, the response includes a @NextToken@. To retrieve the next set
    -- of pipeline executions, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Contains a sorted list of pipeline execution summary objects matching
    -- the specified filters. Each run summary includes the Amazon Resource
    -- Name (ARN) of the pipeline execution, the run date, and the status. This
    -- list can be empty.
    pipelineExecutionSummaries :: Prelude.Maybe [PipelineExecutionSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPipelineExecutionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPipelineExecutionsResponse_nextToken' - If the result of the previous @ListPipelineExecutions@ request was
-- truncated, the response includes a @NextToken@. To retrieve the next set
-- of pipeline executions, use the token in the next request.
--
-- 'pipelineExecutionSummaries', 'listPipelineExecutionsResponse_pipelineExecutionSummaries' - Contains a sorted list of pipeline execution summary objects matching
-- the specified filters. Each run summary includes the Amazon Resource
-- Name (ARN) of the pipeline execution, the run date, and the status. This
-- list can be empty.
--
-- 'httpStatus', 'listPipelineExecutionsResponse_httpStatus' - The response's http status code.
newListPipelineExecutionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPipelineExecutionsResponse
newListPipelineExecutionsResponse pHttpStatus_ =
  ListPipelineExecutionsResponse'
    { nextToken =
        Prelude.Nothing,
      pipelineExecutionSummaries =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the result of the previous @ListPipelineExecutions@ request was
-- truncated, the response includes a @NextToken@. To retrieve the next set
-- of pipeline executions, use the token in the next request.
listPipelineExecutionsResponse_nextToken :: Lens.Lens' ListPipelineExecutionsResponse (Prelude.Maybe Prelude.Text)
listPipelineExecutionsResponse_nextToken = Lens.lens (\ListPipelineExecutionsResponse' {nextToken} -> nextToken) (\s@ListPipelineExecutionsResponse' {} a -> s {nextToken = a} :: ListPipelineExecutionsResponse)

-- | Contains a sorted list of pipeline execution summary objects matching
-- the specified filters. Each run summary includes the Amazon Resource
-- Name (ARN) of the pipeline execution, the run date, and the status. This
-- list can be empty.
listPipelineExecutionsResponse_pipelineExecutionSummaries :: Lens.Lens' ListPipelineExecutionsResponse (Prelude.Maybe [PipelineExecutionSummary])
listPipelineExecutionsResponse_pipelineExecutionSummaries = Lens.lens (\ListPipelineExecutionsResponse' {pipelineExecutionSummaries} -> pipelineExecutionSummaries) (\s@ListPipelineExecutionsResponse' {} a -> s {pipelineExecutionSummaries = a} :: ListPipelineExecutionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listPipelineExecutionsResponse_httpStatus :: Lens.Lens' ListPipelineExecutionsResponse Prelude.Int
listPipelineExecutionsResponse_httpStatus = Lens.lens (\ListPipelineExecutionsResponse' {httpStatus} -> httpStatus) (\s@ListPipelineExecutionsResponse' {} a -> s {httpStatus = a} :: ListPipelineExecutionsResponse)

instance
  Prelude.NFData
    ListPipelineExecutionsResponse
  where
  rnf ListPipelineExecutionsResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf pipelineExecutionSummaries
      `Prelude.seq` Prelude.rnf httpStatus
