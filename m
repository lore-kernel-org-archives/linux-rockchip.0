Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1108C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 15:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgXQQ/c41rRpvOdj2x1zgKjKtIb5vO3RLl8kcs48ydc=; b=YgOyKhxoO36Bvf
	aURzopakgWbmmqO/VDMZug2FpdRVriy4knjp9DxDSN3mfGzezpjEOQrUvQPGH0zrkAZds7Ee/ZqRo
	NaIdnE9Uen8u3UlMXqTbJu91xTpV47jN5dRiLiHNBiOsoPJU2CeeOCqdctXSV6bxpuyqaStaFcGgC
	PjJO5HTtZ3+aCy9YUIm4kArmKtPKpmZPe4ZXqS0yV2zFszglnNtBoKi0W2XRL44Qc1qrSHw1XdLKp
	s56NPO2OSNU0JajLNM9RLSem6DD94SkpQ63qXJWGZBrcjfupfwk7RRRxGVQtPBB4TNyoadE+rkHVj
	Rz7K0wWZqDDyCszRDJBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noRnJ-002izG-A0; Tue, 10 May 2022 15:29:01 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noRn7-002itA-IY; Tue, 10 May 2022 15:28:51 +0000
Received: by mail-ej1-x62a.google.com with SMTP id i19so33679273eja.11;
 Tue, 10 May 2022 08:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9zv1s67X9++8u97ESUQcgdq1IJV6kWayIC8vZbznek8=;
 b=kGqF4R8QIb+Tb8QtT2f7AXe6DA8WGWw7EItVn9hGxoOBIj/WSUwlDw2bU8IakvPWgj
 g8ICmZ6J7rZdkKVjWH1IDi+TM6Zu+Gs05/aCcN2VV7LXPnrKkOckvbSZ6F7UVkOf0Tut
 RVNKDL40zMPKEA8XE0W23M/CA7QiSjtFaUCTUPxEte8BnMqS0wuxOFaKyk28u+XIMO7/
 1e02z97WblFf5HnsTMh+ZI0kyr34WCGzunchTq0HvhQRQaoeJurXhMFC4h4/OTo73MRo
 3BNQ6W8P98mwu8vzj4XEss0Ag8y8vNMSRPLmvLxspm0kiTidJd6PyLYzVYn8kjVANMxS
 JTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9zv1s67X9++8u97ESUQcgdq1IJV6kWayIC8vZbznek8=;
 b=Dt3SOMhQze5S7IusTmRn7N/KUkaw3MNFl9+QC4Njwl9f3i799D3HSlRLYejSr94Mxx
 hraaoPCbjw/zOJqGX6uryckauj8OAU3DcSmNK66woH8fwLOMfbODIEas1HQtgeZAEQnl
 8Ua+yhBVKI0JLes1GJiVoDCpGC2y7ptMgsAoEP743QajZJWBGSNNNiA5X4ySqw1TvzaL
 DURE7EAqY+8oHJ9eMVLnz5n5pFD3VjZ+zO1d5LHyGsiKOhfmsaxOnW49/8RJ3/gIjDYe
 lJpk1dljEVd+iqegEB7BhNfZCGFNrmsLfrQtyYvi5cW69QsjHj5cvBcgVSkriEBtpqQL
 VtbA==
X-Gm-Message-State: AOAM530MfuoLSSrqYrJqEreJewBQmoXV5qAU6N8zWxs+aR1h/bxhpaPi
 /O48UmSFKAxtL2FNo+oyu8g=
X-Google-Smtp-Source: ABdhPJxmNDJe474WdhkT9WP72Kr9bcEIaAR/BSjdBWmPGyKOYX4UXD6a53d2l4dd0EvpnlL9vM2HCQ==
X-Received: by 2002:a17:907:7810:b0:6e7:ef73:8326 with SMTP id
 la16-20020a170907781000b006e7ef738326mr19706751ejc.429.1652196524386; 
 Tue, 10 May 2022 08:28:44 -0700 (PDT)
Received: from archbook.localnet (ict-networks-195-176-112-189.fwd-v4.ethz.ch.
 [195.176.112.189]) by smtp.gmail.com with ESMTPSA id
 w26-20020a50fa9a000000b0041d893ed437sm7746703edr.2.2022.05.10.08.28.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 May 2022 08:28:43 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Hantro encoder node to
 rk356x
Date: Tue, 10 May 2022 17:27:08 +0200
Message-ID: <1959188.DQhRDO7MrQ@archbook>
In-Reply-To: <CAAEAJfC5aoFmk7hKZ-CSv1=RhzO8YU38Abz8PhD26MvV+X0r-Q@mail.gmail.com>
References: <20220508202544.501981-1-frattaroli.nicolas@gmail.com>
 <20220508202544.501981-4-frattaroli.nicolas@gmail.com>
 <CAAEAJfC5aoFmk7hKZ-CSv1=RhzO8YU38Abz8PhD26MvV+X0r-Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_082849_694602_EDD1450F 
X-CRM114-Status: GOOD (  30.28  )
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

Hi Ezequiel,

On Montag, 9. Mai 2022 16:17:03 CEST Ezequiel Garcia wrote:
> Hi Nicolas,
> 
> On Sun, May 8, 2022 at 5:26 PM Nicolas Frattaroli
> <frattaroli.nicolas@gmail.com> wrote:
> >
> > The RK3566 and RK3568 come with a dedicated Hantro instance solely for
> > encoding. This patch adds a node for this to the device tree, along with
> > a node for its MMU.
> >
> > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 21 +++++++++++++++++++++
> >  1 file changed, 21 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index 7cdef800cb3c..2e3c9e1887e3 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -508,6 +508,27 @@ gpu: gpu@fde60000 {
> >                 status = "disabled";
> >         };
> >
> > +       vepu: video-codec@fdee0000 {
> > +               compatible = "rockchip,rk3568-vepu";
> > +               reg = <0x0 0xfdee0000 0x0 0x800>;
> > +               interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
> > +               interrupt-names = "vepu";
> 
> It this block "encoder only" and if so, maybe we should remove the
> "interrupt-names" [1]?
> 
> The driver is able to handle it. See:
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/staging/media/hantro/hantro_drv.c#L962
> 
> You might have to adjust the dt-bindings for this.
> 
> [1] https://lore.kernel.org/linux-media/20210324151715.GA3070006@robh.at.kernel.org/

What the Linux driver can handle should not matter to the device tree;
device trees are independent of drivers and kernels.

What does matter though is to be consistent in the bindings.
interrupt-names is a required property even if there's only a vdpu
interrupt. I modelled my vepu-only binding after this case.

If robh thinks there is no value to having the interrupt show up
as anything other than "default" in /proc/interrupts, then I respectfully
disagree with that opinion and point out that this should have been brought
up when the vdpu-only case in the bindings was made to require
interrupt-names also.

Changing the binding now that there theoretically could be drivers out
in the wild (though I doubt it) that do require interrupt-names, because
the binding told them that this is okay to do, seems unwise to me.

Regards,
Nicolas Frattaroli

> 
> Thanks,
> Ezequiel
> 
> > +               clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
> > +               clock-names = "aclk", "hclk";
> > +               iommus = <&vepu_mmu>;
> > +               power-domains = <&power RK3568_PD_RGA>;
> > +       };
> > +
> > +       vepu_mmu: iommu@fdee0800 {
> > +               compatible = "rockchip,rk3568-iommu";
> > +               reg = <0x0 0xfdee0800 0x0 0x40>;
> > +               interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
> > +               clocks = <&cru ACLK_JENC>, <&cru HCLK_JENC>;
> > +               clock-names = "aclk", "iface";
> > +               power-domains = <&power RK3568_PD_RGA>;
> > +               #iommu-cells = <0>;
> > +       };
> > +
> >         sdmmc2: mmc@fe000000 {
> >                 compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
> >                 reg = <0x0 0xfe000000 0x0 0x4000>;
> > --
> > 2.36.0
> >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
