Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46C54C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 21:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwNTRJy+OlaPpJD9ZGTCrOXL7m6vKDyy+/GnuklV54w=; b=sR/KPUdBTmFrPZ
	B4AqBe7MSBrgwvkxrebGkx1ETE01/aTJSrSbVPyHcCEhk/BWzrZlMJxQdWa52lWS/f7bXcbDFiTfe
	OaGM1o8bMqreOIwIwR4odeQ4kuTEFfOYAjLg81xVI4MnJb4/pHF6jVi1GmuD6PQ1vT5sGdwjpKBpr
	TTJCRsbb9GlBIpEQzhfwGNWv8royJNOus8PjaOu29F2EI9B+PJBhzL4EvN6QYjTg3kjuGd5J7lNAX
	3LQZxVZwXjTRr+KQTD2xKP6rY8B2pg/QE3SQW+d8IYFrAeVro436rf5gfjjzl4hDTXYEgR7WH39ON
	N7p/MKrPi8T0MZsCuRvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkp-00000007XUo-04n4;
	Wed, 05 Jun 2024 21:01:07 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkd-00000007XNa-0WGe;
	Wed, 05 Jun 2024 21:00:56 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-35dc36b107fso241334f8f.1;
        Wed, 05 Jun 2024 14:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717621254; x=1718226054; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fk9rPd7/DZbkWMr4RLdz9e3yLOVFGIh3KC1NJKidnyE=;
        b=bZYKfj6Y4RrQskdoVLfHBUiA5YpCG5dhaso4Rx37Mtl3VMXiNRGUgH0HLp+diuy5/k
         LU6caD8jNaMeOeSCo+aCew/Lglfjg8zrs61lzZ0DPp+K/Nmy08z0dXoXgroHhDZ51fTR
         3fvyToWYrEQPd2ceGM0dxtbYXOpZUZQt6OzSfnOp4lwB6uCQHcmtDfZo39LPLbTGvk1J
         8vIco61KpPGVOronMZZ3WihqBhnu3Z7Ahf14o0hR+5BMdIAvdfCbVTNM/agjEtI6qOus
         Fuxm7ZQ2a+AmQABhXTJDnQkW/m2IfFyeExeD+HTgUBGP4Z0ZO+uJt7EPi2mty0hlKi6L
         HD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717621254; x=1718226054;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fk9rPd7/DZbkWMr4RLdz9e3yLOVFGIh3KC1NJKidnyE=;
        b=n/ZMFZkeRnzfvfmAxAxEmvrdvRCXdh2hK1Ms9lwyeO4sU6aZSMKBEl0rmXDoyPOwlb
         qeV95od9n+pg4cgvczbcKhKclW+YA2+WAs3T22JJWYkG9yCf6JBddMF/lSZKdNGp7+nk
         Nwf0YjUoru5n8me8UpUcSNywhE57MrussJ5CdX3ovPPgBizGja2rkGhezTC8IJsXVnMe
         nMV9adRYNSpDBDhuCmIHJOFY1vFW4h+Z2l5KOTPS/ff/1Y6llqnLPv41C9xg0Dd2EY/g
         GHfSM7MlGg5Y0Yzdu9TuW0+1OPKz9Cm+lbWMa1uB4L0MOq4o6T7eTk7dvt5PZV3mDTHf
         dntA==
X-Forwarded-Encrypted: i=1; AJvYcCUbcLLGRJeJSNxZr+El88PgPIYdLFbuPM/pBWCL+0Dz6cScog4de+l7ZXxtGSEY/qV7PNAacFbv52Be/jpciT2FJKfeCwi71oCU+/qIdM/BK9H3CQDAmXX38b2y2N+NusiOGK3oiOH/yKY5Y0Q1ZBpfaxnewTDVxPo=
X-Gm-Message-State: AOJu0YzIKgfNMcVKCTo6Rm/HpWPayO4wInSsaUxRHvATISMYiHIc+4TH
	mtLv8Evckibax2R052pSP/UlBXvSAtg5TYTaijS7En0gTRZ66gY=
X-Google-Smtp-Source: AGHT+IEzFnF+ZiqUZD6IAFUBc9JkLG0/nVhzj+suO7W+KygvluwYQcTuVTP0MA1/SlsiCkafZG+2rQ==
X-Received: by 2002:adf:e847:0:b0:35e:f3d0:e10b with SMTP id ffacd0b85a97d-35ef3d0e34emr92878f8f.23.1717621253590;
        Wed, 05 Jun 2024 14:00:53 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0d77sm15955721f8f.5.2024.06.05.14.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 14:00:53 -0700 (PDT)
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
Subject: [PATCH v2 4/5 RESEND] clk: rockchip: Add HCLK_SFC for RK3128
Date: Wed,  5 Jun 2024 23:00:48 +0200
Message-ID: <20240605210049.232284-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605210049.232284-1-knaerzche@gmail.com>
References: <20240605210049.232284-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_140055_200732_AC412F4F 
X-CRM114-Status: UNSURE (   9.87  )
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

The SFC IP exists only in RK3128 version of the SoC, thus the clock gets
added to rk3128_clk_branches.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - none

 drivers/clk/rockchip/clk-rk3128.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index 40e0e4556d59..7c3d92af12df 100644
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
