Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCFA1C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+NwrOB/8gthDfaZnX4Dj1sqJ89g+tz3REVeGiOkP2Q=; b=ICNMo2sK0MoudB
	XMD/4AiiBSGASkuaCEbBU1Lqr2Ove1PLkoPWBzRjLUi5zro2WpaEzqC3OTKoPm7g0BAxX03AoomsX
	3JN6R4H+IGwqibqrNt1OWxNzZT7ICcRkaFosNjdKGmNrlo/WRIV4dvll2hBbPNFyAfASEZiXhx9SE
	lbMmiVsc02IsxEVv7iMKKoV+97Gbz9xVAQeRrpxKnc7z3+Cz77uVPGH/tL2lWMrEXYMaw91z7LEIx
	XEUqouz5TNQtd4O62w6nmySUPmX8AydZCMwFOpgV1cwdLSx9oQnPxT/cqhuHFVxLd54cScCIZCS93
	FQohDP+o0X1UBWuRp9Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onpOL-00BCXj-Sc; Wed, 26 Oct 2022 23:00:57 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onpO6-00BCRS-SI; Wed, 26 Oct 2022 23:00:44 +0000
Received: by mail-ej1-x635.google.com with SMTP id y14so25651178ejd.9;
        Wed, 26 Oct 2022 16:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QDnwRNSvILxD4k9pcL4E1+s2WIr1eI7KS5V5B2hV+gw=;
        b=OZri08sC3H4NhbuF2t777h2w0nJU42EHf88jSJxwBiXid44X+DoiRTD2iuTX84q8Ne
         5u5OZBnJF4wbYBYSCT0DosCyZnfODHZ21wjDv4YxESxguroiXZ6gSNjND/fNxT1NisTc
         OkGgbuV0ExZw5EOG1PCWrAEifdEDEOuwv4zfMvuADsGQeaLFFkskS8DV/tvJytN3L1Tu
         6TROGFhgqadljW9oKaNcrnzmpR3s3pdfWzgsXiAFSURTce6J4F0HAk5q4tbkWjj/AC2p
         yFPc5UrbEtCxBuqQIelOnUtVkiOXrEqwSS+ag9tTB7zQZ1XOqPeqb+4kDC2BmuIdhvcL
         Sy+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QDnwRNSvILxD4k9pcL4E1+s2WIr1eI7KS5V5B2hV+gw=;
        b=0y2eJi3DSBrTldEuWmLBLCIiAKpMGBmYMo3B0+nC0YYspyzIGMDDye456QYHptQ88Z
         9aLqied0VKeoBmBc7aNuLHpSHijqN5jvQLcbc8MZvnlPJPfg2Ks4i2DkxXt1MEyspyYG
         HgmbU7G/tYiAgfdsKvoGzZSsvfsEk8xY0CSqs0EalXjAH7ZIZ2IMawUomCkNv5XZG0nS
         cbc6ns98oPbqYxmUGrt6uHcVkQPIHPhiWK0/FKTe389YBs4LItWnkNhboMSUl6QIazct
         D6r5Q8q3swfhhDb5kQxUiy3yhOPZpOlNFNUvBS0wyU72QpBrWiis2fEfUBBm9JQ/q9Mw
         bb2Q==
X-Gm-Message-State: ACrzQf1FWkyZYYTb8/+0ORWJ+QOSQU4lCltFTivnOFeZtr/CCuLykSng
	ZLCll/uBiwJdrLawaMPmQCQ=
X-Google-Smtp-Source: AMsMyM6WkfKw92SRZVxTuuDFP0qLNx9+SU/w1+k6OaO/N5MWqBFb40Iwy8t6K0T2FMIlRjvdFepiIg==
X-Received: by 2002:a17:907:2e01:b0:78d:f24b:7330 with SMTP id ig1-20020a1709072e0100b0078df24b7330mr39087661ejc.604.1666825239392;
        Wed, 26 Oct 2022 16:00:39 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id 13-20020a170906318d00b007317f017e64sm3546886ejy.134.2022.10.26.16.00.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 16:00:39 -0700 (PDT)
Message-ID: <8facb161-44cd-4cd1-93ec-468fa3164ed4@gmail.com>
Date: Thu, 27 Oct 2022 01:00:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/3] arm64: dts: rockchip: rename "haoyu,hym8563" rtc nodes
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
Content-Language: en-US
In-Reply-To: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_160042_943172_E2B6DAC3 
X-CRM114-Status: GOOD (  11.37  )
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

The "haoyu,hym8563" RTC node names should be generic,
so change them.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 7f5bba0c6..0e88e9592 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -208,7 +208,7 @@
 		vin-supply = <&vcc_sys>;
 	};

-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 38d757c00..e147d6f8b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -192,7 +192,7 @@
 		vin-supply = <&vcc_sys>;
 	};

-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index 5a2661ae0..18b5050c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -98,7 +98,7 @@
 };

 &i2c0 {
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		interrupt-parent = <&gpio0>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
