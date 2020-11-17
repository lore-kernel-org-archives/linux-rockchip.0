Return-Path: <SRS0=Nc53=EX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97734C2D0E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 03:45:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1DF520643
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 03:45:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Fms4tzrf";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjjlEIGg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1DF520643
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uHPk6/JO7gMyPuD8i52fu4iKut7gsUYLOxnN7NKbP0A=; b=Fms4tzrfwHXsDtZg6X7VWj9Gj
	FOWMw1qTiFomujfiZ2XzkOHDkTuZdAkTWtmwRHEz2xoMTRo20+9vaC/ykTsLopUIsvwkUpzGrBs83
	lfqgFCcGcnbSbvlzFzb1HMRBwtD3AeepqHD4EZMae8cxUpjXh3hyDGveT5b9XuORbqlhJ4rpzFhRj
	U1P6KwyKppoQPUkwFkDe4g8CL4DXLy2RuUy5IiUdpgWGEYtnuUzposha2zy1pwjXUkvcNEv4LxlfQ
	AhCKZhhCvpj/y6HOEbR5FwIZfQs8HY4bN6UKiD49f256bMxU67TT7/Vc4lHUYtWGvqq0tTpAGbLOF
	uBjBNadiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kervq-0007LD-AU; Tue, 17 Nov 2020 03:45:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kervn-0007KZ-AF; Tue, 17 Nov 2020 03:45:24 +0000
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0F24246A9;
 Tue, 17 Nov 2020 03:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605584722;
 bh=drQcFzeE83tYePhTQAMPI109uNcJDc7j2Dq1wNZibSE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VjjlEIGgDNDhib3HCD/ecC6ccR7GzEYF9OdOftw9gAYWzFub+Viwl4q+IUWmwlF2Y
 urB1uwAis2lyOonRS8IIOXWG7VEZDmC46HVF66jLRVxYfRJMqqivSXdPv+26HnOiVm
 AKMffiOwCL+v1YuqZgKBoeN/92pD/1KELFik5mvQ=
Received: by mail-lf1-f53.google.com with SMTP id r9so28194271lfn.11;
 Mon, 16 Nov 2020 19:45:21 -0800 (PST)
X-Gm-Message-State: AOAM531dYK6Fu3qm+jXBTHKjVeFYdWc9OmnjqDZCnNLcf4jIP6eaIbow
 XHjG8KvCPFiRmu+4OWULKNISH8VWip26G08CyOY=
X-Google-Smtp-Source: ABdhPJwu9KvFb4x2d38z4QPfSz9ugM2w2KFYs5tx1WnJv/d/x+L//RCuQWZUkx1an8X909f+rrZEhLo/Hs797o1lGpM=
X-Received: by 2002:a19:c354:: with SMTP id t81mr860303lff.283.1605584720130; 
 Mon, 16 Nov 2020 19:45:20 -0800 (PST)
MIME-Version: 1.0
References: <20201116075215.15303-2-wens@kernel.org>
 <20201116164159.GA1282970@bjorn-Precision-5520>
In-Reply-To: <20201116164159.GA1282970@bjorn-Precision-5520>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 17 Nov 2020 11:45:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v66mMMQmQYay0EVREiQYmSvefmvbsFSCN=C3qG22P8U5HA@mail.gmail.com>
Message-ID: <CAGb2v66mMMQmQYay0EVREiQYmSvefmvbsFSCN=C3qG22P8U5HA@mail.gmail.com>
Subject: Re: [PATCH 1/4] PCI: rockchip: make ep_gpio optional
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_224523_553196_355C4BC0 
X-CRM114-Status: GOOD (  25.90  )
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
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Nov 17, 2020 at 12:42 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> Run "git log --oneline drivers/pci/controller/pcie-rockchip.c" (or
> even just look at the Fixes: commits you mention) and follow the
> convention, e.g.,
>
>   PCI: rockchip: Make 'ep-gpios' DT property optional
>
> Also, you used 'ep_gpio' (singular, with an underline) in the subject
> but 'ep-gpios' (plural, with hyphen) in the commit log.  The error
> message and Documentation/devicetree/bindings/pci/rockchip-pcie-host.txt
> both say 'ep-gpios' (plural, with hyphen).

'ep_gpio' refers to the variable used within the driver. But reading it
again, it does seem kind of weird. I will rewrite it to be more consistent.

ChenYu

> Please fix so this is all consistent.  Details matter.
>
> On Mon, Nov 16, 2020 at 03:52:12PM +0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > The Rockchip PCIe controller DT binding clearly states that ep-gpios is
> > an optional property. And indeed there are boards that don't require it.
> >
> > Make the driver follow the binding by using devm_gpiod_get_optional()
> > instead of devm_gpiod_get().
> >
> > Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
> > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> > Fixes: 964bac9455be ("PCI: rockchip: Split out rockchip_pcie_parse_dt() to parse DT")
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >  drivers/pci/controller/pcie-rockchip.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> > index 904dec0d3a88..c95950e9004f 100644
> > --- a/drivers/pci/controller/pcie-rockchip.c
> > +++ b/drivers/pci/controller/pcie-rockchip.c
> > @@ -118,7 +118,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> >       }
> >
> >       if (rockchip->is_rc) {
> > -             rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
> > +             rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
> >               if (IS_ERR(rockchip->ep_gpio)) {
> >                       dev_err(dev, "missing ep-gpios property in node\n");
> >                       return PTR_ERR(rockchip->ep_gpio);
> > --
> > 2.29.1
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
