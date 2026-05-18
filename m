Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F384CD4F4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyFqv/ErnXnUDIJAapLl9tML/daEicqfwclDhnDGB1w=; b=MvmIVvkFL0kvsY
	BgEZnYHtsFDxvHrNK2RbKJ8DN69GsQQMdTJSZcAJoRsqeysAAsiMgeVfdFQ4Oi8YO+M0U3CUGHx1q
	gbS8ExN00FrxZIOeFnF+yWkpNXaCEs1sVd8J5QE1AcFaUS/s8ab3wWI80K7OHCK7xxVZwHqnZ9Yan
	dpcTHbHHBS3ETxzW8yTFxrHHLBM71wu/1Zs9Ioq3JqgKdVZs30vusVUqSkFIs8lCo+cUH4izdrVsN
	hFtKtnfp7nE1z9WpzJ6dAOgi+dYNArIxl2aqYHz1QYFLrDnBgQK8QjVFprpXugTcCx+DN90TXNhsS
	V+brhJHKfKyGrfzMNlHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3nd-0000000GiZB-1fKN;
	Mon, 18 May 2026 19:38:49 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3nb-0000000GiVd-1CV1
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:38:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133127; bh=7lfieJ/EGL73t6zCSw5MfpEMZTviCbjtrDbmqYNxjp8=;
 b=nBUDReP9pAbLb0CAr3Sipfulp6BluVFNKBCY631mxZI5PpdyQbkn6okg5nDn8+BLB/rm5E0lo
 hOvmYC4R+2WFGk3rMD6zu9MIBAAUpFVMKq+OetLY6C1/ffabfqjiba1DtRCKunpcH3hNxvCPDKJ
 aSrdezj6ZQsSiZCdi9TH9Pe7zmzpf/aEll6miN1I7pwStzGksKOpZCJkzWK7DFBjWVNZLatLH5X
 0i5fm0zHyShNef6m0lwosPsbLQvEPFTkbtOJRMD5b/JDv+4avNJhR7hO9S1+N0jIWzQYkJIT9DT
 9x9THcry2r0fVEuC3hU9woH4cFVph2epGs4J1atEKhmw==
X-Forward-Email-ID: 6a0b6ab0486b4b38b826fa77
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 08/11] drm/rockchip: dw_hdmi: Set output_port for RK3568/RK3566
Date: Mon, 18 May 2026 19:37:42 +0000
Message-ID: <20260518193748.2482823-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518193748.2482823-1-jonas@kwiboo.se>
References: <20260518193748.2482823-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_123847_345231_71BC108D 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
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

All in-tree RK3568/RK3566 device trees using HDMI also include the
required hdmi-connector node at port@1 since their introduction.

Define the output_port for RK3568 so that dw-hdmi bridge driver can pick
up the display-connector bridge once the dw-hdmi connector is replaced
with a bridge connector in a future change.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: No change
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 02ee606c648e..6c4923b9b659 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -459,6 +459,7 @@ static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
 	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3568_chip_data,
 	.use_drm_infoframe = true,
+	.output_port = 1,
 };
 
 static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
