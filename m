Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50DBAC04E83
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 11:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHpNc61C0/sFt51qny7s1oxTe6XZSzUtRu2Ke2yK//A=; b=w3g2e379Sh5VWf
	d6u4TVWjQQ/GIB/TBkbBQowmiHpwtMg8Hkq1oao+CBU7tl6De/0gmQXQM/LYgs7CLzXCE8CwGXj8E
	K5iGUQEr4DfJRXNzl4C/IbYywfAT0k1rqvV6i+g219IhndtNsLOrqeZ1XCy2B7GxHYppoH22HDuG6
	oJ5i+k6UeFbh7coK2HiGMyYl9FR3jq9nMtC4VE9TbFRWPEH0eUQUyBm+2OXBblBy8agwqvL1ew3j3
	8HNssy4GVLULtOgszMhYqo0TcyyGvgtFkWwXFVq1p2MI2cteyx3ai3fxt3RFkwVAWDySlHUnlwU3B
	/rgp/TdDIrKoD8GURyyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2V35-00DitP-0b;
	Mon, 13 Nov 2023 11:24:11 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2V2z-00Diq3-08;
	Mon, 13 Nov 2023 11:24:06 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50a71aac023so3818806e87.3;
        Mon, 13 Nov 2023 03:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699874641; x=1700479441; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Opo2n1kgRGyqTe3TRkg8x+CZ1bdNAAuwb0HOdaOfFW0=;
        b=gLgh+paN2i2avjiQJ2Lq5qUa1zNQH1F98Ys3i+hkr5C8838/6rNj16reAWOnYz8sjR
         r/Vx27uL0VGs2haktLeMEUvKSdhYbyGgaoj7P/MH6QQ13NR6qwRj1xXdKEyYFU9Gk3+5
         3xSYnmBMQaplJuNtd+DL/VRhVOTu1eafVhwjsTevpMDMh1gvjxgUQ1yTQkAOK7p3UZ6p
         Ar4tlEP8568IDDLCVc8hk47CXnp8Kb9+1pwNyHMlRPtSvV8tAKqyBWmWv2X2Zo5EzMok
         EHz84NnH/UPjx6YXAy2dNwLWrhL8Pw2m4xGYvC1HWWBTq7IS56FbPCUWr2sSNJP1Ukyd
         wScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699874641; x=1700479441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Opo2n1kgRGyqTe3TRkg8x+CZ1bdNAAuwb0HOdaOfFW0=;
        b=KIr+5iqux8qAdxO/3h+8WPFQRVdUTDoE7u2mB67xCTmruGuiaV5DHGGCS8FNj2rTsA
         gTN/gfjimw9TlNxzM99/g/Xzqucqsoh+RnYdKUP5AlhgTNv+Yq3YcP4aj7JvovQsAqvp
         CzkqG1NYGhF9ShjUz69A/HXRlQkf88VJeYt6eT9K/qBKR7fSoqEUpy2If0yCVI3emMN6
         b+NUgXXwzg/+cn5z/LW7MswyLcIkkSEiwjSB0FD8yYrfY1A5qaorQOru5PaJ6zEFthSy
         1fXnBjxCvW/dFjGFXxp9vGZ53S1JRKZgKc7TUFU3gG+Nai5/tKpugcPNmvaxDtecCfBc
         tbcQ==
X-Gm-Message-State: AOJu0YwHF00W1R/8NycSRCm/qWbBbJNQZ9s1lZOumwtcdByuvjn2dpCS
	HK8AnZ0y1AAwWmd/bvZmUaE=
X-Google-Smtp-Source: AGHT+IEC4bNxMxVLe61hoEBoRm/P4z68EeACSaOaY2P2h8vmjgRJS7MeWj+M0EXY9PL6tHaJ0DbGAg==
X-Received: by 2002:a05:6512:3e0f:b0:507:9628:afb with SMTP id i15-20020a0565123e0f00b0050796280afbmr5515817lfv.68.1699874641249;
        Mon, 13 Nov 2023 03:24:01 -0800 (PST)
Received: from zotac.lan. (dynamic-2a01-0c22-6e16-fe00-2223-08ff-fe18-0310.c22.pool.telefonica.de. [2a01:c22:6e16:fe00:2223:8ff:fe18:310])
        by smtp.gmail.com with ESMTPSA id l19-20020a05600c4f1300b0040772138bb7sm13565787wmq.2.2023.11.13.03.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 03:24:00 -0800 (PST)
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
Subject: [PATCH 01/20] drivers/gpu/drm/rockchip: remove I2C_CLASS_DDC support
Date: Mon, 13 Nov 2023 12:23:25 +0100
Message-ID: <20231113112344.719-2-hkallweit1@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231113112344.719-1-hkallweit1@gmail.com>
References: <20231113112344.719-1-hkallweit1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_032405_080439_682287BF 
X-CRM114-Status: GOOD (  12.43  )
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
