Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B166C46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcAPmDBEO82xe/D4YEy3Y8U5mtCIPHXTmKfXNDxviLc=; b=KnIBCtmYZr1u1b
	rYaNVgT8hohl2r5usFNf/AcLksROFgNle16qEdM3j4nre4Xxvo6TyHFweeJ0AEI+ivyIBCmWnfLXv
	pnAXH2dM5bkTsIom+z/lxGvUy/QehEXSs3xZemOI2L4Ff6ytNyin+c6Suvv6jrvvu2m8hScdhfRZ9
	BALzExFPKVF1OPwsaBv0oL9mUfgkhQVfF7BJf7P/C67SZvyxYsZJuBb5AwUXg3n+5lKAVLdE+1CYu
	GdeGzpqn5+fXcJbBTcdDgAsjaGYFelKMj61OGJHbn9mFhAHhXtNqNTVlH6HDqIpRqOwibtsuMfz4K
	nsloFVPBGqF2vL0rdvIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWh-006LBj-0Z;
	Sat, 16 Dec 2023 16:28:31 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVY-006Jul-1w;
	Sat, 16 Dec 2023 16:27:22 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a1f8510883aso214228966b.3;
        Sat, 16 Dec 2023 08:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744037; x=1703348837; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=73XUcSiZm29Hst8BGY/CNDIJrl23XpjPpmNwnFVb4KY=;
        b=VM48+TUCDxwgtiLORsKbnkGrKAtYatWO96OYCXxE1Wrx162UZ4sG0FJW4ecpa5G/a3
         ZJ1+vZRROm22ug3B2W6MbBht/7AdDKw1yN2O1pl0xtiskMeJTRr3N5VvMd+nchYt4UbB
         ZHCsnl1u5fxmG+035jxXsC7TnDpfCnGq73xLKGn0viauQ6iR/FPskwqxGOpoAqP96LaW
         sbaQzwTl9yrkxCuAtb3Ta50jSyPUjGno3UrJfjJCtXe/cfwZ3LsNDNcA4rHR1xkJxDJr
         wadCfR3EO82fWs5bOX1IsgEAs81eISqP8MtvjhFn5FrFJyxwLhZ94dRf3/q8eEFYf6LY
         u1VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744037; x=1703348837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=73XUcSiZm29Hst8BGY/CNDIJrl23XpjPpmNwnFVb4KY=;
        b=XgHLE17SIS8rmeKWGReXXmf03DQ5VUby4rDIovQLv6hGpJtTAnFZ1CcfG1gbD5iNGJ
         pn/+sbBcI9pu427RyXbOFGxC/Cpx7WOLJCkrSYPUPl2/93NbFPzF/q6uMS2h80YVeXTD
         5JgnVaJul9rxKKAobX9RPTU16Eeq6yHd6gNjtMAMMNTnOAArCEY7uNSRrF+j3DJZbN3e
         ZnldxIIJtUUhlr6ip8H0gvr3yPK79ra6YRlm5L8N4hbjE+cuiGWMG8SZWfWw8j7G6ue/
         UB6/3p8s2cJWUPmByrsoiLdDswf1zPfGRS90UmPpMh6B2BLKDsAtSl4cNoNANTZuFOK2
         uMGA==
X-Gm-Message-State: AOJu0YyDWTYRKH+2fCO9pUwJACUeOOvuTCvXqOFJgyjvUBkac1uyCMEc
	fnOov6QWc745ek+d91nMPUautTcpiw==
X-Google-Smtp-Source: AGHT+IFqBPxW/2QVy0WrDKBDbe9uYBS+XAaayLmej63jccZiISHw1g3uoqKtiDcxw89fuZb28tBdPQ==
X-Received: by 2002:a17:907:724d:b0:a1c:a39d:dcbd with SMTP id ds13-20020a170907724d00b00a1ca39ddcbdmr4339820ejc.232.1702744036964;
        Sat, 16 Dec 2023 08:27:16 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:16 -0800 (PST)
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
Subject: [PATCH v2 15/27] drm/rockchip: inno_hdmi: Remove unused drm device pointer
Date: Sat, 16 Dec 2023 17:26:26 +0100
Message-ID: <20231216162639.125215-16-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082720_671472_9AB93A87 
X-CRM114-Status: GOOD (  12.42  )
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
---
changes in v2:
 - imported patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index b6b34f4b8cda..e37023d8fa39 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -44,7 +44,6 @@ struct inno_hdmi_i2c {
 
 struct inno_hdmi {
 	struct device *dev;
-	struct drm_device *drm_dev;
 
 	int irq;
 	struct clk *pclk;
@@ -760,7 +759,6 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
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
