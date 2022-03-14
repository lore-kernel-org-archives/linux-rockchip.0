Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2642C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 21:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFvRFAFWf5guLMYMCUkpYGce0AavEtcPJ/a+/Du2jOE=; b=2f1PtGmHQe4fXC
	dUmSybZ6HUdUz6c1aifh2GycTedQLyQgF28zaVJLTYHFUQ25JgLzkoPMFS6uCWUp6vjBFtaFjFzJl
	7NH2S85uWANfw6rgQTzNgQewTa9kH18KzvdApfimWhT6YUIyXxC2i88rHk2++dqMHGqnfCg5tssSj
	v1aThyuVE+wG9eIQTTcBXTqcGwnNDBXl0Ezyes9g7hmy62OOO1e+P50AGQVZJ5M3dkdIk3y0KG+F1
	S6evSYfVH9rGxxM2O/T9Do2VJPZfCPsqRALmtKpxZ5rVdtNWcayvzh+KibCvCqZV/qFfAaQd9zTbo
	75LUTzkCQEXLsrPJrO3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTsaP-006wvb-Fi; Mon, 14 Mar 2022 21:50:41 +0000
Received: from mail-io1-f43.google.com ([209.85.166.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTsaD-006wsE-Hv; Mon, 14 Mar 2022 21:50:30 +0000
Received: by mail-io1-f43.google.com with SMTP id w7so20056499ioj.5;
 Mon, 14 Mar 2022 14:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CGEh5iCMps2XS5R44sd7XPYTqLJq0sP1C+L9zYhWYlI=;
 b=By1NhMokdUxy3vthWnNShlTJ5Km61ZgTTsos4hkH1ScwfxfGfcpzmIBhlZ0u39ny0o
 zRqn5+bKkPWWtnsxeP0czsWi7XLJ6B7NyPKgon5o27wOBtvcUDQLm/gUT6pb5VvzokL7
 N11Dj38XRNr+Ceb2nrD40WA1lCqYcgA9ESQBAGLYdXzle8f9jn8ak8x4e7enQ14NoK/A
 x4/DaC+9EVuiIZCw1NvxbJIZmH9GVxrnyfDsTTeiEPNux3VOlKQ3UbEIiAnIofTKHRdH
 MVYmi9PgbyhEG1DfQs11Qo0u/DsEmKRZkm6d4scb0rfD+rzPLZTcU76g2ye4ZBByV9tb
 we4g==
X-Gm-Message-State: AOAM530zWCFUO3yaiRoAI70oRDnX3jVSz5wjfMxY3wlnr2wyhMlF1EiK
 bPtZopEF/71VTUWvucgeRw==
X-Google-Smtp-Source: ABdhPJweO3VWhgxdwP7gQ1lIiOQaKbWSgKSaZY/XLgS/m78dLb5ar/Nckf4Npe8/Eq4Iw9CzsqdXRQ==
X-Received: by 2002:a02:bb8c:0:b0:317:b015:1998 with SMTP id
 g12-20020a02bb8c000000b00317b0151998mr21388886jan.134.1647294628516; 
 Mon, 14 Mar 2022 14:50:28 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id
 c12-20020a056e02058c00b002c63f71c7dbsm9137733ils.56.2022.03.14.14.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 14:50:27 -0700 (PDT)
Received: (nullmailer pid 623447 invoked by uid 1000);
 Mon, 14 Mar 2022 21:50:24 -0000
Date: Mon, 14 Mar 2022 15:50:24 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Frank Wunderlich <linux@fw-web.de>,
 devicetree@vger.kernel.org, Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: Re: [PATCH v6 3/6] ARM: dts: spear13xx: Fix sata node name
Message-ID: <Yi+4oN5xuS2pq0ru@robh.at.kernel.org>
References: <20220311210357.222830-1-linux@fw-web.de>
 <20220311210357.222830-4-linux@fw-web.de>
 <20220314034940.rxkgue2kllnqhucp@vireshk-i7>
 <trinity-0f1389c2-6d2b-4499-a2fc-3cb93f4d09cb-1647272336831@3c-app-gmx-bap56>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-0f1389c2-6d2b-4499-a2fc-3cb93f4d09cb-1647272336831@3c-app-gmx-bap56>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_145029_641328_7ECCD592 
X-CRM114-Status: GOOD (  17.92  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Mar 14, 2022 at 04:38:56PM +0100, Frank Wunderlich wrote:
> Hi,
> =

> thanks for for checking the spear-patch.
> =

> > Gesendet: Montag, 14. M=E4rz 2022 um 04:49 Uhr
> > Von: "Viresh Kumar" <viresh.kumar@linaro.org>
> >
> > On 11-03-22, 22:03, Frank Wunderlich wrote:
> > > From: Frank Wunderlich <frank-w@public-files.de>
> > > =

> > > After converting the binding to yaml the node name does
> > > not match the standard pattern, change it.
> > > =

> > > arch/arm/boot/dts/spear1340-evb.dt.yaml: ahci@b1000000:
> > > $nodename:0: 'ahci@b1000000' does not match '^sata(@.*)?$'
> > > 	From schema: Documentation/devicetree/bindings/ata/ahci-platform.yaml
> > > =

> > > Fixes: 07658d9a659b ("SPEAr13xx: Add dts and dtsi files")
> > =

> > I don't think this is correct. The above patch is correct. The first
> > patch in this series changes the names and that's where things break.
> =

> it's right that my binding will break it, but the nodes are not named the=
 right way.
> And i used the commit that introduces the wrong node-names.
> Maybe fixes-tag is wrong in this case.

I'm pretty sure Viresh just meant the Fixes tag is not right.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
