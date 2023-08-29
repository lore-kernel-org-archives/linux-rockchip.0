Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D0A5C83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 21:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdmtQ2QdK4dnkJlpY9+1HfP0zbuVl7+SgSzS0LweDtI=; b=kpSzFvqjsqHC+T
	m42vn5AJWokj6iXZWRsdz4bmi71HndsXiBwrFqmAtux6AAWjC1h4d70m6sp7xbv6y0Op65SuNTtL/
	FRMfR1yYATFX5I1ao0/trQcWzawA1yeuxtlpJBu3LVat5kqygR7CnSoUZeVs4vJ75lJMU/ebHAhLC
	+zobpegPRXIuI5mXt400qUXqTMJC104pYwuBTxn/W9vApvZ00psmZLUSER0oZ+z68YP3pdZxsrJv2
	926G/JTv6k26lIGAxRN9U4ZUt8TvxfZ8QyS3YI4qA/WX4yX8ivfhnM+7uCSf/rAnFq9wJA5NOHmGJ
	lvg+jbYfUBjYP353xx5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6Tf-00CJTk-2f;
	Tue, 29 Aug 2023 21:42:23 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6Tc-00CJRX-2L;
	Tue, 29 Aug 2023 21:42:21 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5007f3d3235so7784318e87.2;
        Tue, 29 Aug 2023 14:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693345336; x=1693950136; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LaPRCFGOdGoFBcv5kpNjOOGyC2mwPb8qr7pQmrJEubs=;
        b=ly/Lmr3irkyAxKVr49lGc8T5pItAMD58RVJZAEDpjazqqq5dnRKRDwaUW6XEEXWVkG
         4tyLC1N9uyr4uIePrD0YP2VGzO3bkidzcMYjz33PMs/DqpkdgLfjt8jXQNPryuxIuhBj
         l/Go0N857+mYZ8ZHQhhYEBYVJTZxeFAqJyTM+fCimyq65Fe2qiMCgQwN8cVs5jQq5ROS
         tfRQbKyjD9sMUWKRmsXTy/L518ew6UTJt0wIFUe2eH0GCIBKUs39GEp+f55eYe2elFnd
         qZPA14ns5YvsdaKmeb6qQrW8wuwaIzSQMALw6rKyAbJ0rpMoV2pPrFEsoKkA9kbKSpxx
         QiVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693345336; x=1693950136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LaPRCFGOdGoFBcv5kpNjOOGyC2mwPb8qr7pQmrJEubs=;
        b=fCu/ZyDJSlzkUU/zlJyGtsNovXytsgKixng/FhVP56awJcpv4SWoognFXB/R1MYjJk
         /EeIWwxBQOeNt2Y2tCCIXE6RmwG2wCKxyU9nTCOSxcjAlZg0kgL5lv1Ddz56TWBQCgK2
         49dL/vJwoWm6yIPh3kQY+JTYno0HZGIPOclhUQ2Zi0CRvjlvg63sg+fDh9sgzFBHvSbF
         KdCI7CSi1xTG2OHfc2z+W+kk5RSeuvvtM7MxJ4Wmirh/9v9cS1/6HSIfrkq3G5rFF5JI
         B1T6yFgnqXaXb3j/GNxUxSIt+CQCLCtoMsZlq4Nz8xUijFQGlsigkxJ+nKHQk/mVDg20
         sj/A==
X-Gm-Message-State: AOJu0YzV6V0OYtejaviIK7D38pzQk09zrvTbr7dIRNar5U4yINyHkk6L
	5aIBHWkNJA1uFPzknRH1gA==
X-Google-Smtp-Source: AGHT+IHvZchRUXOYbVMxqhQXem4nDQeO6sU4KBR+SsnU9mPMYX0bOxIaJ3lsV5VOGNvuJ0DWCsg9jw==
X-Received: by 2002:ac2:5b1d:0:b0:500:bb99:69a9 with SMTP id v29-20020ac25b1d000000b00500bb9969a9mr96761lfn.64.1693345336520;
        Tue, 29 Aug 2023 14:42:16 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:84d2:f616:9527:dd98])
        by smtp.gmail.com with ESMTPSA id f15-20020aa7d84f000000b0052228721f84sm6113428eds.77.2023.08.29.14.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 14:42:16 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 3/4] ARM: dts: rockchip: Enable SMP bring-up for RK3128
Date: Tue, 29 Aug 2023 23:40:07 +0200
Message-ID: <20230829214004.314932-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829214004.314932-2-knaerzche@gmail.com>
References: <20230829214004.314932-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_144220_760678_B90BADA7 
X-CRM114-Status: GOOD (  11.91  )
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

For bring-up of the non-boot cpu cores the enable-method for RK3036 can be
re-used.
This adds a (small) chunk of SRAM for execution of the SMP trampoline code
and the respective enable-method property to the cpus.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 2778049003a1..877854dd765d 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -27,6 +27,7 @@ arm-pmu {
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
+		enable-method = "rockchip,rk3036-smp";
 
 		cpu0: cpu@f00 {
 			device_type = "cpu";
@@ -86,6 +87,11 @@ imem: sram@10080000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0 0x10080000 0x2000>;
+
+		smp-sram@0 {
+			compatible = "rockchip,rk3066-smp-sram";
+			reg = <0x00 0x10>;
+		};
 	};
 
 	pmu: syscon@100a0000 {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
