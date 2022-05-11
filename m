Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15B4BC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5ThqCtqw+TAJwe4H7zx1Y0uEHuZXY3za8iwypmtGoA=; b=cDQ3SioIrmZAOd
	vsR4Byl2D8zWu4EJANpRHScfdB31MnXKTfG5WYxC1BVCMk+s1Fv5Oy0R2i7Ejm5xJMhOHNeausKOR
	523EirKQ/rR88sZfQb/gyeSmd85CnWiQ8Jko+Thg5/BlxhxjVZ3WXuq12y80zZUJ3LYqEMirxYdyJ
	6qC8XOvDuPQrUqI26XT9LzzJEvncGYVEgozkWt35s4RARIrJ9zhEIzY1XjxARzSjKeOt9Sf4W28z6
	lc7C9yNjhNk8/Kzrd7vwfBOhNf/koLKA5L80AZP56LrkoRGdsyjzed7hQm7s+jOZFC5tNdzZpVxL2
	3vpm6ieM9ysJg12QX/eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nonzS-007RnH-Ks; Wed, 11 May 2022 15:11:02 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonqB-007NkU-Jy; Wed, 11 May 2022 15:01:29 +0000
Received: by mail-qt1-x832.google.com with SMTP id p4so2140271qtq.12;
 Wed, 11 May 2022 08:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1+0VMWvkb5KhIaQ1vIx5DoEhMwYXv8cN9xgLJnTJYLQ=;
 b=mRKrlFNGn5IbBhXKT/0K+CcQIBoIcJDeXtaQHe6SoiiJ3T1hka4jtIcnqUuffq725v
 hPzBAl/d5PCCjf/aFdsx1HSmuwEhBOSHm0CmAlgqWws19GOF0Qw2+6amUhSeXnTuwbrR
 RbZ1J27qWdAePKn8X195kQVjfqgz0VZDQVPM0Sd2p+u2SB7/yjzRZCJ18dGoOWk+cYcq
 GIbgTWKbfZoDyV0O6YN02szADxJb0ot8l5O7l6CX+GxKz4OV2mtoEg2gDClc+klt1O/A
 Eyqij7JRO9QkV342d8baxgcl1dDfGhvmAz9TU1tGP5DJLbkbLbgmrSTJ0vRiFSeX67k1
 lQEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1+0VMWvkb5KhIaQ1vIx5DoEhMwYXv8cN9xgLJnTJYLQ=;
 b=q047zJJJdmY6pbpi84EUTh/XlIW6FGnAwTEKx4HrQpoEaWaJryHDiKOhnMQ4NUv/cr
 h7vCcQp4PFqwZ7PPSJdGpF0bdaD5CSikITHReKQq9Ucsk9P0gJmmhwELp379IzBjgplw
 Xns3aG2dCugDgHRlqenZNslQclrJ4yTsZaLVYpv3JmiaFetIh1MsiNJs4z9dmGpwklRU
 V3o4DFDaL4ZhLRABhUUt9ur2ZzXtJCRKRwnxcXxPjmFWLs09eYLPddHd+dy/Dw+N6bXp
 0Qch7C1zsqjIs/Xzqb7BOPvdlcccsvo3KJswE5vtsgvRMK02fUkDFcHkiaZ7aeeIF7EV
 +yeg==
X-Gm-Message-State: AOAM5325aXZVYfGR9R5EFJTQ9IzvNe2MAe60GZaFMbekC+Bw76/87oUB
 Om6p8oIR+WEtFyCMWkrI+mw=
X-Google-Smtp-Source: ABdhPJxjiw+10SAJyJBRk1SuW3dIg3jBhQFMKieH82FSOH5Tb12OHXebD6jBjE/GmPefF6g0dMS8nw==
X-Received: by 2002:ac8:7f43:0:b0:2f3:d55d:7296 with SMTP id
 g3-20020ac87f43000000b002f3d55d7296mr15820698qtk.635.1652281286126; 
 Wed, 11 May 2022 08:01:26 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a05620a244100b0069fc6484c06sm1487134qkn.23.2022.05.11.08.01.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:01:25 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v1 6/6] arm64: dts: rockchip: enable sfc controller on
 Quartz64 Model A
Date: Wed, 11 May 2022 11:01:17 -0400
Message-Id: <20220511150117.113070-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511150117.113070-1-pgwipeout@gmail.com>
References: <20220511150117.113070-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_080127_739428_AB6F87E0 
X-CRM114-Status: GOOD (  10.46  )
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

Add the sfc controller binding for the Quartz64 Model A. This is not
populated by default, so leave it disabled.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 71df64655de5..6ec349e7e521 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -603,6 +603,22 @@ &sdmmc1 {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-0 = <&fspi_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "disabled";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <24000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
 /* spdif is exposed on con40 pin 18 */
 &spdif {
 	status = "okay";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
