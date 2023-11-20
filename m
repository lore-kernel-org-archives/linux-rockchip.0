Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8033C2BB3F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 21:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yiGsI7Jab5G2iZwSDMUwCrMmqJuL326UEqg+ayLLLk=; b=BtbrnhnMqyKASB
	M6mbO+BOS6bOWmLmlZxunm/g2pUJVaO0VjOHuoCAbVB8/mheywTIMib4SckfLcH9Klaya6q3QmUU+
	h7+OMsI8fxubJioncfIcYD7NgnMONT0BIpx2F0JbhK5Mrl1/Du7CpeBGsoBR5K39OOx6r9KE/kaTU
	wkhFMgX+CU5zEcCfx3W7vKvdbtpcVJ0ni8PV1VQFUJGPSvPg7x1Y9Rh+wEkeoVtA9Pc/i1xG+vj5U
	IrrOYhlb48G7apfE0ISfu8OHgOFAVNbTTMtYfLjZHQEjiskNeLjCZnnjROxeWeHc4Ng0H2OfoNUEm
	MUXIVIRLM5WPj2eo4p6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5C6G-00EuH3-0c;
	Mon, 20 Nov 2023 21:46:36 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5C6B-00EuEZ-0Y;
	Mon, 20 Nov 2023 21:46:32 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32fb190bf9bso3580961f8f.1;
        Mon, 20 Nov 2023 13:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700516789; x=1701121589; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Flg3cjX3M0BMzkNxd6dhw9SgkIHrrzmjyvbrc5ZWO1w=;
        b=Rl3UA9XPvkRbdVgOXpxWqUMJj9WgmMfCoHvN6EtI1oAhU+D1pL3DQzmUjKvty3Kn3X
         /jb34SIqRtjb2xZg/mRc9ypXSHAiEDQQ9Oi+6KQxnzVsykMmb8Mrzvg0sjI+7C7Vym3j
         CErV2pjt5YyK9OS6rk5JrDY0x05kVKf9uh3cZowXB3o/2ZQ9IZRsV07ruyfD0tCnAbrp
         Iv7kJlkptmLRt+03E35sugONNQDX/mTjL4z7d5eVu3WlZ+w/VJXrTE8RxRKnygr5wTjX
         MWj7LAHpiyITlYrBieeCW2r+ylhzQhEJpPJve4oTMDvddtaL4h+LOzw/LEtfWwXtQwTJ
         Awiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700516789; x=1701121589;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Flg3cjX3M0BMzkNxd6dhw9SgkIHrrzmjyvbrc5ZWO1w=;
        b=j3MW9TDjKeFTH0aKybB9uf+ZSZEmixL3dW0tFXjaOmgPBI8C3JuUJazslhLSe5Eo80
         r5rKvXQOBA1cQqbc2jqdVdvMcJ9A1u/XDotLE6Q0lw8S+LArfQP3iyTAo0u7fHaMd4yf
         wvcNJoJC62Hh34oniKRAoWWBC1eh5jIENxNeG1UIDnEDt+YuV/BmuEdH55q0O2EvmBsR
         8MJW8uY29VuI4wJfNSnlMc7B3851lxsw3/gf3dxPWu0PTtO7D0HBjrUjr3hIHSp5H0LN
         OElLAQ5q2ILjnE3kFM71kiK6mbBAnZu8ioVtW2JQrL6lLYw5+lqVPQxjUrcpPt0UpMJo
         LNiQ==
X-Gm-Message-State: AOJu0YzjkhXii4ePjMTutKerlqsVVQCU+0PskgmciktKhLiocspN2Tfi
	qrXg+/dXKbeheZDpG1FICoM=
X-Google-Smtp-Source: AGHT+IE5KIoURghYVkvfU5wQxiGM06yHQWDaD6hu7bxfA9LnXbZJ41nQqt1tLyyxToNmpgxikLPPeA==
X-Received: by 2002:a05:6000:156f:b0:332:c432:b7aa with SMTP id 15-20020a056000156f00b00332c432b7aamr663360wrz.2.1700516788640;
        Mon, 20 Nov 2023 13:46:28 -0800 (PST)
Received: from zotac.lan. (dynamic-2a02-3100-9030-5a00-2223-08ff-fe18-0310.310.pool.telefonica.de. [2a02:3100:9030:5a00:2223:8ff:fe18:310])
        by smtp.gmail.com with ESMTPSA id i13-20020a5d584d000000b00332cb0937f4sm2667052wrf.33.2023.11.20.13.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 13:46:28 -0800 (PST)
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
Subject: [PATCH v4 01/20] drivers/gpu/drm/rockchip: remove I2C_CLASS_DDC support
Date: Mon, 20 Nov 2023 22:46:04 +0100
Message-ID: <20231120214624.9378-2-hkallweit1@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231120214624.9378-1-hkallweit1@gmail.com>
References: <20231120214624.9378-1-hkallweit1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_134631_238658_80128995 
X-CRM114-Status: GOOD (  12.59  )
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
