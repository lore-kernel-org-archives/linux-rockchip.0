Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF01D3E1B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 06:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qftxpjz79mI4VNCNK4V2Vi0Asor8tRUsPtDI8oEpLYQ=; b=uP3b62YP6syEXH
	xtdi2m3SachrPELmTbuEpcLfEO/6vw+6I6jJ94kBReq/EDSF+xTsp/Vr79baw1r3raZ3Ev2YuPOOu
	mqnhxrKkdwRgR2jmaPy0TNX3AIiMpaI5040lS7qxrvzk0Yp3CF2t3Dts9fsJwVUSzefUa3ECvQLW9
	oUvQcbLQwX/9AaQvAMPDN2DskO4+oM9mR33Cp/6Sgp3oZsr0Ne6V/mExH2FA/8ofcov6fQtPzupHE
	49IxSD5DGvev0OFvnK4SMZJw23ivxHC8RyFhJ71G8ahn/j1E69Oh4GnksdzbGaLIFUrz5Dn6woejz
	oMGb68bqmInqBttJO9+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t22tU-00000002evW-1kOy;
	Sat, 19 Oct 2024 06:24:56 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t22tQ-00000002ev5-1SAs
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Oct 2024 06:24:54 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-5eba65dd2b2so83324eaf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Oct 2024 23:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729319091; x=1729923891; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aqfDVL0Ui2+N+plDVqix8L5EBySMGbGA6cirRvu98po=;
        b=ZwsS3a2cr15ptKCqif8Qz0uc3Nw3x4LikmE1KWlNuDx9+0s4nVHy5TnDF7QgKjB5Pc
         MIyTj2Hw8y0Iff3+jYQShMgQkQEQ0q1zhgVQK60CJLoA0a7HfhhNffVRfPegu03aSR2L
         NUoTGdXUazGoFE9FC6PlPqsPolsdki4h3xo6gI37L8lklcpUTpcAIn3lXc9bqbVVvQlW
         BKc3M6CDPiRQfwu1Opa0Pue+X6RzplsdsXuvbGzi9F26IHF+5u7cd4e/9z7vNReVIXsY
         mpALrfG6FtR2sGUm7KYhNdB/89xiuxrntN+XTu9zVbUWGpj/Y5SKh010RGi+EQNnjXXv
         hYZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729319091; x=1729923891;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aqfDVL0Ui2+N+plDVqix8L5EBySMGbGA6cirRvu98po=;
        b=LU6FeBYmi4rnnIc7haSdfia6y9t78f1InXSxE2hDrFiDXxG/HVtj4qHz8RHBm5tiGF
         9r6yjVZx8+OfNV0YFY+GH4FFJ1PpCn2fH0+6FBnGkxDSl/gK9QDm8igdyH8u2rxbRvob
         fpCKr2cxd7oIkCEBdBfOxcW6jWAy4gg6bz5PE/kznGYgYPMXlD7SYlXTb7NwSfOVteX4
         JjCMYFFhMTBzuvzwDA/tDHc9cNpK2LaV/1BvOk0gVoqdrjUwFnVvPSUF83dg1z9Svr0J
         tihyr4CU8PvFjw8+Hn0HonuJcVGq0agZZJJp6SrN33TgUQ7j3zS3nGYMtjGbfHJ0iOaC
         nUIg==
X-Forwarded-Encrypted: i=1; AJvYcCVGD8qMK0X0ojDqIlo7Qqqwfb4OLm/7dbgaqcBFQyN3GFkMTcW/eINAC4fZUqj/3BxbXyN6hGvfJ/AQKVmxtg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0axYNPG4IC1HpLifGgl1Dn88i2i572At3NStMeTjrOJFZPQD3
	frCFxE2OUFS0CP/TB+t0L8eTmOUaoGlTkXysM8aDd+yzMEuEf3Y8kbjao2y62SbfHKX6i+7qHWt
	uq4mS0RNkvp43RGU25nLKggtgwxI=
X-Google-Smtp-Source: AGHT+IGjqnIFhOHt8hQqqDysIqkslkMDsww40WzD+GUYcyzJ2RM/VnTIs5id9OUp76YAk8O1Lbzb38x57yyqf4Rmmp0=
X-Received: by 2002:a05:6870:b487:b0:288:33d1:a95e with SMTP id
 586e51a60fabf-2892c528028mr4349259fac.30.1729319090940; Fri, 18 Oct 2024
 23:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <20241011121408.89890-1-dlemoal@kernel.org> <CANAwSgQ+YmSTqJs3-53nmpmCRKuqfRysT37uHQNGibw5FZhRvg@mail.gmail.com>
 <f13618a6-0922-4fc8-af01-10be1ef95f0d@kernel.org> <CANAwSgRDbCCridYMciq=xSDPV0qGhs-OhCJ_uniXFbp-yM5CcQ@mail.gmail.com>
 <0f2cf12b-3f27-403c-802e-bb8b539766b0@kernel.org>
In-Reply-To: <0f2cf12b-3f27-403c-802e-bb8b539766b0@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 19 Oct 2024 11:54:36 +0530
Message-ID: <CANAwSgRXfZ9hgdJpSrwucHQfMToZwSC8N-b4MYLZjsryid=Fpw@mail.gmail.com>
Subject: Re: [PATCH v4 00/12] Fix and improve the Rockchip endpoint driver
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	Rick Wertenbroek <rick.wertenbroek@gmail.com>, Niklas Cassel <cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_232452_442946_4D3F8151 
X-CRM114-Status: GOOD (  29.48  )
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

Hi Damien,

On Wed, 16 Oct 2024 at 13:38, Damien Le Moal <dlemoal@kernel.org> wrote:
>
> On 10/16/24 4:22 PM, Anand Moon wrote:
> > Hi Damien,
> >
> > On Wed, 16 Oct 2024 at 11:45, Damien Le Moal <dlemoal@kernel.org> wrote:
> >>
> >> On 10/16/24 2:32 PM, Anand Moon wrote:
> >>> Hi Damien,
> >>>
> >>> On Fri, 11 Oct 2024 at 17:55, Damien Le Moal <dlemoal@kernel.org> wrote:
> >>>>
> >>>> This patch series fix the PCI address mapping handling of the Rockchip
> >>>> endpoint driver, refactor some of its code, improves link training and
> >>>> adds handling of the #PERST signal.
> >>>>
> >>>> This series is organized as follows:
> >>>>  - Patch 1 fixes the rockchip ATU programming
> >>>>  - Patch 2, 3 and 4 introduce small code improvments
> >>>>  - Patch 5 implements the .get_mem_map() operation to make the RK3399
> >>>>    endpoint controller driver fully functional with the new
> >>>>    pci_epc_mem_map() function
> >>>>  - Patch 6, 7, 8 and 9 refactor the driver code to make it more readable
> >>>>  - Patch 10 introduces the .stop() endpoint controller operation to
> >>>>    correctly disable the endpopint controller after use
> >>>>  - Patch 11 improves link training
> >>>>  - Patch 12 implements handling of the #PERST signal
> >>>>
> >>>> This patch series depends on the PCI endpoint core patches from the
> >>>> V5 series "Improve PCI memory mapping API". The patches were tested
> >>>> using a Pine Rockpro64 board used as an endpoint with the test endpoint
> >>>> function driver and a prototype nvme endpoint function driver.
> >>>
> >>> Can we test this feature on Radxa Rock PI 4b hardware with an external
> >>> nvme card?
> >>
> >> This patch series is to fix the PCI controller operation in endpoint (EP) mode.
> >> If you only want to use an NVMe device connected to the board M.2 M-Key slot,
> >> these patches are not needed. If that board PCI controller does not work as a
> >> PCI host (RC mode), then these patches will not help.
> >>
> >
> > Thanks for your inputs, I don't think my board supports this feature.
>
> The Rock 4B board uses a RK3399 SoC. So the PCIe port should work as long as
> you have the right device tree for the board. The mainline kernel currently has
> this DT:
>
> rk3399-rock-pi-4b.dts
>
> Which uses
>
> rk3399-rock-pi-4.dtsi
>
> which has:
>
> &pcie0 {
>         ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
>         num-lanes = <4>;
>         pinctrl-0 = <&pcie_clkreqnb_cpm>;
>         pinctrl-names = "default";
>         vpcie0v9-supply = <&vcc_0v9>;
>         vpcie1v8-supply = <&vcc_1v8>;
>         vpcie3v3-supply = <&vcc3v3_pcie>;
>         status = "okay";
> };
>
> So it looks to me like the PCIe port is supported just fine. FOr the PCIe port
> node definition look at rk3399.dtsi and rk3399-base.dtsi.
>
I have a question can new test external low power GPU with external cables
which supports PCI host (RC mode) with external power supply for GPU card.

Which mode is suitable for the PCIe endpoint controller or PCIe host controller?

> --
> Damien Le Moal
> Western Digital Research

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
