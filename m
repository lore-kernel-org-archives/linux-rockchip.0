Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32A18C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 07:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4cnW2F8uk2KJS/BmM1FFDYZhxeKEacoHzMMGvo8m+c=; b=I105PBGyJ5iKWR
	w1S8vYa0rPhqJr1xH1P37t6WCc+Ksx8L0D4kmzrNbJ+kYw/by2wQTjZgutumVj0DD/ZfpHlRAQLRh
	q3wbjHD14KfCs08ckXR6R317+TT6NlsFpW6E6JlBlaKW1tVK9KJ8M+S1MkWypMdq3BIkw3oU7VQtx
	SifZyHP0ye3D1m2l+P4mgoOCMTa4x7edDTlpO3fmVH6expQs0U1/Gh8u4xjNGzbA2rFAS0c7RLMJ7
	STxOCWEDB1x0m4pzYbzkOMBX9ZVFq+vJC3UXz7rLuWKco5tNA8fNflNceUnr952kWjzydsTZ5f9RO
	Sp21oDSCtUmP0ha0qfdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhnjj-00Gohj-Fn; Fri, 22 Apr 2022 07:29:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhnim-00Go8M-NF
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 07:28:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhnii-0008K7-V5; Fri, 22 Apr 2022 09:28:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nhnig-004VyC-Rr; Fri, 22 Apr 2022 09:28:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nhnic-009ITQ-V0; Fri, 22 Apr 2022 09:28:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH v11 01/24] clk: rk3568: Mark hclk_vo as critical
Date: Fri, 22 Apr 2022 09:28:18 +0200
Message-Id: <20220422072841.2206452-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_002852_918219_31D9799B 
X-CRM114-Status: GOOD (  13.91  )
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

Whenever pclk_vo is enabled hclk_vo must be enabled as well. This is
described in the Reference Manual as:

| 2.8.6 NIU Clock gating reliance
|
| A part of niu clocks have a dependence on another niu clock in order to
| sharing the internal bus. When these clocks are in use, another niu
| clock must be opened, and cannot be gated.  These clocks and the special
| clock on which they are relied are as following:
|
| Clocks which have dependency     The clock which can not be gated
| -----------------------------------------------------------------
| ...
| pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
| ...

The clock framework doesn't offer a way to enable clock B whenever clock A is
enabled, at least not when B is not an ancestor of A. Workaround this by
marking hclk_vo as critical so it is never disabled. This is suboptimal in
terms of power consumption, but a stop gap solution until the clock framework
has a way to deal with this.

We have this clock tree:

|      aclk_vo                  2        2        0   300000000          0     0  50000         Y
|         aclk_hdcp             0        0        0   300000000          0     0  50000         N
|         pclk_vo               2        3        0    75000000          0     0  50000         Y
|            pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
|            pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
|            pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
|            pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
|            pclk_hdcp          0        0        0    75000000          0     0  50000         N
|         hclk_vo               2        5        0   150000000          0     0  50000         Y
|            hclk_hdcp          0        0        0   150000000          0     0  50000         N
|            hclk_vop           0        2        0   150000000          0     0  50000         N

Without this patch the edp, dsitx, hdmi and hdcp driver would enable their
clocks which then enables pclk_vo, but hclk_vo stays disabled and register
accesses just hang. hclk_vo is enabled by the VOP2 driver, so reproducibility
of this issue depends on the probe order.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---

Notes:
    Changes since v8:
    - new patch

 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 606ae6cd918b2..f85902e2590c7 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1591,6 +1591,7 @@ static const char *const rk3568_cru_critical_clocks[] __initconst = {
 	"hclk_php",
 	"pclk_php",
 	"hclk_usb",
+	"hclk_vo",
 };
 
 static const char *const rk3568_pmucru_critical_clocks[] __initconst = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
