Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B484EC10F1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W37jaJgdZwjZ3Oe+NhP5ZzbfNpCPF7PU8RObF449rqI=; b=tU8UdQupq6QZzR
	o/ySmGSwDvJwjib4by7boyrQZ45qJ1nFMLLMQBGcXeicbe2fCDBzaPyBx75gtmhNJKFeOFcTZDE6u
	Lo/Fsn6HFynZ/6B8pRCPmxCeEiywNVyCoVHu2576Agbn9EZstyy0p5F9gkSa3VQ3emR4K5fsD5qMa
	SsHMY2020nWj8fgw4RJN7k3QIAjVc5IVh3I9XhYqTpbWmkE7g3pwXB01ICUqsdfa9N4/KhG4c3C2f
	v1AP8NZb2uHM4HZNTE2iZ3UmpqcDJdEDLDbt5MSQsRR9coe3J1LZDEGYsQRCzL+/8kjIlbyU8wGsu
	n1uzLrPOXLU52CcRCrVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52ZE-00000001MfG-0R5S;
	Thu, 09 May 2024 12:08:08 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Yb-00000001M4u-2cPt;
	Thu, 09 May 2024 12:07:31 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2e0a0cc5e83so10542041fa.1;
        Thu, 09 May 2024 05:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715256444; x=1715861244; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lAJ0ir3EvsiOixSkrLpbfd6IrLvM1qhtQ0lJENdLIss=;
        b=GagfmBW9KSjhS9McZfvh7d48l/hMicBJgiz3FJ2QMWXI0Jf6wFZR687quwQxBm+iLo
         3HyZgDN8uv5Co1ep0xff5yDI9/ycd7QMgjfifZd+ZbnkfyU+NbzeeT9Ex9pm+pEfjDtc
         Dq5A5IcP05RavtXwO21JS8+erZpreQFbh2/GUcZaKqJLDRYtO8jwSDst27evTBXNARvk
         mTkPZ79f+g8J8d+TaCBBsbhRpb4h3otHyAPSVH+MEmaFv4Ir5LoWiOqcXWcKRVY51mrA
         9H3iHupY8Ssy8kcmDQjYuoTotMYD57y2t9hKxjyel8ZBIRkVkhdE9/0Z29SPGrziXES9
         IMqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256444; x=1715861244;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lAJ0ir3EvsiOixSkrLpbfd6IrLvM1qhtQ0lJENdLIss=;
        b=WIgTeZ5stgXEnEr9Jp2FR6PTdB8BvN8CLoGRsg4cYNr78WH0FIhXJqdTs7nAjP4WSF
         rm+HIkNM9wztHNDoSfOzXyU/X/MzcCKdIfgf31R15NhOiYN4fTaEgq/ZFCdDpITZKy7P
         dFbTNTYrC0NLNYD6BTqCOLKB3KBTZaMY0858p8KimOHlJXfC2EInMTFtySb9/S5dPu1X
         h0ZM2M1Z0ygZfF1lF9zCyp3pUpA2JdZfF1LV4+taf8JCfBwAMHZPZ9VMxxNu/LfhoL2F
         6PQgX6QN99zHcRCI5aoaomlaojbCep70satAqCHW4efAesLGgg15/qXeBFKcEfEZV12j
         yHhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWR4M0yZY+Q1kUNtknVXktYjZlAIFC8WrtYTCAdSAI36fBj0GlVc24e3oGvvf/TQaikV38GCIVEVX/jfP+BynpD7qy51VaTAiY0pZcP0+zhxEXxL+gdYFd+nHlvZ/47e+ANwXX2vEF0taE9lOSJmUTLDABpeGCx/Ds=
X-Gm-Message-State: AOJu0Yyt2/QeNSje8y2MIZDQNGFC2+uUB5vcdOBaqIstsZ1pXqnQGDAu
	tP/hEEBWXizGi7FhYq9sRih036BVhE7z2H223+9d21YpBpfQxxY=
X-Google-Smtp-Source: AGHT+IFUYRwayrG45zhDJt6ESVgR9RDCoOYAoZNv9N+U2t+cQ8R6nC8DmHzJhqkPB1HbzzA7y03QZQ==
X-Received: by 2002:a2e:9005:0:b0:2df:dae1:b2c0 with SMTP id 38308e7fff4ca-2e4473a9373mr34950901fa.13.1715256444099;
        Thu, 09 May 2024 05:07:24 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce1912sm24112005e9.11.2024.05.09.05.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:07:23 -0700 (PDT)
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
Subject: [PATCH v2 3/7] clk: rockchip: rk3128: Export PCLK_MIPIPHY
Date: Thu,  9 May 2024 14:07:11 +0200
Message-ID: <20240509120715.86694-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509120715.86694-1-knaerzche@gmail.com>
References: <20240509120715.86694-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_050729_724220_9009B726 
X-CRM114-Status: GOOD (  12.63  )
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
