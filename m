Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8846CC43217
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Nov 2022 09:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MNw+zDnMtJ5GRW7LmrenvQAeRH/t1uGfpAeVL9wqlww=; b=4wPcEuB71NpRdy
	66lXcVt2g4kpLRLuzoUkxIJsPj9btaYu8WqNShBG9eObAVZ/M6CQz07tgMxNEWrp3dUoB/FV5/Pw/
	ZQ8fnmuicr+RgYYbC+1ZPi/Nt314nZHD6cst7RfP3PaO1j6gvEiBjeZg/5v/Tt2/jDZeEADlEHOI0
	7l6sRyBuJvwoHOv8JfJYJhJYAhL1f8L6RM/o3g0xuaTPQM5eKMBposOZRFWzHS/LI8L+NO9+XB8M+
	Vw6KncL+Sglf6+NEJpYbWqcT9USH+lfMUZ1+q1iIJtUGv5u/3kg/6xF/phsD7nWRv3p6hKkUUaF5f
	k46ouqAlkwgJvuXSY3Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZE-00Efx2-26; Fri, 11 Nov 2022 09:43:20 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZ1-00Efm8-Mu; Fri, 11 Nov 2022 09:43:08 +0000
Received: by mail-pj1-x1031.google.com with SMTP id m6-20020a17090a5a4600b00212f8dffec9so4310793pji.0;
        Fri, 11 Nov 2022 01:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zy9kRwEDKOwzUuzNDwbNK6Ls9wmAWU8wrTb8CY1ASBM=;
        b=UrYniHryQrt1oClRFAxO4NM+NTyxw9xTdQt/tkBzCt0JXKQGCjW0kEvDc+g/dhWFxA
         kTju6QYgbkEEWUEXYgQ4ASkeuc+fcO/hG8ZLC8HfcQka1+ymUzo8avwj5iUAU6UFlTBZ
         SSG9U27np35cWvCXoFcrJIrIFlLmwdf9qTSmPTL1vnD3ZSN0LDFxJuD8GUz/+d0+IYN0
         qBgLo1yxsMiSAqS4gh06lPjWLswAlUjSSHP8oxMWb+lkBXfna77cBoSED+JUk9gUQWsG
         2220ENr9ojjkMaxJlcRDFuTNaMvyu5jCO61MBbmrkF7vbu5sU8/OVXNoxH5KWGI1sm6w
         ZnOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zy9kRwEDKOwzUuzNDwbNK6Ls9wmAWU8wrTb8CY1ASBM=;
        b=cLggBsF1G8E1DESx08h+YIIhM+BmZM8fMiqN1KneEtO3FClKFhBGUNaQCwgWhqsuZI
         MI5BynrGRyLEHS4USeT9AGWgDAkcgBI1v1MgP9wodEKw2bJIRMqrMfKq1UUqVH+nHkxn
         R9xk7C7TDE1b8BdWiqG4MCCm8NVcTx4ywPsMEJ2DFP0YVCaSfxK7bMQLFMl6v6aBQ7q3
         lN0BFoMzb/Gr9Idbw3JXbBaHipdh11kjCVRy7lgJ2qpWonlPXkTc22S0EMi+PTgT19Eh
         TxRpo/NMuO7aAMEprhMD0jVDYf40lR4shkICZw91B7Q2U1ch6kc/XLBlZkGjKctcceXV
         BOJA==
X-Gm-Message-State: ANoB5plhjoGbPLtw8nR43UIT7SXkrHI5loVz8ZWItnPLBVk6sy3sxYoP
	rv1Cb74Hiw1iVUY1sNRFVG4=
X-Google-Smtp-Source: AA0mqf5h6rFIEUsgsGftthsKMgAP7sfBcKl6GMZWDSIXy4cjabS77++RvLmXzawJJwNT6veT27xS/g==
X-Received: by 2002:a17:902:d18b:b0:186:8568:be82 with SMTP id m11-20020a170902d18b00b001868568be82mr1510898plb.110.1668159782097;
        Fri, 11 Nov 2022 01:43:02 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.74])
        by smtp.gmail.com with ESMTPSA id fa13-20020a17090af0cd00b002086ac07041sm1188450pjb.44.2022.11.11.01.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 01:43:01 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [linux-next-v1 1/3] arm64: dts: rockchip: Fix gmac phy mode to rgmii on Rock 3A sbc
Date: Fri, 11 Nov 2022 09:42:33 +0000
Message-Id: <20221111094238.1640-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014307_764247_68BFDE18 
X-CRM114-Status: GOOD (  12.36  )
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

On rk356x ethernet phy support reduced media independent interface (RMII)
and reduced gigabit media independent interface (RGMII).
So set the phy mode to rgmii.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index ea74ba32fbbd..72e410e3aca8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -253,7 +253,7 @@ &gmac1 {
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-id";
+	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m1_miim
 		     &gmac1m1_tx_bus2
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
