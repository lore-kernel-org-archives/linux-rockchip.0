Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18DB0C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f31KT50V9BNxPqYTopjmXZWUcsNlFGelqJioCzMTnk8=; b=srwOUqy5Cg0Y8H
	ko0iVi6DHnZes64KH+ztJvBlSxMC9BOtQxvUyvui2YAZdY/jbaTvVpIvk6Nf5CLTPHNvqV5iSNi+b
	66gv/3akbkBOMZrYvXjLbk9rXrTW0jpt/9+K9vDbO+UoTZkWryxfpbG5USE4c/KHdbZkVGSSzo6Ka
	qL41ugQE4e3yd6R3fjYGRNoZbZyniFPVx2odXwmZkK0YMVrFpNHlLx71ZVtIoDq4cIYS5uBou7UKx
	sKm5i89pxHnuBOhbsZ4xFdjTH18yk4bfcmgwB5bYw2T+FbKCR47z1oP1ZfBoVqLM8wIb1b4EbOOlc
	DPkcifoPS8GsC1tESnlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWq2-00000005mB6-3mHR;
	Sat, 15 Jun 2024 17:05:14 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWps-00000005m2z-3DFI
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471088; bh=ScLXL7bFS6O80CUAw7XPEvNboE3+OLzOZeGQt7f1YM8=;
 b=ZfBioXxC9wdsuv/hmnLGAyHS8SG5v8V3O90I14kxOVFdM9JNS3sWhXnQa69lmTpsh7uxLE06Y
 pUDefr+5stvFp0SzZOTVnmsF+exPTBti6EZkPTT1BGZk8/rRCBOTatX+vqcGsu2g8Zdlape3DBs
 YVVTNxUgJMyKJw2XvyQnybRE/NgQ1IXUeZj6+q49OuqugdPvDrCmmZKsWzxnm7ogB41EFF+imIk
 xkFOjfgLDSrDwJWRpcQg46DxkMBHfIqjd9mFVWuNJcSFZRKQIg4aT1bxbUUwONkUcvzrYh9YtiB
 0UqnVpCnxmtZ9owhF2Y6oSEei5zC1kUDe50iziSHUV2Q==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, Zheng Yang
 <zhengyang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 04/13] drm/rockchip: dw_hdmi: Fix reading EDID when using a forced mode
Date: Sat, 15 Jun 2024 17:03:55 +0000
Message-ID: <20240615170417.3134517-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 666dc9aa24e0254b3980401b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100504_870003_E27EAE43 
X-CRM114-Status: UNSURE (   9.54  )
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

EDID cannot be read on RK3328 until after read_hpd has been called and
correct io voltage has been configured based on connection status.

When a forced mode is used, e.g. video=1920x1080@60e, the connector
detect ops, that in turn normally calls the read_hpd, never gets called.

This result in reading EDID to fail in connector get_modes ops.

Call dw_hdmi_rk3328_read_hpd at end of dw_hdmi_rk3328_setup_hpd to
correct io voltage and allow reading EDID after setup_hpd.

Fixes: 1c53ba8f22a1 ("drm/rockchip: dw_hdmi: add dw-hdmi support for the rk3328")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fe33092abbe7..aae48e906af1 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -434,6 +434,8 @@ static void dw_hdmi_rk3328_setup_hpd(struct dw_hdmi *dw_hdmi, void *data)
 		HIWORD_UPDATE(RK3328_HDMI_SDAIN_MSK | RK3328_HDMI_SCLIN_MSK,
 			      RK3328_HDMI_SDAIN_MSK | RK3328_HDMI_SCLIN_MSK |
 			      RK3328_HDMI_HPD_IOE));
+
+	dw_hdmi_rk3328_read_hpd(dw_hdmi, data);
 }
 
 static const struct dw_hdmi_phy_ops rk3228_hdmi_phy_ops = {
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
