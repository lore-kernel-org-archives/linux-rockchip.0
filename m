Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68159C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZqhqDaHNUI8/nFwKdYubEtCMmV4VCPzTOaKQz1h1H4=; b=28GkpQ+0zELQjt
	lQX0Wximq8IAK5QbWZPySMRCMnbGFIv1UUZyDftZaZ50EzV4aOUAQcGRyYgvo2Ltk1oMxqlqOCB0f
	mRdoCzJ2zFHUnjsF2gzr0PKF1GxWwT2c39MzVyw59RPDDDweWTwtgT3moBLoBa0AjrkTVQ9Vl8tg0
	pVNde7LQAWpZ8GlvcFC/YISexpvNJ4Cz9A2+xlQXaQDte2A9vGa5ty1L6GZ4bhZc0bP/VkfzulUhb
	B2F+t1AYVnxdHrx2Bj9s5nho6dB/MlaszfXLRe0fUkCSqMM6dJO4T07s0W878NTB7VlmFWz8trcak
	ARp1glXgHf2boG1TT97Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWpw-00000005m6m-2ZHC;
	Sat, 15 Jun 2024 17:05:09 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWps-00000005m30-3NkT
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471093; bh=rE9asUiY4ZOTyebep+Vmd5NsRtFQtl4VkUu5CnexPvE=;
 b=FWXFcMP47lR8H8YxHNYa/fV6AxS1uFcmdCAZimBCRF0xVz31IkkUJckVerEyecHBog7vL1+NV
 ZiG3dqOJtrA/CGmGMtW8tlF3z9KiSOY/E1UvDY1kZmNPhdBWANgUzrwJKIzAwiN1Kqu7axM4DFS
 EZ04XIyEwgcYS62O+D7+1Cg69SrZ2JBnht/jp/MV7I0X67L7NN79ZNbJRNChzd5BjJpEtFhbT/N
 3Bhdp53pPmL7Nb5plZiF6FcxN1nIbS/Sj0H5IYsdHB5G+eGDx+4aDYqltHoQUAe89jcJ94devY0
 kX7tnZpOn0ZMaYisgs0zO+ZLwRBy1JjN/oGcIM71wmUw==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 05/13] drm/rockchip: dw_hdmi: Allow High TMDS Bit Rates
Date: Sat, 15 Jun 2024 17:03:56 +0000
Message-ID: <20240615170417.3134517-6-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 666dc9af24e0254b3980402d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100504_935433_5C88EAF7 
X-CRM114-Status: UNSURE (   8.03  )
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

Call dw_hdmi_set_high_tmds_clock_ratio in phy init ops to allow support
of High TMDS Bit Rates used by HDMI2.0 display modes.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index aae48e906af1..5df9c9a0d369 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -362,6 +362,8 @@ static int dw_hdmi_rockchip_genphy_init(struct dw_hdmi *dw_hdmi, void *data,
 {
 	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
 
+	dw_hdmi_set_high_tmds_clock_ratio(dw_hdmi, display);
+
 	return phy_power_on(hdmi->phy);
 }
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
