Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C338DC3DA42
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jul 2024 04:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0Mh149CUJw3o/2Afce+riTxOl4BmUSV+oEFw7cemVg=; b=MYsUDpR0VtwzIR
	UItA1sXK5GK0PNgyDz7Kpvt/j9lG7v1soowBeeiPmiSDNk1GjUuc2l7CWYv3QvDNHM3etwxQpk+x9
	FOCcBoB39S4SCAlZiiTSI18xi56R+8KPiXfFoo5b4Y0++ACLY4vQHl+7BdLjF3iMWE/2xYuGzzavl
	MfZKatLRUo8EfpehTpXt214G4mW/D/y+OzPLGtQwbdG+0kWk90jCGHI+1nvy75XxhjEcQjQ+ysbFF
	6sFnXNmOmM/30pkzWjpvuZuYNdZZsrvF/YWbvchQrLO/jA7sFV9hGIylp2rELxqXqy4j6g8JFH4Tg
	StQQdtLLg0RN8Xc5rt2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSr5D-00000003jVe-2hCU;
	Sun, 14 Jul 2024 04:43:35 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSr4s-00000003jRI-1SOE;
	Sun, 14 Jul 2024 04:43:16 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52e99060b0dso3488389e87.1;
        Sat, 13 Jul 2024 21:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720932192; x=1721536992; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lJVLYi+pE04YOrrCFHXVXYXIWButASzCZnzKDh4ZGOU=;
        b=cYjeh8XcQSI7tpX1nYVXwxQB58EiUxvg+OyfbfFBSjcsvISZlqC1UYqukCwVTspTh2
         gCTob5Oc8f2bTsKZVYNVZ+unfSwtz4nGruztWoG1CjqxOjeYtWW/67Wsh0Wryaa2ooFX
         GEYlgDP4oDKdsFFv0GN2SbS/+7ZBsaP5dk5/LmOgcLTnO87eIY9E7uTeq1dqooF2Lz+8
         jxE5KOIs3zL0Bd3p4xjZZXWLL6ryxzCt3gqAUXz2wN3bcnGsMODObumnt8v8r7/CFz+w
         96XEyS6NqVNEPtLvAy/Algb4Z2WZ5ifrwQh0XEoIsE8UKMOwTkoHCBIaMHnXU0EJKXbH
         vl5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720932192; x=1721536992;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lJVLYi+pE04YOrrCFHXVXYXIWButASzCZnzKDh4ZGOU=;
        b=Kv+qiWQkwE3Sku2YHAHaGhtO++hvrNorpcf4Rfx7LiFp10TiE+GycwEzPsYzqrXPuN
         qKCW081lwlDdBBuPgv3Dero9yZNSCb6Ux8HD6UZDnQB/qcI/OA8Hdq+IigOhOnXciU4x
         +K1juSHz9ATt9DcZg2LhP5+LTc1qBitx1nbfaYt4Ab711pqydpTLiydGfxMcnNMuklk1
         26ZJvMmCXmBGRRf3nXuxLZAk+RJ0yMWi/WX9usNDZlEMJKqhIJn6UGJJANNBSNhRGlJv
         ICLkslARQfxo6bqIOhfEB0iGnGLV7PqZ576w7it2dLFxgAyr64wcYpbjyeJkTh0ZY8EU
         A1XA==
X-Forwarded-Encrypted: i=1; AJvYcCXT6fIXRMXVSbUhXDr0+MBQuSZCXqNMfcAzWCBqfi2WUQEN0ZjWsD+z7P9iTO4oaAnzAUcI/Z4588lysctKKdbXDKq/EZmfq6jmvC2vRmEh26J7ZnnaIAuZWI+jyK1W/O2t8duTp08KzEJszw0cFSBQ4449HlR/y30=
X-Gm-Message-State: AOJu0YxywugMLAz55sW6o6yUnYeF8lDhvBqAw42OR3mvkJ3wW3u4j91D
	5VYlb3p+dyNBftcXy3JvGB6r7YWE7p3VzVIB26Pj3LaglX00CeTk/QPfOZdI3Zlb51tX7Cz025s
	uj5di9MT9UyWnENfuZnDE1tEppO4=
X-Google-Smtp-Source: AGHT+IEveCVlfZLVXJBHR90dZnmVx2pwSADMUlIbtkIq79k5uJZENwwhysMVMYxHLsknIe9g0lDKWihmS5z1YbEu5Z4=
X-Received: by 2002:a05:6512:2810:b0:52c:e326:f4cf with SMTP id
 2adb3069b0e04-52eb999125amr12348016e87.3.1720932191396; Sat, 13 Jul 2024
 21:43:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240621130903.2572986-1-net147@gmail.com> <202406282049.ZRM6qCDn-lkp@intel.com>
In-Reply-To: <202406282049.ZRM6qCDn-lkp@intel.com>
From: Jonathan Liu <net147@gmail.com>
Date: Sun, 14 Jul 2024 14:43:00 +1000
Message-ID: <CANwerB3oAuTcwmy4FdjmH-XRa5M3raHAt4DKLspThC-ryQmagw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable RK809 audio codec for Radxa
 ROCK 4C+
To: kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_214314_435436_C59A1BBA 
X-CRM114-Status: GOOD (  17.86  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, linux-rockchip@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, FUKAUMI Naoki <naoki@radxa.com>, Jagan Teki <jagan@amarulasolutions.com>, oe-kbuild-all@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Fri, 28 Jun 2024 at 23:07, kernel test robot <lkp@intel.com> wrote:
> kernel test robot noticed the following build warnings:
>
> [auto build test WARNING on rockchip/for-next]
> [also build test WARNING on krzk/for-next krzk-dt/for-next linus/master v6.10-rc5 next-20240627]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Jonathan-Liu/arm64-dts-rockchip-Enable-RK809-audio-codec-for-Radxa-ROCK-4C/20240625-210156
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
> patch link:    https://lore.kernel.org/r/20240621130903.2572986-1-net147%40gmail.com
> patch subject: [PATCH] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK 4C+
> config: arm64-randconfig-051-20240628 (https://download.01.org/0day-ci/archive/20240628/202406282049.ZRM6qCDn-lkp@intel.com/config)
> compiler: aarch64-linux-gcc (GCC) 13.2.0
> dtschema version: 2024.6.dev3+g650bf2d
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240628/202406282049.ZRM6qCDn-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202406282049.ZRM6qCDn-lkp@intel.com/
>
> dtcheck warnings: (new ones prefixed by >>)
>    arch/arm64/boot/dts/rockchip/rk3399.dtsi:566.26-600.4: Warning (unit_address_vs_reg): /usb@fe900000: node has a unit name, but no reg or ranges property
>    arch/arm64/boot/dts/rockchip/rk3399.dtsi:2063.25-2102.4: Warning (avoid_unnecessary_addr_size): /dsi@ff960000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
>    arch/arm64/boot/dts/rockchip/rk3399.dtsi:2104.26-2144.4: Warning (avoid_unnecessary_addr_size): /dsi@ff968000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: ethernet@fe300000: Unevaluated properties are not allowed ('snps,txpbl' was unexpected)
>         from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: usb@fe800000: 'extcon' does not match any of the regexes: '^usb@', 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/usb/rockchip,rk3399-dwc3.yaml#
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /dp@fec00000: failed to match any schema with compatible: ['rockchip,rk3399-cdn-dp']

> >> arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: pmic@20: '#sound-dai-cells', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'

The new dtcheck warnings are resolved by "dt-bindings: mfd: rk817:
Merge support for RK809" in linux-next so this patch should be applied
after that commit.

>         from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: regulator@40: Unevaluated properties are not allowed ('regulator-compatible' was unexpected)
>         from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: regulator@41: Unevaluated properties are not allowed ('regulator-compatible' was unexpected)
>         from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /syscon@ff770000/phy@f780: failed to match any schema with compatible: ['rockchip,rk3399-emmc-phy']
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /syscon@ff770000/pcie-phy: failed to match any schema with compatible: ['rockchip,rk3399-pcie-phy']
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /phy@ff7c0000: failed to match any schema with compatible: ['rockchip,rk3399-typec-phy']
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: /phy@ff800000: failed to match any schema with compatible: ['rockchip,rk3399-typec-phy']
>    arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: pmic: vsel1-gpio: {'rockchip,pins': [[1, 17, 0, 194]], 'phandle': [[138]]} is not of type 'array'
>
> --
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki

Regards,
Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
