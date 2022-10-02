Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA9CBC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 15:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LAoutVwpQOP3mT7IrGIAVdzKoNrXun7+i0jC+7FyvQ=; b=mNGWvXNOi0j/Zu
	ovhlJtlvz0UsbxBoGGJF+qyQtBrbH78sFNhnVP7U+Y99wsvFZKLCaQkGkLewJayxisbPUS6t2bQaf
	klEmxLI3sdRxX8yuifSIx3I8sBoVZR9P53sifZ8Qtv8dqHMlqJX0CEWCC/u/STMELH+KPIF28ImIt
	DIAr8SZAPdYhdHYq/tpONKpm/HEWcNt9xwI/p6/JikO1grIy4AD0KNoFRWxOAdNHJmWur6kxcfk86
	i5AmWH6yWR855tipP56ZQO+b0rcMOX0aC12hmpTH0eWd8Kc1hkzPe04EVeRhVj3i99C5RFE7pZdou
	XcBsqYK9TlvNE3HAJL1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1of1BS-001gdx-1f; Sun, 02 Oct 2022 15:47:14 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1of1BP-001gdT-EU; Sun, 02 Oct 2022 15:47:12 +0000
Received: by mail-io1-xd32.google.com with SMTP id z191so6569020iof.10;
        Sun, 02 Oct 2022 08:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=+gVLOM9oJ/Z3Z9VbAgGHKohagg2/0xc8CE20DVhCLbE=;
        b=BVzl67o7Y6uc2hxlLW04rVhRrrQSNLpciDc+i2g9BJQ63+MrpeVfvuuMzYGt52hKyU
         jSMvtruVsBmxwcXXn8RkY9ph/y8IFLB+cYmjN7etCjGVtlzUAeoLrRjTjoNtWwnW/CJL
         tW7LKTbGiWqgKXPDBmYQClcw7idoz/QghZbWZwHZ55ISkZsJZQLfWCQgRSAFTUWjCsLP
         0fmh5Fnw5A8Rvl/LNpiYvp2bCsKMpU7Uf2wz66lRQheWgn53Pcd5wl+APs4rmC+Wa2yy
         OcYeW64affyJEaeHy1JD/pjmV0ZESlUaTmBzzpat5TKBkdxRV0NV2S9FRzHRMX077AxL
         O42A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=+gVLOM9oJ/Z3Z9VbAgGHKohagg2/0xc8CE20DVhCLbE=;
        b=vyh9hIus9T2EJKbOo25JrEFBq8oHvYheOkaXOYVrGJN/+cJ5+UQhQJblvDOpFbtST1
         P9xSuEwU479pL4WZSkdBnu6bBQH7E9Rf/EKTR9Cms/dwOCJ1NvUGzIsbHT0gmIkjKNM8
         41334cNeTM4Eh2XXhsPoRoqQEjihCEbxWMkjpOND294DrJu7p72psofKre5JxHFZa7oW
         BKxlso0VN45OvGlJml1E7zXAc6IKOMMHgoS7rpIUSPQ/7tWNTdMswIDS4kJnov9l8mFM
         4Kr5hpDm3t8WqW8GiYaYvc770h0hf9bBxIySl6ejtHx1F2unlVgKhWqUn+8Yc/jfZ4Ad
         Xe0w==
X-Gm-Message-State: ACrzQf2N3EPntP/PbVuuDyII8lI97qJwRMR+mhUPSZuNAg0vBm7cmWCm
	F4Z/fDVfwG9oxeENM8kgU8Aujn6FkqnXMnSWkk4=
X-Google-Smtp-Source: AMsMyM5b1qdKvGwcEMGT7MTks/vKVuIv6ar145mFaD7twLts3fWJAwLK48pgwsCbZxhHXBXtxL804YkvIoD/zU3vPw4=
X-Received: by 2002:a05:6638:f11:b0:35a:1398:968d with SMTP id
 h17-20020a0566380f1100b0035a1398968dmr8855947jas.23.1664725629220; Sun, 02
 Oct 2022 08:47:09 -0700 (PDT)
MIME-Version: 1.0
References: <CANAwSgSf=JZ_JiK1Gh5EYR30KQ5Yh-w3GsxzcFVweKHPi7KuLg@mail.gmail.com>
 <20220930152531.5910-1-amadeus@jmu.edu.cn>
In-Reply-To: <20220930152531.5910-1-amadeus@jmu.edu.cn>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 2 Oct 2022 21:16:52 +0530
Message-ID: <CANAwSgQp-kJxC2iP-abQuzGwDyz-NE8pLBT-3eE9F48t6JgaFg@mail.gmail.com>
Subject: Re: [PATCH 0/1] Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM
 Express PCIe controller on rock3a
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, robh+dt@kernel.org, michael.riesch@wolfvision.net, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_084711_544989_AEA3D1B3 
X-CRM114-Status: GOOD (  19.07  )
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

On Fri, 30 Sept 2022 at 20:55, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>
> Hi Anand,
>
> > No, It's not working on my board.
> > If you check the driver code it requires *data-line* and *num-lanes
> > from the dts.
>
> I have successfully tested NVME hard drives on my board. See
> below for the patch, looking forward to your testing.
>
> root@rock3a:~# lspci
> 0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd \
>              RK3568 Remote Signal Processor (rev 01)
> 0000:01:00.0 Network controller: MEDIATEK Corp. MT7921 \
>              802.11ax PCI Express Wireless Network Adapter
> 0002:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd \
>              RK3568 Remote Signal Processor (rev 01)
> 0002:01:00.0 Non-Volatile memory controller: Sandisk Corp \
>              PC SN520 NVMe SSD (rev 01)
>
> Patch:
>

Thanks this patch works for me.

I would prefer the regulators would get enabled/disabled by the core drivers
like it's done in rk3399 PCIe drivers.

$ lspci
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote
Signal Processor (rev 01)
0000:01:00.0 Network controller: Intel Corporation Wireless 8265 / 8275 (rev 78)
0002:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote
Signal Processor (rev 01)
0002:01:00.0 Non-Volatile memory controller: Micron/Crucial Technology
P2 NVMe PCIe SSD (rev 01)

> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -67,6 +67,37 @@ vcc12v_dcin: vcc12v-dcin-regulator {
>                 regulator-boot-on;
>         };
>
> +       pcie30_avdd0v9: pcie30-avdd0v9-regulator {
> +               compatible = "regulator-fixed";
> +               regulator-name = "pcie30_avdd0v9";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <900000>;
> +               regulator-max-microvolt = <900000>;
> +               vin-supply = <&vcc3v3_sys>;
> +       };
> +
> +       pcie30_avdd1v8: pcie30-avdd1v8-regulator {
> +               compatible = "regulator-fixed";
> +               regulator-name = "pcie30_avdd1v8";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <1800000>;
> +               regulator-max-microvolt = <1800000>;
> +               vin-supply = <&vcc3v3_sys>;
> +       };
> +
> +       /* pi6c pcie clock generator */
> +       vcc3v3_pi6c_03: vcc3v3-pi6c-03-regulator {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc3v3_pi6c_03";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +               vin-supply = <&vcc5v0_sys>;
> +       };
> +
>         vcc3v3_pcie: vcc3v3-pcie-regulator {
>                 compatible = "regulator-fixed";
>                 enable-active-high;
> @@ -546,6 +577,19 @@ &pcie2x1 {
>         status = "okay";
>  };
>
> +&pcie30phy {
Please add the following field as per the device tree binding
 # Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
            data-lanes = <0 1>;
> +       phy-supply = <&vcc3v3_pi6c_03>;
> +       status = "okay";
> +};
> +
> +&pcie3x2 {
Please add the following field as per the device tree binding
# Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
            num-lanes = <2>;
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pcie30x2m1_pins>;
> +       reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
> +       vpcie3v3-supply = <&vcc3v3_pcie>;
> +       status = "okay";
> +};
> +
>  &pinctrl {
>         cam {
>                 vcc_cam_en: vcc_cam_en {
> --
> 2.25.1
>
> Thanks,
> Chukun

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
