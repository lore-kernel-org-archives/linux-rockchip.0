Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 763C0C41513
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 17:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kh3jp7aIkpJaMjjmIRokZBGxjYR9Ju115H75aLJosUk=; b=juiTgjU5WImc09
	v7EIJQIEWug9YlQ/UKkaQjnPJppzsQpGCyoxKESFN/LgV+WvncjqYxrPG0FBMMUpATG6T5Z18Hvuv
	x19d0G+D6lrovenJ/aI8SGtQ2r6G97KarI1G/LU3L77j5Nl0HON7//NC6kEQDRE61FPdnFdRObY3b
	yoS8kjo11orhlRXpmoUiXgTTM6fo7K5kmKw0P0NPPQn/9p2zkp1Dcerb/Zt3OkirGt0BrseNjxwOK
	fNfLmRZjWftoPSZglHGqpiPXr0/826q9dG0p+YgjRyqicqYrfz8rbZBESRu6fTEPa+/24gxH/u9gI
	m6AsUq33udfL1qTqSqDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuKv-00000006xun-2Cum;
	Wed, 05 Jun 2024 17:22:09 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuKq-00000006xqk-24HY;
	Wed, 05 Jun 2024 17:22:06 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-57a2f27090aso2078703a12.0;
        Wed, 05 Jun 2024 10:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717608118; x=1718212918; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pVMnvdRLLOzxKbJxJDKn1/rJgxuovT9+MlU6y9jorGs=;
        b=AKNImiQXZ7I2rkdFMWOCBorLkvfbxxaN2/+GuznhFhXkNCJE1DL/AB+wF/X5676wlm
         2O3qHPWy76Ss/1NsDjchKigs466ramasDYVMo1bEndRgbtMtYcY9OXmn334cLjZKtN9v
         lWIUyKEuZZAWW4mXjhEo8PkU1QpcupacMryMRrqi72ec7qH1Q0LPj1rkHF2XGeabdolA
         iz9vNN3ZTlgPc1aouyoj3TfgQ3MhBcHWiHhsvqox1pLz5OGpJSytRcH3VOs9FXHMfvb0
         1eKVPptcy5idxrlfc8zVS5n7HexsktgVyEl67JJf5e9801wmN+dQpAE/ifOMHqU+OcwK
         M5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717608118; x=1718212918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pVMnvdRLLOzxKbJxJDKn1/rJgxuovT9+MlU6y9jorGs=;
        b=t/irqLpzlShPa4m7Ervu0C2umLU5Op88/RcIvoezFfLMskWJad4roH57oJ+PgHu0Nx
         hYpPsr6i7ct4gQaSMXQWCVgvTsQ0+POVlssu64/wdDjSNWeU3V9Idw/I/21NfRB6AhmM
         /rXCQ5Y6q8foNwQljz2niI3yrYIeDiJnv/+DQsl5H0gmH5MW0KrOfpd3qfKv4MWhrtvA
         /VsY/L+SNIqhru8RLnwpuQRMma7BP6JCBr93yMv83oPiV2R9zAL2bqu+iOfMqAP8BsO9
         xb1vNKqztfiPQz53vBwfiTrW3zsVDgwpSF0TJbavsbAI8kXYqZRlDKlKPKAdLlIBS/2D
         Z8nA==
X-Forwarded-Encrypted: i=1; AJvYcCVXWL7rascr8Yu39dHHncPyNZPKLXWt0dih0IW3Hf3eL5moredquQNKEuYm23SA67z5Cx0nX2TkHZN2iShebE1kTpw8ujGY94VTROlR0Xrn+QRu5seziy6Ahv7Py8ENdbBgJKv63rmRpJF1hdJxigAIYRn88L5BvZI=
X-Gm-Message-State: AOJu0Yx/cc0A6NU01N5NNNz7w4HytLeXBZR2G/ppq0xnmYdMExwt0hW0
	AM6GQ25ZHGz8otl8MFozydlkSxC4yh6Qz3dSw0+pLotw87dnGaAOGK0/
X-Google-Smtp-Source: AGHT+IGe9TdL6YWvc/w9P1sfcG22dIIUJ0rcy3GeY94VNXeYXkoTK6zLc64eyd2PWUCAXcw/orFicA==
X-Received: by 2002:a50:d74d:0:b0:572:b83e:e062 with SMTP id 4fb4d7f45d1cf-57aa53cd286mr276083a12.3.1717608117415;
        Wed, 05 Jun 2024 10:21:57 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:34f:df25:1c86:f2e7])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d594sm9666663a12.69.2024.06.05.10.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 10:21:57 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/3] clk: rockchip: Add HCLK_SFC for RK3128
Date: Wed,  5 Jun 2024 19:21:53 +0200
Message-ID: <20240605172154.193047-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605172154.193047-1-knaerzche@gmail.com>
References: <20240605172154.193047-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_102204_716258_F4E0DB03 
X-CRM114-Status: GOOD (  10.04  )
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

The SFC IP exists only in RK3128 version of the SoC, thus the clock gets
added to rk3128_clk_branches.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index d076b7971f33..bc348fd0da92 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -553,6 +553,7 @@ static struct rockchip_clk_branch rk3128_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(11), 14, 2, MFLAGS, 8, 5, DFLAGS,
 			RK2928_CLKGATE_CON(3), 15, GFLAGS),
 
+	GATE(HCLK_SFC, "hclk_sfc", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 1, GFLAGS),
 	GATE(HCLK_GPS, "hclk_gps", "aclk_peri", 0, RK2928_CLKGATE_CON(3), 14, GFLAGS),
 	GATE(PCLK_HDMI, "pclk_hdmi", "pclk_cpu", 0, RK2928_CLKGATE_CON(3), 8, GFLAGS),
 };
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
