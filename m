Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F6F0CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 23:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mRLy3uOqzr52me6LgfIny4PvnWpNRUmocXLV4rKeo/A=; b=QkVf8ZOsdMq8D2
	x3fmTpV3asHIRXAtK5B+vnpF6QfR1H6GIIIHB21+tH335uEFPj+X54zWfccLJ0PKQ/fh5XNxX78qF
	67R6zqy2vMgkJo/KoYaa3AIHqjQP5G/rYFrlSGRos+bjTOhhjaHpANbCJf3vnnPz26+xkfKQHzMBO
	ZPg0awOs225LEXI7QmOfNc1rDU2h+XBpLvmZcLEmbNnqS85lZWwhmqF2XsZYUYJwfpJdOWRGKfTur
	e7TcsZC547gy+Kk6zAcMnOMBP7Xd036CpEF159K6SOlWzUMos7VmKMK8C6fzsVZ/Mi76zw7nSJi2m
	ef+yBPUT5oJ+7pv6dLGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFKrU-000000089Rh-1yNh;
	Sat, 01 Nov 2025 23:18:20 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFKrR-000000089Qt-1D6x
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Nov 2025 23:18:19 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-b6d6027158eso61538866b.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Nov 2025 16:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762039095; x=1762643895; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v2kY5ZNCCQbsUksqRncXUOQKnSfwxn1jvbedFSwvdQE=;
        b=EZOKESzGdQ1ko6V8ETLZOj66PCJW2sAXzTHL0+/2QMTNVdK2USF0J1/4KTVtzt7zW8
         kvYkVMrSP4VmujIDfrZqaP/OzHxwd7fx9nqr9D4LUaQggq/K8eW2U3CkU/g3UHPyiDPX
         +7opKTTChuOmfvIGqrZwywBIoL4IrGcSZVAOsHP6NmUz5Gh/ZQW9TmaqwrvTcxmmnEjv
         892IUExh7ciJZ6n+I1bu/IJiIwfKoXayXhRZKn3ZRn/vOARCbt3CTBLLdOWJLongXqlQ
         WZUi9TXwDAukIWC3LrXa8pVm1hzPlEbYSXhtQ+JlgZ/RXzJRN1cg7rG9sNH+CNe1W+vR
         kbdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762039095; x=1762643895;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v2kY5ZNCCQbsUksqRncXUOQKnSfwxn1jvbedFSwvdQE=;
        b=KIFgw8BXjOq0KARSregvE+wXp0rI41WNZsTuxbwRQa4TSyhkOvNLttdwDwe5gR+gMQ
         ZnxXovsSWBRIuAxyLMoPeuJ7W4Gb6IVIM730fT5ePQKSzl40KLkIQBZ9bYNjEHP/yD50
         zJlwX3h9cjOPk6GJrt6UIx6KBTVKQhY7eHangShcIpVFQQtaLgIFHp8BPywxLVbKSMKb
         93My1k3c2jOreCadsENo/N0nnbDCpjGD9XObvAjqL58iiosugY96R4+dwcJD9WmCi55w
         A0lj7+Rv/54md07r6o4GBAdUG/2tvvb5HOQHOieKcxiif00dwzjjeYuyJWiWtGQYNOyD
         C2qQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpYXqb3n4s27JVxnm0120BcLB9Bc4acA8gPHftL+bJG7goOf+uiYQhiWylvl0Cta757x9Kwf+vK5MEiUdgPw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn66k4Yv5UKHWa9or4V2rNGvN5kI+lM3oLTbXYeG0gXJUc1czD
	gVtYLhT92I7OgQDtFOoGl6ZPlRO+pprCnmIGe5cyi6J0MGOH31G4sKdX
X-Gm-Gg: ASbGncvR3YphTSIs/fKoag9KVV5/1dbA3GviDcm7p78YkYOW2uzHRz/FWI+QRYWsozv
	T+s+vSsnWPIn1hz7mguHA82dp/SnmrJRT7lGiLBsO/kCtflOMyS6+TgLLFy1c+ZpAfL0b+UvITq
	sA0sSs73b/A5rFRm+2Wb3l1DQJ5mEqNT1um6LRlgYlePCZtFYh5QrdqSADec9uQpzsAKsSMJ8fe
	/nb5F1Ddw6iKaL+BEiI/KO5TgoYitD//oAHOv2VY2LNO9gVc6QHpRJQxD5g0NOldnlEkmYqZUYm
	XYP0Jhs5wAZGH71bmqNvuolNslT9Ug0b6wW3czF9z7+IOVT8NonNG11FNGUgaF6x3zonyYOLeJK
	Mcwch/7btErrEV80liIjbCf/BKdEKunGuQOmILnHpoJOBp77t+H0SOUb8CN/3F2Ix91ChLhgPmV
	bhrha6ZKS7YdC4oxoLaiSBMI1jddTpdyQSrU07fNGWmRiH4C2GkA==
X-Google-Smtp-Source: AGHT+IHcmBZR/CYZGz+1H8YjiW4T4LxbNxir8Pj0nOjlwjuLiZBdJmsLBYzTwNDhteMqoR37SkWibw==
X-Received: by 2002:a17:907:7e96:b0:b3f:5eaa:ef19 with SMTP id a640c23a62f3a-b707012ac5emr437203766b.3.1762039095064;
        Sat, 01 Nov 2025 16:18:15 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70779762e9sm571946666b.7.2025.11.01.16.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 16:18:14 -0700 (PDT)
Message-ID: <7d6fa223-ab90-4c44-9180-54df78467ea5@gmail.com>
Date: Sun, 2 Nov 2025 00:18:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3288: move edp assigned-clocks to
 edp node
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_161817_351533_9314D83E 
X-CRM114-Status: GOOD (  10.06  )
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

The rk3288 power-controller node contains an assigned-clocks property
that conflicts with the bindings. From the git history it shows that they
wanted to assign the rk3288 EDP_24M clock input centrally before an edp
node was available. Move the edp assigned-clocks property to the edp node
to reduce dtbs_check output.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Not tested with hardware.

ARM: dts: rockchip: Assign RK3288 EDP_24M input centrally
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/rk3288.dtsi?id=df5ea015984633526874619ca1288fc5f2cf47c0

ARM: dts: rockchip: add rk3288 displayport controller node
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/rk3288.dtsi?id=6df7ec6186644a4ffb4f0c859327ef41a1145a5f

ARM: dts: rockchip: add rk3288 edp-phy node
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/rk3288.dtsi?id=f5663969d8125a5c5b7835812e1e636ecedf030b

ARM: dts: rockchip: move rk3288 edp phy under the GRF
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/arch/arm/boot/dts/rk3288.dtsi?id=4b91545072ad7ca1963d2a89c8b42fc2eb561484
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index 7e284b4fecdc..7477fc5da3ec 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -741,9 +741,6 @@ power: power-controller {
 			#address-cells = <1>;
 			#size-cells = <0>;

-			assigned-clocks = <&cru SCLK_EDP_24M>;
-			assigned-clock-parents = <&xin24m>;
-
 			/*
 			 * Note: Although SCLK_* are the working clocks
 			 * of device without including on the NOC, needed for
@@ -1193,6 +1190,8 @@ edp: dp@ff970000 {
 		compatible = "rockchip,rk3288-dp";
 		reg = <0x0 0xff970000 0x0 0x4000>;
 		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru SCLK_EDP_24M>;
+		assigned-clock-parents = <&xin24m>;
 		clocks = <&cru SCLK_EDP>, <&cru PCLK_EDP_CTRL>;
 		clock-names = "dp", "pclk";
 		phys = <&edp_phy>;
--
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
