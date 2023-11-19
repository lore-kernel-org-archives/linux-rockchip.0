Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0F78C5AE5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 10:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yiGsI7Jab5G2iZwSDMUwCrMmqJuL326UEqg+ayLLLk=; b=KsTn/JwQeamoYC
	g5DhIH3kqFi/HBnd0LatYZjOo/Yh5UjFEycF+0Q3Qxm//2Yx863Cxa5DzGyJIe6gcwPcgQD4yPW5l
	/474/COO80lJaziqUCGyCW1Z4HLbTtKBlH5j1GLkErj6MvYsucTkETEk/414E1ACejqm/DPJXekG+
	Khg+7B7IwXT+Fqie8EebBazMv2SeffYKyhcZ1BIsgfvfoNAIkQJ2Ja3TzZOq+UIi6VRS97RdtT6L1
	3+KlFb7G+PwhAzgN46SdIyi9X7/axLQ+WvW2d1yWFKYFRrwPagEcw0HWhVJL+nsmMt7epYfHON111
	PY7PGR0tOSRFO2R2v1Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4epP-009pJN-16;
	Sun, 19 Nov 2023 10:14:59 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4epK-009pHd-26;
	Sun, 19 Nov 2023 10:14:55 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9fa45e75ed9so135143966b.1;
        Sun, 19 Nov 2023 02:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700388891; x=1700993691; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Flg3cjX3M0BMzkNxd6dhw9SgkIHrrzmjyvbrc5ZWO1w=;
        b=b8jilLy8VOOZaIrPs2XrVSlBM5zlmGHp3uA2/u5+9uIHI/VxkaeGdjC8UK/A9888Tb
         MONNh0/50ljPKwXlxwETEdHbr6MiQxFbOU0dy5TKpTS2TU/9bYYHbvSjCAk/H6y/73yZ
         cfnwRVYDUfHy3HO6mLoxnviWCUJvibT28sd71nVBotk4QVWSvPJ50Vrx2KGR9NFtKdKE
         CRhXJ+0qUPSV8wDN8SBcwGFYpcVVzQUDA0oJx2LpYIlehfyPQAlLmEbche7OriRq+MFn
         cLGRu3ywyKuADsSXm0urySmgoNFqx8bnk8oRN8zJqxc5zMIif4vwdSMHtasRTa0e6Cd/
         Zf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700388891; x=1700993691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Flg3cjX3M0BMzkNxd6dhw9SgkIHrrzmjyvbrc5ZWO1w=;
        b=HSaZT6elSLbw6EMC6GD9oB2z3oIHgs55a/F4wsW4TFg/yao2kwfzk2LFLlHX+Dh7ZL
         fHMFTutHHJlrQc/qTLB7l36XXtAKVwZlkBsZRhCaFLs9ZfM8zZiHGNIODG3W5IjhwYoG
         K+ibR13vudDWZlLl6aESUSfH1d0B9OBZMCG0m1Kyj+4f3QeWWq04YNgP7HdP/cwHqlGl
         JRUrO2JEgMgjl2kYFKSgSOdWX7/1MkOyYxZgXpNvK1sOqI2HNBOMbQgvouUGHKhO9PKM
         2znICrQ62rdOk/gU7wiDGLtPtQcAHMDtOCH0mqyNLHS3l7ux/RswBpiha7u6fvWeT+4Q
         GDIA==
X-Gm-Message-State: AOJu0Yxll6fSZK+t4CkxqrCFU8kGPF2JzPVuY0J0+NCaqkvjfJW9XURH
	0tIV2m0b2YqxqwaL7TP264A=
X-Google-Smtp-Source: AGHT+IEEVozgrh/6Rx9qN+MfKy5rNAZjGHZv+pzm8pL0WUjL9KQQ2Sv26qqyIC1UTM8PRyGpjsraBQ==
X-Received: by 2002:a17:906:7394:b0:9c7:db3:8b31 with SMTP id f20-20020a170906739400b009c70db38b31mr3495931ejl.59.1700388890388;
        Sun, 19 Nov 2023 02:14:50 -0800 (PST)
Received: from zotac.lan. (dynamic-2a01-0c23-bde4-3e00-2223-08ff-fe18-0310.c23.pool.telefonica.de. [2a01:c23:bde4:3e00:2223:8ff:fe18:310])
        by smtp.gmail.com with ESMTPSA id p20-20020a17090628d400b009928b4e3b9fsm2743581ejd.114.2023.11.19.02.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 02:14:50 -0800 (PST)
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
Subject: [PATCH v3 01/20] drivers/gpu/drm/rockchip: remove I2C_CLASS_DDC support
Date: Sun, 19 Nov 2023 11:14:26 +0100
Message-ID: <20231119101445.4737-2-hkallweit1@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231119101445.4737-1-hkallweit1@gmail.com>
References: <20231119101445.4737-1-hkallweit1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_021454_692861_5C784396 
X-CRM114-Status: GOOD (  12.84  )
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
