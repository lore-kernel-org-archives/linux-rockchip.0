Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A25CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 17:18:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5265961390
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 17:18:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5265961390
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqYmCVCU6yZtq+m1HAswvkN28xrFI5Gut0jsn6TyxlM=; b=Qc9DreMDbe2aOf
	mCjv2zkUeQ18lkZBjOx16d6lZ4zQBNPcx5bSkI72uHbF4JwxJQKeLrqQyq9i5bW8wHglGkaf59tHt
	jpkxPd3AQSacK/CcXej65vh9KfuDFqQscQWbYHt5lvDS8L76ldkwZrtY+EOo5P2+qg4G4V1V6M6WF
	FRIwsPBsXtBJBL5to1q9CUTGUAs+r5zGDFQP/FePcp5nZaGQPSM4BNwlr8U9h9ar72TjQB9mytVZ7
	Gi+gUks8dC9nSWLY2xOhwqtLB1fSHJOSQQ5gn5BdOo1iUm5XYr0jXCXrBwkk5He/x6ayIYT+kHStA
	2m0tEjT5OZMqHxdjdv3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWMB8-000ytE-CQ; Fri, 01 Oct 2021 17:18:34 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWM9I-000xzK-DG; Fri, 01 Oct 2021 17:16:41 +0000
Received: by mail-ed1-x532.google.com with SMTP id g7so36356058edv.1;
 Fri, 01 Oct 2021 10:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VpzMzVA/7NS9EjmqL9D8W4mi42UY9oZ3H5iMtM5xjds=;
 b=qae9nErc5IQ+5p/SV0ZKLuHq3j6ozUhNtpNZYRcNNl7tMzk86Gc2Xk3muCb/52/JMW
 /qwaUDCEVPQ+NpZEuanfdfps4DhLRBPTzCw/hT8e3cmZQsCqrOuJEaQSY8uL0ClbCXJR
 cv1OIAwyaDA0uQPFs1ZlX8/0Cmx8XZ+CqXjJofarOmp2bsr+4mi6SOc7EZwnCp9XQJA7
 mV/VTjv/L4GP1ba/CRSZy9LSkDtfykoQWcL6TzPWC4d0prsanxqN15INinrOjnujRZim
 lMz+MY1Q+jV/4j8pgRnXK/ybEWn1qSgP+O6J9CPsJwQ0jjFCo4lYGeY0Fqh0QUwO744/
 1Y6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VpzMzVA/7NS9EjmqL9D8W4mi42UY9oZ3H5iMtM5xjds=;
 b=LAKIFRx+dytD2bCSHdRuCKGGi6XBbCQmyw/ASTkLDs5rYgzDaa/KfzvrHHWg1J433k
 NMiqWdGQjK2HlhvddXivIR6DxIM4Fzn1NUAyPK2tye3szMQRdI0j8L3UKp6xmtdllKSs
 OCJIAmA2DKWaTIdlloP7pIfM1RautcLZBKAwt+pfd+fKTNJ5yKaseCmdu/Yf0gK5bTck
 764aXXiQ88OhIeDs0QF/iJ5jRsz3dBCYa61uCfGjWcG5cHBbrusiJyKKblH+s219SGe1
 njuxcyVpdDmna4IxenQZeROGx8Y1z7QIIifKDCza3dqbwxRhLitVe8e/4Om4OFvmpi8z
 DrSg==
X-Gm-Message-State: AOAM5330XAgKuMuH/eOjc50iS+aEZxPmtK1Q5NJo8/pXGK2toF81lSPW
 SZ+1oLJXX8Um72KyxDNI9+Y9I6RPbJw=
X-Google-Smtp-Source: ABdhPJy8rgscJ7SMxXBHuEIAT3eSdmvgYEFAp54PH2+fChoR/Nd0zg5fhuqadxDh6Dq/eNK08n/taA==
X-Received: by 2002:a17:906:b19:: with SMTP id u25mr447724ejg.36.1633108598527; 
 Fri, 01 Oct 2021 10:16:38 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id h10sm3588130edf.85.2021.10.01.10.16.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 10:16:38 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/4] arm64: dts: rockchip: add i2s1 on rk356x
Date: Fri,  1 Oct 2021 19:15:30 +0200
Message-Id: <20211001171531.178775-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211001171531.178775-1-frattaroli.nicolas@gmail.com>
References: <20211001171531.178775-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_101640_498258_7F6BA138 
X-CRM114-Status: GOOD (  12.46  )
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
