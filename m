Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B88C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 10:16:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 534E360EFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 10:16:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 534E360EFE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6hm+V5I9TprmpcCaL6nR0o8z7ddlhxVLZ4q7kxwt80=; b=R/7BfUlclF5cIp
	Vqk6igbVY/c/oExehS6b+ZJ1aVoskQHVY9RHjWWrx1hDJYiYwmO8V87ADuMeuQ9TG3lPJvST81mDJ
	7iCmsNI/+P7MiVK0eNNVI/NayvBsy0jSf3rMsM488oY1v4zULiEp+qFlbCmh4cpbyQEcEiSIgbvwH
	o8IW4djhyjbuu/UdDdCKBQPgpDfRf2Et1QZLWlUDQ7FRJ7CpaxEvhwOzHIIaXbgJwWvtR5BHAwpda
	Osnywc+8OS4QKTdjtObHJNCCGpFD8fCOQH4Mke/JxI/u1z9ULL003jNIA23dhWs43nrThYQ3nkPPx
	L1jc0+ya8Pbp4Wi2b/Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw8t-00241q-33; Tue, 17 Aug 2021 10:16:23 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw5H-0022HE-3s; Tue, 17 Aug 2021 10:12:41 +0000
Received: by mail-ed1-x534.google.com with SMTP id dj8so22949027edb.2;
 Tue, 17 Aug 2021 03:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d2VQ1+1ilMFZsg6Zzub/scQE4lvZLEeXq1gSlLgcSKE=;
 b=nOg8owEeR84zqET1AanwCwo2tnJy9LFT4nol/ZNGj2oi5zMxpWMMsNcvatErleon7v
 8NDfKHT9PRl2uH3sFn7DnyNfp5Tq+qRLxfcvKYSrASJRXete2G8oszSmsUB4p8PjTRgw
 nI+li/WpRGKX4ZIuU+fpEaSGjhzFAG1rb7TDyVyqqqpVk2XvhpUKxF+1L7cna46Dkj+k
 0aJrQIg8l02WzQAQljx4G6wlhhskr3IMtz1IRgWAZBk+1+OsO4jvTyEmVjZ2+KMyF4wD
 9U47fHKOxgR9idE9XGASmAbEzLxqdv3oRsXRH129uTrCccz2xdvE6LiQkRb4MTLOauCf
 x0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d2VQ1+1ilMFZsg6Zzub/scQE4lvZLEeXq1gSlLgcSKE=;
 b=ZtOac7gTpAXQo8R/eHV5GGHYF+goOGv0mhaWywFiBX8cyOBuyEOm5/27QNupXMsv41
 H+jPqxDpd2ZVcela29+q/wrpxN3eLYg3e5ak8al/P8S09zSbGQa1vC4zQqRXIHQ5tTis
 4yl0fI1xqKSRcoKfvkeqboUqF4U6FWOvkRlEhI6l7xnI1P2qkrO+zNPGpq6kbhaO2mG6
 NThqjdaeUygxWWPlnWw05pBqE9e1hm7Z33giFF6BiBssQbzN+PwM9TMzbsA3eeOieK+o
 9jIgXz6Ja7o+Ebj6yQaI/GQ1HPBnbWwTy1FdBHLLkWzit6qvp1PDaGpJSaPgfd+vhiuv
 tc8g==
X-Gm-Message-State: AOAM533TeElqG84AzHcZyfcbsG11NZAKI1Ef+DT8F/sxsXsCxKtPamSs
 GYe7pdK78o8O212duJFjLRVnxztVI5SxfA==
X-Google-Smtp-Source: ABdhPJy47C3jj8L9PvfO8us2OumyDSsn8GWaDRijCH7fj2J4bPRQCv9moUt2p36O3wiwORsQa2/fgg==
X-Received: by 2002:a05:6402:36b:: with SMTP id
 s11mr3413272edw.235.1629195157643; 
 Tue, 17 Aug 2021 03:12:37 -0700 (PDT)
Received: from localhost.localdomain ([185.213.155.232])
 by smtp.gmail.com with ESMTPSA id m6sm822920edq.22.2021.08.17.03.12.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:12:37 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: add i2s1 on rk356x
Date: Tue, 17 Aug 2021 12:11:18 +0200
Message-Id: <20210817101119.423853-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
References: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031239_196802_005F27FA 
X-CRM114-Status: GOOD (  13.10  )
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
index bef747fb1fe2..2cdb13f29bed 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -554,6 +554,32 @@ sdhci: mmc@fe310000 {
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
+		dmas = <&dmac1 2>, <&dmac1 3>;
+		dma-names = "tx", "rx";
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
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
