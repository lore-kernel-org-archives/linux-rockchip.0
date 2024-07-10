Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B272C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 03:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/S4petQCcdAzdqgosm2vC0woEryGsCMSU20MBI9vc0=; b=QBrhoxDKlWJ8Xw
	M5LfVAuzeI+Bn+p5NtSNrvNRejs9w9fI70A13VmQGkIvfSMR1tU6F3EP1HIm6AfDL9acUMbXObYqi
	NIjxF0No5Uz+GuY36KVRdLtTjs6KC2d4UTrJEi4EdzJKlXIVAxzISI1zps+Y3ewIhVSZpdWUJPdKt
	eLyFnRJjT0scuC4yuCD1TmzYlNqL/4q9MVLPMCK/aJk5Tln7+9npdo8pu73znq67D8JwHFIK/tqPz
	7ij5gCmwry9BTIGCbB4XOWgX5oB814GhNVufiVyLTH4GF80W9YwdRvyZcs+cnvN+YCRtUGlLAUGr3
	7D+2Ero5hHTfUQRsev2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRNcA-00000009Fax-0bkm;
	Wed, 10 Jul 2024 03:03:30 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRNbs-00000009FTN-06Nh;
	Wed, 10 Jul 2024 03:03:13 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3d9272287easo2088924b6e.2;
        Tue, 09 Jul 2024 20:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720580590; x=1721185390; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KKkEn8gtIME2o7SskHC2V7w9XB0tpg/NcovnDfSPb3k=;
        b=Y4zibXVy/+2AGceME+7nEHpZdNhqcQptrZ/y0WxDs62eCbB6We4epGzRtwab62cbJZ
         1HKlFOfYwXflgM5uK+23oDwvkQh9lm9vOEg2KFERat4ztHbAimMN9vGA3tmvLOHWFRdo
         TGYCPuRnEe1qxCUq0sOsGZGcRqFZlHZ/m/V0XQaOLA5bG6EzFw93XACw310Lvu1zTxh8
         jCV3xFdSp0NbtsIevr2/EFyeBtPiDPf/WhIyM2ury6ZJqKn0bYHSG1RDQiQnqZTgcijR
         I4bSaRQBqL/Il90gJ7stnlBE8dei1E/bNil883MckX9xVy7SSmvUOT8aMFBWaHRhGGV2
         faUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720580590; x=1721185390;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KKkEn8gtIME2o7SskHC2V7w9XB0tpg/NcovnDfSPb3k=;
        b=X0VOgr+6Ke0IPeaah7JGQMOOlc55TWKItCYqjK9DHoX8jWHA85Fu4IJLSjQZ0sxBDb
         4dvTSjfhl9rGqTl5OiJco9PQb9MMNbBwwvTG71aATSiIQRRbRNV6QsYQ+1bV95CKN0yp
         PkMU2rDI91xQ+44krBeBVE+3AJdxftjBPNYqjQb8/btslrS35ulb824zUI4WbPMyzB7M
         0+Sc2VXOsZLK0L3WhGUFm0Nw8rjkXCeO6IbW0ag2XZmUR6fBCnlQohc9vSzcraYM/h5g
         ofxvReBOUf2FzICf+7jTgLfjCy1MCYT0QWAhAH/fMsVYz7uv1YgmrzGnD/EcacP2HNAD
         TwkA==
X-Forwarded-Encrypted: i=1; AJvYcCV2DZvcqxavQxMEQfkn0Su6uhbkwBwKxpjNPQCm4M2dWMRBBe0bBR8JhOI6HtSKncMZZDg9dyhlpL8k25TsNUuydXVwcauYDVMjpWeXuOHVDVBw3tDageqQ037jENm0yagtDOU5p71VQwftfRx8WBDFrmCoDeoFsZ4=
X-Gm-Message-State: AOJu0Yx/fW80QyD1RfBrmK8xWwoZbKcaKnUcEZK/4SGKT/ye1/VIdtKB
	6YWVhFXJmDRhQqWbqOCNUFeviIBa1iV0NN/ceh2u0yEJgF+aDrjJ8YdvBx3Mpr4Zd/G6hKrHLv5
	Jtqh/NNoIEMOwit5j3z2mUx/7UHA=
X-Google-Smtp-Source: AGHT+IFgagPufhfO3kVQfItv3SWrXC3htPT/1kAkqIC6JWUhjoj+56zpXjnNVV8XcysieMT0AiF5k6pFInYg5EvGmSk=
X-Received: by 2002:a05:6808:bd4:b0:3d9:3649:908a with SMTP id
 5614622812f47-3d93c0b5c09mr4527199b6e.58.1720580590556; Tue, 09 Jul 2024
 20:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <20240709123121.1452394-1-heiko@sntech.de>
In-Reply-To: <20240709123121.1452394-1-heiko@sntech.de>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 10 Jul 2024 08:32:57 +0530
Message-ID: <CANAwSgQGoeyy3V9hBNcxFynRgR-rUanUzVN41uFxu0-_OqKKZg@mail.gmail.com>
Subject: Re: [PATCH 0/6] Binding and driver for "dumb" clock generators
To: Heiko Stuebner <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_200312_088575_5C26E4DA 
X-CRM114-Status: GOOD (  26.40  )
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

Hi Heiko,

On Tue, 9 Jul 2024 at 18:02, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Rockchip boards with PCIe3 controllers inside the soc (rk3568, rk3588) have
> external clock generators on the board to generate the needed 100MHz
> reference clock the PCIe3 controller needs.
>
> Often these clock generators need supplies to be enabled to run.
>
> Modelling this clock has taken a number of shapes:
> - The rk3568 Rock-3a modelled the generator-regulator as "phy-supply" [0]
>   &pcie30phy {
>         phy-supply = <&vcc3v3_pi6c_03>;
>         status = "okay";
>   };
>   which is of course not part of the binding
>
> - On the Rock-5-ITX the supply of the clock generator is controlled by
>   the same gpio as the regulator supplying the the port connected to the
>   pcie30x4 controller, so if this controller probes first, both
>   controllers will just run. But if the pcie30x2 controller probes first
>   (which has a different supply), the controller will stall at the first
>   dbi read.
>
> - Recent Theobroma-Systems boards (Jaguar and Tiger) modelled their
>   generator as a combination of fixed clock and gpio-gate, which works
>   because the generator's vdd-supply is always on and only the output-
>   enable pin needs to be toggled.
>
>
> So this series attempts to improve the situation by allowing to model
> these clock generators as actual entities in the devicetree, to not have
> them just accidentially work or break bindings.
>

I was wondering if these changes apply to Radxa Rock 5b SbC, it does not have
pi6c557 clock generator but the schematic supports GEN_CLK_100MHZ is
input to CLKin0 which is generated via the VCC3V3_PI6C_05 (100MHz,3.3V,3225)
regulator.

[1] https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock5b_v13_sch.pdf

Thanks
-Anand

>
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts#n605
>
> Heiko Stuebner (6):
>   dt-bindings: clocks: add binding for generic clock-generators
>   clk: add driver for generic clock generators
>   arm64: dts: rockchip: fix the pcie clock generator on Rock 5 ITX
>   arm64: dts: rockchip: use clock-generator for pcie-refclk on
>     rk3588-jaguar
>   arm64: dts: rockchip: use clock-generator for pcie-refclk on
>     rk3588-tiger
>   arm64: dts: rockchip: add pinctrl for clk-generator gpio on
>     rk3588-tiger
>
>  .../bindings/clock/clock-generator.yaml       |  62 ++++++++
>  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |  13 +-
>  .../boot/dts/rockchip/rk3588-rock-5itx.dts    |  34 ++++-
>  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi |  21 +--
>  drivers/clk/Kconfig                           |   7 +
>  drivers/clk/Makefile                          |   1 +
>  drivers/clk/clk-generator.c                   | 133 ++++++++++++++++++
>  7 files changed, 251 insertions(+), 20 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/clock-generator.yaml
>  create mode 100644 drivers/clk/clk-generator.c
>
> --
> 2.39.2
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
