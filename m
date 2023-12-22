Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F9EC46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJd/kUoY2SyZO2czaD7yLT8RMqmIKhCCn9lO50DGKTM=; b=xtCxXpciR94cdY
	LeTF/CsuSS+sQA+FLDIzG4mvabZCasDe7uz3okJKcdWYXCo+zMeD24IRya2B+3XTuuKZ8WdcEsyku
	DEgbUEwtRSO/OllJ8pVCX7bBqc57gMKYJVICnIxts3XeIu52AtylUGEo2rc1SoCsZYnasiFCaVeuF
	3jU5jjj++Hwhe1cFlRG06i15LdMfGtfSRjICkSQj+FOMeDwsH2mI8xCz5LsLM+vaJE1mhemF8pC7E
	+tTluiUrB3icxmI81pOeNQq+kWE0WqNupjjViNTVyttUYrFHi3kuiySvFSGui7lM8ggYmsA79nCsS
	uzCRMwuCP35WriY+KKrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjZR-006Y9I-1j;
	Fri, 22 Dec 2023 17:44:25 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXf-006WQh-0s;
	Fri, 22 Dec 2023 17:42:37 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40d4a222818so3419505e9.0;
        Fri, 22 Dec 2023 09:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266953; x=1703871753; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/FPPxJuSjh4vXrR5zkAljtm7LBwORW2untky7snjAo=;
        b=fIPlhGRI+tTZaNGmpFNoVIlwH1RERB9mQx9cnG5G+36lreI95LvkLJd2m4PSuTbE0N
         ZDQueC4D9sA/VXF/D482SYFZot5pzoPbVqRR7dj/D9QImm/oE9h16YgqDYO/PdfgieYj
         c39Ns9TyYgbRQPTrdyABztTo1PDiKvyFUkRbMvPdv3RRUWHqpjOFxAvmraDIwBL7VQm+
         G03ouhKjYXpO3Nwzdso8fW3bpeVHCoKUotncDa64EsR/iwpfq4hvxw5/sx9UKlwE32VO
         R5onIreUK0b8M7Fpn+3g+gs+IGNeSn//HvFnz/fQFo5yaS3dlAmgBFQSs1l4VjaY0lz7
         CRPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266953; x=1703871753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/FPPxJuSjh4vXrR5zkAljtm7LBwORW2untky7snjAo=;
        b=plGXtxGObWRxxezAk131d0pK6wKPM+ZSabv3wxJDq7TaCS9TGzKqTb+XXwyYdL/25Q
         SGGmm+Tcs78LL3+kCkoCTzshDXie4MnqFUFFgHMv/yNzs3r+xBbrh4gvcWMNKAY0KPz4
         QJhXfbjw55PKvUcmBVZLHktlzo2duSjIX/91CjU7g/fM+GOS14HjzQ75Ck0kJTSCzq8P
         eg1DhJGOL4ASiJEanJBf6A6TLit9Sp2voJKL2xg9nX+ABcbPZUAFsa6vrOYeJmQK7Qpc
         7jwbCfN989j6QF/HLxMsFDeTqC2SNrMSttSqMD5q5wF7fn9/OpC92bEdSeRqykcbigs+
         uW4g==
X-Gm-Message-State: AOJu0Yzn5TF0tVIACxLVDuSUnBEhA8Qx4XDrM/ZVcKvJuNIOo8MZggai
	BeLqsnbCq/RRmSxkglfvtQ==
X-Google-Smtp-Source: AGHT+IESVQNuwVKMm5k3RVva8Soc6Echl59mQa32aRicQaMoyZBUEGDXAro7m0A3Md1PmbcYnl/kjw==
X-Received: by 2002:a05:600c:3c9c:b0:40d:40ea:a0ea with SMTP id bg28-20020a05600c3c9c00b0040d40eaa0eamr911042wmb.130.1703266953617;
        Fri, 22 Dec 2023 09:42:33 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:33 -0800 (PST)
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
Subject: [PATCH v4 16/29] drm/rockchip: inno_hdmi: Remove unused drm device pointer
Date: Fri, 22 Dec 2023 18:42:07 +0100
Message-ID: <20231222174220.55249-17-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094235_338248_0CABB0AD 
X-CRM114-Status: GOOD (  12.49  )
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

The drm_dev field in the inno_hdmi struct stores a pointer to the DRM
device but is never used anywhere in the driver. Let's remove it.

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

 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 49367ca24125..51c1a69dfcc0 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -44,7 +44,6 @@ struct inno_hdmi_i2c {
 
 struct inno_hdmi {
 	struct device *dev;
-	struct drm_device *drm_dev;
 
 	int irq;
 	struct clk *pclk;
@@ -757,7 +756,6 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		return -ENOMEM;
 
 	hdmi->dev = dev;
-	hdmi->drm_dev = drm;
 
 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
