Return-Path: <SRS0=K/hu=FS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FE21C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 14:17:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D378022B4B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 14:17:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D378022B4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AhQZpEZLCtMgre3ERfI8eivIPhatOXEitpcnAiEJEu8=; b=lWal/xEZwZzkzB/BNtkw/JZ/g
	D0TRprWqQuyW5a6qKW7dubTFYHzxPJc41gt04xby1FEl6hHND5gjMjOC3KUyWhiJGxBawAWuhfwFc
	e4fB8YmbbQ382BdRgh7XZRTRmNAyUWE8v8FV7Z5+chilqqfQ+xrvYV1WvOAbO+rvy4tvFwf83FNnZ
	HVbJ1y6JjXgY7ZqlSPqipQTXi8VGVICyKhpVNI15BGaNiVKOufDiKweOBUhWh+KWhYAJY4xNBugJm
	oiGA2Q4t9yXBIZMjARhMl8PBk063F2Yc3OxmmeuFVNj6IsL2fJgZCiYT4/UlNF8HEAd+laKiaWvsK
	91ogqBUcw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koofN-0001FG-Fs; Mon, 14 Dec 2020 14:17:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koofJ-0001EY-Gb; Mon, 14 Dec 2020 14:17:30 +0000
X-Gm-Message-State: AOAM531/LL8c49PtDFhQfmpz/WZglllwn9ZmWu57HFvo8xUfgW14/OOF
 ZKtPE/Cj0iKWKYg9v7/04mc1rRa+1DQ1EDz0Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607955448;
 bh=vgF8+AK6GkBkQYu4wyAk0STQnnPO354gKvQ6xqwdcfA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UmexIdARMA6NpqX5l/Ll1YH7GxF2bLQRdPOHD/ZZIUFm5MJNvSr2lKR1TSEU0DJGj
 6l7ix120lUgWQu482Ycgcty7yW3BRqOatZsrfTlM5v65GdoRdrkXX2aywlRUziM3cZ
 qodmZ0IwyS5ZXX1829JWd3FEkE3IP9G+T3diDYTe2wafs3ufzRLzb38pHXL3w05pyl
 5urYUo3XBlIiDijQ+p4vvKG9HNiT6hY+a5Q3xrL4lYRTtiZfwPwyOHs1QbcTvPR81+
 OUPNQzjxhLDJCm56ps8uqr6NkD6bkLaB5W8pFjGl5B2StUSP5umPrtlWGRSfA5Le86
 TqzRm9q75FaQA==
X-Google-Smtp-Source: ABdhPJzYRe4IfcaOp8gXNnir2xIHkexB7fAKbIAKD+/2t8UmLHcMcL+EMxw9BMGG2PCerqzkxj+BwlEdA4xVCD10jVg=
X-Received: by 2002:aa7:d154:: with SMTP id r20mr26170869edo.258.1607955447089; 
 Mon, 14 Dec 2020 06:17:27 -0800 (PST)
MIME-Version: 1.0
References: <20201118071724.4866-1-wens@kernel.org>
 <20201118071724.4866-2-wens@kernel.org>
 <CAL_JsqJphYYUsQR_kLH_y1gOArTifpEVUiTJfDpDsL8WjGxRfA@mail.gmail.com>
 <CAGb2v6409SeptNUvMnpozriZ-L7iFCFFoG+=fJrtohxezDrEDQ@mail.gmail.com>
In-Reply-To: <CAGb2v6409SeptNUvMnpozriZ-L7iFCFFoG+=fJrtohxezDrEDQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 14 Dec 2020 08:17:15 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+0fMQkqYZ0W0eqnB+J016n-VnBm0TM2Hv1nqhO8_yUbQ@mail.gmail.com>
Message-ID: <CAL_Jsq+0fMQkqYZ0W0eqnB+J016n-VnBm0TM2Hv1nqhO8_yUbQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: Make 'ep-gpios' DT property optional
To: Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201214_091729_696630_28FE469B 
X-CRM114-Status: GOOD (  25.91  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Dec 12, 2020 at 9:18 AM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> On Mon, Dec 7, 2020 at 10:11 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Wed, Nov 18, 2020 at 1:17 AM Chen-Yu Tsai <wens@kernel.org> wrote:
> > >
> > > From: Chen-Yu Tsai <wens@csie.org>
> > >
> > > The Rockchip PCIe controller DT binding clearly states that 'ep-gpios' is
> > > an optional property. And indeed there are boards that don't require it.
> > >
> > > Make the driver follow the binding by using devm_gpiod_get_optional()
> > > instead of devm_gpiod_get().
> > >
> > > Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
> > > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> > > Fixes: 964bac9455be ("PCI: rockchip: Split out rockchip_pcie_parse_dt() to parse DT")
> > > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > > ---
> > > Changes since v1:
> > >
> > >   - Rewrite subject to match existing convention and reference
> > >     'ep-gpios' DT property instead of the 'ep_gpio' field
> > > ---
> > >  drivers/pci/controller/pcie-rockchip.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> > > index 904dec0d3a88..c95950e9004f 100644
> > > --- a/drivers/pci/controller/pcie-rockchip.c
> > > +++ b/drivers/pci/controller/pcie-rockchip.c
> > > @@ -118,7 +118,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> > >         }
> > >
> > >         if (rockchip->is_rc) {
> > > -               rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
> > > +               rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
> > >                 if (IS_ERR(rockchip->ep_gpio)) {
> > >                         dev_err(dev, "missing ep-gpios property in node\n");
> >
> > You should drop the error message. What it says is now never the
> > reason for the error and it could most likely be a deferred probe
> > which you don't want an error message for.
>
> What about switching to dev_err_probe() instead?
>
> That way deferred probe errors get silenced (or get a better debug message),
> and error messages for other issues, such as miswritten gpio properties are
> still produced.

I guess, but those errors should be in the subsystem code IMO rather
than every driver.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
