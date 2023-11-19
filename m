Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A01C5AE5C
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 11:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yiGsI7Jab5G2iZwSDMUwCrMmqJuL326UEqg+ayLLLk=; b=mpTnou9pd+tSto
	+EZCa94t0iq0zxXJWdHpBRzhoV4Qd/Emb0V3lgjVeNMwAzwvVsD/rArJGLcwvs8hpxUYVAUNXleC9
	N0Pu43c80Fzm4hMZrTxlTvAM3t7+NQduaGrF9jdJNZz1aJE0r2A/dlam0306nzqck0rmxNd+SYC08
	sBy28IothFzeChW77lESxJn9siUJi96Jlo9IIHvxwKVcaCdpR8zV4cRWfs5PUlOIdfvOdW5i30Q1b
	/qH0HldHLHZqGnbK9t27Ci1E/drSPZqbHHrnaOMoidrpuI8ZxU+ryek8d3LOcBA3ahiNctYpCWxgI
	CbC+kvoinjR2ZjJkiuFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4fye-00A40e-27;
	Sun, 19 Nov 2023 11:28:36 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4fya-00A3wj-2Z;
	Sun, 19 Nov 2023 11:28:34 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-53e70b0a218so4925138a12.2;
        Sun, 19 Nov 2023 03:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700393311; x=1700998111; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Flg3cjX3M0BMzkNxd6dhw9SgkIHrrzmjyvbrc5ZWO1w=;
        b=USRJRJgS8Aosfb+3QMdCahUb8RttD3rp32qq82FHJo+wMP6xMCM5U3TS1Lvoxx9ZSJ
         ts7IYam33C206y7PQ/1x81dEH1bmkGb2s2Us29DMCpEV2I9yiqVanAAWD8q0NGSX9fI1
         4x/RW0zLYuBgL/9bZyTvEgSs1Pr2br1M09Lccebgk11A7aL/yoAVWzs3d9g8ZdvtpZLI
         CwuGU8l6BEOd+MleaDkRHuBIwecAq2Rkl8qHgvi8R8az5pGo1yUWoaMPLYysNRAk8xSL
         PM0FTe9lh/IZ5jH7xqvZX8BkM2QkfNwlw2KoJaWpqaSgEkjlsfYF0ac0LQjiicnLrWlv
         eDxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700393311; x=1700998111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Flg3cjX3M0BMzkNxd6dhw9SgkIHrrzmjyvbrc5ZWO1w=;
        b=ur48MWGFty+ecJAMYuVNDlzHYn/A3G5ysedQXq/CYJOSccMeppD7cJEtySbwQrcIyS
         SFFWkk6QLH1C7osRo0Kszo2P41yyHF03crvxRqfs+sniVm0p2PtlUVLuK8mge39cAL94
         VWOshFltlGXRzkTp72DVFQW+P+Sne09kawOwwFRw+x8nvmaVY2yDkKaMSiam6xFZUUNe
         l8Fc/TOScr5cmZt5rzhSN+jj5w3Ix9bpBwydsfaRwPPXpOVHyyAA4SENcMbZSv4uigMp
         UECFcEBJvgAyxzyCn5a3ogrGKSy6dDbMwNihO7lgsOYapGMQFzMS0oAZOEvzwmttdNxB
         mezQ==
X-Gm-Message-State: AOJu0YyzXRIphVOYlDDJ5Tq2WcO1CHdAITieVK4yBNFJBVIZfJ8TLiof
	uJQfDm4Wyy1QTxIGw9aGLh0=
X-Google-Smtp-Source: AGHT+IHPtJDz6Y9TbEJbQOyBB/Oo4sosA/jONsRYvNjJizHcLos8hKdg2Z5bR3z0yhjciXL0cwqKOg==
X-Received: by 2002:a17:906:309a:b0:9df:2fb1:1a83 with SMTP id 26-20020a170906309a00b009df2fb11a83mr3398055ejv.39.1700393310552;
        Sun, 19 Nov 2023 03:28:30 -0800 (PST)
Received: from zotac.lan. (dynamic-2a01-0c23-bde4-3e00-2223-08ff-fe18-0310.c23.pool.telefonica.de. [2a01:c23:bde4:3e00:2223:8ff:fe18:310])
        by smtp.gmail.com with ESMTPSA id k22-20020a1709063fd600b009f8af454d0dsm2420378ejj.112.2023.11.19.03.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 03:28:29 -0800 (PST)
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
Date: Sun, 19 Nov 2023 12:28:06 +0100
Message-ID: <20231119112826.5115-2-hkallweit1@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231119112826.5115-1-hkallweit1@gmail.com>
References: <20231119112826.5115-1-hkallweit1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_032832_837376_0367AA6A 
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
