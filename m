Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD886C25B10
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 15:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W37jaJgdZwjZ3Oe+NhP5ZzbfNpCPF7PU8RObF449rqI=; b=ksVL26DvnBBlwj
	mlwlLg1lPp3G9G/Yp6mTMCYFf0L9Fg/k8K4kFyRlTeWYIYiG6GSCoNwY63KjaszE0aDoHCiEqQ9Rl
	SDLzI3AWWzeh5IUhHLYxFm5Dz+5NS6UXnIoTeeSJuHhZr2caDX5ZmmZTDcfOIs4mDkaWI/bTMWbyT
	ahbbcgroz8n+IaMVkJzWFieYVTWZ1HhIOoftsHnwvALgTZBGv3z2olRyaJl/NX7MPiw/VFrLY++7v
	UYSt4Nqck9o54Y/d0+35OrKC044WIXQvXCYW6z3oBmDh6QzId0Z2aFTl2Oz/QGUPDz9lQXGK1QHcV
	kr98jLdmPHNNv8bZHlyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s55VV-00000001rAu-133j;
	Thu, 09 May 2024 15:16:29 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QI-00000001f5D-101b;
	Thu, 09 May 2024 14:07:03 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-34c8592b8dbso700028f8f.3;
        Thu, 09 May 2024 07:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263621; x=1715868421; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lAJ0ir3EvsiOixSkrLpbfd6IrLvM1qhtQ0lJENdLIss=;
        b=l9YVvA8OeraO4YEAQWr2N9elhTqMES5trG5G3pmHvyQv62/V53vZkBVkBBp5X4RBr3
         zbfuwkDdHyu0RGMawroDVPn8RCBN9Q7li5eljIgwc05vOgDmthmEgZ2bFGzZt65uUpkA
         BYrFMWQOXMomlBptNTbpo9/KWXD41uGmwpa9olmm05QoATyKiNOsm3MT1/VbQJ6lIHjp
         mpNfL4+XExfmNRYjGdKljAdvdtKdnFuOmlgRnKIvMtAJ39Yy6DUVY1T5Oy0KTAgawy01
         rbK5zGHjzpLw65Flf3HI/jxGT8fWafN9nYeORphufFCFL4Ik4B8wgUwlYYWYrXqmb3zw
         NZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263621; x=1715868421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lAJ0ir3EvsiOixSkrLpbfd6IrLvM1qhtQ0lJENdLIss=;
        b=jd8rfzqcdvTvwHgjLe4PqRE3uTeVVMuTjGQpJhxQhwrS4viQ/hSjI5shcpSb/kV1y/
         5ei7n1qAMFHssxe9WVwcTMgw4tEXF1vWvuQJGrrT24xh0mbe29DPkSo1n8e/d8oxDjdL
         dVsMuE+OSu6/6RvpJGoYGvTPwnQd3C1h5h7neLJJDEpLCuvHp/XTa0yTctXHXgM9CdeK
         SmxT3xzPRALCUgiUeyWEzUS4pxLnbRLV5GOl0ur/GHPye7nB5omZd3ul/+6ZAZNPuAHO
         qxvtCOvJ5e2oIerZ+I9iUks9Kq09A4xn1/fRv5oBYrqfTZG5lFg/i46GTDvSqINZe3Aw
         xspQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTz/4jwzXDREYqgwkXsJEPEV7sN6me2gsapaVwUcbOTgfj4f5ekRyjJrvigqxaXU+O4M2nTHJtEfiMsj/KuBgmv7Igc6QEEXj8xO3yhupLAefiXCN6QYPQL4MnEbdPie6lkGIp5giWao9FSVO0Qy5e6CZnezJT5DM=
X-Gm-Message-State: AOJu0Yz9dzsmbwn54dVTK/B1VIn0plbOby2fU5XdnH7JxGj4mAut/cs/
	JYyV2fLsRbvE3/XiHPX+gykc1UGI8CqRsAlhiyDAl8Rc94PEagU=
X-Google-Smtp-Source: AGHT+IGDm2zqiPzTsp+rCVEziHjhfj96YGRsnuCAnq5URS0U33f4RSu428fC/l+DFwekkggv2NMBOw==
X-Received: by 2002:adf:fa07:0:b0:34d:b4db:9927 with SMTP id ffacd0b85a97d-34fca6214femr4085933f8f.50.1715263620665;
        Thu, 09 May 2024 07:07:00 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad058sm1793311f8f.66.2024.05.09.07.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:06:59 -0700 (PDT)
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
Subject: [PATCH v3 3/7] clk: rockchip: rk3128: Export PCLK_MIPIPHY
Date: Thu,  9 May 2024 16:06:49 +0200
Message-ID: <20240509140653.168591-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509140653.168591-1-knaerzche@gmail.com>
References: <20240509140653.168591-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070702_282717_8D06565D 
X-CRM114-Status: GOOD (  12.53  )
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

Export the D-DHY's APB clock for usage in the DT. Also drop the
CLK_IGNORE_UNUSED-flag, as the clock will be enabled on demand.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - reword commit message

 drivers/clk/rockchip/clk-rk3128.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index 75071e0cd321..a20d1fd25e2a 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -526,7 +526,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	GATE(PCLK_ACODEC, "pclk_acodec", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 14, GFLAGS),
 	GATE(0, "pclk_ddrupctl", "pclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(5), 7, GFLAGS),
 	GATE(0, "pclk_grf", "pclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(5), 4, GFLAGS),
-	GATE(0, "pclk_mipiphy", "pclk_cpu", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(5), 0, GFLAGS),
+	GATE(PCLK_MIPIPHY, "pclk_mipiphy", "pclk_cpu", 0, RK2928_CLKGATE_CON(5), 0, GFLAGS),
 
 	GATE(0, "pclk_pmu", "pclk_pmu_pre", 0, RK2928_CLKGATE_CON(9), 2, GFLAGS),
 	GATE(0, "pclk_pmu_niu", "pclk_pmu_pre", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(9), 3, GFLAGS),
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
