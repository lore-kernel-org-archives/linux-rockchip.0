Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68B53C25B10
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 14:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcmzP41ZdfjBAHfrJoX7ML+Su36p+kH0X83sJOlOF7w=; b=lo40ylbIThXfr3
	GqfRbUZnkg6NV1ZS16R4qM3JfcDorgVBqBfQr1bvJGr+OaTHhXRBaFuNU+mxrAwXybYR77khtQcQC
	EXFxN91PZwOc1/lK0V2xeSc65Y5KKULuylMtk3k864hameQ4iSh+GvQ/jnpPIWORC62C6c/jSKfPd
	nqajdv+H+LU38G8IC145+sJIpoF1KbvPhc+a6lbIj3P8GEX0/A764BcVNFE1rot8ePJKXbfCCXzdy
	0N8QQeYRv/tNUo7+6VQvowEQKFolNhzmWfYujTTT+OiNoQgbP1Pdw4TxvQxv2cj1WF7/eKTy8RW5/
	YZeP4ijBeR3g1pdvF0TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54Qm-00000001fYV-48pH;
	Thu, 09 May 2024 14:07:32 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QP-00000001f5m-2gDD;
	Thu, 09 May 2024 14:07:11 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-34db9a38755so785212f8f.1;
        Thu, 09 May 2024 07:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263622; x=1715868422; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W7sDaxG0HvtHzdSFKGwBhhlzSS8/ejghi2usyHe6yIk=;
        b=KDuEgFP2l5mKxoaHk0SYjGqvmI68l3OUEJstDKGBXsIwVxOsfaBkKcL6I92n4HznwT
         nKWflkTtoe+agmblVC3w9lbwKn9bbAI3LgsTFRoAPsW+HTQIc559ZWchpzuNV/bSiSwB
         A95uwxsOVqqKJVe0csZGxvlfwZytHGlF8YQp9MH2kwtN047sbGRTPOQxI0sURJojluXD
         kTOEi4Se5k0fP5SdRyDry1D+mtExKi9Dtw8axxgNuZnCgV/9OaqSmelzOIcvso+HV5gr
         ubHbC8ys5RZ2rLY34tQi/UUTR3ym6dCvVWsi7yqkI6/joQZxKLE3THjEWdUV+TnI8/2Z
         qnpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263622; x=1715868422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W7sDaxG0HvtHzdSFKGwBhhlzSS8/ejghi2usyHe6yIk=;
        b=BUswH3rTvv+xnRWOZFp4KNcesSaCIyGd8eCv2mcRuvMLrH2p8xUKOg5qgAFoKC7riI
         3+bJz7BcFwt6DrpHJy3voMxv5bHtsDDIHEAKEXSvhPAw00hUxwMxVxBlVY4fA8pjnABL
         IeQ0/tKTNfCt1yZmhQo9ov65YoD/jx1TI5cszVE4slne1PpiVSmpczUEYLcd/wTUmJXN
         S7N5BOi1LaTADu20anLe85teenBx1cYSFWRX58NUlxlX2v0ULMIZozAYKoPC4/uQWWHJ
         ZzLW/huIKQRgtn2VmQ+FEmvOrjlUFAQHYSQm/K4Bk9aC8s6jB4M5wyrZjwWK+9ii0/lD
         KfOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMZehgG4cMPtap1fWehh+/DLh5Uy9zhI3Cwf8Gn6XPC/MgtxgdNyVrXnvtvaY/qHFldBPPmVkxGIjRlB+HYFti6W9CiroYhVZIhAGQ7HFAH9/iE9UzcZ5dgv2P87zIis6I8NJ+QXuLiWJ8ugyVlUQV9SWvMU+F0rk=
X-Gm-Message-State: AOJu0YwGOVebOcYYuZDch/UcSAqkhi1NM149H5s4F4vek12g47Rg3dQ9
	t3uoU1fsei4To+l4yqxxiRSqMui8g3aQbW75/ZSXgdR8rKkxw8c=
X-Google-Smtp-Source: AGHT+IFljPNeI2NnGG45C+k3hGACkIN7MrrcjptnJgVqnmjgLGPcaqegGP1B5NCUyh20R+F22xanOQ==
X-Received: by 2002:a05:6000:120d:b0:34d:8fac:9540 with SMTP id ffacd0b85a97d-34fca80df25mr5625135f8f.59.1715263621985;
        Thu, 09 May 2024 07:07:01 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad058sm1793311f8f.66.2024.05.09.07.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:07:01 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 4/7] clk: rockchip: rk3128: Add hclk_vio_h2p to critical clocks
Date: Thu,  9 May 2024 16:06:50 +0200
Message-ID: <20240509140653.168591-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509140653.168591-1-knaerzche@gmail.com>
References: <20240509140653.168591-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070709_801898_F2D547AA 
X-CRM114-Status: GOOD (  11.07  )
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

The DSI controller needs this clock to be enabled in order to be able to
access the registers. Make it critical for that purpose.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - dropped patch
 
changes since v2:
 -re-added patch

 drivers/clk/rockchip/clk-rk3128.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index a20d1fd25e2a..d076b7971f33 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -563,6 +563,7 @@ static const char *const rk3128_critical_clocks[] __initconst = {
 	"pclk_cpu",
 	"aclk_peri",
 	"hclk_peri",
+	"hclk_vio_h2p",
 	"pclk_peri",
 	"pclk_pmu",
 	"sclk_timer5",
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
