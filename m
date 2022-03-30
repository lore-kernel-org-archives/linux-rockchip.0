Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69201C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 13:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acPDBJqe2LvriQMej2CU7ksIxOy21pvfBfkzQ3Vb16k=; b=lhAhSM1IHkVlde
	0AdA1dSx6l3DMLYpM9jluimBIVfBJyTcGpyo8xWwIb0pL0TMtZJunrB4Tuxqa6F/d6fXx537UGO1o
	gskBBmLdG18npIXZiKtTX5XKTBbdS3VE10iywRD4Q9axwiJPLKCcp/JpJi8ei/lnPIAMXOGsGKpBx
	LfbQzDJckvn0nt1CQwh8dxAFqinICGx20NrWmy/CdRAgktvM4wRY8ofDxboRgEJBQ67P5vPA7wLvx
	UrIqFfHoTJavtBjFmpcLoVTwl1u/Lze2/S+FBHGL3SNASO6eE9CI/MPuKfjG45s8K4DT6M2S4nxdm
	nv28h9N/aM+hnXHbHOig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZYC3-00G2An-Dl; Wed, 30 Mar 2022 13:16:59 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZYBN-00G1v2-9l; Wed, 30 Mar 2022 13:16:18 +0000
Received: by mail-ed1-x52d.google.com with SMTP id a17so24373807edm.9;
 Wed, 30 Mar 2022 06:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L9ZZEhaB4N93rT956KgttYvh8XmyGyWfb74vWE/N9yo=;
 b=OxCSsGJvh77imEAynSgD8C33TMeAri1Abo+xALPCW7rcixxwbhQ2Z74hwde1y40w3k
 z3fVY6Ye3uBfzDib/JTI1Vcpz3KWrS3sZxGtqrkNweTTUh0A1rS1AwDvQyN5m29wFzr3
 233qyJgruVGJFrItJXNy//gjHN48XlEc0ErcyUVmRAo6V1YTtrFc8TJNV2q2GeZZtMdC
 gPwUIrPwSMEl0f1r9lQacTHI9jTyzpLAREhVhlQQSZ4Qqgl1xjSkEjqHMYAM0cAqP1bh
 mChICRwOMldaGtUIw/L4U82ozmcGZfaTtxZit2CAibTQQJcBgV7N+PV37RikNTiklutW
 WJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L9ZZEhaB4N93rT956KgttYvh8XmyGyWfb74vWE/N9yo=;
 b=7IhOey0mHfQ9bLx4ISBa5k92JdEGJulsZS4OwUHkeDIwIptVrTh01nXQXBRBBGxlpX
 M3NqmXkFVcVf/3ROkzhjJo/A7sTkLQsvCEme4WnjnYFRyojLlrVNUJLTCDTAkzKf4X+T
 lrJvenX2vxdTKG/pFFwvu1nDyZYuHi5wgEPOxTg2ZpV0+tm3PDmmQt9FNxTpXOHjBjGB
 KyUe5osxndLnY9n/Rx5ADbWX4n4rY3Vagpr79e3zKKgyao6OxwrNemi6nPIbChV2zUnl
 ONHaIagRZpFekq6brhBW8RYjK3tUoWu6EXHzpy2Ugfof2HFrjDTTMYk138Q5Txfp0yIr
 3Qug==
X-Gm-Message-State: AOAM5336pL6gAmkutDyWnd4RhS2gkySp1JncG7ftd7hkEgZGg/pwNFaC
 7E7zXHRlyOXGRlPWCRDS1lcvoQS0w2w=
X-Google-Smtp-Source: ABdhPJzlLbsJKtH5PEczO5sFv3FiGYYMNpOjYnwx10oP6eTlECgWSBh06Txlx+WEhmHQTw1WiVZy3Q==
X-Received: by 2002:a05:6402:54:b0:419:9b58:e305 with SMTP id
 f20-20020a056402005400b004199b58e305mr10545849edu.158.1648646175361; 
 Wed, 30 Mar 2022 06:16:15 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 ge13-20020a170907908d00b006e09a005d73sm6603476ejb.31.2022.03.30.06.16.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 06:16:15 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] ARM: dts: rockchip: add clocks property to cru node
 rv1108
Date: Wed, 30 Mar 2022 15:16:07 +0200
Message-Id: <20220330131608.30040-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220330131608.30040-1-jbx6244@gmail.com>
References: <20220330131608.30040-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_061617_365989_58AEF66F 
X-CRM114-Status: GOOD (  10.72  )
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

Add clocks and clock-names to the rv1108 cru node, because
the device has to have at least one input clock.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 448254906..eceaa940b 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -456,6 +456,8 @@
 	cru: clock-controller@20200000 {
 		compatible = "rockchip,rv1108-cru";
 		reg = <0x20200000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
