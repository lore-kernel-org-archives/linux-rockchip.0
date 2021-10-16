Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF09C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:55:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78C0B611C3
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:55:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 78C0B611C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXViivBM/j99BABDBvWQKuwCMNbJuckR8/bQxnhhv10=; b=MzvcHHxhj/tj+m
	6V2HpqZqqa5hzhBhYzcJWXVdr+YzS63cCjVwhWIenvfjokQtM/KdwtIrgQEP2VhRCXGAtFzYwpT+j
	U5hZShO/viZRMuSYTb5Zb3iXtDn710qG1AILkwr2dydaMNlYKm7MVWC7B8IdkDd8G1uS1ScmClX3B
	TVph4mTjCchJb2ol6gM5tmssA5IA9Ct+oUQ61ZZ7dOOdGNZNMM/F68rYlGnFhSNTMTxHN52yRacKr
	Ar8yE1prU5ZZSd93/LGib3T91/53SexpPEFLkFop3UprTiGki1tLVQ6b68uki8D/jn/cI78EE/xl4
	EdCNj4d8YCZmLUklPamg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbhLt-00APR9-F0; Sat, 16 Oct 2021 10:55:45 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbhKu-00AOy9-Ug; Sat, 16 Oct 2021 10:54:46 +0000
Received: by mail-lf1-x129.google.com with SMTP id u21so50043088lff.8;
 Sat, 16 Oct 2021 03:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mlMdlKBxKYJqrC47Y5BkYGrC93FP3AcHRCKSFGPfaNk=;
 b=jal6pSrzEiKWtd3gwJbzAyVpbwT54fcFA0tyX+Z7NG8h1poK9FZy0NOagT8pyK92Jq
 yvCN1lmTEGOl7nXvRRC2BEAfTPYURqZVJQlGW9yaPd17VqZl85r0Kab8ZWOsSccxEG13
 /wQPBcx/4+pW4KZoATEEqcJL0bCgle21lfzv2YMl9DsDm1iLiwK3tBxKF7ls2bzKtLPY
 J4PHcnKkETud9wMVMZazarhv7vgtWHRdgLqCR6Hwf07W6k3dkXYcjFDbzFKzOB2tQcMB
 VRvS/AzEvpPoMOqLrq9RqFfk0DYcxrwtnvVXYD79ii14bUP4DiJL9gncGPij5GzdWkxs
 lPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mlMdlKBxKYJqrC47Y5BkYGrC93FP3AcHRCKSFGPfaNk=;
 b=x4ZR4cu3vaMesCGKrUIY2LhBENrVFbhdkzeS9kUalUhOid3sTd47edjmnS3878+lop
 s+0WvnX+TFqrDpEVmDCEFNqSsLvRgQk8peDx3lfpupd/apX/tX2vLgXhwAfsS2XcOz22
 XlvqlWQqZqB6WtIq4a6GOJ8H9O+huQer4EAis5aAuvPOMD3xCxG6KYgT6/CoQX1IFFtP
 jTwqPWp2xASXAKDAo+r1GQX0KZnErYIT0D2urVzV+mjQIur7YT4fWMMIGkknyYWhNEOc
 nIdw/OMbRKZdI9vPnOB/DlKyBl5wYkVB6hHD5N+6zdts0qc9rjSFgEfFvXdUZxPRhdwA
 pmEw==
X-Gm-Message-State: AOAM532dGhCVsYpYTRKhXKzQobtwFFoARlWs9gWsZvXXbHO7Tx2+sY0h
 RkIBQZLvXpTfOUXAZfqgL5k=
X-Google-Smtp-Source: ABdhPJxDd7IkXDDhRM+GlrOeQ0wUjy0PbUZHpC3Dk6SdPq8OdfcDc7aYIFIAv7CV7o/cMD23qGCxkA==
X-Received: by 2002:a2e:9c49:: with SMTP id t9mr19193186ljj.86.1634381683146; 
 Sat, 16 Oct 2021 03:54:43 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r3sm814224lfc.131.2021.10.16.03.54.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 03:54:42 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: Add i2s1 on rk356x
Date: Sat, 16 Oct 2021 12:53:52 +0200
Message-Id: <20211016105354.116513-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
References: <20211016105354.116513-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_035445_026939_ADD990D9 
X-CRM114-Status: GOOD (  12.58  )
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index b721a34ffa8c..dbe0123e74e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -608,6 +608,31 @@ sdhci: mmc@fe310000 {
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
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
