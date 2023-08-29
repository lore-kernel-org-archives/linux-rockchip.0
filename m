Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EAD9C83F18
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 20:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kabUlrY71Ymglq6QoEkaEY91q9ep50RKUKYwu9riqHc=; b=jXozJgspHPa6i5
	l27Au5ZNiglVqgBPjqYH7AErnyimFTNnuojwvaYONleNB49aNrF3zp6tjLjVieZs9gfo1w4lDnpeE
	tAlR4VUz09B0VFQua9/sCYFAN8pJTFlmQl4et8cn59yOB1Imj5lMggDeylIrw0GYALrUdcFH3y/Kb
	c/cq6aUEbdKHltcb04ig6gQRlvUC/NuiL4CyUdFECWQB5ey99b6ZJclY/mVt/FysyM4g+JOE3yDEY
	jsyjMj2V6WN7Z3u0heSz2ebFRHYPkUQaeVLXWWSq5mSnHIYQ0UbqW33ykvOAHT8hQNGv9Al8kYhTU
	JQd5iCMBvi4y9+N/lj4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5UH-00CEPg-1O;
	Tue, 29 Aug 2023 20:38:57 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5UE-00CEMy-0R;
	Tue, 29 Aug 2023 20:38:55 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99c4923195dso605650566b.2;
        Tue, 29 Aug 2023 13:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693341528; x=1693946328; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0OQ0uMxvObgSXiZXc7XOlyouI6S5o18+qbYKi7xXiJU=;
        b=mDJMfo1Ng0U2sOSKRDVa16RUKNpDkI/KBGvxgwK4kLiyC4/QsMJ7eaVSZX+iR33Wgq
         W2zpVn+kf+s8lezd72TwA4A3Ru4DCsyWA0GjrFyVDb0O73lXkrLn8tqvh/Ks+zL9wNJF
         Z9c0eQ82fVwh5ORBPj+JIn9Lad4xtzoKscespFmDBgIZ7BWm39uU6cI8Tcj/aLfoE8uQ
         SdyCo6auPTv4P+Ewu/wpDjH8VHQB3tGYBjJ2Vk3ScG/+SP3SbNK4/8cztcJlL1cMecGj
         fIxq6teYY4vmd4O+dhsTRM7neEpQpjHP9dRz/gfpusn9HxY2TVo1rwYU3B5wA0HCSH4B
         tObA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693341528; x=1693946328;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0OQ0uMxvObgSXiZXc7XOlyouI6S5o18+qbYKi7xXiJU=;
        b=iEe7svAGa76v01a49GHVh+ylyz+MQY12dJ+SiT4M4fS8qZDWvQfp0i2HIbXSZJQCzE
         CJ5pTy4GJ1yvrwxd4TacljL4zrS+WnuA2Y383hhsqra/hU+8OYAuzC/Nt29JMfDrtbCv
         Tcks4R+MQBMENWPgBZRvV280AknTNywq2uLZwgC6v4iAtwrJBFVvih8IkwjkJy3ftdMM
         n09kYirnru0nzayO126PZbnFMeBdYzmr+3tu/HjdohFFDyWeAdfEOebGEYiVUaA6rdNo
         RB7bMAcIt6icn642xEegRtuNgaEQxeTeu+VX7Gb1CuSJGqXFUy7L2heLSMT6zSbSeTJY
         D9qw==
X-Gm-Message-State: AOJu0YwY6zkQRf1pLVOxs5whMsspBgfH+WKK+R1cGR3ehGyV8KBpjEU0
	Ecqy9523SxDmdqc67AGdzw==
X-Google-Smtp-Source: AGHT+IEv8kBuJCMhIXwNVoQjMaCQf5mn5eJBOXA9wHc3xHSX+JITKzFIM/BaMQ9PjrNjxi2AgD6lEw==
X-Received: by 2002:a17:907:a057:b0:99c:a23b:b4f4 with SMTP id gz23-20020a170907a05700b0099ca23bb4f4mr101556ejc.2.1693341528078;
        Tue, 29 Aug 2023 13:38:48 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906825200b0099364d9f0e9sm6301908ejx.102.2023.08.29.13.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:38:47 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 3/5] ARM: dts: rockchip: Add missing quirk for RK3128's dma engine
Date: Tue, 29 Aug 2023 22:37:25 +0200
Message-ID: <20230829203721.281455-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829203721.281455-4-knaerzche@gmail.com>
References: <20230829203721.281455-4-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_133854_176879_B49422B6 
X-CRM114-Status: GOOD (  10.81  )
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

Like most other Rockchip ARM SoCs, the PL330 needs the
arm,pl330-periph-burst quirk in order to work as expected.
Add it.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index bf55d4575311..9125bf22e971 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -459,6 +459,7 @@ pdma: dma-controller@20078000 {
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
 		arm,pl330-broken-no-flushp;
+		arm,pl330-periph-burst;
 		clocks = <&cru ACLK_DMAC>;
 		clock-names = "apb_pclk";
 		#dma-cells = <1>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
