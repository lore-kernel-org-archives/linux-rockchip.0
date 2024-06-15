Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 384C5C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUunKPStNXgQnCTw07uP9WGSrt4urtOHr+eX/yKI7ew=; b=O8x9VLSaU2SAd0
	mArdQRQhf4PqSsVPE/5JL5ymj8tuCdbb10Wf7j7XVnmN2M0tn3UmzFVWc08C38N5/DHYTCtkgaP4t
	cOUbpfhEIfC/PusZZbnqHqycouLATEX77kPzuTDWXJT+nxoS8vvGvhnYyotD70cH7H4iyXMBIBKSp
	2Ilar8ad7bqvxwOm/Rh5udwWHMAiP0CJG3LqSMjRuWy8OsWjNe4o6HL9fXvDbBWDjS6lQ4gTzj6IE
	gVTPCmS8ul7+/GbEgc366oUnCNTcqYFrTlcmIhlzvePS4Z2IZzYdLPekAfX+WuxQdWbaBLSVRzbTU
	YTYBzp4qbKo3JXGzlthw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWr1-00000005mvw-1rQj;
	Sat, 15 Jun 2024 17:06:15 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqD-00000005mJA-3NV7
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471109; bh=tr1oTKBW1hAs0ekTXTS14VMXssfmixvxHWASJNa7PTY=;
 b=f5N9xyOmyuhOFqSyEfVYr4k56ZXwDSRcyl9WJLspyEJtEJD6g80cFk6C3oNHLy6i2E7PLrIwX
 RvXlvhEkHeGYWN1iNkh8VQzHqbirIaVbYEkKaoPrYTYMD0iEmS/OyWkSem+rjOjHcYl/0p/0BDK
 SO5o2FqKI8o5wRNzXaaI58sUVuWC4oSaOgqb6Ge3QLkgo/l1Py1tYAGr6jZ3yLNxmGakqYkFQTE
 LZM7aqy6CZTl9tLem3n/vwpn8ex52yQWDcoKhkZa2X9yKtHI76ezv5GcDSO+4LvmVgMczKFB5tS
 I2lnYCcWR87hFLcZ52/Ygpxll78lp6XE1cjWnEIa7kSg==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH 09/13] drm/rockchip: dw_hdmi: Add phy_config for 594Mhz pixel clock
Date: Sat, 15 Jun 2024 17:04:00 +0000
Message-ID: <20240615170417.3134517-10-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 666dc9c124e0254b39804075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100526_015471_5591589D 
X-CRM114-Status: UNSURE (   7.56  )
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

From: Nickey Yang <nickey.yang@rock-chips.com>

Add phy_config for 594Mhz pixel clock used for HDMI2.0 display modes.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 205cfe02079f..9d5bd7455180 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -206,6 +206,7 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 	{ 74250000,  0x8009, 0x0004, 0x0272},
 	{ 165000000, 0x802b, 0x0004, 0x0209},
 	{ 297000000, 0x8039, 0x0005, 0x028d},
+	{ 594000000, 0x8039, 0x0000, 0x019d},
 	{ ~0UL,	     0x0000, 0x0000, 0x0000}
 };
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
