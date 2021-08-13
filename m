Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3695C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 13:34:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2A146109D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 13:34:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D2A146109D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sci+Vq82+togTn/xEvWmeg8Tw81asw9/V8043vmSnu4=; b=oNMyThOxqT96hY
	NOJiwX9rZRKUrMHrwvlci/ZrSDOgjMy3UZJgQTVd9n3Mz7gOReIf35fkhQn1Bq973JEmuLid5KXrU
	tT2kXvUoq7e2bRyfKOXyYjyfwGcE16ePRAkxdayj+2atUJgHipKksOtqy/M4SrBsjTSANFhC1esud
	bV2Dbv+tq0/y2Wyo7ADESnUcCFqoHyxdp0RJBfMlsTxE35WA2yyth9un/bR4ypBbxPyjjEDAUYxoH
	AG1dG+qHQNNTjX+GCrBixYIvG8OWlA4JPyJwHljORPZM/G7GUuH/wMBVUeH4/01ClVoYoWfz7/d8v
	xN6yCcqDwpRHGj3hoxQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEXKa-00CgoX-3w; Fri, 13 Aug 2021 13:34:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEXKM-00Cgni-Sg; Fri, 13 Aug 2021 13:34:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D123610EA;
 Fri, 13 Aug 2021 13:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628861665;
 bh=9Qb86SEcqSX6DL3UPIPIbuJjCwOh3exFov3A37CTFTA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=A9DVApuuX8cKZ+y7eUG2FZQkxImAiO+5Y7okEril/Wj/QfqCw2kPhb8iqtVXoYkoI
 0cu2T8dCz6WK046poLS5ez0WKw3gMu4+MQoRqSO7c66ZWT3X2uECu1AMMfBhVAavKb
 SI32RXrbt5aZUeYfh7T/oFy/R65CvG3eStm5udvgorbfmgPWHmCpHqNLgGxk4wN9TB
 H2IUuiq5FJwNVjXb3F1sUesXJbXJko5JzPJMMIDsBIxEN5PuWxHBzccQgOsO1Cu6vZ
 iA790T9c3waU7y/Xo5SAoSvlMjAeoWDtWcGHMDUWil6nfoh7sJVKrAO2Y51mQuYrrE
 r7PPEsSiHvOLQ==
Received: by mail-ej1-f45.google.com with SMTP id bt14so2545793ejb.3;
 Fri, 13 Aug 2021 06:34:25 -0700 (PDT)
X-Gm-Message-State: AOAM531xwtuGcLaM/9T744uJvlSd5DqKE4wfwU+gV8S0peaOowAIPuaW
 1jyYk/7sk2Yj3BWxizIaZYasTpnUNXdnkNzrPw==
X-Google-Smtp-Source: ABdhPJxykWQAAdheo/ybHO8yXMFnNnbUNOwuVGCk/NVi5KQsWbsVMBqVHL+sFluDbVY0htG/vh471fwCFjdLoezEmCQ=
X-Received: by 2002:a17:906:8cd:: with SMTP id
 o13mr2457754eje.341.1628861663642; 
 Fri, 13 Aug 2021 06:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com>
In-Reply-To: <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 13 Aug 2021 08:34:11 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ4Dadf00pJxEDd14zbWyN99s1A2L4fxZSkZddeg2pV6g@mail.gmail.com>
Message-ID: <CAL_JsqJ4Dadf00pJxEDd14zbWyN99s1A2L4fxZSkZddeg2pV6g@mail.gmail.com>
Subject: Re: [PATCH] PCI: rockchip-dwc: Potential error pointer dereference in
 probe
To: Robin Murphy <robin.murphy@arm.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Simon Xue <xxm@rock-chips.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Kever Yang <kever.yang@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
 PCI <linux-pci@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 kernel-janitors@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_063426_997810_388C4902 
X-CRM114-Status: GOOD (  21.16  )
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

On Fri, Aug 13, 2021 at 7:55 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-08-13 12:33, Dan Carpenter wrote:
> > If devm_regulator_get_optional() returns an error pointer, then we
> > should return it to the user.  The current code makes an exception
> > for -ENODEV that will result in an error pointer dereference on the
> > next line when it calls regulator_enable().  Remove the exception.
>
> Doesn't this break the apparent intent of the regulator being optional,
> though?

I'm pretty sure 'optional' means ENODEV is never returned. So there
wasn't any real problem, but the check was unnecessary.

>
> Robin.
>
> > Fixes: e1229e884e19 ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >   drivers/pci/controller/dwc/pcie-dw-rockchip.c | 5 ++---
> >   1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > index 20cef2e06f66..2d0ffd3c4e16 100644
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -225,9 +225,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
> >       /* DON'T MOVE ME: must be enable before PHY init */
> >       rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
> >       if (IS_ERR(rockchip->vpcie3v3))
> > -             if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
> > -                     return dev_err_probe(dev, PTR_ERR(rockchip->vpcie3v3),
> > -                                     "failed to get vpcie3v3 regulator\n");
> > +             return dev_err_probe(dev, PTR_ERR(rockchip->vpcie3v3),
> > +                                  "failed to get vpcie3v3 regulator\n");
> >
> >       ret = regulator_enable(rockchip->vpcie3v3);
> >       if (ret) {
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
