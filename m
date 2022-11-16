Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253F3C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 20:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbJjW2eycIvyw4+UFOteLYp67m7ritT9LghvlXBgRnw=; b=hHETPhETTVpMAV
	jtl9iDG5TiyULGgoNu5l/2LE8FVB6mamLKqYw2kom+hn9lOK6e3T2xgeSu8JLbECnY67+mItJ+VW/
	36xwS0WgR4fhTIDZ4y2LSu5KN6v5fUjlJWoMxMxFNYKuJyaORO72RzF6v1f0XOmJLdnmrAayUV/fF
	xzmljTFELA2hXu59uzqqnfLe3rrb3fO1zIl/vI9Vwj6unL30xRKnqUVz6loiLxne1r3CxIgodpk0s
	Q55IRJMTqaXaJkdgbN8CmUTdvL+ZYwwV3YDmUpEsuh2vcq2QN1v8L+TTeDGDpLHT5ZY37sXFimDO3
	8Q7DhJy68RZh/DG3r2NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOdO-007TvN-S5; Wed, 16 Nov 2022 20:03:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOca-007Tds-Af; Wed, 16 Nov 2022 20:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Hlf4RPnys2xlptR6hKKlXQBW5qSMO1/p3GZVaaL5DEk=; b=FN+Sd97riK2aSwUH5qVWSThSvj
	e+1Fn+6l9/ySWUBqVvbqJZTm/Z6Cvrq4+TqVg0ZYqzrFgn81vWytp0ACoTe9z58BTVYXCvfip0Q1E
	Joh0QKVBf+7T2yNfcptkzS1BZYxUg0+dXe5YyMQn80CdWie367Z1BUTQpzuSp7wMCE604I9/xWr86
	GIcw2tqDjU7WyI5UKmzhXqOzqpZw05mTI4PD9gApjYbNPaYjtS963/HcHN30BqBXtBOmwOY8JjihR
	yW8zWc8YOXsj0yMrnNo7KEXbxXQf8eYHgIZfJiswF6i9YceqcYq+oN+kBAfkkypUUuWCi4xlOPYcB
	d8s/Nrng==;
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOcS-001SGq-7Z; Wed, 16 Nov 2022 20:02:54 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 136so17743197pga.1;
        Wed, 16 Nov 2022 12:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hlf4RPnys2xlptR6hKKlXQBW5qSMO1/p3GZVaaL5DEk=;
        b=Q1vmNkgnMV1rfn9shs7EUPv1E8qMY58IiMlv0wjSwmEEfxjXjMTTfXyJEBhBiZo4RV
         1jqoXycSq7g9T26erjmpPfcESFrKSgB+0GZ9uXRuDnLliTwzcp3CITDb5rLft3pHUUpi
         Uk/ztpz5RY8cTkGXRuGcM71hNwq5QyUBzol5xPf0dZrny2lfx3BZa6ABxvJWlWOVNpv/
         XHOslswzR/EJoP37wdNKNz8kCdbb+T/xvt0e+VpK+v0o88GygLfHfFUJ01ijAAnOvSuC
         2OvmU1Qfgf4o7q2CmJmFZvLTNWSz59rzYkXWJyMLkM4/jBLVp2C4joBXxUv+a2T27LLc
         EBOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hlf4RPnys2xlptR6hKKlXQBW5qSMO1/p3GZVaaL5DEk=;
        b=ftaSY0VWOTpPoDycSZI2vwcPey4KWO9xsn9V+36RDdIP8yolwL2hEZSjYfT5mXHF+G
         EXrJUtEs0TRVGvk2j1blEC2k3unbULcjabGNUX9iRWvLLdPbxZxsm5tNajHd/bTbFXpd
         fs4A56cCIM5rrMt8qTDZnPxb5+deCY5DbsDTk1NxAavRLGLaoK0Il7n0nOizs979UViw
         UWoET4oRs8e2mOPCwNJ9RsRPAlOHFXz5mqKlm6hymRDD4NjOOtC474hGj5kPaEX4dlYY
         T0+wbCj3X6xCLe9kyVUm4YyRL0B1+oWUOnqysxzupEHyLtwbybXkobRQlVRn5SwRAWR5
         Q1tQ==
X-Gm-Message-State: ANoB5plebUXBsxg4yOG3nwKdfjmvBm9itzP8+S3J+hz8IL6d6nhMLhAi
	8+81XqOBzLTqF6VihLzn6F8=
X-Google-Smtp-Source: AA0mqf6qbEHBcFkhsJEvfxwuN4QewKdZ0Bpri9Q9/YF+J2TGtG47mtLJ3TFInumyyIdAseU3vRyqgQ==
X-Received: by 2002:a05:6a00:4186:b0:56b:d951:67d2 with SMTP id ca6-20020a056a00418600b0056bd95167d2mr24621348pfb.55.1668628964901;
        Wed, 16 Nov 2022 12:02:44 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.182])
        by smtp.gmail.com with ESMTPSA id s18-20020a170903215200b00186a6b6350esm12423950ple.268.2022.11.16.12.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 12:02:44 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [linux-next-v2 4/5] arm64: dts: rockchip: Add support of interrupt to ethernet node on Rock 3A SBC
Date: Wed, 16 Nov 2022 20:01:46 +0000
Message-Id: <20221116200150.4657-5-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116200150.4657-1-linux.amoon@gmail.com>
References: <20221116200150.4657-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_200248_488435_30CCCC1C 
X-CRM114-Status: GOOD (  13.91  )
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

As per the shematic gmac1 support gpio interrupt controller 
GMAC1_INT/PMEB_GPIO3_A7 add the support for this.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2: new patch added
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 5378254c57ca..9f84a23a8789 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -588,10 +588,14 @@ rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x0>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&eth_phy_rst>;
+		pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
 		reset-assert-us = <20000>;
 		reset-deassert-us = <100000>;
 		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+		interrupt-parent = <&gpio3>;
+		/* GMAC1_INT/PMEB_GPIO3_A7 */
+		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
+		#interrupt-cells = <1>;
 	};
 };
 
@@ -630,6 +634,10 @@ vcc_mipi_en: vcc_mipi_en {
 	};
 
 	ethernet {
+		eth_phy_int: eth-phy-int {
+			rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
 		eth_phy_rst: eth_phy_rst {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
