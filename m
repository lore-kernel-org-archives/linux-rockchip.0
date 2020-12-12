Return-Path: <SRS0=DTRJ=FQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4299DC4361B
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Dec 2020 15:18:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 398EE2247F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Dec 2020 15:18:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 398EE2247F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hyIRTv1SQj1SXnxdVAlFPWdk0XHfrOUWa0LuqkYTv/0=; b=W4REAKOJBpdS/GjxVGAvpUPO5
	OMbmDKZEr+S6NXZS7leYhqbyUemos4U86ZEtgAU3uND7INd1oJj4BRpoKxg9TOM9c3M63BOghmyKD
	yp1fAiWdHpQ3dC5FdwS+7kcRH6WYubdthAswnmoMymtS7xW5DSETmydEMxGYsXIGip4i7qTsDI7gV
	/oAe5x1Vm1BZEer/XXvdt5XDE/G9uQQaN+e/9gf1w1qunwCyAdmKI8Of6lWY82m8Gq4t53f+qa/cm
	CqcGonbTMJdzqlwbH+3dGhiaXhq/Mdau9EQeB6FJJAL3JCuf+uC6wcvspPZFzZqOuRCsNNOgRk75k
	gnz7PwV7Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ko6fP-0007WS-0C; Sat, 12 Dec 2020 15:18:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ko6fK-0007Vn-FD; Sat, 12 Dec 2020 15:18:35 +0000
X-Gm-Message-State: AOAM530jWrRjvVEbHreOPKJsi7XVz2NnLu1Lk7vaLFfVxksq7Va6xL5q
 HGJSM9WXgvp4c/2PIv5BmZsszcJfnFc+1iFgs38=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607786311;
 bh=psS0hu2IUIHN0p65FsTtGV4EUTtLG77MUOh+AZo/pFQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RmFUg1o5T+2sP8kQE8wa7IRy+eKJo5EB9Gh6xs3WbV2I5d+MTIBbS4YUCVy94Z8S/
 rs119tEMc8dJogiB88HTo3QzFZaReIkLWA8mDrP3WEpjmzAWNglqghpD9zk9EZenad
 91ZdRJEOzgl3NsT5MJ5lsEaSK5mIpKSOals2+XUqWFRDAmbI+/5i/gABtOl2UFTa0s
 RSPNcCwgf1tNBTn3Ptckf37nnREh+LBol2X7QYPZaNAR0F7DpiWexMD3vj6ijbFbYJ
 ouatYiF+r0HIa6aBWBUD5LUPrG+1KTTWQ8pKO67Gx5wyw9n8yTuv3PU/WAVGVujGhz
 v9V3IqYY/d4KQ==
X-Google-Smtp-Source: ABdhPJyYQRTgL1rTSEK+bKujyRCO/OeCso0uNE89jr89FeehL7hSSu8lYv+6qAr6DfcKWjb3JSUKkYAcGQNDLHbUEbQ=
X-Received: by 2002:a67:fd88:: with SMTP id k8mr15795093vsq.17.1607786310790; 
 Sat, 12 Dec 2020 07:18:30 -0800 (PST)
MIME-Version: 1.0
References: <20201118071724.4866-1-wens@kernel.org>
 <20201118071724.4866-2-wens@kernel.org>
 <CAL_JsqJphYYUsQR_kLH_y1gOArTifpEVUiTJfDpDsL8WjGxRfA@mail.gmail.com>
In-Reply-To: <CAL_JsqJphYYUsQR_kLH_y1gOArTifpEVUiTJfDpDsL8WjGxRfA@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sat, 12 Dec 2020 23:18:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v6409SeptNUvMnpozriZ-L7iFCFFoG+=fJrtohxezDrEDQ@mail.gmail.com>
Message-ID: <CAGb2v6409SeptNUvMnpozriZ-L7iFCFFoG+=fJrtohxezDrEDQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: Make 'ep-gpios' DT property optional
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201212_101834_640710_23D2735F 
X-CRM114-Status: GOOD (  23.67  )
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
 Chen-Yu Tsai <wens@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Dec 7, 2020 at 10:11 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Nov 18, 2020 at 1:17 AM Chen-Yu Tsai <wens@kernel.org> wrote:
> >
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > The Rockchip PCIe controller DT binding clearly states that 'ep-gpios' is
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
> > Changes since v1:
> >
> >   - Rewrite subject to match existing convention and reference
> >     'ep-gpios' DT property instead of the 'ep_gpio' field
> > ---
> >  drivers/pci/controller/pcie-rockchip.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> > index 904dec0d3a88..c95950e9004f 100644
> > --- a/drivers/pci/controller/pcie-rockchip.c
> > +++ b/drivers/pci/controller/pcie-rockchip.c
> > @@ -118,7 +118,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> >         }
> >
> >         if (rockchip->is_rc) {
> > -               rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
> > +               rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
> >                 if (IS_ERR(rockchip->ep_gpio)) {
> >                         dev_err(dev, "missing ep-gpios property in node\n");
>
> You should drop the error message. What it says is now never the
> reason for the error and it could most likely be a deferred probe
> which you don't want an error message for.

What about switching to dev_err_probe() instead?

That way deferred probe errors get silenced (or get a better debug message),
and error messages for other issues, such as miswritten gpio properties are
still produced.

ChenYu

> >                         return PTR_ERR(rockchip->ep_gpio);
> > --
> > 2.29.1
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
