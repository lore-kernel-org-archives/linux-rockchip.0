Return-Path: <SRS0=0Sn9=DR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74CF9C433E7
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 17CBD22260
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2WCXEn50";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="tYjuFl1T"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 17CBD22260
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kwiboo.se
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:In-Reply-To:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l9tdngAwxrYS2eDPNKB0jqTAdfFnsuDnir2UldBg/Zc=; b=2WCXEn50PFLqWYOKKoN+TpJFV+
	dx+HvVYFk2kXJHvDY7hpmduw+l1jfnXMssevEnTFVHeXya2QTRyxVAOds2eT+volVL+wG1ss8vg3D
	XcZHfw+LaCFdYD3Dgqv7QlnJELcrqYts/76EurJBpsj/YU9P8lYbpg2WDrLQHPBNab8gV0jVF3Q1F
	t5zzSc6FE2l/jkj/KVyG6EARK4TllMy6TbtcLK1DlK3f5jYeQ3OfzFSdFs8ZH7fh9uD1GMojRSF2K
	+Aw6flm+ZzlVU2z2j8tpMsJsR1M5hzJ6fEYIPDwFMhiwJrUUHWwiJMrjumXrIUPOtTdb4YAolVDYX
	NbS3dF/g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kRGrU-0005WR-Ct; Sat, 10 Oct 2020 15:32:44 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRGr6-0005Oj-Mn
 for linux-rockchip@lists.infradead.org; Sat, 10 Oct 2020 15:32:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=kvEiAQjl/OxAvtM+IX3ZURXJtqGWvCvtd2Q+tKQM1BA=;
 b=tYjuFl1TorVmp0KtWe7tqSSQkve1uf+BeZWsmV+DRftXsWo+52JYzcyYPWve+nWqjrOn
 n5ZHSisjDKxoLcy/2RNfEgRIHigVDJFfcT3egaOVrQquwVaXKALo7qIOeSMdJq023YWoXc
 s5BPxXGlEh0xxM2gGWfrduYcZ4Pkbn33Y=
Received: by filterdrecv-p3mdw1-6685f47d68-bjgll with SMTP id
 filterdrecv-p3mdw1-6685f47d68-bjgll-19-5F81D402-36
 2020-10-10 15:32:18.64429573 +0000 UTC m=+233779.898003005
Received: from bionic.localdomain (unknown)
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP
 id cwumXMZaQkmF52mb04iBbg Sat, 10 Oct 2020 15:32:18.360 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 2/6] phy/rockchip: inno-hdmi: round fractal pixclock in
 rk3328 recalc_rate
Date: Sat, 10 Oct 2020 15:32:18 +0000 (UTC)
Message-Id: <20201010153214.19722-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201010153214.19722-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
 <20201010153214.19722-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hzVDAzW3kg=2FB4zFwN?=
 =?us-ascii?Q?9VFCDMBaj1mZBeemn9atN=2FqgEFbpLBj5w1oby38?=
 =?us-ascii?Q?ipeb3wBI0xmrA8kzT9B9Gxp=2FuufHI4m8MZq4GGK?=
 =?us-ascii?Q?mOIGbeOz3lfwpCltpKCTQzCbeBI7vhVxU2QvsX0?=
 =?us-ascii?Q?KnpxzajNHO=2FZtcbreMprNvP8WzpOClyvYIHDCrJ?=
 =?us-ascii?Q?lqsaBe1td5IFMI3O+YdfA=3D=3D?=
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
X-Entity-ID: wSPGWgGSXUap++qShBI+ag==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201010_113220_768403_161AA208 
X-CRM114-Status: GOOD (  10.15  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Huicong Xu <xhc@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Zheng Yang <zhengyang@rock-chips.com>

inno_hdmi_phy_rk3328_clk_recalc_rate() is returning a rate not found
in the pre pll config table when the fractal divider is used.
This can prevent proper power_on because a tmdsclock for the new rate
is not found in the pre pll config table.

Fix this by saving and returning a rounded pixel rate that exist
in the pre pll config table.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index b0ac1d3ee390..093d2334e8cd 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -745,10 +745,12 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 		do_div(vco, (nd * (no_a == 1 ? no_b : no_a) * no_d * 2));
 	}
 
-	inno->pixclock = vco;
-	dev_dbg(inno->dev, "%s rate %lu\n", __func__, inno->pixclock);
+	inno->pixclock = DIV_ROUND_CLOSEST((unsigned long)vco, 1000) * 1000;
 
-	return vco;
+	dev_dbg(inno->dev, "%s rate %lu vco %llu\n",
+		__func__, inno->pixclock, vco);
+
+	return inno->pixclock;
 }
 
 static long inno_hdmi_phy_rk3328_clk_round_rate(struct clk_hw *hw,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
