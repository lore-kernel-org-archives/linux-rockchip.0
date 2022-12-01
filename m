Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DD55C47088
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 20:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCjQvnbDMz3sVuNgcRwPc2teXtohWgstYIySjXUtDCU=; b=bdyaORYpgUyQ8J
	pu+ku8QmNv25Ja7ala1/yUco795D5KSZMlzceOTwxIk+s7g06dGxyQ9D50A2x0IFXOxFB1pqeCUKT
	FGs8uF3BnGwNus5GQi5w+KX93IDmXtbJqP36X2G66jFspp5Zrn53NBb/o+qJxONyvhWyI8qP6vaoO
	4moS5C1eRIwUM2rtBBlzrdRzTNSveGIrTekxzHGWWESRbOW+esxkuqlDg44IY6HC/1r1t2NhW+LQ0
	XNNstvUtblRBcLllgFmDsCujCw2egAPD5Q74E2jLfHXHdVEzaw8u6lNN+mqrCUOOtRdUDv/n1PTgQ
	86BtVtUJJN55QAosf8kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qOF-00AucI-Dh; Thu, 01 Dec 2022 20:42:39 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qIs-00ArBQ-Fu
	for linux-rockchip@lists.infradead.org; Thu, 01 Dec 2022 20:37:08 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-143ffc8c2b2so3538146fac.2
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Dec 2022 12:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kG+ctqd9teSCMiayuOxjPWFcl8agpohKd1uUpE0d4x0=;
        b=XFod0UnAcwD+9HZiFEkNVVUGDR7r1ylQFGkeOIptemvQBWaAm8mLU2oBy1tpxZxktJ
         NVFcw/h0kOr3HTw2wnyAaQlnuUoTNPQR9khmwGnmXNWy466LNGp9kbBckww6i48vwLfb
         nVZePvLt/0C2iqy1VDRpf4HUsRCh1OVFZfEnoZy0PBIw+x+RYNGeQCILCDwkoEiZPnvQ
         9Gcq1B2V1O2Y3vK/3q+RfQQ5o0YYNjFdteTNFEF3TkK083ol/wmmCv/pbB3BdbXikwqh
         zby9Iy6GWBTDJOHBegLng3GTVXrLSkaVWNz3uHlxD6WPfOOB53QRTc0se7oJZgl6W9YZ
         Ojng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kG+ctqd9teSCMiayuOxjPWFcl8agpohKd1uUpE0d4x0=;
        b=aDqxAtGs9p/utrjou2eUpusg5BbXgQfhcmruhJIzjcyCBl9gOUqAsbfCCLwyMaDpoy
         tT4lZayHNJ+UqqY2InbH2gtUlh/eEL927N2I+thnUzTRAtSCjIaiyIf4VF9XlFuhHTFc
         huRFaBTFcZm9iJkSjYNsOPPl3LbxbW08TrbX7d1Vh4+LgEeyBPhGsFjrjb0ncTqUhEQA
         ofnvO5HGHMkJDRdoX4LjiAHkRnty5z08lG7QZCdjXTuDnxXMyrydyglEcHXk8kc0omc3
         RP8aMU8jaoEpVFjgR/sf/+2NIRiViWQRNFDrjoTn4OyV5TI0iXFtyXluXm+Az3RnziYY
         v+RQ==
X-Gm-Message-State: ANoB5plhqb8sRCNNmGXn7roy1o0Lv0AoMqBZAApEGI5lG+T76I2KyBC/
	6R3tkkio8C0In0fizHIXMX9xAAZRtjU=
X-Google-Smtp-Source: AA0mqf4+24um7ZcR5CWbp77KpWBR42nA3acpMhuAqJ7rgMXGTdcB+7tCniwHGtESiGH09AMg14QD2Q==
X-Received: by 2002:a05:6870:e88:b0:142:9422:84e4 with SMTP id mm8-20020a0568700e8800b00142942284e4mr29981790oab.57.1669927022468;
        Thu, 01 Dec 2022 12:37:02 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:37:02 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: don't set cpll rate for Odroid Go
Date: Thu,  1 Dec 2022 14:36:53 -0600
Message-Id: <20221201203655.1245-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_123706_551133_9C804459 
X-CRM114-Status: GOOD (  10.74  )
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

The Odroid Go Advance devicetree tries to set the rate for the cpll
clock to 17MHz, which is not a supported rate. This fails, and triggers
the error of "clk: couldn't set cpll clk rate to 17000000 (-22),
current rate: 17000000" in the dmesg log. Remove the incorrect rate.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
index 60063f4bb366..802be64626d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
@@ -192,14 +192,12 @@ &cru {
 	assigned-clocks = <&cru PLL_NPLL>,
 		<&cru ACLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
 		<&cru HCLK_BUS_PRE>, <&cru HCLK_PERI_PRE>,
-		<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>,
-		<&cru PLL_CPLL>;
+		<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>;
 
 	assigned-clock-rates = <1188000000>,
 		<200000000>, <200000000>,
 		<150000000>, <150000000>,
-		<100000000>, <200000000>,
-		<17000000>;
+		<100000000>, <200000000>;
 };
 
 &display_subsystem {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
