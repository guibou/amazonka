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
-- Module      : Amazonka.RedshiftData.GetStatementResult
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the temporarily cached result of an SQL statement. A token is
-- returned to page through the statement results.
--
-- This operation returns paginated results.
module Amazonka.RedshiftData.GetStatementResult
  ( -- * Creating a Request
    GetStatementResult (..),
    newGetStatementResult,

    -- * Request Lenses
    getStatementResult_nextToken,
    getStatementResult_id,

    -- * Destructuring the Response
    GetStatementResultResponse (..),
    newGetStatementResultResponse,

    -- * Response Lenses
    getStatementResultResponse_nextToken,
    getStatementResultResponse_columnMetadata,
    getStatementResultResponse_totalNumRows,
    getStatementResultResponse_httpStatus,
    getStatementResultResponse_records,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RedshiftData.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetStatementResult' smart constructor.
data GetStatementResult = GetStatementResult'
  { -- | A value that indicates the starting point for the next set of response
    -- records in a subsequent request. If a value is returned in a response,
    -- you can retrieve the next set of records by providing this returned
    -- NextToken value in the next NextToken parameter and retrying the
    -- command. If the NextToken field is empty, all response records have been
    -- retrieved for the request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the SQL statement whose results are to be fetched.
    -- This value is a universally unique identifier (UUID) generated by Amazon
    -- Redshift Data API. A suffix indicates then number of the SQL statement.
    -- For example, @d9b6c0c9-0747-4bf4-b142-e8883122f766:2@ has a suffix of
    -- @:2@ that indicates the second SQL statement of a batch query. This
    -- identifier is returned by @BatchExecuteStatment@, @ExecuteStatment@, and
    -- @ListStatements@.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetStatementResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getStatementResult_nextToken' - A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- NextToken value in the next NextToken parameter and retrying the
-- command. If the NextToken field is empty, all response records have been
-- retrieved for the request.
--
-- 'id', 'getStatementResult_id' - The identifier of the SQL statement whose results are to be fetched.
-- This value is a universally unique identifier (UUID) generated by Amazon
-- Redshift Data API. A suffix indicates then number of the SQL statement.
-- For example, @d9b6c0c9-0747-4bf4-b142-e8883122f766:2@ has a suffix of
-- @:2@ that indicates the second SQL statement of a batch query. This
-- identifier is returned by @BatchExecuteStatment@, @ExecuteStatment@, and
-- @ListStatements@.
newGetStatementResult ::
  -- | 'id'
  Prelude.Text ->
  GetStatementResult
newGetStatementResult pId_ =
  GetStatementResult'
    { nextToken = Prelude.Nothing,
      id = pId_
    }

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- NextToken value in the next NextToken parameter and retrying the
-- command. If the NextToken field is empty, all response records have been
-- retrieved for the request.
getStatementResult_nextToken :: Lens.Lens' GetStatementResult (Prelude.Maybe Prelude.Text)
getStatementResult_nextToken = Lens.lens (\GetStatementResult' {nextToken} -> nextToken) (\s@GetStatementResult' {} a -> s {nextToken = a} :: GetStatementResult)

-- | The identifier of the SQL statement whose results are to be fetched.
-- This value is a universally unique identifier (UUID) generated by Amazon
-- Redshift Data API. A suffix indicates then number of the SQL statement.
-- For example, @d9b6c0c9-0747-4bf4-b142-e8883122f766:2@ has a suffix of
-- @:2@ that indicates the second SQL statement of a batch query. This
-- identifier is returned by @BatchExecuteStatment@, @ExecuteStatment@, and
-- @ListStatements@.
getStatementResult_id :: Lens.Lens' GetStatementResult Prelude.Text
getStatementResult_id = Lens.lens (\GetStatementResult' {id} -> id) (\s@GetStatementResult' {} a -> s {id = a} :: GetStatementResult)

instance Core.AWSPager GetStatementResult where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getStatementResultResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. getStatementResultResponse_records) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getStatementResult_nextToken
          Lens..~ rs
          Lens.^? getStatementResultResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetStatementResult where
  type
    AWSResponse GetStatementResult =
      GetStatementResultResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          GetStatementResultResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "ColumnMetadata" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "TotalNumRows")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Records" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable GetStatementResult where
  hashWithSalt _salt GetStatementResult' {..} =
    _salt `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` id

instance Prelude.NFData GetStatementResult where
  rnf GetStatementResult' {..} =
    Prelude.rnf nextToken `Prelude.seq` Prelude.rnf id

instance Core.ToHeaders GetStatementResult where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RedshiftData.GetStatementResult" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetStatementResult where
  toJSON GetStatementResult' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            Prelude.Just ("Id" Core..= id)
          ]
      )

instance Core.ToPath GetStatementResult where
  toPath = Prelude.const "/"

instance Core.ToQuery GetStatementResult where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetStatementResultResponse' smart constructor.
data GetStatementResultResponse = GetStatementResultResponse'
  { -- | A value that indicates the starting point for the next set of response
    -- records in a subsequent request. If a value is returned in a response,
    -- you can retrieve the next set of records by providing this returned
    -- NextToken value in the next NextToken parameter and retrying the
    -- command. If the NextToken field is empty, all response records have been
    -- retrieved for the request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The properties (metadata) of a column.
    columnMetadata :: Prelude.Maybe [ColumnMetadata],
    -- | The total number of rows in the result set returned from a query. You
    -- can use this number to estimate the number of calls to the
    -- @GetStatementResult@ operation needed to page through the results.
    totalNumRows :: Prelude.Maybe Prelude.Integer,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The results of the SQL statement.
    records :: [[Field]]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetStatementResultResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getStatementResultResponse_nextToken' - A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- NextToken value in the next NextToken parameter and retrying the
-- command. If the NextToken field is empty, all response records have been
-- retrieved for the request.
--
-- 'columnMetadata', 'getStatementResultResponse_columnMetadata' - The properties (metadata) of a column.
--
-- 'totalNumRows', 'getStatementResultResponse_totalNumRows' - The total number of rows in the result set returned from a query. You
-- can use this number to estimate the number of calls to the
-- @GetStatementResult@ operation needed to page through the results.
--
-- 'httpStatus', 'getStatementResultResponse_httpStatus' - The response's http status code.
--
-- 'records', 'getStatementResultResponse_records' - The results of the SQL statement.
newGetStatementResultResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetStatementResultResponse
newGetStatementResultResponse pHttpStatus_ =
  GetStatementResultResponse'
    { nextToken =
        Prelude.Nothing,
      columnMetadata = Prelude.Nothing,
      totalNumRows = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      records = Prelude.mempty
    }

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- NextToken value in the next NextToken parameter and retrying the
-- command. If the NextToken field is empty, all response records have been
-- retrieved for the request.
getStatementResultResponse_nextToken :: Lens.Lens' GetStatementResultResponse (Prelude.Maybe Prelude.Text)
getStatementResultResponse_nextToken = Lens.lens (\GetStatementResultResponse' {nextToken} -> nextToken) (\s@GetStatementResultResponse' {} a -> s {nextToken = a} :: GetStatementResultResponse)

-- | The properties (metadata) of a column.
getStatementResultResponse_columnMetadata :: Lens.Lens' GetStatementResultResponse (Prelude.Maybe [ColumnMetadata])
getStatementResultResponse_columnMetadata = Lens.lens (\GetStatementResultResponse' {columnMetadata} -> columnMetadata) (\s@GetStatementResultResponse' {} a -> s {columnMetadata = a} :: GetStatementResultResponse) Prelude.. Lens.mapping Lens.coerced

-- | The total number of rows in the result set returned from a query. You
-- can use this number to estimate the number of calls to the
-- @GetStatementResult@ operation needed to page through the results.
getStatementResultResponse_totalNumRows :: Lens.Lens' GetStatementResultResponse (Prelude.Maybe Prelude.Integer)
getStatementResultResponse_totalNumRows = Lens.lens (\GetStatementResultResponse' {totalNumRows} -> totalNumRows) (\s@GetStatementResultResponse' {} a -> s {totalNumRows = a} :: GetStatementResultResponse)

-- | The response's http status code.
getStatementResultResponse_httpStatus :: Lens.Lens' GetStatementResultResponse Prelude.Int
getStatementResultResponse_httpStatus = Lens.lens (\GetStatementResultResponse' {httpStatus} -> httpStatus) (\s@GetStatementResultResponse' {} a -> s {httpStatus = a} :: GetStatementResultResponse)

-- | The results of the SQL statement.
getStatementResultResponse_records :: Lens.Lens' GetStatementResultResponse [[Field]]
getStatementResultResponse_records = Lens.lens (\GetStatementResultResponse' {records} -> records) (\s@GetStatementResultResponse' {} a -> s {records = a} :: GetStatementResultResponse) Prelude.. Lens.coerced

instance Prelude.NFData GetStatementResultResponse where
  rnf GetStatementResultResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf columnMetadata
      `Prelude.seq` Prelude.rnf totalNumRows
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf records
