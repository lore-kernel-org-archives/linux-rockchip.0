Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A12DAFD0049
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 01:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6MuTd4pNBRZlRIOOC2VXJ/HD/yaZ4U5LwGqT+9H25+U=; b=PlIANyWgvlxOlG
	4em4rcwUF11ijOkY+LzzxjgvwUy/ckiEOy1p0u9vOt2gmfj3L1hPQ+IPxqDQA43dMZerPjR5nUMYV
	hXvewarD9J2i+8+7bsaATdF8P91H6DKvXm8AOUpH9K+teqhqsoxZX534E2WOf5olIOkUYAqFxTwed
	1JgwZZ06xlFypHtZ/rRKI2KvS/3sBpi9gkigLft6aY1MkV7o739C4jw2yRlWKouD/GX+0cY5qB07g
	oQsPu9rQjI0UeLjkonUQS4MLaB1MFms8ov3dSfJQWO2L+PVfK/LxmokJVRvAkHllU466e+XK7oejm
	ITqA5qFPGYh8MP1TiUmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwVV1-0000000AUkc-3FEn;
	Sun, 01 Mar 2026 01:21:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwVUq-0000000AUeG-0ons;
	Sun, 01 Mar 2026 01:21:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6CB5F600AE;
	Sun,  1 Mar 2026 01:21:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C3BBC2BC87;
	Sun,  1 Mar 2026 01:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772328083;
	bh=EpmKOr3GTt2LrSszN/TlpfKNunThgbrd5fPU0E/rf5Y=;
	h=From:To:Cc:Subject:Date:From;
	b=YmkvoRZM63zyPw68t9gHnBvLGR5Qxxg4et9oyQBAj3E8HCm5irOLoX3H6hBXXQivb
	 ZrlNPFG8Ax5FE6IbThuAr1RQ7c3c75JtqZiL0qCapPl5pb1npakkyH9S53Q4ZphgUK
	 KFfv0oM7faSxb8tpSQDVXe3iy5rpoq2wEjcPALCKkbPlBptKRxgVuyLphnHp3E294C
	 31LHER3lnXMfnpuIDYJ94BkrPmd631Ysex4gbA5DnL7QO8sLE+zvQa2aE464zkrKb8
	 pcHwTU/HC4NS/fxHi4isRT7hkBofMzK+QRI2i9CkhwBSRSTmZKaqyDYbZ/sauBFlz1
	 bd1v2+OQ0I1vA==
From: Sasha Levin <sashal@kernel.org>
To: stable@vger.kernel.org,
	shawn.lin@rock-chips.com
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: FAILED: Patch "soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition" failed to apply to 6.12-stable tree
Date: Sat, 28 Feb 2026 20:21:20 -0500
Message-ID: <20260301012121.1677247-1-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
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

The patch below does not apply to the 6.12-stable tree.
If someone wants it applied there, or to any other stable or longterm
tree, then please email the backport, including the original git commit
id to <stable@vger.kernel.org>.

Thanks,
Sasha

------------------ original commit in Linus's tree ------------------

From 3cdc30c42d4a87444f6c7afbefd6a9381c4caa27 Mon Sep 17 00:00:00 2001
From: Shawn Lin <shawn.lin@rock-chips.com>
Date: Fri, 16 Jan 2026 08:55:28 +0800
Subject: [PATCH] soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON
 definition

RK3576_IOCGRF_MISC_CON is IOC_GRF + 0x40F0, fix it.

Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
Cc: stable@vger.kernel.org
Cc: Detlev Casanova <detlev.casanova@collabora.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>
Link: https://patch.msgid.link/1768524932-163929-2-git-send-email-shawn.lin@rock-chips.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/soc/rockchip/grf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 27bfa09ff2516..8974d1c6b35dc 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -146,7 +146,7 @@ static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
 	.num_values = ARRAY_SIZE(rk3576_defaults_sys_grf),
 };
 
-#define RK3576_IOCGRF_MISC_CON		0x04F0
+#define RK3576_IOCGRF_MISC_CON		0x40F0
 
 static const struct rockchip_grf_value rk3576_defaults_ioc_grf[] __initconst = {
 	{ "jtag switching", RK3576_IOCGRF_MISC_CON, FIELD_PREP_WM16_CONST(BIT(1), 0) },
-- 
2.51.0





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
