Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D0C3C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 11:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4cnW2F8uk2KJS/BmM1FFDYZhxeKEacoHzMMGvo8m+c=; b=Kh4u3sjXhTMB21
	29LKYmqRsc7NA103KwO3GvaWW8gj2kK+6+V3E0GrchFWispdKy3Kfs1+4UGtTanCJKmuSsBQWftAB
	APaM7lU7hw7JfAMwmNv0kicV3+ZBvSDAf6RPRydUtswHEY9H/rUcUDudF1qV+b2BAzXLdpgBeCJcq
	6ibHRoLnX4sHDJsjFJYjKcnmNYFE6bURZI8fpnKKjytWq3UHNF/iA3RIaJuIxAYVRb6PAeIQeBEXG
	35ujT0AE0KKoFUKxhTIR8bQdg6TueZRtXoM9A7jTWdx1fXB+ncIK1qoHU17LbcLx73MRn2CMdZ9Ho
	i5zloz2k8k5N6ct/hiiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncmo3-00Gc9f-1V; Fri, 08 Apr 2022 11:29:35 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncmho-00GYHB-8n
 for linux-rockchip@bombadil.infradead.org; Fri, 08 Apr 2022 11:23:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=d8VidDT2obaqlNB553df7fQeHUDHfBnCbITnvsO1iKE=; b=Ev6cLHWrvJmimnHgz2FG37+ETO
 PbI6rC6wbk/IwRejJvwsFtUUzvuXhcQRAS4uC/ByMhU3yvTFc4HAdQL8+q7guf1sdqbom6VwOZpEu
 fiV7yoY132J6a3yFAMX0SDczluAcP8wR9usF+SWfnorfvddKGA79vRsv4BSxz5SSv0TihbJl/0vRm
 p+zwOVmppOxd7A1SWbkyCYoJJvcW5vmu3nDqLsKRcgxA8+5apeUdoioHd0YqaD29k+3xxO5xEAzYR
 gOtAhoLKtsNDC07yrN537nd/bjZR0iZdg4nSNBosOdSECyenghxpFAyExmD1n+h2k3dZyxNbrjO8s
 qJWieulg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncmhd-002t9i-HR
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 11:23:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhS-0002HX-65; Fri, 08 Apr 2022 13:22:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhR-001n3p-2F; Fri, 08 Apr 2022 13:22:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhO-005Z3d-63; Fri, 08 Apr 2022 13:22:42 +0200
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
Subject: [PATCH v10 01/24] clk: rk3568: Mark hclk_vo as critical
Date: Fri,  8 Apr 2022 13:22:15 +0200
Message-Id: <20220408112238.1274817-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220408112238.1274817-1-s.hauer@pengutronix.de>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_122258_162257_3CE01EF5 
X-CRM114-Status: GOOD (  13.78  )
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
