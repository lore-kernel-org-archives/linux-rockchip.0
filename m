Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37694C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 20:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkFNpkitH/ktlpsMMinmKwEW0hyaXaQwQdFY3O/xtjw=; b=tW8dbGMxMcbIY5
	knp50cuHnPRVg5RRwCdX0uOrLsjc2d2jiixXWpew/kiuGRV1ypvHnucceexF9uFCpvOokb41qOyhy
	X1jRqNndqnjBmblwpbu4Koj6+LOEd4/WgmFtvID+9mehcS7graU3kV0rBMtKyvYtC62yezbPf1IEI
	TWLxP81CXFMzaXvXgviRkhdw3pziZdtJo7QIhKjVg3amV2LOFGS3CBrV97+BfWI82kc9Q7Wn3Kvvd
	UCcKI1qJEmJZysK7R3M02bpMDdjqI1dGUP0lBRENbMfXcpZqqXleQJ8nBS3Y0stkVHIClla9/c2n7
	B9BgYkmvv5G8vBQWLIEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOct-007TiV-4M; Wed, 16 Nov 2022 20:03:15 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOcL-007TXP-CT; Wed, 16 Nov 2022 20:02:53 +0000
Received: by mail-pg1-x533.google.com with SMTP id v3so17730643pgh.4;
        Wed, 16 Nov 2022 12:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9u48IeVxeYRpqZXDq8TEy2jgfthr+zPe9V44R0XXV6s=;
        b=OJlre6S9pakulZA+yEGpONatIYHUbfqM2duW/AMNUeogjFygAv4bC1gl8iiKIN6L6l
         9V9rlywuoLnK5SwYcyVQS2YSTt3Kqvii4TqEmU2ENGMclvuydNlmNCAUteaOS75MjF/Y
         MhGThK8Twowj8WQeQ9lAWEYmiILMeQtIu+PiP3qqkDG6rsjtDicG+9RKXHykP+xknhc6
         X6gs7BePV5RcqSFi1V8QY3DelJ/Ut7FesSt/BazrNm21n79ND4L3ithnApPPwZpaJJfM
         TAh28RRnZv87qP/NiskyIMIboOAh8QHacJG3uShCw95I0tDHwrsw/zQMQFyCOGnu5Bag
         R17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9u48IeVxeYRpqZXDq8TEy2jgfthr+zPe9V44R0XXV6s=;
        b=pKfVK6z4QX7IOKah/V3v3Duq4sWMEMG5Z4rbyo+G2qbh5g/8IXGOUEUcc78VBgrPjj
         mICWYP0PIJ35i4/7UpNENnecJWlPpSW8gTsnKX/QVs+Mnh+HbFqyUKirVOQhuW7dNGfg
         KnEyMYzMWS0Kl2nUpdfTy5VAvyE2eKXpBy1tMJp+YQWJlW11URW85/IBiOq1a4Zp15Nv
         wU1kALh0pEzQspbCz+zfk5sWNodZ/CxkH7gR92xolPUYZRJ5CxQ5H7E0I+roKYQ+9rjx
         u+spnsNUnytmPBsRvk5uSAHWmiAUafjau4NJXZTo4DBJaPEqg1R+c3RpT7+MQ/B/BnKu
         Fz3w==
X-Gm-Message-State: ANoB5pkLBhLZLDmzbaUih5w33J/TXvQk8On688DDqGYP1Z+G8GYGjReA
	QPaS4Iy2X0F2kVC/FYNei1E=
X-Google-Smtp-Source: AA0mqf790rR++Tn3av8PLwCoZX/3FlqthhDW8C6waWJTH8vWZ4I6VdRk+YNTEVcH7PvR8/e6wp9Pyg==
X-Received: by 2002:a63:5f4c:0:b0:45f:fc05:270b with SMTP id t73-20020a635f4c000000b0045ffc05270bmr21765809pgb.14.1668628958408;
        Wed, 16 Nov 2022 12:02:38 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.182])
        by smtp.gmail.com with ESMTPSA id s18-20020a170903215200b00186a6b6350esm12423950ple.268.2022.11.16.12.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 12:02:37 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [linux-next-v2 3/5] arm64: dts: rockchip: Add support of regulator for ethernet node on Rock 3A SBC
Date: Wed, 16 Nov 2022 20:01:45 +0000
Message-Id: <20221116200150.4657-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116200150.4657-1-linux.amoon@gmail.com>
References: <20221116200150.4657-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_120241_483792_E9B6C65E 
X-CRM114-Status: GOOD (  11.23  )
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

Add regulator support for ethernet node

Fix following warning.
[    7.365199] rk_gmac-dwmac fe010000.ethernet: no regulator found

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2: new patch added
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index b848282ea005..5378254c57ca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -260,6 +260,7 @@ &gmac1 {
 	clock_in_out = "input";
 	phy-handle = <&rgmii_phy1>;
 	phy-mode = "rgmii";
+	phy-supply = <&vcc_3v3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m1_miim
 		     &gmac1m1_tx_bus2
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
