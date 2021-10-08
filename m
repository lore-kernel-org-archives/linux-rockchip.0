Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D175C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 22:31:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 219A360FDC
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 22:31:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 219A360FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rYTppSTOS9/clksrRf+188pl4SbSqOBIW8MpxuLQMTE=; b=uqg4rzBPJ3XRja
	7XDCxQ2X2SxcdUjLngapml9F0H+1Y9J0UBwXtqd7cO3cD0RS4zdcV+tgfEuNBjdu2UxcOaoUnNbqj
	/1lTV06ZWDXhwijoSliIqLJtEgJP7/tpL5ZJL0McN2hsEzXAZh9OZH4Nh3QGN9zeo1KgIOgdkdcnH
	1fwy/7R2ucIDbm9tq3hsk6R+A2Ve66+LOaN9u8ZiLyOgUobhwvcpFNPmI8WMjKxAGf6CAHl7ogdXp
	tuCqv6QRYJf6hLXoIVlq4AGrIxmjXQt0x1ZHb7NIVkjP59zqdOlRk6gz+K7zD5x2+NhjBJyGBRHYl
	o86eQ0OzFEOBzU4zRYpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYyOZ-004Ilo-JX; Fri, 08 Oct 2021 22:31:15 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYyOX-004Ik9-Hd
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 22:31:14 +0000
Received: by mail-pj1-x1031.google.com with SMTP id on6so8602875pjb.5
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Oct 2021 15:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x2SslUtgREFqZPZutv1E1PPwo3SH8tGLrCooYjOSvSU=;
 b=ZzZ/oSyVvoCxGioRJePesqRhkD8P2jQXTVcAX0CSI1G9R8HExP9FXtY+XQlKn5YwJQ
 qjt7JjgwliSD9ml2KeVlqUGfztZlit9CnKKQ3SqdIAiUEZRePGUnB/vct3RXKVd5dau0
 gcCGc4KcFgDBUvgeLus8NKt+CpGuNnJGCnc7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x2SslUtgREFqZPZutv1E1PPwo3SH8tGLrCooYjOSvSU=;
 b=EtayEq7zUn6qAvmZzWXKz1jps+uXqYg+Jpd6VLFXw8va4OxigEQ5AaZBqXukqsea0q
 SttKHuiQdutlO1+5GLUBafBHPIM4kO8ijBZMHa5L46Sb4Ictva0rvjpSzJB+/rITPt7d
 8Ycw28xJtxs9sMTpKi+chk6UMACui2zIqYWTA8KSE6L4PvhRfTt6SX2qNoljkbTdK9wa
 jTy0gyhhoF4aaF0Yfy5LCKmXaZFqif44XWf3GgKkPMRrq/7J+PC87oCn2Y5dD7UmPay3
 OdysOi4zrg1coWqKXHmxFBaCjPTgNVRqKtFwxRGZiNZnHQGyPzi5KMwCyucDf6feLOXK
 UReg==
X-Gm-Message-State: AOAM533kJTQ2HE9FcDDuvEZJ8DPJ2tDAeK85IdYhgN0iKZ+wqFHZC8XV
 8BjjX7b/PvhdwdTB5KQCJJckrQ==
X-Google-Smtp-Source: ABdhPJxUwsepBnEFFQTQHNh7+2nFo7S8tcOEzslFztnMxkYzwYSLSUB/2QlZPi9UFdSP/NdTQY+cSg==
X-Received: by 2002:a17:90a:e547:: with SMTP id
 ei7mr8195089pjb.169.1633732271765; 
 Fri, 08 Oct 2021 15:31:11 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:2a6d:84fa:761e:91e4])
 by smtp.gmail.com with UTF8SMTPSA id e20sm312867pfc.11.2021.10.08.15.31.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 Oct 2021 15:31:11 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH] drm/rockchip: vop: Add timeout for DSP hold
Date: Fri,  8 Oct 2021 15:31:04 -0700
Message-Id: <20211008153102.1.I2a5dbaaada35023a9703a8db7af501528fbb6e31@changeid>
X-Mailer: git-send-email 2.33.0.882.g93a45727a2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_153113_625334_68FC57A6 
X-CRM114-Status: GOOD (  10.64  )
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

If hardware is malfunctioning (e.g., misconfigured clocks?), we can get
stuck here forever, holding various DRM locks and eventually locking up
the entire system. It's better to complain loudly and move on, than to
lock up the system.

In local tests, this operation takes less than 20ms.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index ba9e14da41b4..b28ea5d6a3e2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -726,7 +726,9 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	spin_unlock(&vop->reg_lock);
 
-	wait_for_completion(&vop->dsp_hold_completion);
+	if (!wait_for_completion_timeout(&vop->dsp_hold_completion,
+					 msecs_to_jiffies(200)))
+		WARN(1, "%s: timed out waiting for DSP hold", crtc->name);
 
 	vop_dsp_hold_valid_irq_disable(vop);
 
-- 
2.33.0.882.g93a45727a2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
