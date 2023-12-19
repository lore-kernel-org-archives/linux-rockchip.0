Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69D7FC46CCD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYrsUhV1/I1I8w+w6+MTPlV3SDPQUyv3l3rufA2/wNc=; b=cGqNGM7zFt6EBG
	OEZ5R4yDxCprP9yD/mlNaJvWIoPm1B2PS0vwUV55Ixfu9wFdk5xvi7QbIu1C2h837B+p/Cn8MuM75
	ClZUarIwdIzdeLtVMudJnTd/iHSngMID6wC6zly3ubokLMvxFynUTRtstgJu5KpFF3cFyv8XkvUwC
	hlptAVUTl8T+QkM9ED63usb3tQ761LtVgyy2n5TTVFw2x4NH6+qIBp8fDLLrcAL5wqLeKJZ03h+7C
	SRGeJDFzf3b+NvvlEyWgxxYinNTOItARzQpmDlsx9agNZa7JhAyv7yzf+Te1EEHUBc/+g1PE446+3
	3/O8Wp+wZoBmgFYf+p+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdUI-00EpPQ-06;
	Tue, 19 Dec 2023 17:02:34 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT9-00EoAS-0q;
	Tue, 19 Dec 2023 17:01:27 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40c6ea99429so48500975e9.3;
        Tue, 19 Dec 2023 09:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005282; x=1703610082; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+s72CnTe6ZV2IMv3pM/65G6mJvxbtoIjfslzb5tL7Ro=;
        b=JKzSfwPTDQ1dFYGtxuofS+qLMLMKYqE0jzcHyXQ593PZAf4451yulNpWOmU+mNVdAh
         Feaxa3lGfdghrJ06Pkbellz0JZ/XfpLSXtFAsipBxcC0olb+lSQYcOtaN4PpA/jvU/qg
         QOelVImog3XuJjFip/NK8PPpqzi0+BI7b29zzlpcAU/CzYM+I5+RM4YA19KSDCLaRrSt
         JFjlpsIrHevl2F+cLEeLdNDestNQCn9sVLHt0U+BbPONqCu3dzs9KwxuX+94pcEsXjlL
         JVSGZfqCmO86G/WGSf9kMBvKbS6UNY5INxQpmADdqD7QEpEq9y95Qoorh2YJnW8riDHm
         HMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005282; x=1703610082;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+s72CnTe6ZV2IMv3pM/65G6mJvxbtoIjfslzb5tL7Ro=;
        b=qpGfuqsK6PICvd8oipfqDtpjPD3H8ewgAwJEubdQoF5+4iDi++SCnEYmH2GaDibSXU
         iY4cq0doF2Zp4nki2iZOUc5S3ckBoc1AbXzedQBGaOC0Noq01jpdO51UWM369tEbXZaa
         cVsv5T41BTbYEskoRJ/l9Hbz4Isvu687degFYNsrfHvCxFGqM965RwY8xkX3kdlh7TV/
         INCYw2qzw0zbrefgAoaxdV7RXljv7/HCuhCF1/6UtdimCSbs89+eckRdb1qpQ4Km6jfr
         q+acaOuYZGMI3aEnvOvJKQ3KmH3c0M1KTEI2U6sYq+20RolH3av958SbH46Ypz5xkm1v
         VdPg==
X-Gm-Message-State: AOJu0Yx9o/kt4tfhK0WRV2+UuF7NBgXkmYdP25grJ3j7KsRuZ4SExXtg
	qrskGov1w/5jMY/mGa64Xw==
X-Google-Smtp-Source: AGHT+IF42FDcOro97JAPmk/FhpAyFJfar6DWOBNmBzFRzZO3M20X58L49lSjppkjM2XFoVbHdGgTNw==
X-Received: by 2002:a05:600c:244:b0:40c:2b4c:623f with SMTP id 4-20020a05600c024400b0040c2b4c623fmr6217351wmj.82.1703005281769;
        Tue, 19 Dec 2023 09:01:21 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:21 -0800 (PST)
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
Subject: [PATCH v3 16/29] drm/rockchip: inno_hdmi: Remove unused drm device pointer
Date: Tue, 19 Dec 2023 18:00:46 +0100
Message-ID: <20231219170100.188800-17-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090123_333562_90F60153 
X-CRM114-Status: GOOD (  13.17  )
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
