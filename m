Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B488EC25B10
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 19:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kFXv9n7WC9xvokahR8u3QYDBOSMWGrkendoI08DWrLc=; b=qmB/XCADyVEuFh
	4BpjDvymSH4kTI6P086YcSYMGXVg+SVtPHGYYlU1INOV0Nmo8rcb868rwFXK3cbrrrqOmRk0NJN74
	x4Cye94kzlrRoTxbfx/jC0SdaD3EW0Vhg3Q4Anh9ti4P2LGsZvsE7DwxK6ddf8g6rW7PN8CMDSyx4
	imjmdOZ811iIUJZbGE/EEDbVLUJFD0aceyz35bHlZByOA8gkrjWjgtLFdU9x5i+HQdQXr4ZEwGJd5
	v82kG6VcKJ5FwkwtSR/ddnI9Y1KXGmSgOXg6TUNM1TYrWef3qdtImE1PW5LIDwQJFGYdwJ/laup5+
	6mD55a5Raotuejl2xiTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44G2-00000008YOh-1o0L;
	Mon, 06 May 2024 19:44:18 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fn-00000008Y9W-41Y2;
	Mon, 06 May 2024 19:44:05 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a59a64db066so565008266b.3;
        Mon, 06 May 2024 12:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715024641; x=1715629441; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C88NXh5dRoqqDkaBrG5x3LDrKI9aAW0uYwvaYAfrMG8=;
        b=X46t9EVDrXiJ5AqJCBbeaxctxUQ0iEMt1blIqCAqCOn9ZFLU+TYjFwmS/WZFkddEU/
         +8t8zjpdvqO0VLjCl3I9qzpJmBRJYb5uhPllRVV8kJcvlo9MI+8W3Ft6DCV7rQaNlVAh
         WNmNuZoUmWfVbxFTRVqKngmdxYvdrMdjzV/i8pFiM454PN0U8APA2DyGpEunkOyvndDB
         2R+gdqO6Dz+6XJ0lGHNyNaSNKmvbGL4DOyAkagtHsYzu/rqCGFeK7CckRT413yReHIHT
         OOnHfZELtWCFFA0PUDOqOmSr2NuD8kdXZ98BRoDW33ZgnGMOtshiG6ban6dhHLppD8E6
         LCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715024641; x=1715629441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C88NXh5dRoqqDkaBrG5x3LDrKI9aAW0uYwvaYAfrMG8=;
        b=uULbjZFbisxYAskUGIkCCdqpN/eAXbcQXEg0q0Xgc8WtvcLY8sJBMAzQ5IWvjmbudE
         FPYQE8SlZc0uGKY0UDRTtx0eEF6TzoHaDK0MgKtsFXwscp5t9wc42u2Akhl+aNt6jqd8
         pakkM54K3OYA6rA2P4XBT2Rk84lrNUjVvf6POT2/LJ1cfdRE0pnlLHdckbvIbpY3ah7p
         s9g/iyyTTU02PGMRWP0O/Cf8YSaQ73g+vSka7e4054n7C8srbPgpBBe3umTuu1Lhp/Ow
         XWXLOXP08Lf4AJH4ynNK9hFef6+5tjFDtlXA//FQtS54B0xgRg9ZWN8NflZrjD0bSBUK
         Q6SQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlwGrN6/6bc9GD0xXTN3vDp9JjGNzPwZltDp7gD0WHmFHUmITJFPCS2rETKRX4DF/rg3Onzob4Yx//f9iUZmdWsm5HH5DcvguaB0h94x2j8BdshlDyB467uLtGyT7++1lW/cQfb6VsjSttvJ8SSjMasv0hQYQTGfQ=
X-Gm-Message-State: AOJu0YxD2TWZhBvzDsgbcmlpDwQzrKcNOqqOwRIlRDQynUeDj2z27JMI
	y06BnpSDUVqcRvjy49Q1+W8nOZ01kPVr27fonFx0x7vgbO1Tf20=
X-Google-Smtp-Source: AGHT+IGXkpTxbAh5DwLseWHJnyaH5MLqujBbL8ZKSiMVh7SfVdr7KWTIModIbwpe+SyWgj9tViY0hA==
X-Received: by 2002:a17:907:944d:b0:a59:ccc8:577a with SMTP id dl13-20020a170907944d00b00a59ccc8577amr3025674ejc.47.1715024641199;
        Mon, 06 May 2024 12:44:01 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709067f8d00b00a59d146f034sm1367321ejr.132.2024.05.06.12.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 12:44:00 -0700 (PDT)
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
Subject: [PATCH 4/7] clk: rockchip: rk3128: Add hclk_vio_h2p to critical clocks
Date: Mon,  6 May 2024 21:43:39 +0200
Message-ID: <20240506194343.282119-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506194343.282119-1-knaerzche@gmail.com>
References: <20240506194343.282119-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_124404_051967_AFA7C050 
X-CRM114-Status: GOOD (  10.19  )
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
