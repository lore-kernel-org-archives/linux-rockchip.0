Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93069C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 20:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4l1V1hwWxMTUhGUq+czjHuPZy17rFGqVMeaemKkZPQ=; b=GNAhfoPDUzo7T1
	ykdzkGvaV1y5dTXwy995thOwxu/ejb0/NTAeZKuphDDXj/6w/wsQIrZp1LC47+TIKgpTqnnFOckfP
	KWirZ2LV3N90Oj/mBTFXSSIJcK0qVhUgjvZEGfTXliREFhTs3dFx/ftEzoLEhCVsZzoJifi+Gfd4+
	DzV+pAFk0kmUoh5F1zfbgz7J7k4koAmuk9eXZpAND/U3LX2Q1mYMEtlVIGjT6ey2EiV5mG3uRHZWL
	DWqEmglEMDejcm3GGoYw1Z23Irq9/cW7ttdabsZQLOlQQcboQSLVZ4uhs4dTySV4CnD1gKlLsmiVr
	8VlfW8VMxqhObAZDnZWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOef-007Uk3-F2; Wed, 16 Nov 2022 20:05:05 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOce-007Tee-VG; Wed, 16 Nov 2022 20:03:15 +0000
Received: by mail-pf1-x431.google.com with SMTP id q9so18506709pfg.5;
        Wed, 16 Nov 2022 12:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dU5Mwb4CLrFeMhe4gtPSXHFZzIZzSCF10R2Jay+I0+Y=;
        b=fZt/DptU/WyyXomIIYhusRu/ggtb7lQmge+tN9aC26JOHUiotfJ6pNPE0sOZsXFlHA
         SgeDoeiwbjAZfkgqTVCECcv7sWywKNuPLRdXB2lRWWgg1k051QO2wO27w3GpXYG67DmI
         FBc61+kKx9u3T8aPUbm4mWTchGz3YT6lsXgp6Ikq8d/gCmzPV1sum84ZZ8KtlSWELjkp
         s9JSmZIn2Qu5zRciJVrRw9g0Br1hI3QpPZLRyl6iZ3/4k0Cy16ZuG9/RVTWW1T4dZMma
         PQENYUq9QG6GJX+VI+8yQwhjbChPWtHurVy20PsG4eSo+W5qreGGu90lFrtHhMBdfTj2
         NvrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dU5Mwb4CLrFeMhe4gtPSXHFZzIZzSCF10R2Jay+I0+Y=;
        b=nbOpWxsDUUZtSNXUynFZEyvkMX5qNAuG7jfgwp+EO7T9LuAIJzFa3UZ2mWEsr3VcbW
         RN7kUH4/Wx/Grad9HDBA/aSMvJGdVLbT/eqf2FtNSgwWAeuBhtiTtMXEKZ1XtTnUsK06
         h1qgMnvKnT8PhuvhfgIeu/VONOI20cq+QjhvB3vOB1hzqS7q8BCAvLyk1XCiYYrB5W2V
         wh66IPHuX0VfYiZLMrikUY85qXVKIpJJAdt8qtDBDXbKGfhFKeCpJFT6OaizcCE/uoSz
         eW9qKuMu15I8l6/MjDuteFUqvMpr21WopgrCp8+++3KnZtFOCwKYEygAs5pQ1at3kVbj
         k5yA==
X-Gm-Message-State: ANoB5pnc0vFhsMWfLHGrMPPN7+LRD06E/Bs/lnSFAo1qkX0u2IzE4/dR
	t8C6yuCYtTbAFc4Ga8y/q6I=
X-Google-Smtp-Source: AA0mqf65fkbouqf7pu70romJDYuiqQRkWpQa9l+BjQMgcgn/bj4rOIJ3+Bmx2ZNSZkKx+2HoKXBR6A==
X-Received: by 2002:a05:6a00:3689:b0:563:3d81:7faf with SMTP id dw9-20020a056a00368900b005633d817fafmr24476557pfb.45.1668628978034;
        Wed, 16 Nov 2022 12:02:58 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.182])
        by smtp.gmail.com with ESMTPSA id s18-20020a170903215200b00186a6b6350esm12423950ple.268.2022.11.16.12.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 12:02:57 -0800 (PST)
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
Subject: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of ethernet-phy-id to reset the phy on Rock 3A SBC
Date: Wed, 16 Nov 2022 20:01:48 +0000
Message-Id: <20221116200150.4657-7-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116200150.4657-1-linux.amoon@gmail.com>
References: <20221116200150.4657-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_120301_064659_67925D7B 
X-CRM114-Status: GOOD (  14.44  )
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

Add MDIO description with ethernet-phy-id compatible string
which enable calling reset of the phy. The PHY will then be probed,
independent of if it can be found on the bus or not,
and that probing will enable the GPIO.

ethernet-phy-id is read from ethenet register dump reg2 and reg3.

Fix following warning.
[   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
[   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
[   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
V2: new to the patch series.

alarm@rock-3a:~$ sudo ethtool -d eth0
[sudo] password for alarm:
ST GMAC Registers
GMAC Registers
Reg0  0x08072203
Reg1  0x00000000
Reg2  0x00000404
Reg3  0x00000000
Reg4  0x00000002
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 9f84a23a8789..fe36156a5017 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -585,7 +585,7 @@ &i2s2_2ch {
 
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
-		compatible = "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id0000.0404", "ethernet-phy-ieee802.3-c22";
 		reg = <0x0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
