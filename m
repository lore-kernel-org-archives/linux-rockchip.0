Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3381BC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBd9FFaxxQmztBwHausXUlfQpQ0rHo3ll5MYiZgcPPA=; b=QKPudno0e6Hv9+
	A538TzF7G+2E3ZBxQSOIPVjYR3hj315aFlhMv7GBbr4xMv2zVzHW3CNMAoUQJQH2rZaf6fNsXUIfr
	1cRLZB0kwURT3U1JiKfAeLyzQxWQo59ASXWg65raOyvIAUuybb/HFiWea4S06BuLj9OzuJjaztuTM
	tox5G0wg0vIpLjO5Er4A9JNVXNzVBBn/yrpUW6ZEVJWE6dOqhclsZbuynt4EgHE78z/93ZuhS8xjj
	x6izGn4QEUllY02acTabBOCYQjnVQrAgg+cbAYUOu0fJAF2+EQM/rL8FeXx2TG5PscXbKuhWZ6Lb/
	AFqzvTS06oRPZ3713K/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjY3-006WqD-1H;
	Fri, 22 Dec 2023 17:42:59 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXY-006WJy-0v;
	Fri, 22 Dec 2023 17:42:29 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3368abe1093so1458592f8f.2;
        Fri, 22 Dec 2023 09:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266944; x=1703871744; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U2HtmTELSCmQNqADg2Zx1cwuvSj7RPiUvZpCNIv/8+8=;
        b=Vofq1CAdp6ciwkmHydsRqfqu8ckOH8o4NEJBRoYj1sAIoL4gflRqAJziZX1MxjVb9B
         d9XBuTA18DzB0LMW3rrRu3ac+ZN82amBWqX8Po45fUtda+n0mPsK0rYod/kT9knKZCmm
         KxaDurfJoiCFnKJnRXcYEW4PO80dIlm9sgXC8WpDZMJR2qnmHPKwPMSgZaDF4lT7E4D6
         FPpzAvhzltWjIClFw6LAj6iVPqBaxhhZdzoRu/Bh1urjm0eVN0eMgC1o2fcmxbSzRxn1
         E/V3+HnK8268UgM9K6gwx4qIEAr9H5zuSigvVysPOc1FfrXJ7vSoB353IPLkw1U/elS4
         qVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266944; x=1703871744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U2HtmTELSCmQNqADg2Zx1cwuvSj7RPiUvZpCNIv/8+8=;
        b=IM3LQf8B2zqaalS0p2cGqf21jSzhSDghP51RTWMPZsrJD6HWXJzJYeq9PFS2GNB3vZ
         IP3Iuipj2OULWusFfrpwqYbGqLX4gAjFj0xNCOTKMepf4WW/8e+e1ZiGEqfjQmvbaeYe
         M7XQleL6nQPlCWwhO2mNNPOPKUp8DuKH3EP6WZcrjBvAim9yiQMdteXSyj4FFbXAri1f
         xTowag6EZuHo1h2Gzn+RDQwZ4K9Ah7AXuJZg+/V1BRN7wDzQIPQ/2yHjhhOoDxsiUNXg
         Fk12EaXX6XXSLKI27WuQ7ENzPDRl9daTNr0nqHTZAxCrRyA7ho+U5cBADtFXUlmwmWg5
         TtyQ==
X-Gm-Message-State: AOJu0YzDB/dCezFv0xBmfPSmSZo9amMEl7KLZaQOzdAIQB/QLk2rGEFk
	tG4ri5kKXrW9vK1MHQbd1Q==
X-Google-Smtp-Source: AGHT+IFV/fIOXodbE6RmpDPeWLOnH4XmVWoyKpBmq+L8MCu5fyIARaUJmQScH13sxNwDp3moadiGgQ==
X-Received: by 2002:adf:dd8c:0:b0:336:77a3:2fbf with SMTP id x12-20020adfdd8c000000b0033677a32fbfmr947364wrl.31.1703266944629;
        Fri, 22 Dec 2023 09:42:24 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:24 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Zheng Yang <zhengyang@rock-chips.com>
Subject: [PATCH v4 03/29] drm/rockchip: inno_hdmi: Fix video timing
Date: Fri, 22 Dec 2023 18:41:54 +0100
Message-ID: <20231222174220.55249-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094228_329418_9D97382B 
X-CRM114-Status: GOOD (  11.90  )
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

The controller wants the difference between *total and *sync_start in the
HDMI_VIDEO_EXT_*DELAY registers. Otherwise the signal is very unstable for
certain non-VIC modes. See downstream commit [0].

[0] https://github.com/rockchip-linux/kernel/commit/8eb559f2502c

Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
Co-developed-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Zheng Yang <zhengyang@rock-chips.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - none

changes in v3:
 - none

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6e5b922a121e..345253e033c5 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -412,7 +412,7 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_L, value & 0xFF);
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_H, (value >> 8) & 0xFF);
 
-	value = mode->hsync_start - mode->hdisplay;
+	value = mode->htotal - mode->hsync_start;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_L, value & 0xFF);
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_H, (value >> 8) & 0xFF);
 
@@ -427,7 +427,7 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 	value = mode->vtotal - mode->vdisplay;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VBLANK, value & 0xFF);
 
-	value = mode->vsync_start - mode->vdisplay;
+	value = mode->vtotal - mode->vsync_start;
 	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDELAY, value & 0xFF);
 
 	value = mode->vsync_end - mode->vsync_start;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
