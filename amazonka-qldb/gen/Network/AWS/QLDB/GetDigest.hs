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
-- Module      : Network.AWS.QLDB.GetDigest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the digest of a ledger at the latest committed block in the
-- journal. The response includes a 256-bit hash value and a block address.
module Network.AWS.QLDB.GetDigest
  ( -- * Creating a Request
    GetDigest (..),
    newGetDigest,

    -- * Request Lenses
    getDigest_name,

    -- * Destructuring the Response
    GetDigestResponse (..),
    newGetDigestResponse,

    -- * Response Lenses
    getDigestResponse_httpStatus,
    getDigestResponse_digest,
    getDigestResponse_digestTipAddress,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.QLDB.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDigest' smart constructor.
data GetDigest = GetDigest'
  { -- | The name of the ledger.
    name :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetDigest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getDigest_name' - The name of the ledger.
newGetDigest ::
  -- | 'name'
  Core.Text ->
  GetDigest
newGetDigest pName_ = GetDigest' {name = pName_}

-- | The name of the ledger.
getDigest_name :: Lens.Lens' GetDigest Core.Text
getDigest_name = Lens.lens (\GetDigest' {name} -> name) (\s@GetDigest' {} a -> s {name = a} :: GetDigest)

instance Core.AWSRequest GetDigest where
  type AWSResponse GetDigest = GetDigestResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDigestResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..:> "Digest")
            Core.<*> (x Core..:> "DigestTipAddress")
      )

instance Core.Hashable GetDigest

instance Core.NFData GetDigest

instance Core.ToHeaders GetDigest where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.0" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetDigest where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath GetDigest where
  toPath GetDigest' {..} =
    Core.mconcat
      ["/ledgers/", Core.toBS name, "/digest"]

instance Core.ToQuery GetDigest where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetDigestResponse' smart constructor.
data GetDigestResponse = GetDigestResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | The 256-bit hash value representing the digest returned by a @GetDigest@
    -- request.
    digest :: Core.Base64,
    -- | The latest block location covered by the digest that you requested. An
    -- address is an Amazon Ion structure that has two fields: @strandId@ and
    -- @sequenceNo@.
    digestTipAddress :: Core.Sensitive ValueHolder
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetDigestResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getDigestResponse_httpStatus' - The response's http status code.
--
-- 'digest', 'getDigestResponse_digest' - The 256-bit hash value representing the digest returned by a @GetDigest@
-- request.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'digestTipAddress', 'getDigestResponse_digestTipAddress' - The latest block location covered by the digest that you requested. An
-- address is an Amazon Ion structure that has two fields: @strandId@ and
-- @sequenceNo@.
newGetDigestResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'digest'
  Core.ByteString ->
  -- | 'digestTipAddress'
  ValueHolder ->
  GetDigestResponse
newGetDigestResponse
  pHttpStatus_
  pDigest_
  pDigestTipAddress_ =
    GetDigestResponse'
      { httpStatus = pHttpStatus_,
        digest = Core._Base64 Lens.# pDigest_,
        digestTipAddress =
          Core._Sensitive Lens.# pDigestTipAddress_
      }

-- | The response's http status code.
getDigestResponse_httpStatus :: Lens.Lens' GetDigestResponse Core.Int
getDigestResponse_httpStatus = Lens.lens (\GetDigestResponse' {httpStatus} -> httpStatus) (\s@GetDigestResponse' {} a -> s {httpStatus = a} :: GetDigestResponse)

-- | The 256-bit hash value representing the digest returned by a @GetDigest@
-- request.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
getDigestResponse_digest :: Lens.Lens' GetDigestResponse Core.ByteString
getDigestResponse_digest = Lens.lens (\GetDigestResponse' {digest} -> digest) (\s@GetDigestResponse' {} a -> s {digest = a} :: GetDigestResponse) Core.. Core._Base64

-- | The latest block location covered by the digest that you requested. An
-- address is an Amazon Ion structure that has two fields: @strandId@ and
-- @sequenceNo@.
getDigestResponse_digestTipAddress :: Lens.Lens' GetDigestResponse ValueHolder
getDigestResponse_digestTipAddress = Lens.lens (\GetDigestResponse' {digestTipAddress} -> digestTipAddress) (\s@GetDigestResponse' {} a -> s {digestTipAddress = a} :: GetDigestResponse) Core.. Core._Sensitive

instance Core.NFData GetDigestResponse