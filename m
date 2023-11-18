Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBAB3C5AE5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Nov 2023 17:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yiGsI7Jab5G2iZwSDMUwCrMmqJuL326UEqg+ayLLLk=; b=Q03RaKdB2NIT2f
	h2P95gT0RgxWIqy3hgvw9R1/42Cum94f5JE/39C09HAFq69doKgZfGT1knM9B2z6+rEMRTDOBCn5q
	Dq9IMvgkHvrhlo11ijq93mPbdXX1uwdoj++ZEL/qDlXVHi7Sjujblu9+uCHrSznf/JUEOtktWGJqm
	XMr3OSZvbvekCqD2r9u+AtLelL1UTZ9vSVdrxd057LDB6Wf4FzXoR3wNKzbjhRq6aasTpFc9DDKge
	vysqIKLTpe1tV8EwRWOi0BVLCOW14769hfLTADGrZmvBbr2c/rPb20TCj1JLCQdf2CWF+rxpnp16h
	p6YIJrhxrFZMdvTpzztw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4PL4-008uxr-12;
	Sat, 18 Nov 2023 17:42:38 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4PL0-008uuj-1G;
	Sat, 18 Nov 2023 17:42:35 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4079ed65471so5025925e9.1;
        Sat, 18 Nov 2023 09:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700329347; x=1700934147; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Flg3cjX3M0BMzkNxd6dhw9SgkIHrrzmjyvbrc5ZWO1w=;
        b=EwilQIYh30TInxRzc/7bcbsbQdr6axB3v15oI74eSzBUXKyNfny/BBb/RVYujhYd6r
         RaxMdxxoYKU+IIbDciQLRtxZEopaF4oJXNziqKtWh0dT1ZkVbxgBJw/+Xq6yS2MYClOz
         X73En/uxr4wURaUcSAqIafoPH/QpYqb3Hnlqi1bpiRADnuEj2wfoNrQmR3uO4WmsZWnz
         XXsQy5VOc70XR4XKnCsboMJTZuet6JVKYWqbGOhHaroL991NtoggkVLVMVTVnzW92oCz
         pFUlHeuTeK+WHVjSRpTrxlZxaZphTk78l1ApPBQGjgQsuEhC+P8gdRD42haCAL1fuj1W
         tsmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700329347; x=1700934147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Flg3cjX3M0BMzkNxd6dhw9SgkIHrrzmjyvbrc5ZWO1w=;
        b=Vzp45FpqseX3xVbywjIQQUWVXHrtXcZoJuS+gMbTNPNNkOm15ERySMPbPRQic47gan
         ncnVGppbsSVvp7d6WxoYEYN/4rTTJooVYTPpkAM5mJnpcXTW13/s+ziRMD034szZOqWF
         d/G0/M5t9n96UofbCzp0mc2a5MLJkUqHF/uvqb7vdHxjjKQqmfCjLfTLXXrUbcrpJEWk
         k1x4i6Vi3PMpXlrpxDNU/yuPx1WFg0mac84ollz2zp5XBLpPC4rTlWm8MJsFAKwts8aO
         IttGxsvv9zP36gCNmEttU4JUXkVGMpEqpzhSjwVqVpK0b2RJFRKUBnCCU7coNOA/WPIc
         mxOw==
X-Gm-Message-State: AOJu0YxaoeqOC2IptGLIK1ABwlZK/yssizN4oY95NlttxoVEDLh0Y/UM
	bA8rxGYzbt832/xuJ9P6T+k+hQ/9Mgo=
X-Google-Smtp-Source: AGHT+IGchLGNn/UTh+TSPBum/ynhaPI5RIfSnYeSODGRmp9mYu+xtswabBOKG8QD70Eu929TNCd0ww==
X-Received: by 2002:a05:600c:358d:b0:406:849f:f3cd with SMTP id p13-20020a05600c358d00b00406849ff3cdmr2461814wmq.29.1700329346812;
        Sat, 18 Nov 2023 09:42:26 -0800 (PST)
Received: from zotac.lan. (dynamic-2a01-0c22-77bf-8300-2223-08ff-fe18-0310.c22.pool.telefonica.de. [2a01:c22:77bf:8300:2223:8ff:fe18:310])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c340a00b004068de50c64sm6964211wmp.46.2023.11.18.09.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Nov 2023 09:42:26 -0800 (PST)
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Wolfram Sang <wsa@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>
Cc: linux-i2c@vger.kernel.org,
	Heiner Kallweit <hkallweit1@gmail.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/20] drivers/gpu/drm/rockchip: remove I2C_CLASS_DDC support
Date: Sat, 18 Nov 2023 18:42:01 +0100
Message-ID: <20231118174221.851-2-hkallweit1@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231118174221.851-1-hkallweit1@gmail.com>
References: <20231118174221.851-1-hkallweit1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231118_094234_431058_7CBAA5CD 
X-CRM114-Status: GOOD (  12.60  )
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

After removal of the legacy EEPROM driver and I2C_CLASS_DDC support in
olpc_dcon there's no i2c client driver left supporting I2C_CLASS_DDC.
Class-based device auto-detection is a legacy mechanism and shouldn't
be used in new code. So we can remove this class completely now.

Preferably this series should be applied via the i2c tree.

Acked-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

---
 drivers/gpu/drm/rockchip/inno_hdmi.c   |    1 -
 drivers/gpu/drm/rockchip/rk3066_hdmi.c |    1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6e5b922a1..a7739b27c 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -793,7 +793,6 @@ static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
 	init_completion(&i2c->cmp);
 
 	adap = &i2c->adap;
-	adap->class = I2C_CLASS_DDC;
 	adap->owner = THIS_MODULE;
 	adap->dev.parent = hdmi->dev;
 	adap->dev.of_node = hdmi->dev->of_node;
diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index fa6e592e0..7a3f71aa2 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -725,7 +725,6 @@ static struct i2c_adapter *rk3066_hdmi_i2c_adapter(struct rk3066_hdmi *hdmi)
 	init_completion(&i2c->cmpltn);
 
 	adap = &i2c->adap;
-	adap->class = I2C_CLASS_DDC;
 	adap->owner = THIS_MODULE;
 	adap->dev.parent = hdmi->dev;
 	adap->dev.of_node = hdmi->dev->of_node;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
