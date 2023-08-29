Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C14C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 20:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jE1aeoR+Qa7/OHYUPqxBTqIkTAwA6qX01ignMGgxfR0=; b=zqS+BSnzCEmhIk
	wwZZvwUxA55hmFJdi2V7rOAJji8ZVZFiwp+ODqyTKpAZ7xV/yrxvRWwdm86dR7nx9znCiiKuTmnXQ
	CT2+yqmmtIER0Kglga1craf6hxolCtVaU/9OlSUsR67s23kLJN+jcFzr7L+XOuVW9dNMpvY9LjSC/
	SFEQj2boIpnU5I3D/O0F4i1r/VZOc235EnGTFSdnfJZURm7n202Pdv9HVTGTKpwfVqXJ+T66TAUoK
	G6WR0m2SFp2rYhCEQLJcd9RDxA9H5lA4T3jbFElCHe7sRAvYIq/vI8zir+1j5Qc9PADUGftwb4rqt
	KBroU/l3mRO1888ar6CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5U8-00CEMl-0c;
	Tue, 29 Aug 2023 20:38:48 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb5U4-00CEKd-21;
	Tue, 29 Aug 2023 20:38:45 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2bcc187e0b5so74529411fa.1;
        Tue, 29 Aug 2023 13:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693341519; x=1693946319; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v9WQxc48AN8oLpfzoyxvnK9hzzun80wFf5I/eOz65VI=;
        b=P8s9Qi2THo1HlD2ma6Gv8KIedKonDFTxjl9CND2CzBcJ0B7BoxXudcIm4drHBo/9+a
         AzoC254eNEBdL2zcMO9ELGqxgRaIRd6XYX39HbwYm6aAEr13B7vYINT6GnN7BV0g/3Il
         rHg1locMEM0OYKSjw0toykRxbeMQqfv1694g7NbvhMA0XHkTQwsOSGryHy1D16GZHMXP
         ixelcMCiKBn+829mNpCrHnb8ECacmJjT7tNeUsfdUsOnmiLTz6XedEAnuZX5mP1fq00t
         BPp9ySyk9H+24UCZVX/OxSS6uB5sevwNY0iNfYHWi0mN2laDfbnLGfB5coPqk+ljURnr
         2OFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693341519; x=1693946319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v9WQxc48AN8oLpfzoyxvnK9hzzun80wFf5I/eOz65VI=;
        b=QCklLrWoV+Sjv0bpfmb7gwWirks9sXhvo++RnNu5ZycxpRtC7OZuLFjYYlPZ2RDBsJ
         zG+p2c8WtKtLfw5uMK+23f+0z+oPun2aBV7b1ipSkep9PhWkM9kY1Nz9GsOLhM3sk0vf
         HN/Dw2/BrwAQD012wcKYbH1jUoVtjsk2HgOeBosqybLy+MOS6VEgLgvCx0b/k20f0qdO
         lgt+2Tkf1pJmhoDKCesWwb69JIUQdqqcvUhCOPUyHEMP4ZlfIvAemlgIHQIvAKGZ0HaL
         2GmaChwBNCCNJNpnXyl2apLUD8SOwcNjmtm37ARAQXRyn1ZN/QHjKE4tvKv7cJzHb8uc
         bZOg==
X-Gm-Message-State: AOJu0Yx7iM6u5w+JdwPb0vZ05LH/vjVJxq6TbYPgh+nrXgy4VQsGd7Jt
	om8WElq9fjHsuSHIkcCo4A==
X-Google-Smtp-Source: AGHT+IFvHbLjZWO2QDfV4zRe3bFI0A7Ke57jlNuL4yav8b3ZtuWVmbXJa6D/bd6/rC9RRmbAKn1NjQ==
X-Received: by 2002:a2e:960b:0:b0:2bc:c2cb:cd3f with SMTP id v11-20020a2e960b000000b002bcc2cbcd3fmr280387ljh.32.1693341518954;
        Tue, 29 Aug 2023 13:38:38 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id f18-20020a170906825200b0099364d9f0e9sm6301908ejx.102.2023.08.29.13.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 13:38:38 -0700 (PDT)
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
Subject: [PATCH v2 2/5] ARM: dts: rockchip: Add missing arm timer interrupt for RK3128
Date: Tue, 29 Aug 2023 22:37:23 +0200
Message-ID: <20230829203721.281455-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829203721.281455-4-knaerzche@gmail.com>
References: <20230829203721.281455-4-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_133844_670657_F27F7C88 
X-CRM114-Status: GOOD (  11.50  )
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

The Cortex-A7 timer has 4 interrupts.
Add the missing one.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 2e345097b9bd..bf55d4575311 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -64,7 +64,8 @@ timer {
 		compatible = "arm,armv7-timer";
 		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
 			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
-			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		arm,cpu-registers-not-fw-configured;
 		clock-frequency = <24000000>;
 	};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
