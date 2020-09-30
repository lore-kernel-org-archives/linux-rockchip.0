Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD889C4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 16:27:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 13CF12072E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 16:27:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZRy5lDyu";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ragnatech-se.20150623.gappssmtp.com header.i=@ragnatech-se.20150623.gappssmtp.com header.b="nrxha9o+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 13CF12072E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ragnatech.se
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YwROOMUrkxZp3JaDDia8X9yzmZ+8eJTCW7Ijjyqv4tw=; b=ZRy5lDyuYhNfk0KC9x+BCaAUD
	pcKnGw9wxadL72zaMElsCgTuBug3TWwX4RjvWbZchWV0n09lwNEAN9h0hwRvakVGMBWQuiw/4C+pm
	KoORacn66lMMBakByb6P0tJKeqIsKHjk0sQIWWj8KrvYmLlYWwrQ77fd2O5j0m9/RQ2bG2LEqp7FI
	Ui9o+iLNFh2V1h13diiV2Ab6HOS6JKangPOodBM93xJh7tqvTDv09edzIeYeUyUtyqX0XptZjLmbP
	lhkm33oDuCd14P2rlmNZcwuNgtIyqnXKCnFeV9ah6+hpN4mrv+GfKAoCrWwBubtuJJNUyDTEt4L3t
	lc7ZB4FFg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNex7-0005Wr-Kv; Wed, 30 Sep 2020 16:27:37 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNeww-0005QT-Da
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 16:27:33 +0000
Received: by mail-lf1-x142.google.com with SMTP id y11so2896450lfl.5
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 09:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SDgDsKonRl9jKYsZXyPmbBwG+e3LnZR8gLRHIxhxmiU=;
 b=nrxha9o+yENidrz+UzMaKu4BoX+lo90cT7XY4QgLsjnRDLNQGJGSY9uD1gZ1j95+BM
 fVFFaU/yWA/EXnIH8o/IHp+xG0AZK7WvY7szYAyny8WO7MsWZW//FlllvvSbwJ8wkiDj
 KHNfyLIK6B8sQit/STZHE2/Itu8DMOoajo9TPMv3epsIUxBwK8dcoOpi4haOWBvAaUry
 QSGWlitgBAnG+TtFQ5p12/3ir2eSAoXN0tZfvwH4m1dV7QmPemwezQ76O3PT6P4SjC11
 GM8JEUZ2PlA1IJxMfHmaglslwpuWtWoItwMASrNjVxGkosSmWg2qqLcUfk+H+ixAOJPi
 1LpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SDgDsKonRl9jKYsZXyPmbBwG+e3LnZR8gLRHIxhxmiU=;
 b=osp44kBCn2TBXFRFjAWf7r2OfCg87LyS0e4FJEzfJTt/QXG4IlC+LMQjWOrJ24CqUn
 ECiPXqg+Gr7glzJ2lGjGVlJS2tQjUTqJo8f0YXPEqpRbO+p/udzMCOA3dHGUws35hGI3
 MRoBu2b2z0Fv0MvH+U6GuS/RsPvMvQN6+L0JTN6XnJRL3vVBbfoh3uaL9P8X6hynb0pY
 4n8YhXKiGjZ5hTqZlO4faZYNGKXhYMlFxCasfRj6+e8U9TK6ZR5rc1ioF7zd3dALgvc4
 a3wi37Ehx4GP7an5mmBsHetWYZwt5biP3sVAQoaN7HcCWwLR0WyJ2MJJ/7dLtbAyOnvQ
 hsIg==
X-Gm-Message-State: AOAM532ZsBDRNeOSHG8gnikZDvvfUR8a5+kG0zfT89dnMfUzwMLPjI1s
 6pOqtKoZoBly6C8wVcReGydsmQ==
X-Google-Smtp-Source: ABdhPJwT3egLNqlOPdmJqDBfOvuBtNjLqFSOvCK/N7g6m3nbAMLWYxg8FpxRpAbVie8oM/srAUTQxw==
X-Received: by 2002:a19:942:: with SMTP id 63mr1224078lfj.23.1601483243337;
 Wed, 30 Sep 2020 09:27:23 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
 by smtp.gmail.com with ESMTPSA id l129sm242018lfd.279.2020.09.30.09.27.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 09:27:22 -0700 (PDT)
Date: Wed, 30 Sep 2020 18:27:22 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] of: address: Work around missing device_type property
 in pcie nodes
Message-ID: <20200930162722.GF1516931@oden.dyn.berto.se>
References: <20200819094255.474565-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819094255.474565-1-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_122726_606306_9E54EA06 
X-CRM114-Status: GOOD (  33.76  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-kernel@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, kernel-team@android.com,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Marc,

I'm afraid this commit breaks booting my rk3399 device.

I bisected the problem to this patch merged as [1]. I'm testing on a =

Scarlet device and I'm using the unmodified upstream  =

rk3399-gru-scarlet-inx.dtb for my tests.

The problem I'm experience is a black screen after the bootloader and =

the device is none responsive over the network. I have no serial console =

to this device so I'm afraid I can't tell you if there is anything =

useful on to aid debugging there.

If I try to test one commit earlier [2] the system boots as expected and =

everything works as it did for me in v5.8 and earlier. I have worked =

little with this device and have no clue about what is really on the PCI =

buss. But running from [2] I have this info about PCI if it's helpful, =

please ask if somethings missing.

# dmesg | grep -i pci
[    0.003943] PCI/MSI: /interrupt-controller@fee00000/interrupt-controller=
@fee20000 domain created
[    0.922022] PCI: CLS 0 bytes, default 64
[    0.941517] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 rang=
es:
[    0.941577] rockchip-pcie f8000000.pcie:      MEM 0x00fa000000..0x00fbef=
ffff -> 0x00fa000000
[    0.941962] rockchip-pcie f8000000.pcie: GPIO lookup for consumer ep
[    0.941981] rockchip-pcie f8000000.pcie: using device tree for GPIO look=
up
[    0.942018] of_get_named_gpiod_flags: parsed 'ep-gpios' property of node=
 '/pcie@f8000000[0]' - status (0)
[    0.942255] rockchip-pcie f8000000.pcie: no vpcie12v regulator found
[    4.196248] ehci-pci: EHCI PCI platform driver
[    4.214639] ohci-pci: OHCI PCI platform driver


# ls /sys/bus/{pci,pci_express}/devices
/sys/bus/pci/devices:

/sys/bus/pci_express/devices:


# ls /sys/bus/{pci,pci_express}/drivers
/sys/bus/pci/drivers:
cavium_rng_pf  cavium_rng_vf  dwc3-haps  ehci-pci  exar_serial  ohci-pci  p=
cieport  serial  xhci_hcd

/sys/bus/pci_express/drivers:
pcie_pme


# ls /sys/bus/platform/drivers/rockchip-{pcie,pcie-phy}
/sys/bus/platform/drivers/rockchip-pcie:
bind  uevent  unbind

/sys/bus/platform/drivers/rockchip-pcie-phy:
bind  ff770000.syscon:pcie-phy  uevent  unbind

1. d1ac0002dd297069 ("of: address: Work around missing device_type property=
 in pcie nodes")
2. 43647929175e2cd3 ("dt: writing-schema: Miscellaneous grammar fixes")

On 2020-08-19 10:42:55 +0100, Marc Zyngier wrote:
> Recent changes to the DT PCI bus parsing made it mandatory for
> device tree nodes describing a PCI controller to have the
> 'device_type =3D "pci"' property for the node to be matched.
> =

> Although this follows the letter of the specification, it
> breaks existing device-trees that have been working fine
> for years.  Rockchip rk3399-based systems are a prime example
> of such collateral damage, and have stopped discovering their
> PCI bus.
> =

> In order to paper over it, let's add a workaround to the code
> matching the device type, and accept as PCI any node that is
> named "pcie",
> =

> A warning will hopefully nudge the user into updating their
> DT to a fixed version if they can, but the incentive is
> obviously pretty small.
> =

> Fixes: 2f96593ecc37 ("of_address: Add bus type match for pci ranges parse=
r")
> Suggested-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/of/address.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 590493e04b01..b37bd9cc2810 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -128,15 +128,29 @@ static unsigned int of_bus_pci_get_flags(const __be=
32 *addr)
>   * PCI bus specific translator
>   */
>  =

> +static bool of_node_is_pcie(struct device_node *np)
> +{
> +	bool is_pcie =3D of_node_name_eq(np, "pcie");
> +
> +	if (is_pcie)
> +		pr_warn_once("%pOF: Missing device_type\n", np);
> +
> +	return is_pcie;
> +}
> +
>  static int of_bus_pci_match(struct device_node *np)
>  {
>  	/*
>   	 * "pciex" is PCI Express
>  	 * "vci" is for the /chaos bridge on 1st-gen PCI powermacs
>  	 * "ht" is hypertransport
> +	 *
> +	 * If none of the device_type match, and that the node name is
> +	 * "pcie", accept the device as PCI (with a warning).
>  	 */
>  	return of_node_is_type(np, "pci") || of_node_is_type(np, "pciex") ||
> -		of_node_is_type(np, "vci") || of_node_is_type(np, "ht");
> +		of_node_is_type(np, "vci") || of_node_is_type(np, "ht") ||
> +		of_node_is_pcie(np);
>  }
>  =

>  static void of_bus_pci_count_cells(struct device_node *np,
> -- =

> 2.27.0
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- =

Regards,
Niklas S=F6derlund

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
