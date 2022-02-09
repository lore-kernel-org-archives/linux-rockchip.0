Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5322AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 20:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZ+z30KGfRBTsg9J6T7esxgf8IVF/3aw02q190NW/o4=; b=gBRpqplrnNunrN
	UouKf5xRIMdjU4D0AYOuPz+63MT11zDyORmpJIO1Fc/gYeirzG/wt5IKlzdSiEUPsfykRnXdU3VgR
	Cimk6ub6PgaV/6UFPujmtp71Q4icTZ250CVqqBJBJE4ba0M5+yad7bYjYAdLQidbO6PZ4nlBrYBvc
	/kMDZubE6jB6ji5TrhliBvWkNhukzq/ngKCwZTF9OuHPbYCxvKCE06gYheKBoSS6PIANRU+5LWn6l
	0Iujbp3+4+SdMmVKOfoHDHbX893Ibwnzro0U1pw+a3VUDs6M7Z9GvT6305uPUZ6J0zJ8sLGrqtDZf
	1BZUkmIFm3mlYBOCzVCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHtPJ-001WPh-1n; Wed, 09 Feb 2022 20:17:41 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHtPE-001WOE-LX; Wed, 09 Feb 2022 20:17:39 +0000
Received: by mail-oi1-f169.google.com with SMTP id q8so3703042oiw.7;
 Wed, 09 Feb 2022 12:17:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mxsriZBFoiM1nUy+R5JUTOf+tvmJxInaM97zwqax3sc=;
 b=eESpt77BnZYXOpaF+g6Y05zizn8bMHECuSzfmU/oMgDt/qCUK36sz93Gy+/1IOtxEo
 AexN5CCevRPchEYuQOWrMmdlQAFLfsb5UPqVkh/4EkDpdNqCqyE85z2nN51gIL2uA/Na
 UZsl8GETVoPWdx/C1AWo000FTe6ebJio8haaWpfEuIByYK2N0ceHT0UwxxdBi45Wig7w
 ltcMSF42uk3To6AISaUAnqyxyfebhbGOHEPyR5DkvBvcABQQf9e3VuPB1JdXgS4a3j4D
 HYjxLDbVRiHmMCOJ5PmTH3uDIFysGBybXnRpbcAoao8UnZckquy55V6VVV1N0ujBCcKr
 WQbA==
X-Gm-Message-State: AOAM531txY9JG2PwjuknR78Icryi4Ua0Iny88hAFz0GIzKwH+RpGA7dQ
 1NVfRxqZ2fCy4hGgVWLV4Q==
X-Google-Smtp-Source: ABdhPJy/oIrazwwX1iR8qV8QlR5lFJha2J/wf6Tg2cglLtSXc8wpjfSnVhOsQo+k3VMZAcQIeoVgnw==
X-Received: by 2002:a05:6808:238b:: with SMTP id
 bp11mr1691461oib.148.1644437855336; 
 Wed, 09 Feb 2022 12:17:35 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id i1sm4168263ood.32.2022.02.09.12.17.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 12:17:34 -0800 (PST)
Received: (nullmailer pid 825206 invoked by uid 1000);
 Wed, 09 Feb 2022 20:17:33 -0000
Date: Wed, 9 Feb 2022 14:17:33 -0600
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Derek Basehore <dbasehore@chromium.org>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 01/15] dt-bindings: devfreq: rk3399_dmc: Convert to YAML
Message-ID: <YgQhXb/0BM0OFy/6@robh.at.kernel.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220127150615.v2.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_121736_753029_AF6A2248 
X-CRM114-Status: GOOD (  39.68  )
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

On Thu, Jan 27, 2022 at 03:07:12PM -0800, Brian Norris wrote:
> I want to add, deprecate, and bugfix some properties, as well as add the
> first users. This is easier with a proper schema.
> 
> The transformation is mostly straightforward, plus a few notable tweaks:
> 
>  * Renamed rockchip,dram_speed_bin to rockchip,ddr3_speed_bin. The
>    driver code and the example matched, but the description was
>    different. I went with the implementation.
> 
>  * Drop upthreshold and downdifferential properties from the example.
>    These were undocumented (so, wouldn't pass validation), but were
>    representing software properties (governor tweaks). I drop them from
>    the driver in subsequent patches.
> 
>  * Rename clock from pclk_ddr_mon to dmc_clk. The driver, DT example,
>    and all downstream users matched -- the binding definition was the
>    exception. Anyway, "dmc_clk" is a more appropriately generic name.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> Changes in v2:
>  * rename to 'memory-controller' in example
>  * place 'required' after properties
>  * drop superluous free-form references and repetitions of other
>    bindings
>  * fix for yamllint
> 
>  .../bindings/devfreq/rk3399_dmc.txt           | 212 -------------
>  .../bindings/devfreq/rk3399_dmc.yaml          | 293 ++++++++++++++++++
>  2 files changed, 293 insertions(+), 212 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
>  create mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
> deleted file mode 100644
> index 58fc8a6cebc7..000000000000
> --- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
> +++ /dev/null
> @@ -1,212 +0,0 @@
> -* Rockchip rk3399 DMC (Dynamic Memory Controller) device
> -
> -Required properties:
> -- compatible:		 Must be "rockchip,rk3399-dmc".
> -- devfreq-events:	 Node to get DDR loading, Refer to
> -			 Documentation/devicetree/bindings/devfreq/event/
> -			 rockchip-dfi.txt
> -- clocks:		 Phandles for clock specified in "clock-names" property
> -- clock-names :		 The name of clock used by the DFI, must be
> -			 "pclk_ddr_mon";
> -- operating-points-v2:	 Refer to Documentation/devicetree/bindings/opp/opp-v2.yaml
> -			 for details.
> -- center-supply:	 DMC supply node.
> -- status:		 Marks the node enabled/disabled.
> -- rockchip,pmu:		 Phandle to the syscon managing the "PMU general register
> -			 files".
> -
> -Optional properties:
> -- interrupts:		 The CPU interrupt number. The interrupt specifier
> -			 format depends on the interrupt controller.
> -			 It should be a DCF interrupt. When DDR DVFS finishes
> -			 a DCF interrupt is triggered.
> -- rockchip,pmu:		 Phandle to the syscon managing the "PMU general register
> -			 files".
> -
> -Following properties relate to DDR timing:
> -
> -- rockchip,dram_speed_bin :	  Value reference include/dt-bindings/clock/rk3399-ddr.h,
> -				  it selects the DDR3 cl-trp-trcd type. It must be
> -				  set according to "Speed Bin" in DDR3 datasheet,
> -				  DO NOT use a smaller "Speed Bin" than specified
> -				  for the DDR3 being used.
> -
> -- rockchip,pd_idle :		  Configure the PD_IDLE value. Defines the
> -				  power-down idle period in which memories are
> -				  placed into power-down mode if bus is idle
> -				  for PD_IDLE DFI clock cycles.
> -
> -- rockchip,sr_idle :		  Configure the SR_IDLE value. Defines the
> -				  self-refresh idle period in which memories are
> -				  placed into self-refresh mode if bus is idle
> -				  for SR_IDLE * 1024 DFI clock cycles (DFI
> -				  clocks freq is half of DRAM clock), default
> -				  value is "0".
> -
> -- rockchip,sr_mc_gate_idle :	  Defines the memory self-refresh and controller
> -				  clock gating idle period. Memories are placed
> -				  into self-refresh mode and memory controller
> -				  clock arg gating started if bus is idle for
> -				  sr_mc_gate_idle*1024 DFI clock cycles.
> -
> -- rockchip,srpd_lite_idle :	  Defines the self-refresh power down idle
> -				  period in which memories are placed into
> -				  self-refresh power down mode if bus is idle
> -				  for srpd_lite_idle * 1024 DFI clock cycles.
> -				  This parameter is for LPDDR4 only.
> -
> -- rockchip,standby_idle :	  Defines the standby idle period in which
> -				  memories are placed into self-refresh mode.
> -				  The controller, pi, PHY and DRAM clock will
> -				  be gated if bus is idle for standby_idle * DFI
> -				  clock cycles.
> -
> -- rockchip,dram_dll_dis_freq :	  Defines the DDR3 DLL bypass frequency in MHz.
> -				  When DDR frequency is less than DRAM_DLL_DISB_FREQ,
> -				  DDR3 DLL will be bypassed. Note: if DLL was bypassed,
> -				  the odt will also stop working.
> -
> -- rockchip,phy_dll_dis_freq :	  Defines the PHY dll bypass frequency in
> -				  MHz (Mega Hz). When DDR frequency is less than
> -				  DRAM_DLL_DISB_FREQ, PHY DLL will be bypassed.
> -				  Note: PHY DLL and PHY ODT are independent.
> -
> -- rockchip,ddr3_odt_dis_freq :	  When the DRAM type is DDR3, this parameter defines
> -				  the ODT disable frequency in MHz (Mega Hz).
> -				  when the DDR frequency is  less then ddr3_odt_dis_freq,
> -				  the ODT on the DRAM side and controller side are
> -				  both disabled.
> -
> -- rockchip,ddr3_drv :		  When the DRAM type is DDR3, this parameter defines
> -				  the DRAM side driver strength in ohms. Default
> -				  value is 40.
> -
> -- rockchip,ddr3_odt :		  When the DRAM type is DDR3, this parameter defines
> -				  the DRAM side ODT strength in ohms. Default value
> -				  is 120.
> -
> -- rockchip,phy_ddr3_ca_drv :	  When the DRAM type is DDR3, this parameter defines
> -				  the phy side CA line (incluing command line,
> -				  address line and clock line) driver strength.
> -				  Default value is 40.
> -
> -- rockchip,phy_ddr3_dq_drv :	  When the DRAM type is DDR3, this parameter defines
> -				  the PHY side DQ line (including DQS/DQ/DM line)
> -				  driver strength. Default value is 40.
> -
> -- rockchip,phy_ddr3_odt : 	  When the DRAM type is DDR3, this parameter defines
> -				  the PHY side ODT strength. Default value is 240.
> -
> -- rockchip,lpddr3_odt_dis_freq : When the DRAM type is LPDDR3, this parameter defines
> -				  then ODT disable frequency in MHz (Mega Hz).
> -				  When DDR frequency is less then ddr3_odt_dis_freq,
> -				  the ODT on the DRAM side and controller side are
> -				  both disabled.
> -
> -- rockchip,lpddr3_drv :		  When the DRAM type is LPDDR3, this parameter defines
> -				  the DRAM side driver strength in ohms. Default
> -				  value is 34.
> -
> -- rockchip,lpddr3_odt :		  When the DRAM type is LPDDR3, this parameter defines
> -				  the DRAM side ODT strength in ohms. Default value
> -				  is 240.
> -
> -- rockchip,phy_lpddr3_ca_drv :	  When the DRAM type is LPDDR3, this parameter defines
> -				  the PHY side CA line (including command line,
> -				  address line and clock line) driver strength.
> -				  Default value is 40.
> -
> -- rockchip,phy_lpddr3_dq_drv :	  When the DRAM type is LPDDR3, this parameter defines
> -				  the PHY side DQ line (including DQS/DQ/DM line)
> -				  driver strength. Default value is 40.
> -
> -- rockchip,phy_lpddr3_odt : 	  When dram type is LPDDR3, this parameter define
> -				  the phy side odt strength, default value is 240.
> -
> -- rockchip,lpddr4_odt_dis_freq : When the DRAM type is LPDDR4, this parameter
> -				  defines the ODT disable frequency in
> -				  MHz (Mega Hz). When the DDR frequency is less then
> -				  ddr3_odt_dis_freq, the ODT on the DRAM side and
> -				  controller side are both disabled.
> -
> -- rockchip,lpddr4_drv :		  When the DRAM type is LPDDR4, this parameter defines
> -				  the DRAM side driver strength in ohms. Default
> -				  value is 60.
> -
> -- rockchip,lpddr4_dq_odt : 	  When the DRAM type is LPDDR4, this parameter defines
> -				  the DRAM side ODT on DQS/DQ line strength in ohms.
> -				  Default value is 40.
> -
> -- rockchip,lpddr4_ca_odt :	  When the DRAM type is LPDDR4, this parameter defines
> -				  the DRAM side ODT on CA line strength in ohms.
> -				  Default value is 40.
> -
> -- rockchip,phy_lpddr4_ca_drv :	  When the DRAM type is LPDDR4, this parameter defines
> -				  the PHY side CA line (including command address
> -				  line) driver strength. Default value is 40.
> -
> -- rockchip,phy_lpddr4_ck_cs_drv : When the DRAM type is LPDDR4, this parameter defines
> -				  the PHY side clock line and CS line driver
> -				  strength. Default value is 80.
> -
> -- rockchip,phy_lpddr4_dq_drv :	  When the DRAM type is LPDDR4, this parameter defines
> -				  the PHY side DQ line (including DQS/DQ/DM line)
> -				  driver strength. Default value is 80.
> -
> -- rockchip,phy_lpddr4_odt :	  When the DRAM type is LPDDR4, this parameter defines
> -				  the PHY side ODT strength. Default value is 60.
> -
> -Example:
> -	dmc_opp_table: dmc_opp_table {
> -		compatible = "operating-points-v2";
> -
> -		opp00 {
> -			opp-hz = /bits/ 64 <300000000>;
> -			opp-microvolt = <900000>;
> -		};
> -		opp01 {
> -			opp-hz = /bits/ 64 <666000000>;
> -			opp-microvolt = <900000>;
> -		};
> -	};
> -
> -	dmc: dmc {
> -		compatible = "rockchip,rk3399-dmc";
> -		devfreq-events = <&dfi>;
> -		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&cru SCLK_DDRC>;
> -		clock-names = "dmc_clk";
> -		operating-points-v2 = <&dmc_opp_table>;
> -		center-supply = <&ppvar_centerlogic>;
> -		upthreshold = <15>;
> -		downdifferential = <10>;
> -		rockchip,ddr3_speed_bin = <21>;
> -		rockchip,pd_idle = <0x40>;
> -		rockchip,sr_idle = <0x2>;
> -		rockchip,sr_mc_gate_idle = <0x3>;
> -		rockchip,srpd_lite_idle	= <0x4>;
> -		rockchip,standby_idle = <0x2000>;
> -		rockchip,dram_dll_dis_freq = <300>;
> -		rockchip,phy_dll_dis_freq = <125>;
> -		rockchip,auto_pd_dis_freq = <666>;
> -		rockchip,ddr3_odt_dis_freq = <333>;
> -		rockchip,ddr3_drv = <40>;
> -		rockchip,ddr3_odt = <120>;
> -		rockchip,phy_ddr3_ca_drv = <40>;
> -		rockchip,phy_ddr3_dq_drv = <40>;
> -		rockchip,phy_ddr3_odt = <240>;
> -		rockchip,lpddr3_odt_dis_freq = <333>;
> -		rockchip,lpddr3_drv = <34>;
> -		rockchip,lpddr3_odt = <240>;
> -		rockchip,phy_lpddr3_ca_drv = <40>;
> -		rockchip,phy_lpddr3_dq_drv = <40>;
> -		rockchip,phy_lpddr3_odt = <240>;
> -		rockchip,lpddr4_odt_dis_freq = <333>;
> -		rockchip,lpddr4_drv = <60>;
> -		rockchip,lpddr4_dq_odt = <40>;
> -		rockchip,lpddr4_ca_odt = <40>;
> -		rockchip,phy_lpddr4_ca_drv = <40>;
> -		rockchip,phy_lpddr4_ck_cs_drv = <80>;
> -		rockchip,phy_lpddr4_dq_drv = <80>;
> -		rockchip,phy_lpddr4_odt = <60>;
> -	};
> diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> new file mode 100644
> index 000000000000..467a7b5b374b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> @@ -0,0 +1,293 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# %YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/devfreq/rk3399_dmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip rk3399 DMC (Dynamic Memory Controller) device
> +
> +maintainers:
> +  - Brian Norris <briannorris@chromium.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3399-dmc
> +
> +  devfreq-events:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    minItems: 1

What's the max?

If this is just phandles (no arg cells), then you need:

items:
  maxItems: 1

IOW, fully describe the number of entries and cells for each entry.

> +    description:
> +      Node to get DDR loading. Refer to
> +      Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt.
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: dmc_clk
> +
> +  operating-points-v2: true
> +
> +  center-supply:
> +    description:
> +      DMC regulator supply.
> +
> +  rockchip,pmu:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "PMU general register files".
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The CPU interrupt number. It should be a DCF interrupt. When DDR DVFS
> +      finishes, a DCF interrupt is triggered.
> +
> +  rockchip,ddr3_speed_bin:

Since you are changing this, s/_/-/

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      For values, reference include/dt-bindings/clock/rk3399-ddr.h. Selects the
> +      DDR3 cl-trp-trcd type. It must be set according to "Speed Bin" in DDR3
> +      datasheet; DO NOT use a smaller "Speed Bin" than specified for the DDR3
> +      being used.
> +
> +  rockchip,pd_idle:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Configure the PD_IDLE value. Defines the power-down idle period in which
> +      memories are placed into power-down mode if bus is idle for PD_IDLE DFI
> +      clock cycles.
> +
> +  rockchip,sr_idle:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Configure the SR_IDLE value. Defines the self-refresh idle period in
> +      which memories are placed into self-refresh mode if bus is idle for
> +      SR_IDLE * 1024 DFI clock cycles (DFI clocks freq is half of DRAM clock).
> +      Default value is "0".
> +
> +  rockchip,sr_mc_gate_idle:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the memory self-refresh and controller clock gating idle period.
> +      Memories are placed into self-refresh mode and memory controller clock
> +      arg gating started if bus is idle for sr_mc_gate_idle*1024 DFI clock
> +      cycles.
> +
> +  rockchip,srpd_lite_idle:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the self-refresh power down idle period in which memories are
> +      placed into self-refresh power down mode if bus is idle for
> +      srpd_lite_idle * 1024 DFI clock cycles. This parameter is for LPDDR4
> +      only.
> +
> +  rockchip,standby_idle:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the standby idle period in which memories are placed into
> +      self-refresh mode. The controller, pi, PHY and DRAM clock will be gated
> +      if bus is idle for standby_idle * DFI clock cycles.
> +
> +  rockchip,dram_dll_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Defines the DDR3 DLL bypass frequency in MHz. When DDR frequency is less
> +      than DRAM_DLL_DISB_FREQ, DDR3 DLL will be bypassed.
> +      Note: if DLL was bypassed, the odt will also stop working.
> +
> +  rockchip,phy_dll_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Defines the PHY dll bypass frequency in MHz (Mega Hz). When DDR frequency
> +      is less than DRAM_DLL_DISB_FREQ, PHY DLL will be bypassed.
> +      Note: PHY DLL and PHY ODT are independent.
> +
> +  rockchip,auto_pd_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the auto PD disable frequency in MHz.
> +
> +  rockchip,ddr3_odt_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is DDR3, this parameter defines the ODT disable
> +      frequency in MHz (Mega Hz). When the DDR frequency is less then
> +      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
> +      disabled.
> +
> +  rockchip,ddr3_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is DDR3, this parameter defines the DRAM side drive
> +      strength in ohms. Default value is 40.
> +
> +  rockchip,ddr3_odt:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is DDR3, this parameter defines the DRAM side ODT
> +      strength in ohms. Default value is 120.
> +
> +  rockchip,phy_ddr3_ca_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is DDR3, this parameter defines the phy side CA line
> +      (incluing command line, address line and clock line) drive strength.
> +      Default value is 40.
> +
> +  rockchip,phy_ddr3_dq_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is DDR3, this parameter defines the PHY side DQ line
> +      (including DQS/DQ/DM line) drive strength. Default value is 40.
> +
> +  rockchip,phy_ddr3_odt:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is DDR3, this parameter defines the PHY side ODT
> +      strength. Default value is 240.
> +
> +  rockchip,lpddr3_odt_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR3, this parameter defines then ODT disable
> +      frequency in MHz (Mega Hz). When DDR frequency is less then
> +      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
> +      disabled.
> +
> +  rockchip,lpddr3_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR3, this parameter defines the DRAM side drive
> +      strength in ohms. Default value is 34.
> +
> +  rockchip,lpddr3_odt:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR3, this parameter defines the DRAM side ODT
> +      strength in ohms. Default value is 240.
> +
> +  rockchip,phy_lpddr3_ca_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR3, this parameter defines the PHY side CA line
> +      (including command line, address line and clock line) drive strength.
> +      Default value is 40.
> +
> +  rockchip,phy_lpddr3_dq_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR3, this parameter defines the PHY side DQ line
> +      (including DQS/DQ/DM line) drive strength. Default value is 40.
> +
> +  rockchip,phy_lpddr3_odt:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When dram type is LPDDR3, this parameter define the phy side odt
> +      strength, default value is 240.
> +
> +  rockchip,lpddr4_odt_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR4, this parameter defines the ODT disable
> +      frequency in MHz (Mega Hz). When the DDR frequency is less then
> +      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
> +      disabled.
> +
> +  rockchip,lpddr4_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR4, this parameter defines the DRAM side drive
> +      strength in ohms. Default value is 60.
> +
> +  rockchip,lpddr4_dq_odt:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR4, this parameter defines the DRAM side ODT on
> +      DQS/DQ line strength in ohms. Default value is 40.
> +
> +  rockchip,lpddr4_ca_odt:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR4, this parameter defines the DRAM side ODT on
> +      CA line strength in ohms. Default value is 40.
> +
> +  rockchip,phy_lpddr4_ca_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR4, this parameter defines the PHY side CA line
> +      (including command address line) drive strength. Default value is 40.
> +
> +  rockchip,phy_lpddr4_ck_cs_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR4, this parameter defines the PHY side clock
> +      line and CS line drive strength. Default value is 80.
> +
> +  rockchip,phy_lpddr4_dq_drv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR4, this parameter defines the PHY side DQ line
> +      (including DQS/DQ/DM line) drive strength. Default value is 80.
> +
> +  rockchip,phy_lpddr4_odt:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      When the DRAM type is LPDDR4, this parameter defines the PHY side ODT
> +      strength. Default value is 60.
> +
> +required:
> +  - compatible
> +  - devfreq-events
> +  - clocks
> +  - clock-names
> +  - operating-points-v2
> +  - center-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    memory-controller {
> +      compatible = "rockchip,rk3399-dmc";
> +      devfreq-events = <&dfi>;
> +      rockchip,pmu = <&pmu>;
> +      interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru SCLK_DDRC>;
> +      clock-names = "dmc_clk";
> +      operating-points-v2 = <&dmc_opp_table>;
> +      center-supply = <&ppvar_centerlogic>;
> +      rockchip,ddr3_speed_bin = <21>;
> +      rockchip,pd_idle = <0x40>;
> +      rockchip,sr_idle = <0x2>;
> +      rockchip,sr_mc_gate_idle = <0x3>;
> +      rockchip,srpd_lite_idle = <0x4>;
> +      rockchip,standby_idle = <0x2000>;
> +      rockchip,dram_dll_dis_freq = <300>;
> +      rockchip,phy_dll_dis_freq = <125>;
> +      rockchip,auto_pd_dis_freq = <666>;
> +      rockchip,ddr3_odt_dis_freq = <333>;
> +      rockchip,ddr3_drv = <40>;
> +      rockchip,ddr3_odt = <120>;
> +      rockchip,phy_ddr3_ca_drv = <40>;
> +      rockchip,phy_ddr3_dq_drv = <40>;
> +      rockchip,phy_ddr3_odt = <240>;
> +      rockchip,lpddr3_odt_dis_freq = <333>;
> +      rockchip,lpddr3_drv = <34>;
> +      rockchip,lpddr3_odt = <240>;
> +      rockchip,phy_lpddr3_ca_drv = <40>;
> +      rockchip,phy_lpddr3_dq_drv = <40>;
> +      rockchip,phy_lpddr3_odt = <240>;
> +      rockchip,lpddr4_odt_dis_freq = <333>;
> +      rockchip,lpddr4_drv = <60>;
> +      rockchip,lpddr4_dq_odt = <40>;
> +      rockchip,lpddr4_ca_odt = <40>;
> +      rockchip,phy_lpddr4_ca_drv = <40>;
> +      rockchip,phy_lpddr4_ck_cs_drv = <80>;
> +      rockchip,phy_lpddr4_dq_drv = <80>;
> +      rockchip,phy_lpddr4_odt = <60>;
> +    };
> -- 
> 2.35.0.rc0.227.g00780c9af4-goog
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
