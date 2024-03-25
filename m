Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA17C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 17:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvt9nxajFaFglWVA1IAuQdoStzXtv13fvwtCr1Zwj0Y=; b=JfIbrhEQ6COYub
	Un6z8OdoZoTBfoCEuPWUjxF5O1nTS+LwciAvc9I/Ry8TCCwlU7HNFvB4g7a165l5o1eJgnCIzNyq4
	8opKLnm4EZQ4DISeFP0e9N+PNeqq/12nhlILjEtgxoaqLW2n/uUh8ihM7mlBBlcH7vA2eONYk9sxl
	8BaCTokmhyQ0egS5a1zkAeY4aewCayMlmExfDJDP6g+/sNe6BqevVwxfYHqFIQIKp2Fo5n88ENxa/
	Td5HOSQmi6ggPAwzfdwTVyALuFW/ZQ7lDOUhLmC6OgNeXlPzZ2IZvoIK+CipeWeJXqyNdatzhBPR+
	s1SdJl7PWbyshUSGxBzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooUN-000000019QV-3YZy;
	Mon, 25 Mar 2024 17:52:03 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooU6-000000019KG-0iW7
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 17:51:49 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3c3d67db82aso214103b6e.0
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 10:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389103; x=1711993903; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mI1JEJNBBcWDVRcoev8h23jzy4M+ePchT8VllK3tA1Q=;
        b=JWj6hqnM9FbuULBhg0cPxnR+pYzFVRQCqIQU9YqBQP08Z/+OixEhJVzK83OxOeFUwA
         ZD53w7Tc1ZFhvVxic8PYfCnrXdZXcJhwWmp/hqV43T1bvyxIARupkW90nUBtbcku+2dM
         vQGn6N4apZ3ESv+y6S9k4x0RyMjOjMLWjTaZhvXEwsKPPxFPHAwHDitSfDk5OF5MSAaq
         x0tVqoWmNpqB2wCR7vbM6CjN4oqDmt3ki+seiGYx89/bn6U4P8D82g2QhYYVUBECHcj6
         fSHIBwS6o7ois+NZrWmNR63arWcnKGgfWnahM5krcptO7q4+yZM+P9ZVHj4v1rHyvWpM
         mmeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389103; x=1711993903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mI1JEJNBBcWDVRcoev8h23jzy4M+ePchT8VllK3tA1Q=;
        b=KFMy0sdgxFQpoeB1JSozXPRfUiEVSah2MRlqsN1KjitJfaDw9rdeLoYxnCYrLN+RM+
         AIh23uDTYH4MEH2AE8JN9Lj739Fkl4GarlIhYFdTpbOB51yzZPz4EGUBLAA9Eauy7K73
         K2DoDDgCgFWHyDGmJ4o/3bOL1ULSpAFl+3fm5y9NR+f2nzk7ck12DKyIME0GyVpyxbwJ
         6gmWfduU6t/JROE3d8D2RMaInsiB3nIELRNwD3Tu/aEh6UW7rb7UudNYs4FIhXICEJsP
         LX6p2fR9nvaT5LcW0hKfNG7cKk251u6M10x3lrQ72H+T7kSdc6zC49z9LhmRYd/AqbLK
         n4zg==
X-Gm-Message-State: AOJu0Yxn7Q2KfAiMF+jYK9aFU0Cu5gXIJRknZXurLuyuCJHnq5OpaCs+
	hFSoGvpa+njBgN7y0mNzVXB5BCriNxvGbCXlcPVUTZ2HoTse0MzydprkyWMi
X-Google-Smtp-Source: AGHT+IFPLvYp9Eg0ptpvOzBFhYZ6KuQ//I1wLNdwe7iaBA9xy7lqx91AxR1NMY+41M30xZK2tcc8BA==
X-Received: by 2002:a05:6808:bd2:b0:3c3:d2dd:f8df with SMTP id o18-20020a0568080bd200b003c3d2ddf8dfmr2287224oik.52.1711389103720;
        Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30
Date: Mon, 25 Mar 2024 12:51:33 -0500
Message-Id: <20240325175133.19393-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_105146_834001_4F871404 
X-CRM114-Status: GOOD (  13.19  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Describe a possible secondary regulator configuration for the RGB30.
At some point Powkiddy altered the CPU regulator for the RGB30 without
creating a new model revision. Note this in the device-tree in the
hopes that it may alleviate a user's confusion (or possibly allow a
bootloader to manipulate the tree to swap out the regulators when the
alternate configuration is detected).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index e359465eebe9..484f097e9f11 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -54,6 +54,30 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
+
+	/*
+	 * Some RGB30 devices use a different CPU regulator. These
+	 * devices have no external markings to denote a different
+	 * model revision.
+	 */
+	vdd_cpu_alt: regulator@40 {
+		compatible = "tcs,tcs4525";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu_alt";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+
+		status = "disabled";
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
 };
 
 &sdmmc2 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
