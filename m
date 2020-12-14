Return-Path: <SRS0=K/hu=FS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 372A5C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 03:00:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE731238D6
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 03:00:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE731238D6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hO4wBtR6xrSWdY/kgycYeYuAs1+gAoynERMSZu5yiL0=; b=jQDjjOcOkiKQmkyGs1U35fEf7
	uF40Yp8b8DuR4eEglcR1JSfIBV0ZkJD9lTPPnimJX9xn4eikSeYjJszpcosVlpLs9tFuL9ciUVGZv
	AXw0964yTLea5wyrad42jT8yZozeFWUJIJjgJQbHSpHuvhoBpbdr8QemVGS015DEAoO2QKinzm8Ei
	VlptCJn7spdcm0NKMse72chQdMVYTRafGTrz8MF0TC/rvipIGV+dx9SVbdLJcQhTJ8axau3+/3UaJ
	dswc5LNJN9oBleGbTkKKAj8oYmzjqJhvlLZ69jo1JL3hzFz0IpM3rt/55C3pyuuj/B1ct/G5OmPQa
	URImenRkg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koe5w-00066d-Mw; Mon, 14 Dec 2020 03:00:16 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koe5i-00061L-7n; Mon, 14 Dec 2020 03:00:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id BE1EC20138C6;
 Mon, 14 Dec 2020 11:00:00 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T-qUF-1OW8tw; Mon, 14 Dec 2020 11:00:00 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id A8A3120139A0;
 Mon, 14 Dec 2020 11:00:00 +0800 (HKT)
Received: from armhf2.gtsys.com.hk (unknown [10.128.4.15])
 by s01.gtsys.com.hk (Postfix) with ESMTP id AD798C01FAD;
 Mon, 14 Dec 2020 11:00:00 +0800 (HKT)
Received: by armhf2.gtsys.com.hk (Postfix, from userid 1000)
 id A1B4D2000CF; Mon, 14 Dec 2020 11:00:00 +0800 (HKT)
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: [PATCH v1 2/4] phy: rockchip: emmc,
 add vendor prefix to optional dts properties
Date: Mon, 14 Dec 2020 10:59:43 +0800
Message-Id: <20201214025946.25753-3-chris.ruehl@gtsys.com.hk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214025946.25753-1-chris.ruehl@gtsys.com.hk>
References: <20201214025946.25753-1-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201213_220002_510833_06544EC1 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Update the implementation add "rockchip," vendor prefix for the
optional dts properties. Prefix referred from vendor-prefixes.yaml

Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
---
 drivers/phy/rockchip/phy-rockchip-emmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
index 1e424f263e7a..2fdbc8495798 100644
--- a/drivers/phy/rockchip/phy-rockchip-emmc.c
+++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
@@ -377,13 +377,13 @@ static int rockchip_emmc_phy_probe(struct platform_device *pdev)
 	rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_DISABLE;
 	rk_phy->output_tapdelay_select = PHYCTRL_OTAPDLYSEL_DEFAULT;
 
-	if (!of_property_read_u32(dev->of_node, "drive-impedance-ohm", &val))
+	if (!of_property_read_u32(dev->of_node, "rockchip,drive-impedance-ohm", &val))
 		rk_phy->drive_impedance = convert_drive_impedance_ohm(pdev, val);
 
-	if (of_property_read_bool(dev->of_node, "enable-strobe-pulldown"))
+	if (of_property_read_bool(dev->of_node, "rockchip,enable-strobe-pulldown"))
 		rk_phy->enable_strobe_pulldown = PHYCTRL_REN_STRB_ENABLE;
 
-	if (!of_property_read_u32(dev->of_node, "output-tapdelay-select", &val)) {
+	if (!of_property_read_u32(dev->of_node, "rockchip,output-tapdelay-select", &val)) {
 		if (val <= PHYCTRL_OTAPDLYSEL_MAXVALUE)
 			rk_phy->output_tapdelay_select = val;
 		else
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
