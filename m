Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F322C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:48:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D288A610CB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:48:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D288A610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2uPpQCQxEdFAaGR2niv3Q2IP6pk9MYJhj+IyMBHxyE=; b=il3qfK+KgSpvZB
	X2/IiHQLzQ91bCRTQfjqMMmlVnnnr+i+xQsf8OMajZPcYspcm2JFDKgNx+3H4+hp/oVlCjiiK7wv9
	bvyAydGQph3c5VFdnHl1x+FqFhxzMYJje0g/estc+iiuZyq6qa+KzKuECH4aokojFQIRuXfKK4qzV
	R43GY6C7ehlHox7WFqru+hv05MMPEZUQ0OY20JKRwQaXtg3N8M7xUlIE/2xQmW08cXVOO8E38f1E5
	jJTtOQNhkGEtUkb90Bq1s2nfx2h2LbWXBu2AjaGn2m29va+RVTWMY5JiH5MHlKKSJNIkZqrJ1+MpR
	AcJbWh3IJG93UHeCMLxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZIC-0068YV-M6; Tue, 25 May 2021 15:48:28 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYtY-005xUH-8Z; Tue, 25 May 2021 15:23:01 +0000
Received: by mail-ej1-x631.google.com with SMTP id l1so47948999ejb.6;
 Tue, 25 May 2021 08:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uUSm89YnVYY5m++JvqU0akupn8UYyGqAiLVhpP+aRLo=;
 b=cgFhgV1aSQl0X2NElaBOt8i+dOhwIWsRHzkWlleoW7PinBuOKGPhYddsJddOhFcsff
 +AdMNPK7kwJ6W9DlUsEEh1LrD4kyovlSEMUZokol8/B+UUiAuFHF/j2kJFLlDtkc0tXt
 TgfEtSYhegH2dTpYcTRwE1EM4dSOifVXdsscwnRB5tHExaM4ffNJopKBJ14yRWr+zFuq
 9kFtDtp9eqwS8RnIYqTYjTYlHhNo8MP8l/5CNm6JpHzjjWEp7QhOua5o1T0z//NRA3I2
 1MIOM1uGqJeH4GD8yyCPdKNmJ6Y9CZsu5xjmWndXdo39YmesTx8KM0EXT/8zOgTmxHGy
 loNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uUSm89YnVYY5m++JvqU0akupn8UYyGqAiLVhpP+aRLo=;
 b=k/4IE7qBTRJ62/QqzTw6J6PW5SgUvp62BTFnuW+91RtDPEnljV8pKBwnxKSHTL1eo5
 ymfrijV7L9FXeTR1KwW6KjElM1kgT7EGmyjxlldsgYhq1nAeYr8lWYvO8bwfIPXscql8
 dCr2I0LgFm7lcxlaAsaIdMh2OPW6BBFwoVvtMxLkodZj5w4GT/OFPKeSGiBeIRpu8oDq
 ZxxEki7c4eiuh8qgqOu+x/b7Eov9YgG84qkI/eo5UNAcpQnGPlNTuxtnICifPoIfimdD
 cXG+KLVMYb/kCWqRP+ObJXEjKy7YGQi3FZdV1LXqEQzx/gw9d7nbkGQVLlab6l5b/ssE
 8ajg==
X-Gm-Message-State: AOAM531u9c+Y4IQVodzXBxGK/NU4b0n5+33lcqBLW+qboZTPicFObTRD
 NsOiAdb2VXDHnLTRoEhnvQ==
X-Google-Smtp-Source: ABdhPJwA172I/k9A3874kTnCJ0KUPtLokMXnEWzh6Nxw5MSf8VbsUDIQJlCNDQ1BRqaD5Y+/MP1+UA==
X-Received: by 2002:a17:906:fa90:: with SMTP id
 lt16mr28818447ejb.411.1621956178206; 
 Tue, 25 May 2021 08:22:58 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.22.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:22:57 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 07/10] ARM: dts: rockchip: add vpu node for RK322x
Date: Tue, 25 May 2021 17:22:22 +0200
Message-Id: <20210525152225.154302-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082300_524394_3F2C3929 
X-CRM114-Status: GOOD (  15.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The VPU IP block of RK322x is the same as RK3399 has and the driver can
be used as-is.

Add the respective nodes to the device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index c8095ede7d7a..62d1113b7804 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -611,6 +611,18 @@ gpu: gpu@20000000 {
 		status = "disabled";
 	};
 
+	vpu: video-codec@20020000 {
+		compatible = "rockchip,rk3228-vpu", "rockchip,rk3399-vpu";
+		reg = <0x20020000 0x800>;
+		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI  9 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vepu", "vdpu";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		power-domains = <&power RK3228_PD_VPU>;
+		iommus = <&vpu_mmu>;
+	};
+
 	vpu_mmu: iommu@20020800 {
 		compatible = "rockchip,iommu";
 		reg = <0x20020800 0x100>;
@@ -619,7 +631,6 @@ vpu_mmu: iommu@20020800 {
 		clock-names = "aclk", "iface";
 		power-domains = <&power RK3228_PD_VPU>;
 		#iommu-cells = <0>;
-		status = "disabled";
 	};
 
 	vdec_mmu: iommu@20030480 {
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
