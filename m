Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C46F4C04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 11:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHiYar/NeWYDGA5Ihuk0CHrQBsSOU2grldZGRL0LQ7c=; b=L1DqdM93hJ5XBy
	o7XrxKz8xQwCG32kZAv5czqfQmiR3L7sLUi37k753tWvXqnoCaHRwfBZnP0K+P1PHWFMdzI704whi
	lRSNK/d9IzNX5uA2kxtX6OklzXoXGU0SQW+dd6K9tWrRgNGv50R3j1g/O+stUOOVhMp79LMutCvAw
	mTnDeli0EY8GiwW63mKPsrYoNuoowdwnc2R6h/wBgOunlFGgKOaB7CJZ2Mtw3iYO13ZqEx5bfWigc
	MbzsWDpe9YhZsAz9VFDm5+sXzt2F6C/VOKQAfk+lWFnv66UMKCppm3OVBUXGW3oehUCas7psbKSNp
	NVZeK+LGoJaotQnWDCRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUsA-00Fpn5-PT; Wed, 28 Sep 2022 11:05:02 +0000
Received: from mail-il1-x12f.google.com ([2607:f8b0:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUs7-00Fplv-Rg; Wed, 28 Sep 2022 11:05:01 +0000
Received: by mail-il1-x12f.google.com with SMTP id p10so46613iln.4;
        Wed, 28 Sep 2022 04:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=jwe/kOuCnsGDbPhUswVuxWf8gHbmYrH1aPx2on0iZ14=;
        b=iAxFZ0rhpixeBY4gv84nzxw+y5HblIgPyiWaG1nCGBCcIrBqiCmCt6gB7+CNovrh4T
         2EA710e3oTqe+zMo1xJtoKU3RC4UU43BbYhoyIUkF3Y+IMNmHwAw1rMhe0f+JMELJDWk
         X/vLJarwSoS1sAoDSrXc/WXpD3s5KvIAfB4xIfYTexwJ0Tse3a/6OdcolBu7GCzxW7xT
         iYtIswO8OkHt3UL1j1POLDw/vGUkwctmUe3XygXn/Wea95Zteufh+gKXbvzR90cZb/Ar
         QPEpft/jdfV4zzGGeivYYvge3eRlDNEKQ+I1IDDj1P1d/beNypzHJe+SFWieCZRv2PgH
         q/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=jwe/kOuCnsGDbPhUswVuxWf8gHbmYrH1aPx2on0iZ14=;
        b=3K+7a6if1ZNqAl6HKTTz2/DiGT9aTIKd0A/DEDpG7Xu5ogLeO5K0V1x7OqO/4dLNcj
         q1t11pET2RYnfWxwDylb6CWH7+Xc0je5HACr35xqiwquL81eMwZ9ZxYjcA6cnIG26l2i
         B3iesPtx4X6RTx9yDQkIXcjavscIbXYM9nNUIhH0ADmNYqPtfhQYCHQ4Z0y1GbqW2kXP
         YkVXfW70ghfMWbybHeQ5a67gi4xVKgvGOdt3D2z2xT1ucpLd0Kce1vehYN0tFJrQeMWr
         3wAiDBqJGSMd/8l8PEmD8UygiLGhnHRq4Xf83X2p/WvROs/LTEuPDlvIV70NF/nBzZWw
         +60A==
X-Gm-Message-State: ACrzQf3eE8xFG9V425o+sM3mFY2hWMylBRJNtSEWj1wLmKak1BfwKNl+
	Y1qrntNs+ShPBbElnW3ZstPYL8ABD7ha82P0WQU=
X-Google-Smtp-Source: AMsMyM4Gz2+5kp35fIp0/O/T05SuOIGpuqIhQaQMfxlfn5SU+fGpBCPRDRZaFXwRusB8s12f2zmpzgQFs29Q1vy0GZI=
X-Received: by 2002:a05:6e02:6c9:b0:2f6:40e0:ab8d with SMTP id
 p9-20020a056e0206c900b002f640e0ab8dmr14818762ils.259.1664363098717; Wed, 28
 Sep 2022 04:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <CANAwSgTyt2D-aEMMowO6d+0ddTQb46o0pWMahnr7ny2rjY7iaQ@mail.gmail.com>
 <20220927181531.5546-1-amadeus@jmu.edu.cn>
In-Reply-To: <20220927181531.5546-1-amadeus@jmu.edu.cn>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 28 Sep 2022 16:34:43 +0530
Message-ID: <CANAwSgSf=JZ_JiK1Gh5EYR30KQ5Yh-w3GsxzcFVweKHPi7KuLg@mail.gmail.com>
Subject: Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe
 controller on rock3a
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, robh+dt@kernel.org, michael.riesch@wolfvision.net, 
	krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_040459_919406_88EEC0E7 
X-CRM114-Status: GOOD (  22.58  )
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

Hi Chukun,

On Tue, 27 Sept 2022 at 23:45, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>
> Hi Anand,
>
> On 27-09-22, 19:16, Anand Moon wrote:
>
> > As per the schematic below pice support with 2 regulators
> >
> > VCC3V3_PCIE        (SCT2250FPA)
> > VCC3V3_PI6C_03  (PI6C557-03 is a spread spectrum clock generator
> > supporting PCI Express and Ethernet requirements)
>
> > [0] https://dl.radxa.com/rock3/docs/hw/3a/rock3a_v1.3_sch.pdf
>
> Thanks for sharing, I rewrote this patch, can you try again?
>

No, It's not working on my board.
I have to enable CONFIG_REGULATOR_DEBUG, See the logs below.

[ 0.784121] reg-fixed-voltage vcc3v3-pi6c-03-regulator: vcc3v3_pi6c03
supplying 3300000uV
[ 0.784430] vcc3v3_pcie: 3300 mV, disabled

[0] https://pastebin.com/aEKQx1YZ

> > No, it did not work on my board, see bool logs.
> > [0] https://pastebin.com/Lk93VFxg
>
If you check the driver code it requires *data-line* and *num-lanes
from the dts.

[ 0.725985] phy phy-fe8c0000.phy.4: lane number 0, val 1
[ 0.726975] phy phy-fe8c0000.phy.4: rockchip_p3phy_rk3568_init: lock
failed 0x6890000, check input refclk and power supply
[ 0.728172] phy phy-fe8c0000.phy.4: phy init failed --> -110
[ 0.728704] rockchip-dw-pcie: probe of 3c0800000.pcie failed with error -110

> From the boot log, looks like ethernet is broken:
>   mdio_bus stmmac-0: MDIO device at address 0 is missing.
>   rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
>
> Actually I had this problem too, and reusing the "snps, reset"
> property solved it. What confuses me is am I doing something
> wrong or there is something wrong with the device tree now?
>

Yep, I have the following changes that work to bring the Ethernet up.

alarm@rock-3a:~/linux-next-5.y-devel$ git diff
arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 097cee13885d..498b9b2af3ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -242,6 +242,11 @@ &gmac1 {
        assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
        assigned-clock-rates = <0>, <125000000>;
        clock_in_out = "output";
+
+       snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+       snps,reset-delays-us = <0 20000 100000>;
+       snps,reset-active-low;
+
        phy-handle = <&rgmii_phy1>;
        phy-mode = "rgmii-id";
        pinctrl-names = "default";
@@ -250,6 +255,8 @@ &gmac1m1_tx_bus2
                     &gmac1m1_rx_bus2
                     &gmac1m1_rgmii_clk
                     &gmac1m1_rgmii_bus>;
+       tx_delay = <0x30>;
+       rx_delay = <0x10>;
        status = "okay";
 };

@@ -559,14 +566,11 @@ &i2s1_8ch {
 };

 &mdio1 {
-       rgmii_phy1: ethernet-phy@0 {
+       rgmii_phy1: ethernet-phy@1 {
                compatible = "ethernet-phy-ieee802.3-c22";
-               reg = <0x0>;
+               reg = <0x1>;
                pinctrl-names = "default";
                pinctrl-0 = <&eth_phy_rst>;
-               reset-assert-us = <20000>;
-               reset-deassert-us = <100000>;
-               reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
        };
 };

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
