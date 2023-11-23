Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23F9C61D85
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Nov 2023 09:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=To6C0/81FZXy/KBqP6BsVp1AZ9IokSpldOnRyH3FbRg=; b=rkzRDt2LNfa75m
	U8WyFGXVq0N0s9F8zAKE8gns/dt1r8mMnWTpLn95XtnKS4uk9L39CK52ThMrm6vtgxB9uHvcmUpm5
	b9aoApnig77QQMBVdpGe7FQyS+Eqobh6n2bFU6ULceH4OsMi77CXB725V1Vy5fiDPNy/xI8gw9DTe
	cJHCSht1GG5Ln6Fc4aVOipfR4blmeimi/6mbfVjXZJ8uMKosQp3GsA+2b5zoUeQ++Fr3juETbXgau
	gIJFWQ16hCilF6rbTjyQmNUyWlTQRISw9kViOp3TD8NpRyCLgdj3GITS3Fkf7fbZ5Jq3iN9t1CnUK
	eSZVmGo/uJPtpFSqiQnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r66CZ-004HUi-2P;
	Thu, 23 Nov 2023 09:40:51 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r66CW-004HSE-0k;
	Thu, 23 Nov 2023 09:40:49 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54a95657df3so1021686a12.0;
        Thu, 23 Nov 2023 01:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700732446; x=1701337246; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wi4R483zknpMUwj3cvaLHx1vmpa1j9N3buw1XNODPJU=;
        b=Ogy91t7UoGYMuJrgvtCIcVdaIKGzRHClogZPFujWmC1eJajtwC12TS54IIj//B0JVY
         uH47fbqw9pnueZh/HgQq0SAcZ6lmHR4dljv0+jd7vUsv/FlCr0/GZ4oVpYWVuavy2R9y
         Sz80nt8cvG9Lrgx9dL4f0DMEZ1GcFhbGs8TvkP6oAo1rNezOtZsZHKdrPo5dwslZOM/d
         jk0hiBmX29lulyc+9gbd6Ms2hJeMdyuuxza+1GiRp13QJk59sLdySjkohBMSN47FDnsK
         smypFJ/n6GF+frtk1b3bsZZuNvla0rynoB4XO3ql7cU3RtFkS5KaeGHPtZjEJp77Gbaq
         4MPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700732446; x=1701337246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wi4R483zknpMUwj3cvaLHx1vmpa1j9N3buw1XNODPJU=;
        b=Z91xYWXvo16kpHAcrh6V4wxfVQkaFDbd/a0tE1Bf+qH6jlBMrfXdyi8iw+jocoJkl/
         F59tfpu64MYlff7mii6/Tvs3CDD15t2iD7YXAstkkFnzhbRM+r8HakcYStw+dsCjTCex
         SgymE1BathUZPydBvSV/igE2xudr4NiDKcofMfXm/FBMSwT5KJy2pwGKkfgJgZWLbcYZ
         5ivApRdHTEPADu3zt/EihJzhFki7BH61S6+lIvuvUxu5NFRYRkLq8IrLI2aXUTGyKsTe
         JgV00S2MDr6P97+85VTi7mop1tKvcHVYzcuVI1EQHP6Bd6jIfhb9vxXeomXOxeY9Bbvt
         xRrg==
X-Gm-Message-State: AOJu0Yw4Yh5NKDN0CKOykWxJ0Z/0W0tuyEL8HZpS0cg/B0W5MzrEEVF6
	aDgvn17MEnQJa8loAShcq/k=
X-Google-Smtp-Source: AGHT+IEtwKDYnzg1xKgfKy0ud4LFwlV0rfc9uAkIx75F9WsQAVnCrYCvhXmBXTNqAzq4Kf4OfYEh4Q==
X-Received: by 2002:a17:906:7c57:b0:9fc:9b28:7ffc with SMTP id g23-20020a1709067c5700b009fc9b287ffcmr3285748ejp.17.1700732445589;
        Thu, 23 Nov 2023 01:40:45 -0800 (PST)
Received: from zotac.lan. (dynamic-2a01-0c23-c0f2-3200-2223-08ff-fe18-0310.c23.pool.telefonica.de. [2a01:c23:c0f2:3200:2223:8ff:fe18:310])
        by smtp.gmail.com with ESMTPSA id s9-20020a1709066c8900b009e5ce1acb01sm546199ejr.103.2023.11.23.01.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 01:40:45 -0800 (PST)
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
Subject: [PATCH v5 01/20] drivers/gpu/drm/rockchip: remove I2C_CLASS_DDC support
Date: Thu, 23 Nov 2023 10:40:21 +0100
Message-ID: <20231123094040.592-2-hkallweit1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231123094040.592-1-hkallweit1@gmail.com>
References: <20231123094040.592-1-hkallweit1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_014048_267618_62F5CBE4 
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

After removal of the legacy EEPROM driver and I2C_CLASS_DDC support in
olpc_dcon there's no i2c client driver left supporting I2C_CLASS_DDC.
Class-based device auto-detection is a legacy mechanism and shouldn't
be used in new code. So we can remove this class completely now.

Preferably this series should be applied via the i2c tree.

Acked-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
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
