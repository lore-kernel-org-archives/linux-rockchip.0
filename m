Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C705C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:54:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BEC2564E32
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:54:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BEC2564E32
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L/uTzbGxLgqpZRAvPnxsIpKe1NVICTZ8qyQR3xfalXU=; b=vNFpJkOmqbMJPAn9M0f8rz6/J
	GHYFizcuO/Gg5Jy7ktQzOkw69wlTZ4+gdVQcgcbdhQkKB3XemDxJ+R+gCQgPfCK2pvPpD+5W5oCWz
	RR2LM58H187GXOPjxOcjrZ/56Xa0zsmAGqGcV1zQ1wiX74ThV39xMdGo4zBFJXRHnM/vJyyWfqZEw
	ilgtRvCCvCISHacuFisp+f4U6GDYDHq5fLigVoi/9W9S3PMcqkcwSa73GHFyQ22QBMZDpNi3/XeOg
	S8b09pE8drmy1iKTv43qYrNN7ofsLHQ13VpN3tGwxp7vCvjARU1kDCsAVQjxV7KX8gUragObLi9qt
	ksw9dsCaQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEVKt-0003db-B6; Tue, 23 Feb 2021 10:54:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEVKq-0003cS-QR; Tue, 23 Feb 2021 10:54:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lEVKp-0000KT-FJ; Tue, 23 Feb 2021 11:54:31 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>, sboyd@kernel.org,
 Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/4] dt-bindings: add bindings for rk3568 clock
 controller
Date: Tue, 23 Feb 2021 11:54:30 +0100
Message-ID: <6385562.anssfa2V6d@diego>
In-Reply-To: <eb82f0a4-ca89-d1bc-5660-49bd05b7fc50@gmail.com>
References: <20210223095352.11544-1-zhangqing@rock-chips.com>
 <20210223095352.11544-2-zhangqing@rock-chips.com>
 <eb82f0a4-ca89-d1bc-5660-49bd05b7fc50@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_055432_935103_985F9DE8 
X-CRM114-Status: GOOD (  27.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com, cl@rock-chips.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 23. Februar 2021, 11:50:25 CET schrieb Johan Jonker:
> Hi Elaine,
> 
> This is a new document.
> Could you convert rockchip,rk3568-cru.txt to yaml?

I'll definitly second that wish for a conversion to yaml.

Having the ability to check devicetrees for correctness is
quite helpful :-)


Heiko


> To get an acked-by you must include:
> 
> robh+dt@kernel.org
> devicetree@vger.kernel.org
> 
> ./scripts/get_maintainer.pl --noroles --norolestats --nogit-fallback
> --nogit <patch>
> 
> Your patch should show up here after filtering:
> https://patchwork.ozlabs.org/project/devicetree-bindings/list/
> 
> Check with:
> 
> make ARCH=arm64 dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pinctrl/rockchip,rk3568-cru.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pinctrl/rockchip,rk3568-cru.yaml
> 
> ./scripts/checkpatch.pl --strict <patch>
> 
> 
> On 2/23/21 10:53 AM, Elaine Zhang wrote:
> > Add devicetree bindings for Rockchip cru which found on
> > Rockchip SoCs.
> > 
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > ---
> >  .../bindings/clock/rockchip,rk3568-cru.txt    | 66 +++++++++++++++++++
> >  1 file changed, 66 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt
> > new file mode 100644
> > index 000000000000..b1119aecb7c7
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt
> > @@ -0,0 +1,66 @@
> > +* Rockchip RK3568 Clock and Reset Unit
> > +
> > +The RK3568 clock controller generates and supplies clock to various
> > +controllers within the SoC and also implements a reset controller for SoC
> > +peripherals.
> > +
> > +Required Properties:
> > +
> > +- compatible: PMU for CRU should be "rockchip,rk3568-pmucru"
> > +- compatible: CRU should be "rockchip,rk3568-cru"
> > +- reg: physical base address of the controller and length of memory mapped
> > +  region.
> > +- #clock-cells: should be 1.
> > +- #reset-cells: should be 1.
> > +
> > +Optional Properties:
> > +
> > +- rockchip,grf: phandle to the syscon managing the "general register files"
> > +  If missing, pll rates are not changeable, due to the missing pll lock status.
> > +
> > +Each clock is assigned an identifier and client nodes can use this identifier
> > +to specify the clock which they consume. All available clocks are defined as
> > +preprocessor macros in the dt-bindings/clock/rk3568-cru.h headers and can be
> > +used in device tree sources. Similar macros exist for the reset sources in
> > +these files.
> > +
> > +External clocks:
> > +
> > +There are several clocks that are generated outside the SoC. It is expected
> > +that they are defined using standard clock bindings with following
> > +clock-output-names:
> > + - "xin24m" - crystal input - required,
> > + - "xin32k" - rtc clock - optional,
> > + - "i2sx_mclkin" - external I2S clock - optional,
> > + - "xin_osc0_usbphyx_g" - external USBPHY clock - optional,
> > + - "xin_osc0_mipidsiphyx_g" - external MIPIDSIPHY clock - optional,
> > +
> > +Example: Clock controller node:
> > +
> > +	pmucru: clock-controller@fdd00000 {
> > +		compatible = "rockchip,rK3568-pmucru";
> > +		reg = <0x0 0xfdd00000 0x0 0x1000>;
> > +		#clock-cells = <1>;
> > +		#reset-cells = <1>;
> > +	};
> > +
> > +	cru: clock-controller@fdd20000 {
> > +		compatible = "rockchip,rK3568-cru";
> > +		reg = <0x0 0xfdd20000 0x0 0x1000>;
> > +		rockchip,grf = <&grf>;
> > +		#clock-cells = <1>;
> > +		#reset-cells = <1>;
> > +	};
> > +
> > +Example: UART controller node that consumes the clock generated by the clock
> > +  controller:
> > +
> > +	uart1: serial@fe650000 {
> > +		compatible = "rockchip,rK3568-uart", "snps,dw-apb-uart";
> > +		reg = <0x0 0xfe650000 0x0 0x100>;
> > +		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> > +		reg-shift = <2>;
> > +		reg-io-width = <4>;
> > +		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
> > +		clock-names = "baudclk", "apb_pclk";
> > +	};
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
