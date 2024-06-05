Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E273C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRgiriXCo8d9cMo0uM1e6mNFAjht0nO6msLg5Gf8Bu4=; b=eGso4evlMBeDkq
	vSUNdnF8sJ/+B14fTlcYiCqOiHYFvkdpdd4Ue9uW3Pdj3+i6JWCw6O6GgZuUVUMDaBvfc+qo0IT1/
	8GCd1Tpr+Nf0du+5g8nfwmC05gcICDdPDhEANmaOXUMtcth1fXaF4/XkTGttzipgmSUz7HQ3OQjBl
	Kw4aYi80cyHCmC48TuZmFhKLvWpqSxHvC0VuBEYzmjqHkvtUvq2Hhpt3urI9aJ+zTpuRsn+nlYqVf
	jJRHDB++0j47uvG/stIhESui6zB1qp+4ySZR8HVsmazAiueCQliuRvM3zqNvppg1L93pS4zG+x/rP
	Q64l13awmKwLFe37vsWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcU-00000007VCT-35Mx;
	Wed, 05 Jun 2024 20:52:30 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcK-00000007V30-05s5;
	Wed, 05 Jun 2024 20:52:21 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-42135a45e2aso2929125e9.3;
        Wed, 05 Jun 2024 13:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620734; x=1718225534; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bv2MjK1b3RmQFqpYtvaVw+b1geYBojSDIiV6z6FsDD4=;
        b=CyEA9TydZRr4UYoF/ZqP7PkFAKJoHuA5U7STeHi3hFCpScrq/eOK1Krdd837Zy7ZVP
         4ae8e03aaUIyCfvq7Bu222SZFXfi2otvUp++kTCyjaaBUP38q759AenQtSvpibdxkvhx
         E324ZBXA3rAkWHGVac/a16uNcO2+zVAatTFWAmODiQWTwssCpabvCOUpRIeer1CIdQ4f
         UrYocM+HNMDgU7f8IggSWPTIKyUtzEZLp8gI3IrdF93wfhTvoihlR+FrpFBLD/zWpLfS
         ybfP/OhB3njh9VQqSd6R0cry4snWsVycmGShFa12NDd6o67GcjUAJub6W9ATpN9BM213
         q74w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620734; x=1718225534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bv2MjK1b3RmQFqpYtvaVw+b1geYBojSDIiV6z6FsDD4=;
        b=t2aYwbEou//fvRYEAAI2CB2YJrJh8witWxeMC5j7ws/jUBrvYOJ8FwdxTy+6Jjntuo
         LYiUpdDGMAlC5trjYJZBWrOrHj9BpwrhWkzJz6J4ooqmz3GblEmWbo8m2W83ukHxc9Mz
         vjq4sW1mAWm7Zrblx4hF/1ITKa7aNIZqHVP0k0FGMeRnqYSx8HMlBNDpoK5LunZrT9fW
         cd610lyw8Pq2KmpT7K7WrFEiAh0vQSl/5PgjHDuNlXNCzo451pVFW09UFAlDzbAxg9tZ
         ZJAvsU0mvP1Dvr7mnzsrsivN+qFkkVMqaxvWDy0nCBwk1MkYhuavGl+E2fjt/IgVoti8
         Gf9w==
X-Forwarded-Encrypted: i=1; AJvYcCUDws21fpg43WilEBL7xqfpk/8Ox/uXyK5OhHMMptlWR1T7ScKlUsHiQNiXqm1PpNpp6AKejvO6NA9MjnBge/WWvepHWA1hFzcXH4IYIz8bf9Ownc1iKljcO3ZMsQIUdfOjQC6iGmO3MBOmdxunUOwwSRwCXuzrnjE=
X-Gm-Message-State: AOJu0YzJ8W3es4r/EfEjjmmJeMwyeHUcZGfrbnyP3h1XUOOxiDeBBvGB
	HXu1TjTQSOr98Sy+5vg8MwbVkf2HCEFwYwHGiv/a1MC6z1biZEKo6EB4
X-Google-Smtp-Source: AGHT+IEdu7DZ/9OzmqugpPTGdnR+0jSWZhYN2028kVpeF4tyO0nXwrIm165+21c8BBaDKxmAhsDWEA==
X-Received: by 2002:a05:6000:1048:b0:35e:5b9a:2ce8 with SMTP id ffacd0b85a97d-35e8ef7ea0cmr2749551f8f.51.1717620733690;
        Wed, 05 Jun 2024 13:52:13 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:13 -0700 (PDT)
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
Subject: [PATCH 3/5] dt-bindings: clock: rk3128: Add HCLK_SFC
Date: Wed,  5 Jun 2024 22:52:01 +0200
Message-ID: <20240605205209.232005-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135220_164411_B14CCBF4 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

Add a clock id for SFC's AHB clock.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 include/dt-bindings/clock/rk3128-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 420984fc2285..d731c3ffbe1e 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -144,6 +144,7 @@
 #define HCLK_TSP		475
 #define HCLK_CRYPTO		476
 #define HCLK_PERI		478
+#define HCLK_SFC		479
 
 
 /* soft-reset indices */
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
