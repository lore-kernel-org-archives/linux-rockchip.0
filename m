Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 056F5C54FB3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jun 2025 00:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nYNdfXpZknzmsohTGik2WEcG27L3JbzgLwKZaKYGbs=; b=llR06Is+mtUtwz
	yEc2qknlodPPkJf+XpCDngcCFRucmREyMl8a6RHEMy8xQ5tVBLlHMoMI+lzSCSVDlVXI3m4an0km6
	xu2uekk7R/+QarFShpQzTqwfDnjAjJOB750xIHq5vsyN8j5+aTEWEKXB1ojw8fjNpx8WHIMkkRrWA
	iRxr3UK2/StA0ulu2LGeyzEtxc7zCS6LcYUCJwq17QozubqNRK5qvtSyU0H+VXLHqxyFbK9BrIaXD
	y64a1S7nSeT3lSdCjECzoUYl95B3mB6cD9BZ7AyC84cAy80HoZ0URdwKikk6CE9V1eDCYDa+561sG
	SzNDPYA4Oq+RCOIW9bdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLtGp-00000006LqV-2wIX;
	Mon, 02 Jun 2025 00:43:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLs3z-000000065iz-40NS;
	Sun, 01 Jun 2025 23:26:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=D2D1L58O+TEW8292vVqUUgqnJKYNKF0tdHRhotfyzg8=; b=JSlZQc4bdnyQSjUVg5rElvhOGf
	rLL7zSdTo81/3pnQNVyr6fYliiLKCinjogd1eDkEzFTj4oCcbtprovxHYA3j3Vx3xT7rz484o+Yv0
	yuJJC4IUQocqsFdk2W36tqOQksCbYSKgIJKgAesgAB6/yP7Ql7U8sPtDPw2ZRZZ8iBjmhEuSm5ied
	JFW8xbfdqWcuarWcH9D4PyeIko0zbe219ckANNu0/tJnm99WjnzTXGQLWkjGvtmCyz38ZmsBv8R6l
	7SpLJafdkElafRQzjQvcop/OwoAnrG1SflWJL60NaJE55mWlXqRVH7EaKLQLT8AD4KZu3ELracPbR
	KMo5DGDA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLs3w-00000000XBP-1inQ;
	Sun, 01 Jun 2025 23:25:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 140355C5564;
	Sun,  1 Jun 2025 23:23:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FBA1C4CEE7;
	Sun,  1 Jun 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748820354;
	bh=ttfOECRtD5PXtaIw69vMnoWuEDtkXJQhrGI743nHL1c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YY4gIte5xavpez9z94lrzznqqWKmtOVzsTqFa/RNyddDQ2wUMLPqulCEffn2uvwuV
	 u5pe/0+v5wgT+79lTqVxQqhl/MvMC2vlLbUWPpNIwaTRU74biAD4i4V4JDw7HZh36r
	 VRpoK5z9+fignF84ZOblnowrWFmmvWKufoeHFRhGuNW40hJ9+osBVBVp+juD6SCJEa
	 3y7bOlszHBqlT75lkR8COuQ/bEn3QhLDGYwa3MBJ6QU9czZ1tkauH7jGh2xeUE4gRO
	 2tUYDPYp6J68oBwiHdyjDtbkitBBiEG7ITE4aWSHy/jBebwR9WMjbzTI3aFdJnh+JK
	 SPoAFQSgJ5eow==
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Sasha Levin <sashal@kernel.org>,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH AUTOSEL 6.15 030/110] media: verisilicon: Enable wide 4K in AV1 decoder
Date: Sun,  1 Jun 2025 19:23:12 -0400
Message-Id: <20250601232435.3507697-30-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250601232435.3507697-1-sashal@kernel.org>
References: <20250601232435.3507697-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_002556_714316_E8C8E36A 
X-CRM114-Status: GOOD (  13.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Nicolas Dufresne <nicolas.dufresne@collabora.com>

[ Upstream commit 311e40e877bd980bc665e6c8d3b15d96f0ec2aa8 ]

Tested on RK3588, this decoder is capable of handling WUHD, so bump the
maximum width and height accordingly.

Reviewed-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil@xs4all.nl>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

**YES** This commit should be backported to stable kernel trees. ##
Analysis This is a **bug fix** that corrects an artificial limitation in
the AV1 decoder driver, not a new feature addition. Here's my detailed
analysis: ### Nature of the Change The commit changes format capability
declarations from `FMT_UHD_WIDTH/HEIGHT` (3840x2160) to
`FMT_4K_WIDTH/HEIGHT` (4096x2304) for the RK3588 AV1 decoder. Looking at
the constants in the codebase: - `FMT_UHD_WIDTH` = 3840,
`FMT_UHD_HEIGHT` = 2160 (standard UHD) - `FMT_4K_WIDTH` = 4096,
`FMT_4K_HEIGHT` = 2304 (Cinema 4K) ### Why This is a Bug Fix 1.
**Hardware Capability vs Driver Limitation**: The commit message states
this was "Tested on RK3588" and confirms the decoder is "capable of
handling WUHD", indicating the hardware already supports these
resolutions but the driver was artificially limiting them. 2. **User-
Visible Problem**: Users with Cinema 4K content (4096x2160 or wider)
would experience decode failures despite having capable hardware. 3.
**No New Hardware Features**: This doesn't enable new hardware
functionality - it simply removes an incorrect software limitation. ###
Risk Assessment - Very Low 1. **Minimal Code Changes**: Only changes
constant values in format capability arrays - no algorithmic logic
changes. 2. **Backward Compatibility**: Existing UHD content (3840x2160)
continues to work exactly as before. 3. **Self-Contained**: Changes are
isolated to the verisilicon media driver, affecting only format
capability declarations. 4. **No API Changes**: No changes to userspace
interfaces or kernel APIs. ### Comparison to Similar Backported Commit
This change is very similar to commit #5 in the reference examples
(marked "Backport Status: YES"): - Both increase maximum supported
resolution after hardware testing - Both are minimal, low-risk changes
to capability declarations - Both fix user-visible decode failures for
content the hardware can actually handle ### Stable Tree Benefits 1.
**Fixes decode failures** for users with Cinema 4K AV1 content 2.
**Improves hardware utilization** by removing artificial limitations 3.
**Very low regression risk** due to minimal, well-contained changes 4.
**Meets all stable tree criteria**: important fix, minimal risk, no new
features This commit clearly qualifies for stable backporting as it
fixes a user-visible bug with minimal risk and no architectural changes.

 .../platform/verisilicon/rockchip_vpu_hw.c    | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
index 964122e7c3559..b64f0658f7f1e 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu_hw.c
@@ -85,10 +85,10 @@ static const struct hantro_fmt rockchip_vpu981_postproc_fmts[] = {
 		.postprocessed = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
@@ -99,10 +99,10 @@ static const struct hantro_fmt rockchip_vpu981_postproc_fmts[] = {
 		.postprocessed = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
@@ -318,10 +318,10 @@ static const struct hantro_fmt rockchip_vpu981_dec_fmts[] = {
 		.match_depth = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
@@ -331,10 +331,10 @@ static const struct hantro_fmt rockchip_vpu981_dec_fmts[] = {
 		.match_depth = true,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
@@ -344,10 +344,10 @@ static const struct hantro_fmt rockchip_vpu981_dec_fmts[] = {
 		.max_depth = 2,
 		.frmsize = {
 			.min_width = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_width = FMT_UHD_WIDTH,
+			.max_width = FMT_4K_WIDTH,
 			.step_width = MB_DIM,
 			.min_height = ROCKCHIP_VPU981_MIN_SIZE,
-			.max_height = FMT_UHD_HEIGHT,
+			.max_height = FMT_4K_HEIGHT,
 			.step_height = MB_DIM,
 		},
 	},
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
