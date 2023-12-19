Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67CE8C4706C
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3Yc4CB0tSHEEcMPlB7fmgl/C1aFuG6qWwVW/hz1WFY=; b=fbYyKGuyUwO2ZE
	FVN7L2/2ZEkAATxfOlD3ODGgLYT7iVL5gYOz8UegvcoNXFXPP3Lr7NX7QY3ZK41l8akZxlVDYP4i7
	QaFOzG7WcdxUt1b059LARkIYKOF1LKSbap0u1p0Zi5/IRa7FoyXVSiou9ZvZvnpXmGXFFTYCHwoJK
	P9FpwLcVJE3N/JHY79dxUQNEImkzhN6Ak9+y2BuinMpu2I+IbGxgYJJ3wKI8WYHzVEUeNh4eTwByn
	6db5VF6M6Y6MdhYCfozkl27VWzmDWzmfE9HKDUE4DKQTkre/CLStXfoZkRoaQKZu4sE/WkBGaL8W2
	1wECZGhfXyTsWUzrJwqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTa-00EoaE-2k;
	Tue, 19 Dec 2023 17:01:50 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT2-00Enyy-0N;
	Tue, 19 Dec 2023 17:01:17 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c29f7b068so52844545e9.0;
        Tue, 19 Dec 2023 09:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005272; x=1703610072; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qH39RMJfndGmJ2yo6EAj0TEb5im2nG8g4/g1kbQG1h8=;
        b=B9XAw5X76jV72Vv0aFU7VsUclsKOq63mOEMt9df4QT3iKDStre59Vt46lJ7IYYO3p6
         VYgMGOYx3OKZQLHgNzPFRq5JRUiD9ngD331vRuNkFL/1QQcSWuuGzmQP2q/ovqvpezgR
         4qGQ7spcbTaXr1L1gPzfNF7lojtsi1Y/Mfe2FJwHwMYkYjVPYfPrs+AYJgW+rKvXFGww
         QEClWjs6GOb17L8o5p9Ffs/o0ozUm8YI0WGBCs/IkimR4G2S6xO0EaIMhbRAc4H20U1y
         CCcLE67WD3eGbwHZaHc8f4msv6jnpkN/+NwK8U/3EjfXtn4Ya3IRGoGYdqi1Qky3hSyh
         G7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005272; x=1703610072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qH39RMJfndGmJ2yo6EAj0TEb5im2nG8g4/g1kbQG1h8=;
        b=iBNnmFVsrJ1j1Xz5lCiqZ2VeihvGgttcAFycZ2H0uhXZhmgoBfVDr3UeUtCTt7ZkfQ
         bQp9SGzTsSgdeLdCI5C56n5yLy1vMG7Mg0LLQ2tpIxDwV1c/cUkjJzeA0CkXd8tZruNw
         g/clXEQeJzIMpN2aN88/3Uye0Hz8T23xGfeQhywbohRGMOWrgh6D0L6xonKcePPbXAFG
         YAswkM1iYIodIhK/xiRGCip0Rc5AuxDQKYAAEuYF/vf1nFuBgAzUVaDOr3ZzViI6Be82
         UtAOOHGK3H8A4x4zLjv4YMPj7cFdYVdmm1A32LhpJB/zL7SiiMfri9Vh8zVnZP7+0Uze
         Np+g==
X-Gm-Message-State: AOJu0YxsSB+dJgnOnnJWP4u+FU0e+VW48ucAaMsG0AS90ZPXpg6Dmdv9
	1yOffsWgY64GhWCbKK7CEQ==
X-Google-Smtp-Source: AGHT+IGtFrexi9uVeaZK/6ydPyM1BX9m1o9MELmkYq+IF/YlCMbmQvGLdQPCk5LCS9UJ76GWt9oJsw==
X-Received: by 2002:a05:600c:b99:b0:40d:27fb:2f27 with SMTP id fl25-20020a05600c0b9900b0040d27fb2f27mr601599wmb.111.1703005271769;
        Tue, 19 Dec 2023 09:01:11 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:11 -0800 (PST)
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
Subject: [PATCH v3 05/29] drm/rockchip: inno_hdmi: Remove useless copy of drm_display_mode
Date: Tue, 19 Dec 2023 18:00:35 +0100
Message-ID: <20231219170100.188800-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090116_184223_16936CCE 
X-CRM114-Status: GOOD (  12.54  )
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

The driver maintains a copy of the adjusted mode but doesn't use it
anywhere. Remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - imported patch

changes in v3:
 - added my SoB

 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 0b1740b38c7b..14d2ba92a606 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -62,7 +62,6 @@ struct inno_hdmi {
 	unsigned int tmds_rate;
 
 	struct hdmi_data_info	hdmi_data;
-	struct drm_display_mode previous_mode;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -498,9 +497,6 @@ static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
-
-	/* Store the display mode for plugin/DPMS poweron events */
-	drm_mode_copy(&hdmi->previous_mode, adj_mode);
 }
 
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
