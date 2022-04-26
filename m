Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 386D4C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 12:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yVQZ9fq36OXvCvHjeiGeq/jZeL0dexdIYz8immfaRI=; b=cj6fzWo8qF18fB
	4XYQyPWLur4JpWlZd/onRxmuVmtpXTN+01fueqdNtCYbjnN6V0Wn/dKm48F5dxRqOTwcASwqNB89C
	PI2Np6s5o7pGiUi5lvb1vwztBNMftS9ti9bdqRPpJW1FPGolt6VAH+ENZ46qfE+WuPl4fQg/3CrPN
	9owAP04DRSUfaa4K6lFemEweCRPIYNhNC1ZSWHmYDnBXBYT1MHqDVAEVIXJ4C9aun1JsOZERZJAZY
	g3z+mo088Yizu9dhHZpXnnx0uySgcxdsN+XK7qzV76t6zm1wegs7cuyEpGQrz4GqT20P9qVPqT6d8
	g8NLiWgHYls6EgRMlIvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njK8V-00EDfs-JG; Tue, 26 Apr 2022 12:17:43 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njK8S-00EDe5-PT; Tue, 26 Apr 2022 12:17:42 +0000
Received: by mail-yb1-xb33.google.com with SMTP id s30so4613792ybi.8;
 Tue, 26 Apr 2022 05:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D8bMngWVr0tdDN5yiWTr4GCLxeSgF3V3y+tGLoxVCwE=;
 b=PRM6gHAykZCXpCQH5Wk8cGO282pG77Ww8omQDxG+iNICtf6Y583Iv1oDHwR5jgWxlv
 hAiVerTzW/WBglfZmwOJeATGGNFIGUeSBqNrcr1+yyGzL+Piy9ke9uKErf72U57iZpfB
 ajJOW7YzJzLMQxtZiYmfusltKmmh23XSC/j6g0WP7/Xh7aIB6BHo6cqwSSnGcoOO1y+D
 rjxcH30lURrv6o3dnfN8aydhCKNWBXPMjlg4Kjk+r59/we0DKUZGfhBqhOBpL62mLNDZ
 VcE0iElzzWysREq918Ia6i8+mbxC9Vc36Lo72l1Q51v6XPgU/C/fZjbh78GsiSqTgAls
 i+qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D8bMngWVr0tdDN5yiWTr4GCLxeSgF3V3y+tGLoxVCwE=;
 b=k7a/1snN0L4+p26AozbJ4pJGCzsNNRMoRGqoF/D3IRJz8f+a73HscTTod2Kcelkhwq
 AHCSPMK+Wyex9gbz0baUXLFNTCtNJ/k8RWgOR6cgxYAf9eQnao88s8AV7uyhqX3yzMoF
 ZQKma9JNR0pPDMTtFU3Gw7v4rgXWWAdH6UafGzSH9ZpeHXghHJ7jYXgynhPv9g/GiU7/
 +22HbpqEyB5arrG/W9CaihRFYUGCQIeLHz3Ole8ETxFrbdqDit+N6G5Oty+MWlrNOAP6
 r+84nhtxcD7zQwGjrP3oAKyWWSXdTTjP4CbkOK7Xh8W5K47/hH42fO4Dbw9UGqZVeAvr
 +LPg==
X-Gm-Message-State: AOAM532gch/8FcJ1GjCNz4/Up0g2M75Pj1Wx03S6+XyMT9CKb54ChdNB
 u7A+QIe/NwLUXQO4GSA7icMn0mKwP/QnDZ2UmrY=
X-Google-Smtp-Source: ABdhPJx0rpcQBG6rCBtHajN61Ati9nYNIN0fnUTzxWuvy/zu9z0hhhANAao1ToRixhOUAakqrY5Nme82QpTApzdY0j0=
X-Received: by 2002:a05:6902:143:b0:628:7cf1:f2a9 with SMTP id
 p3-20020a056902014300b006287cf1f2a9mr19922108ybh.51.1650975458538; Tue, 26
 Apr 2022 05:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220423152403.1681222-1-pgwipeout@gmail.com>
 <20220423152403.1681222-3-pgwipeout@gmail.com>
 <25fbf4763c28af4c73162dec254af6111e05461b.camel@pengutronix.de>
In-Reply-To: <25fbf4763c28af4c73162dec254af6111e05461b.camel@pengutronix.de>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 26 Apr 2022 08:17:26 -0400
Message-ID: <CAMdYzYpw-vUFTM=pmnASNrWvi0X4mM0hFKX7TRLHhJyehfuHkw@mail.gmail.com>
Subject: Re: [PATCH v8 2/5] PCI: dwc: rockchip: reset core at driver probe
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, 
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>, 
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_051740_862394_9F1584C9 
X-CRM114-Status: GOOD (  21.00  )
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

On Mon, Apr 25, 2022 at 5:20 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> Hi Peter,
>
> On Sa, 2022-04-23 at 11:24 -0400, Peter Geis wrote:
> > The PCIe controller is in an unknown state at driver probe. This can
> > lead to undesireable effects when the driver attempts to configure the
> > controller.
> >
> > Prevent issues in the future by resetting the core during probe.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 22 +++++++------------
> >  1 file changed, 8 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > index c9b341e55cbb..d67ed811e752 100644
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -152,7 +152,13 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
> >       if (IS_ERR(rockchip->rst_gpio))
> >               return PTR_ERR(rockchip->rst_gpio);
> >
> > -     return 0;
> > +     rockchip->rst = devm_reset_control_array_get_exclusive(&pdev->dev);
> > +     if (IS_ERR(rockchip->rst))
> > +             return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst),
> > +                                  "failed to get reset lines\n");
> > +
> > +     return reset_control_assert(rockchip->rst);
>
> This makes "rockchip_pcie_resource_get" a bit of a misnomer, maybe move
> this out into rockchip_pcie_probe()?

Ah, yes that does make sense, thanks.

>
> > +
>
> Superfluous whitespace.
>
> regards
> Philipp
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
