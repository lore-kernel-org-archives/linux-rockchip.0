Return-Path: <SRS0=3Vai=NZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02ADAC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 23:17:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C88336108E
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 23:17:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C88336108E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqYmCVCU6yZtq+m1HAswvkN28xrFI5Gut0jsn6TyxlM=; b=vczFT6G7Xf+2V3
	meMpiTQRQ5PGdM2ur2pJsTCxS/Atg4S2kCoMQxzeqUOQdHH//2+XsnwziplPIWCOhY/hsqbGDMfrD
	TR53Da5JUhD6a/n3kQxJyCeEty1d3TrlpHf++0DV9XSxAoseLTCQz3Yi7bxLDwlugfKZTZO6aXAyv
	ELeHD90zfAnDCriAJq6Zp0hhk8ZmklH/pKnb+M2WFXWMaKfaq2tj6K62dHJ1sFIZqOz8oPq42VO9L
	4twljo5oBQ5ZqBVEfUhZaRqQ/+YOkA9cI7Ut3JH252HXMbUAVev1Y9jfmtWHYr7gDsi631IuKmlWw
	WY+8hesHuB9orxPOsb7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMIQs-00D9hN-OE; Fri, 03 Sep 2021 23:17:14 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMIQG-00D9NW-5j; Fri, 03 Sep 2021 23:16:37 +0000
Received: by mail-ej1-x631.google.com with SMTP id e21so1043292ejz.12;
 Fri, 03 Sep 2021 16:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VpzMzVA/7NS9EjmqL9D8W4mi42UY9oZ3H5iMtM5xjds=;
 b=A4YSx25VKocwcflusol89X01AiH6ksf4xQonvz6/LMUpLJ33QY8b+hKkBKAFTs8AxK
 iCHv68o6LVLHE5BxA5XifNgHxgn7LAij99rO9kIQ2ps5GF9ooudU7v3F7bfc5g5PEaCN
 B0CLpXJi4exASWAnHnYdKpb88ZVMniX7phZHXMTxBnH2zV+mof7D3QlJYvuEQi6GTd9F
 BMU0KXGHbdqGV7BSdHI9eCr0pih0KnfLqRdZqpTButiCZ9jMw5Sl3XqLkJLQAclMDiUz
 HPa55o49qjMmpGVaqXnh/uBKFnABy8KNUr/bCoNPAskOyNixi9X+MShFJVizaKkPnHok
 OlEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VpzMzVA/7NS9EjmqL9D8W4mi42UY9oZ3H5iMtM5xjds=;
 b=R2XUcjGwBrR5VUMJ45VgFnd/+jbq8fSuPsh8TH8qeLUwliVy0BgmmZ4efVerWeVklp
 gQX+fpIi2KAhE3tSGHWMaLmks+2s2HxrefZIbSKYnCYB0Ox9SRyoHAoy8aTIlLPDwodq
 LKw+ttxjgU3jO2OQp1H32ft91Xf7EuzDKM0WBIa+xKEcNDdMctSEBj5o+nhWBDQ2dr5O
 9dc6TftSdElvluwurWP0I8lTmYBBlyCrH8yiWNDz8nepNlq2t2+Q5eKiu1YlQc4tDBtv
 UuYE5KuS76dXqf7bHYIFGJqhRwbTIU1SjstO1zjCQArzXGFu6a6N+xOMkuMua3YXRK3v
 hc3g==
X-Gm-Message-State: AOAM530lgKSs9RQv5aPMwtwUCC3qqjD483b5YpHKzGQ0DZc9ARiXJGv/
 eXUPwcIAD0NFy3B83DSYGtA=
X-Google-Smtp-Source: ABdhPJzXQCrOFY8FeHwtsYm8H7piiUeruCZps5U7zKT0kOKo5bU4uhx7OuNsUqICaYsnfB7lgfPp2g==
X-Received: by 2002:a17:906:16c4:: with SMTP id
 t4mr1409139ejd.302.1630710995073; 
 Fri, 03 Sep 2021 16:16:35 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r11sm214068ejy.71.2021.09.03.16.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 16:16:34 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/4] arm64: dts: rockchip: add i2s1 on rk356x
Date: Sat,  4 Sep 2021 01:15:35 +0200
Message-Id: <20210903231536.225540-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_161636_259962_86650B20 
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

This adds the necessary device tree node on rk3566 and rk3568
to enable the I2S1 TDM audio controller.

I2S0 has not been added, as it is connected to HDMI and there is
no way to test that it's working without a functioning video
clock (read: VOP2 driver).

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index e42fbac6147b..a24f7160f6d4 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -564,6 +564,32 @@ sdhci: mmc@fe310000 {
 		status = "disabled";
 	};
 
+	i2s1_8ch: i2s@fe410000 {
+		compatible = "rockchip,rk3568-i2s-tdm";
+		reg = <0x0 0xfe410000 0x0 0x1000>;
+		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_I2S1_8CH_TX_SRC>, <&cru CLK_I2S1_8CH_RX_SRC>;
+		assigned-clock-rates = <1188000000>, <1188000000>;
+		clocks = <&cru MCLK_I2S1_8CH_TX>, <&cru MCLK_I2S1_8CH_RX>,
+		<&cru HCLK_I2S1_8CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac1 3>, <&dmac1 2>;
+		dma-names = "rx", "tx";
+		resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
+		reset-names = "tx-m", "rx-m";
+		rockchip,cru = <&cru>;
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_sclkrx
+			     &i2s1m0_lrcktx &i2s1m0_lrckrx
+			     &i2s1m0_sdi0   &i2s1m0_sdi1
+			     &i2s1m0_sdi2   &i2s1m0_sdi3
+			     &i2s1m0_sdo0   &i2s1m0_sdo1
+			     &i2s1m0_sdo2   &i2s1m0_sdo3>;
+		status = "disabled";
+	};
+
 	dmac0: dmac@fe530000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfe530000 0x0 0x4000>;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
