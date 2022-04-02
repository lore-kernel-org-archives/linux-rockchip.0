Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8AF4C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Qwpr+63SroYRTpac/tPoapqu4Uu/Ot3HfTGJ94evZ4=; b=eKNBCCt1yBhsML
	4pzk1NOXTFamjH7mmA284QNTjLLHD6bQHkxK59lybP733GqpNuZmPlWxHY0sW5oEFvIpKBVFLcoS3
	mVkVf7ANliUIVPslj9gtXnV3m9EaHmqIhx58LsO2bzMZSWT8WqUd6YlWTFRwS89UT09EXa/r3uACv
	/kv0hsSofWv27O3ClWCmAA9kDeArtBO9d82fI/M1Gr+c51LtSxtjgh+emn0804kEj50sgW5tAy8xH
	ygLomSgyPD02sNz3xBJq9qr97zs+iSXvwPkJOHkXMH2B3ORw6WvKoHkAEhBKE1KDcLI4XNFj25q9J
	NyWk4EbFaJ7B0x/MAnZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naezr-009Nq6-Vb; Sat, 02 Apr 2022 14:45:00 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naesE-009JIi-Vc; Sat, 02 Apr 2022 14:37:09 +0000
Received: by mail-ej1-x631.google.com with SMTP id dr20so11365061ejc.6;
 Sat, 02 Apr 2022 07:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WTxrl9DDD0eAWWMFEHVULS2CUBJnWkuPK0erlkszq2w=;
 b=DxUpH7rm+/P+HnQ19VTOK/tUKPQchAqczLMAB75R0meXlaemhfpXusfoWalpxwCR4s
 xqJ+MAzebx1HjyaWBZcKnNADD2X0RKmVhfWc6hxsyYnOnGekp8Crm91Ef0Mj00Jhj2T9
 k+3RMJMDyCuSpF5jo/hqn7F+c1C56L7KU7k17tQi0IC9hUW0RDovZcdex8Z/+2A1hnB5
 5yDkxgiYwxBrEuvwvCKeDOjO7EHOpzzLG6CY0TNpCwGAX9SBH4j2wM8LrCq8WFKt1Eq0
 VNM0kUM9KMBN92n93fDTvWCvDJZqoW1TdNsiCPHf7x0cTXHgSTnt1V/+h7IaQVv/bKHf
 EsCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WTxrl9DDD0eAWWMFEHVULS2CUBJnWkuPK0erlkszq2w=;
 b=Y/EPWCq+Kox8qY98FLjZ2UZdszibWyfJmPCu+OaZSyUe7jAfCmR18ZROr6vPtZ8PXT
 wXfHeEscra7WVSGS7TlaCuIvwyRH9n74VmWq+au23gwxssxqoZYq/paXqM0SzMMf1L7u
 r4iUvA9IwznGPjFboA3JGwpFww0NYjdrvHehTaOc3b9Yg+J69NDu2f5gL4IP6ZlhsbS1
 13lkxicP246OmEPB0IdN52iUAlBcrwYrkr9r9s5OX/mvHrmfvLxQEljPO2qodAcOEigH
 szj4k2FKNHTXGdug/EdZtCkqyG8rPBRn5Qr0YJVUPXA1FcdRXgG5zNxqSrnGvN6mc9UI
 OauQ==
X-Gm-Message-State: AOAM533q6HOMr0B6rpKYqPuVZZB0jx3m4aek2z1CRN5kgfduDgIHODrI
 hQoIKt4UBTt7EOmoQdYvSDA=
X-Google-Smtp-Source: ABdhPJysthL0YIUDq1FZbVLlu57eYwOcK+vbupy00jeGwH2c8ufKvDM7S2KQ3X5r7vLI8+iI6M1u/g==
X-Received: by 2002:a17:907:869f:b0:6da:888b:4258 with SMTP id
 qa31-20020a170907869f00b006da888b4258mr4077833ejc.720.1648910213763; 
 Sat, 02 Apr 2022 07:36:53 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 11/16] arm64: dts: rockchip: add clocks property to
 Rockchip cru nodes
Date: Sat,  2 Apr 2022 16:36:31 +0200
Message-Id: <20220402143636.15222-12-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073707_112125_8C3C8BC0 
X-CRM114-Status: GOOD (  12.75  )
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

Add clocks and clock-names to the Rockchip cru node, because
the device has to have at least one input clock.
With the addition of new properties also sort the node properties
a little bit where needed.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V4:
  combine patches
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 2 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++++
 4 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 1cbe21261..2dfa67f1c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -745,10 +745,11 @@
 	cru: clock-controller@ff500000 {
 		compatible = "rockchip,rk3308-cru";
 		reg = <0x0 0xff500000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
+		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-		rockchip,grf = <&grf>;
-
 		assigned-clocks = <&cru SCLK_RTC32K>;
 		assigned-clock-rates = <32768>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc..9c76c288b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -758,6 +758,8 @@
 	cru: clock-controller@ff440000 {
 		compatible = "rockchip,rk3328-cru", "rockchip,cru", "syscon";
 		reg = <0x0 0xff440000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index c99da9032..4f0b5feaa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -747,6 +747,8 @@
 	cru: clock-controller@ff760000 {
 		compatible = "rockchip,rk3368-cru";
 		reg = <0x0 0xff760000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 88f26d89e..ce1cc42ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1416,6 +1416,8 @@
 	pmucru: pmu-clock-controller@ff750000 {
 		compatible = "rockchip,rk3399-pmucru";
 		reg = <0x0 0xff750000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&pmugrf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
@@ -1426,6 +1428,8 @@
 	cru: clock-controller@ff760000 {
 		compatible = "rockchip,rk3399-cru";
 		reg = <0x0 0xff760000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
