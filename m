Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A17FC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 21:03:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BCC5611CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 21:03:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BCC5611CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s5lxCsd9srjqqvFfk0KSHm2Xo2RyMRrFLw6Q0wlTNW4=; b=F6aEaOF849Z/bJmUw/jsmdd5B
	lKofdJMU5/MDYEZB8V3/Uz5HE54VmKjTR0ih2xwBTd/nywLwiPu4CURs5AHoAppfDn1J6h7lkpZvy
	i9Jnfjf0PMnoVrXI4upAiQUuEbbXY2l9M7sM6aPhqU2AsBkIo0emiHjNw3UyGLvSjDaVdgU4wxmsY
	BG6DKfxxwneZaxEKxeDqFzVSPzrpIXx2P6TyVERL2HTrOgrJkGK1wszTvbkovWU4U3eCjuXZRlmgR
	lK5iwTDQCoJb22Gfcl0hmzwQiqqKV1INrodkt5qdzwmTYVPaxiiVrGleNCqLjd3PLOym0PdajuNfb
	RXA+ZpiNA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWQBm-00AT3d-2D; Tue, 13 Apr 2021 21:03:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWQBV-00AT0K-FR
 for linux-rockchip@desiato.infradead.org; Tue, 13 Apr 2021 21:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=eyYYKBuSn9/rqlWKFXNALsqLxgALBvxdvI87GeINYNo=; b=uU7Mu/NoKRLqn1PDoeACg5J84Z
 P88S1CFcNwA23OJ7NqXN/scAd07XeCiscbUYxRO2s5w5GKFAi3/s1iDs9DNzAskZyr8Os+/wmrGnk
 k++JwEb4PsRUnm8Y/x1fVD51FpOzam6jbuh922K6qqGJMVUms45JAOK5EmfK3+DEQnPCHdjdCfMuz
 qouEG4tdafgyVHeMQhunrcSxAGy+ORwIcTHGKymtdOjwmIz5B+D4Mar1HF9MICQKYV/kMHDsq8Qkn
 a17421Q57h0a6GOTI6+nkyTY4k66Gm8msXee5VfNKD+pTy2l1QsxzRQc8nQX/Y0qpiWBnjBIcX5bg
 R8xKf9ig==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWQBT-007K3V-0e
 for linux-rockchip@lists.infradead.org; Tue, 13 Apr 2021 21:02:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 047271F42520
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH net-next 1/3] net: stmmac: Don't set has_gmac if has_gmac4 is
 set
Date: Tue, 13 Apr 2021 18:02:33 -0300
Message-Id: <20210413210235.489467-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210413210235.489467-1-ezequiel@collabora.com>
References: <20210413210235.489467-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_140255_200357_293CCD9C 
X-CRM114-Status: GOOD (  10.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Some Rockchip platforms have a GMAC4 core, and therefore
'plat_stmmacenet_data.has_gmac' shouldn't be set if
'plat_stmmacenet_data.has_gmac4' is set.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 6ef30252bfe0..c432a9592489 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1400,7 +1400,11 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	if (IS_ERR(plat_dat))
 		return PTR_ERR(plat_dat);
 
-	plat_dat->has_gmac = true;
+	/* If the stmmac is not already selected as gmac4,
+	 * then make sure we fallback to gmac.
+	 */
+	if (!plat_dat->has_gmac4)
+		plat_dat->has_gmac = true;
 	plat_dat->fix_mac_speed = rk_fix_speed;
 
 	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
