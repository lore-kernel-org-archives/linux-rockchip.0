Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E19AC41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sTtjjwbTlcmWO3D1l37aLEITp8Xv16o9bUT/Wg6jR8=; b=O4U/Y2DNd7bry6
	oqP/VtZZHjcJzpAIOADjzGFoJ0s5uYqBsOYmyz8o+43gTTyWEiFIAWJPsIbFk+Xmeyi8U5JvFxcYt
	kmcMWjh5YedwzCrn9SHHYu7u/dJnhTc65Uz4gGcqPOgr3dVUZZf0sl26GKEm58iMVe1f/AiojN666
	eO3lwu1oWpCSjfdZD9JTkvgND3ZB9yc6OsHs36s0GpNSfHYMHmuQ1gR17urTaoVvMgJmIMUDwCjJA
	8AvX4uf2ZtfM9wzH+5hgiPr6R06mCd+rWZp6l8WPgey6LCRPuFks3qAutoRBur2fQQpn1KAkA+gu7
	PxWNsFz9NOuNppyTKqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjYK-006X8g-2G;
	Fri, 22 Dec 2023 17:43:16 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXY-006WKf-32;
	Fri, 22 Dec 2023 17:42:30 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-33687627ad0so1708063f8f.2;
        Fri, 22 Dec 2023 09:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266945; x=1703871745; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AvJnFMeaIBZd6lDR2+1UVvuB0inJkI3zLE1woR+vGw=;
        b=So2JWuWwTGFLTYnzBm0yc7I5PDn0huSOg49qGxbrGQ7XJDgbTlsmgmpVep/jKjjIHx
         EvK1smAgEfWB2ASrOOnH/VKR6cI29M26mCw6wkGfwNurGueHHaldL78E7ntrax0HhD7e
         JoYovPLNZBsE194ClyIXMEbo4c7loYLyDk801NzKMKLefKtY8RG672ppEcMAWTUDiydI
         WYwNuKN+arVw/C2IxwfbI/2QrKaE8jwVHMcJXMWM01MVBM8Ic/qbdHP1SMA2uKPXoYRo
         qIWT1LjmIZkwuSy68OeenuTHqpXBpmF/eC+o1YyJ1TIq20jgRUilINbjRq343FBYDg2o
         PZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266945; x=1703871745;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8AvJnFMeaIBZd6lDR2+1UVvuB0inJkI3zLE1woR+vGw=;
        b=QAk6xCmYKOf/YdOKZz+3RdaxKgL9Zn+uvzQJJbVVQ8flQA484yAGhrDXw4e72JyJf6
         axFETY50Etw/jJJTVLV+2Dv3fpMLcAY1ZSWq3DlqezIjM5oMhgGUYYz+d6n1Xk5vobUX
         BHGvdNLcIMAk35pbJreDodeb0IRe+sMpOwr7KHmWm/oHWLzv7+X5SHOnlj6GIkdNVibe
         M+OkkBqIBCC3JYhbKtjECj2t15YY1fHFrInu5PDfIaULl4x5QLieXUQEXKpnrKJw6ii5
         wjgU5v7mvS/vJopl8JLjyY6ZSHSRUdSYBMxWiFc3zCQ4lx67IKtdtVSC0wCQ1HkQ6XGO
         QSwg==
X-Gm-Message-State: AOJu0YyBwL+4brcZgEjOIjzxqHXkNKbTY3b3F8ioP6Ku2/D2GVz/PqLZ
	rt6kmazzWmkJMgQQ9wH4nA==
X-Google-Smtp-Source: AGHT+IHILFPGV8bXVLgso5JM9ZKyQoow6IG9KXyZ1hSIhSMLEgPOaAW0iXyaQSbizVOd8/5R10rStQ==
X-Received: by 2002:adf:f749:0:b0:336:8af1:5127 with SMTP id z9-20020adff749000000b003368af15127mr1196473wrp.97.1703266945283;
        Fri, 22 Dec 2023 09:42:25 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:25 -0800 (PST)
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
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 04/29] drm/rockchip: inno_hdmi: Remove useless mode_fixup
Date: Fri, 22 Dec 2023 18:41:55 +0100
Message-ID: <20231222174220.55249-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094228_997855_8920D33D 
X-CRM114-Status: GOOD (  10.62  )
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

From: Maxime Ripard <mripard@kernel.org>

The mode_fixup implementation doesn't do anything, so we can simply
remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 345253e033c5..0b1740b38c7b 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -517,13 +517,6 @@ static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
 	inno_hdmi_set_pwr_mode(hdmi, LOWER_PWR);
 }
 
-static bool inno_hdmi_encoder_mode_fixup(struct drm_encoder *encoder,
-					 const struct drm_display_mode *mode,
-					 struct drm_display_mode *adj_mode)
-{
-	return true;
-}
-
 static int
 inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 			       struct drm_crtc_state *crtc_state,
@@ -540,7 +533,6 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.enable     = inno_hdmi_encoder_enable,
 	.disable    = inno_hdmi_encoder_disable,
-	.mode_fixup = inno_hdmi_encoder_mode_fixup,
 	.mode_set   = inno_hdmi_encoder_mode_set,
 	.atomic_check = inno_hdmi_encoder_atomic_check,
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
