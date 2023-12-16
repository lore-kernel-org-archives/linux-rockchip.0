Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 554ABC46CD4
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yK1NFqqUeuues+2+8CG3w/DIsSCrhb7ltzZl3HJ5aEI=; b=JJaoG1kR6x1emT
	zL4U5ScGEvuzlxL9aDLUZ9yqdbNTkoEM5cgHgGIHUpNROp8K+0O15S9jTDacQdHUlZW8ngKIV5tem
	aMgSC9IINAmwxpty7IgaU9zMWNYhCGGhQzLRI8CJKf9EzfdMWU6kIn+U7p4U6JRlNy3WHDfBU/XbU
	vZUPd93+WRm39p7m/XlAGHm2sbcADw37ByRCe9Ra2g+MndhzBFZJ+XcapTW9vstaUHkYOdjMij64M
	7HH8PJLBrcnzwdH1PxllMyfaChPuj4C8hT3g+Dkes3PrcAHl28F/sKwNnJ9M5scIBQ+whIK42ok4J
	wmgy9nc6ZdrnovlojuYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWi-006LDP-2y;
	Sat, 16 Dec 2023 16:28:32 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVY-006Jva-2g;
	Sat, 16 Dec 2023 16:27:22 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a1ef2f5ed02so180415366b.1;
        Sat, 16 Dec 2023 08:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744038; x=1703348838; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XVVbI3UTdjEdNjMJt0TLf0s4Teux8aF6Z8rzwOg5CSc=;
        b=fEwKPXz+Sat0IDzyjkam3IrvFdVqw10KesI5nF4vsjDp6qDmGhNV1D+l2zzH5T3rKX
         +5Cw8Pcs6Rs9221zIlZkvWgRoaX7EL0mZ3L2AfBq/UAE8bhCh2gz/q0/jvT4/J1JHZuj
         avMb7PBpxv0uRUGUSYwttM+vtqaqwF/kygxnidfVH23FYqqb2WGRSL2H+BZE1F8RVtsW
         9+LTW+noPhtJ/zDCehY05M4NpPAun18P0ABlmI269xcZz9HJV3DajD0EOxbZSDn0DwrC
         148qJUVXePPQPMVP5vfwr2s6diAhPM2OqcuEwJxuDSR9y9wl5ybh1EOdx0Toldde5Gx6
         wwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744038; x=1703348838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XVVbI3UTdjEdNjMJt0TLf0s4Teux8aF6Z8rzwOg5CSc=;
        b=lv4ZBHW3IUR7AI7Heizq19RDCY5STbnVcZa+kclIv8yKNCVtKeD6Nw2v7hRR3fs8d4
         zAAqWVDVhHBDFpC3wfBnuqjskoqR+NNKwbPXcx7QpZ/8mixFx54Aj6IFdsTZo3BsFXjG
         dEzcCHay8NNwJpS7ngoMxMpgs60sOaek8UIqjj6TfLySRTsj1kzgNggnZ9OwL0WRI/Qs
         z4ht6H6QLW/DNZCbGCwghhyNC5Bbd/2DHqT0Hsj1pfZZBlrXiKT3qruVOCKEAlIIDb7R
         vEGnfujSiCpJnk6mfgZikl0xqxVt+Y9taw4Q7AOUEUh6vzifAOGPbNfrOI7Ms1QX6Gfr
         lmCQ==
X-Gm-Message-State: AOJu0YyghezlvA11STx/20CP1GD/ZqNyXW+/xCAqBAVQKZAX7VyIRXIL
	3ZYx31LYsxkwwxdAvixVBQ==
X-Google-Smtp-Source: AGHT+IHHs7PgwtHCDlp/FqUXAIhufy7iNz+SxosjtQiOzqhHkLXHcAd6A1Uk8Np38VLThP5p396hkg==
X-Received: by 2002:a17:906:287:b0:a23:2ccc:8eb1 with SMTP id 7-20020a170906028700b00a232ccc8eb1mr368904ejf.134.1702744037655;
        Sat, 16 Dec 2023 08:27:17 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:17 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 16/27] drm/rockchip: inno_hdmi: Drop irq struct member
Date: Sat, 16 Dec 2023 17:26:27 +0100
Message-ID: <20231216162639.125215-17-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082720_883159_E22AD3EC 
X-CRM114-Status: UNSURE (   9.99  )
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

The struct member irq isn't used anywhere. Drop it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - new patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index e37023d8fa39..d9eb8cdc0148 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -45,7 +45,6 @@ struct inno_hdmi_i2c {
 struct inno_hdmi {
 	struct device *dev;
 
-	int irq;
 	struct clk *pclk;
 	void __iomem *regs;
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
