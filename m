Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2A28C25B4F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 19:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzJnwiGcLgbSno3/G09Fr4rbyKCMWi4e8f1rjTm9TbM=; b=VRnig+fj6HDl0J
	hkou4Ar9rzc0Q6fCI5sO4RwJPEVJ1P9zCIJhiD/8eusbIU9c7G7gHfmuRsYON5mPZSkU23+2E6/2/
	6Po+s6LqPIdz4vEqJdVi4oqsCCfLiurkpOUSrcBE/ELLA3Q/Uuwk5XoxkvGgJoAdbnbzxFRVppJTq
	qUHdfBDcy8bvfjXqr9kXY7RCDPbtQbssSOirm6OX0MC4/oEeHw5dtzMFstoED0sDjp5TDUw0lXgnK
	yPzs5/Ra5kdr1FGJwzS9w7JVm6gneZbRZbTRzqFYNivv0YpeiTFdUZWKSmM5o3q9PWuEfh1e+q/8I
	fKC4hWF0U3o1bjjSFhFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fx-00000008YIl-0eGh;
	Mon, 06 May 2024 19:44:13 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fn-00000008Y9M-0rPQ;
	Mon, 06 May 2024 19:44:04 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a59b178b75bso370852466b.0;
        Mon, 06 May 2024 12:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715024640; x=1715629440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PLmJpQfp0i8fR/OZHQc7F6SpjNiFbXRgibuQG4wYtJE=;
        b=J6Ikmhe8A6t3cQwggLuF+QrJ0obfpjpO2QmOH4Ttkr3ob5FX7aFg6Al7unSm1rLpCw
         F2MgiGZIe5z/xZQj/YUHohQrVpcjQDwfOMUTkP+GB7nUBuRB5OghY+UCxaP+THdjODeW
         yhSpAkIjSpVjPI/u7WVqfE99mEk5gJJCELVFJy3lY91VrAGSM/N8DsihfGJGuC/UN9m9
         dhmZ8qBMD96XM5f8vB8Pkz4hLfqWVsZ9el2AtlORBoxYjx34aRyqs7YuwrKMlR7gaFnC
         oUyOcyVI/5o1Ati/kDf/Gt2a/6mEtuBxXozp1nyxBRZsxVrwZ/+qpuecpcLrbNUCFCfE
         E1og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715024640; x=1715629440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PLmJpQfp0i8fR/OZHQc7F6SpjNiFbXRgibuQG4wYtJE=;
        b=RSV4DC4zPu4amwKIlTpAD1kZKIlbZ1CY9f5E9AGNfEcRtlrQQVRP+kxldqzx6N+lbS
         Df/KNIPpNoksooZuZRSyEYokPzSM6YuaDh9UXvIbOTFjDhQEi/CE80CdCvE+8vK471VT
         h7B83Z1n+9C9/6bUjmjYtqruhuT+XlZP6FMpW2M2Ml6MyJUfyg9mxmEjOAn58dG9JWWv
         Cb5mKjZB3ycebNpUPCZms/Sed2ks6KLuCOQscHKikDHjtxRy5X2q1bY6A3j/DHcFqcc+
         udpDpWomRbq7JxRLPJKWzJACBndgG+N28N0vrvnZC38Ge2sbXM3bYSs3qqFgzDqo8T7J
         gPUw==
X-Forwarded-Encrypted: i=1; AJvYcCUl13JgCKcTC8tIXoiq9sCoVWDvfIq22ibSwnvibpuYOdyMcjZxOgPvobJYvNHV/jANtyQfwI1/PPPBqvoAYE7X1r4wghmyszYXS3SypkRafqFMuGcMvh/Rdk7eMWdqsHwFse0Lmf35E08nuEAU+aXM0wSAuEZOiCg=
X-Gm-Message-State: AOJu0YxQWONMeLeL9UsKhS9IGLfjQE6Lt7n8ejj0SYK4hkXiPhEY6maO
	9XoyHRryUNuhHPpUHUeNqcejiHnJ+ILNl2ufGxwDG4BrrJuyJxU=
X-Google-Smtp-Source: AGHT+IGDj+tvzGciAi1r06OdYCZHDNbAHnwx7wQTTzXXKYnWB5EWtuUN/+YC062uYGlKprlYMawinA==
X-Received: by 2002:a17:906:65d2:b0:a59:a727:1e8a with SMTP id z18-20020a17090665d200b00a59a7271e8amr4215668ejn.8.1715024640454;
        Mon, 06 May 2024 12:44:00 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709067f8d00b00a59d146f034sm1367321ejr.132.2024.05.06.12.43.59
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
Subject: [PATCH 3/7] clk: rockchip: rk3128: Export PCLK_MIPIPHY
Date: Mon,  6 May 2024 21:43:38 +0200
Message-ID: <20240506194343.282119-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506194343.282119-1-knaerzche@gmail.com>
References: <20240506194343.282119-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_124403_273039_8C58A995 
X-CRM114-Status: GOOD (  11.92  )
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

The DPHY driver requires to specify a pclk so it gets exported here. I also
dropped the CLK_IGNORE_UNUSED-flag as we will enable the clock on demand.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
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
