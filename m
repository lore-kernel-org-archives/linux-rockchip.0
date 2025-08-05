Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 533F1C87FCB
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 13:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MK4DnKUI4O2qyoh2l5PA332KGfUZDZLQR0XjBOz+XR4=; b=XfnYeuRug+ts/y
	+In1jb2k0OeGaFRCNLT3vsCVmQhjtET2/iySj51FAv2yv9wfE+LcBV5K1IKoYEQWpejuQrO4SYqzA
	i+q7ov9suusTmeNnMvr+Zy2LF4k2Fl7CaWgqDK+yTAPP0WkKFLxoN6kCEq0SSAJGmh0PWN+q8/e2j
	5y4W6TZskHJ+ZTvSC/hwalDdbxcsKgXoxGqdGj3oW5xfcA7UYqlFUVdoskttqUZuShIy+Bs0tioNj
	qxiODFQC4Asgsey1qZswSXoHdnfD0/j9pB0o4vS/ps4Upasj74L+YsKz0nPkTktcFjO9/fuEO/OyT
	vQILuFf3nl2w6dzK+bMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujHfc-0000000CpyG-0gXO;
	Tue, 05 Aug 2025 13:25:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujHRU-0000000CnaT-1QYe;
	Tue, 05 Aug 2025 13:11:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AA2305C5F05;
	Tue,  5 Aug 2025 13:10:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CE29C4CEFA;
	Tue,  5 Aug 2025 13:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754399459;
	bh=QskGx90TLZ/5pqOHB+wiX359YHfKw0zfYQpYucfOY3o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LdwAM3bUC/15rEWjQoDUmbJuK+KflxbdIqjXlsNfiqDYT6wCimXaSI0QCmnVlcLzg
	 TC7XWcNfjkklEy/XK5TZlc32stdgNY6CemK+pd3yU191eDrRSIXZ3leL0cvtSIuJdM
	 HaQuLp5mvvlNjX5Szb0PKDe2jTCUBe5uOHiYCEuCI5McnWbVcHZfSMGdTNVSWY8Dnz
	 44OsKu3793J2oOF6JdsRqXanvBbtT6CqXGp1vl7SJYPUwhOEt64jji4DOXTE7oJhbZ
	 xPnTnOWbNm2RrrNCsjBlgWUbvtvOWRa4WVQNS8I2wH/0iYSjXEK+8vUInepixGo5e0
	 skrUdcveMSv4Q==
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: Valmantas Paliksa <walmis@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.16-6.15] phy: rockchip-pcie: Enable all four lanes if required
Date: Tue,  5 Aug 2025 09:09:08 -0400
Message-Id: <20250805130945.471732-33-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805130945.471732-1-sashal@kernel.org>
References: <20250805130945.471732-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_061100_463589_8A0E3DB2 
X-CRM114-Status: GOOD (  15.72  )
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

From: Valmantas Paliksa <walmis@gmail.com>

[ Upstream commit c3fe7071e196e25789ecf90dbc9e8491a98884d7 ]

Current code enables only Lane 0 because pwr_cnt will be incremented on
first call to the function. Let's reorder the enablement code to enable
all 4 lanes through GRF.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Signed-off-by: Valmantas Paliksa <walmis@gmail.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Link: https://lore.kernel.org/r/16b610aab34e069fd31d9f57260c10df2a968f80.1751322015.git.geraldogabriel@gmail.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

**Backport Status: YES**

This commit fixes a significant bug in the Rockchip PCIe PHY driver
where only Lane 0 was being enabled instead of all required lanes.
Here's my detailed analysis:

## Bug Description
The original code had a critical logic error in
`rockchip_pcie_phy_power_on()`. The lane enable operation (writing to
`pcie_laneoff` register) was placed AFTER the `pwr_cnt++` check at line
170. Since `pwr_cnt` is a reference counter that tracks how many times
the PHY has been powered on, the first call would increment it from 0 to
1 and continue with initialization. However, subsequent calls for other
lanes (Lane 1, 2, 3) would hit the early return at line 171 (`goto
err_out`), preventing those lanes from being enabled.

## The Fix
The commit moves the lane enable operation (lines 184-188 in original)
to BEFORE the `pwr_cnt++` check. This ensures that each lane gets
properly enabled through the GRF (General Register File) regardless of
the power reference count state.

## Why This Should Be Backported

1. **Fixes a Real Bug**: This fixes a functional bug where PCIe devices
   requiring multiple lanes (x2, x4 configurations) would only have Lane
   0 enabled, severely impacting performance or causing complete failure
   to operate.

2. **Small and Contained Fix**: The change is minimal - just reordering
   5 lines of code within a single function. No architectural changes or
   new features are introduced.

3. **Low Risk**: The fix simply ensures the lane enable register write
   happens for all lanes, which was clearly the original intent. The
   moved code block remains identical.

4. **Hardware Functionality Impact**: PCIe lane configuration is
   critical for proper hardware operation. Devices expecting x4 links
   but only getting x1 would experience significant performance
   degradation (75% bandwidth loss).

5. **Clear Root Cause**: The bug mechanism is straightforward - the
   reference counter was preventing lanes 1-3 from being configured due
   to early return.

6. **No Side Effects**: The change doesn't introduce new behavior, it
   just fixes the existing broken behavior to work as originally
   intended.

This is exactly the type of bug fix that stable kernels should receive -
it's a clear functional regression fix with minimal code changes and low
risk of introducing new issues.

 drivers/phy/rockchip/phy-rockchip-pcie.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 63e88abc66c6..4e2dfd01adf2 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -159,6 +159,12 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 
 	guard(mutex)(&rk_phy->pcie_mutex);
 
+	regmap_write(rk_phy->reg_base,
+		     rk_phy->phy_data->pcie_laneoff,
+		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
+				   PHY_LANE_IDLE_MASK,
+				   PHY_LANE_IDLE_A_SHIFT + inst->index));
+
 	if (rk_phy->pwr_cnt++) {
 		return 0;
 	}
@@ -175,12 +181,6 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 				   PHY_CFG_ADDR_MASK,
 				   PHY_CFG_ADDR_SHIFT));
 
-	regmap_write(rk_phy->reg_base,
-		     rk_phy->phy_data->pcie_laneoff,
-		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
-				   PHY_LANE_IDLE_MASK,
-				   PHY_LANE_IDLE_A_SHIFT + inst->index));
-
 	/*
 	 * No documented timeout value for phy operation below,
 	 * so we make it large enough here. And we use loop-break
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
