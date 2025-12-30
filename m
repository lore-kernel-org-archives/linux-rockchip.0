Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A70EE4988
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 16:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6IGvNaj4WrHPqWC9b8rTVmwcnYR5RE+8FiYandiZwU=; b=VulqG10szkej1c
	A9cbXo5A7a/UV6alZdS/Mhp8a3mGgHFhkGs3dxcN9JFDsHxNP0pKE63sNms1llFErOMZeJcFsHz+i
	xpC0xcUlB7Fg5I5YN7mV46tlLCnrBYRKNlu7ZQmHl9/TieLBWQ+ODBAmyvNUAb4P5zk3NF/fnYjiW
	txKMhp16jDEFDOvilUys5iR5wrSai5p8gUmvMcJ+Eb5ebYwcAOXFThEEe6T15XBJcR6i98jQ7uXQj
	HZcFuvC6yD9llowqtV3GWqFwwnOUuO4+xKRfqi+ih+Q6IuHOxNHzFrI2hBZGl8i6/L20mKfQIP/Gi
	bBPKoVvMc9YmEwyBuiIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vacnz-000000054Ij-3zIT;
	Tue, 30 Dec 2025 16:42:43 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vacnx-000000054IK-1J0q
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 16:42:42 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-4ed9c19248bso86418421cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Dec 2025 08:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1767112959; x=1767717759; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ANHVR9coAMge+WLBsY5cko52eRTlCq0nuigwEeNBZ6Y=;
        b=MI0XOpknrb6hpDaIhjSCIap+srXrZzGhHX/nRL6smqZ+pNsuTdzDx4DhdDJ7iV7UFM
         k5l5Z01fNjDBRUn3xv6QiB/CTCsJFbGFseqScLNPE/VOZPXGGVxDnG5aWWtn7oK2/KRd
         xLMU+4IRcFHUNirL/tY7kq2mVuvetGubrMe7yrQfLY50PmeUFp+Co2n4tzeNOpFOf3Pd
         IjMw87EMFNaM7Kfq4XMMVv+3ib6nvMXz1v3DL70alSm9yYQjonV6V6t+6yv+4kArxeeI
         IPe0v/7UqCj+KGsy0K8TYKz04l3ocBas0RXbNoulxvjoPB52bvhEDEWYu7RRiGmyuMtW
         52lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767112959; x=1767717759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ANHVR9coAMge+WLBsY5cko52eRTlCq0nuigwEeNBZ6Y=;
        b=XJELVc7nAwSqR84Dd1y6sSuJ8IZmsyFSAJw+/DzDdQpXg6hCqcyi8jWCfLt/qfwBCI
         z0032kdNX4gVL3xYbYCo9EP8RT3jKuzoIVQbOZ6nkGX9NRI/1sBo5oCPYlcPxd5TBww4
         DuxOuIHjcEeXxHuFOvgrKngOuX41T8wkTkQbdAlnWFBgpr7lHjePA4KvLE2MZ6iBzdW4
         7w0Ogtxx/7Bd8ovWyAu60EUMGyJFZS1rz4ZZcK/enX490HVwCRo4/z1uOk7n87KWwDKS
         bTECxSIAhoeadJPTFvY2hv7mh27mGW8RM1iUdTDxCdldrZHwh4/wQO+o+gSwn46tHKUo
         DK5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUK+e02JfhqBdi91ikA57JnhD0tRC9IuWPxYWekJDtdKc/bnfyYHnC2pjU9cRLvq1M0z83rh4O8D+RV+Xn3Lw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/sO1SVxvGPFvxbqltIYB0qXcI3HVGZHvQyqIeV6h7IFzF46DN
	84GiGpkM7CIjqM3HR9Y165xKQPMc7iCoUbd06yD+0ABF3pyex5lmtnxts3azRdy7Bg==
X-Gm-Gg: AY/fxX7fLOVNCoApywJS1KY0sRsROEv1iHVlvKiwdwJZazvMQK/YVE7XetNLy44FK4V
	251GU8B3e8ICW6vEi2nfnDmbykJomm51NCkzY/SsrWDKN27I1qDBLo+ccSYLNWQOIX3nR5V+0X7
	esqXOTo++YQqBcs6h/mQJgsfPJfz+s4OdS3rO6NU1+xbKw+1GwqGI0yeOIPdTnMBaGkG3St4/3c
	mnBNp9YjRgpaMb1QVBpmaMZ5CFthiF9oVCl4bX2dI/2icqFDtkaf9BOchQMaup3k39+8NWhBPTB
	KCsEqv4HK5Myp/s3c4U0yGsRAfPaWw3vsUAlaBKufe6codN4n+OgHQEa411X/ZS+j+amyLrl4A6
	Nvfuq27BAQ9XzOCBdRaP6fhbxDtZ4TLME9FBCQN/0bsJNi/YO531/PZ4tyjPgt0W/Cmweo4EMlu
	6DYESKcJyrGfsX
X-Google-Smtp-Source: AGHT+IGZ10x43nQ+FLvBRMXbLZtKA3EXPyhDzZklnkmuT26qzuiftxIwaVESBYneQ9nQxbWfNF/N/w==
X-Received: by 2002:ac8:5746:0:b0:4ed:dab1:8109 with SMTP id d75a77b69052e-4f4abcf6a35mr445396981cf.17.1767112959383;
        Tue, 30 Dec 2025 08:42:39 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7e72])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4c46e4aabsm198873001cf.16.2025.12.30.08.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 08:42:38 -0800 (PST)
Date: Tue, 30 Dec 2025 11:42:35 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Huacai Chen <chenhuacai@kernel.org>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Shengwen Xiao <atzlinux@sina.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
Message-ID: <73d472ea-e660-474c-b319-b0e8758406c0@rowland.harvard.edu>
References: <20251230080014.3934590-1-chenhuacai@loongson.cn>
 <2025123049-cadillac-straggler-d2fb@gregkh>
 <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFBMNYF0U5PK.24YOAUZFZ0ESB@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_084241_365020_A0498B75 
X-CRM114-Status: GOOD (  39.28  )
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

On Tue, Dec 30, 2025 at 03:40:27PM +0100, Diederik de Haas wrote:
> On Tue Dec 30, 2025 at 9:15 AM CET, Greg Kroah-Hartman wrote:
> > On Tue, Dec 30, 2025 at 04:00:14PM +0800, Huacai Chen wrote:
> >> Commit 9beeee6584b9aa4f ("USB: EHCI: log a warning if ehci-hcd is not
> >> loaded first") said that ehci-hcd should be loaded before ohci-hcd and
> >> uhci-hcd. However, commit 05c92da0c52494ca ("usb: ohci/uhci - add soft
> >> dependencies on ehci_pci") only makes ohci-pci/uhci-pci depend on ehci-
> >> pci, which is not enough and we may still see the warnings in boot log.
> >> So fix it by also making ohci-hcd/uhci-hcd depend on ehci-hcd.
> >> 
> >> Cc: stable@vger.kernel.org
> >> Reported-by: Shengwen Xiao <atzlinux@sina.com>
> >> Signed-off-by: Huacai Chen <chenhuacai@loongson.cn>
> >> ---
> >>  drivers/usb/host/ohci-hcd.c | 1 +
> >>  drivers/usb/host/uhci-hcd.c | 1 +
> >>  2 files changed, 2 insertions(+)
> >> 
> >> diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
> >> index 9c7f3008646e..549c965b7fbe 100644
> >> --- a/drivers/usb/host/ohci-hcd.c
> >> +++ b/drivers/usb/host/ohci-hcd.c
> >> @@ -1355,4 +1355,5 @@ static void __exit ohci_hcd_mod_exit(void)
> >>  	clear_bit(USB_OHCI_LOADED, &usb_hcds_loaded);
> >>  }
> >>  module_exit(ohci_hcd_mod_exit);
> >> +MODULE_SOFTDEP("pre: ehci_hcd");
> >
> > Ick, no, this way lies madness.  I hate the "softdep" stuff, it's
> > usually a sign that something is wrong elsewhere.
> >
> > And don't add this _just_ to fix a warning message in a boot log, if you
> > don't like that message, then build the module into your kernel, right?
> >
> > And I really should just go revert 05c92da0c524 ("usb: ohci/uhci - add
> > soft dependencies on ehci_pci") as well, that feels wrong too.
> 
> FWIW, I've been seeing this warning on several of my Rockchip based
> devices as well. I thought I had already mentioned that on some ML, but
> couldn't find it on lore.k.o ... turns out I reported it on my 'own' ML:
> https://lists.sr.ht/~diederik/pine64-discuss/%3CDD65LB64HB7K.15ZYRTB98X8G2@cknow.org%3E
> (and likely on #linux-rockchip IRC channel)
> 
> Most of it is just my research notes, but the last post also had this:
> 
> ```
> I checked the last 20 boots on my devices to see that warning (or not).
> Device				Number of times that warning showed up
> Rock64 (rk3328)			16x
> RockPro64 (rk3399)		11x
> Quartz64 Model A (rk3566)	 7x
> Quartz64 Model B (rk3566)	14x
> PineTab2 (rk3566)		17x
> NanoPi R5S (rk3568)		13x
> Rock 5B (rk3588)		12x
> ```
> 
> While I generally don't like seeing warning messages, it often also
> resulted in USB2 ports not working. Maybe even every time, but I only
> notice it when I actually tried to use one of the USB2 ports.
> 
> The first post mentioned what I 'assume' to be the problem:
> ```
> CONFIG_USB_XHCI_HCD=m
> CONFIG_USB_EHCI_HCD=m
> CONFIG_USB_OHCI_HCD=m
> ```
> 
> So I guess USB_EHCI_HCD doesn't work with '=m'.

Not true, it really does work with "=m".

And in fact, your systems should work even if the modules are loaded in 
the wrong order.  The issue is that doing so can cause a brief 
interruption in the existing USB connections when the ehci-pci module is 
loaded.

If your systems don't use PCI for these host controllers then I don't 
know how they would behave.  The issue is: How does the hardware route 
low-speed and full-speed USB connections to the different types of 
controller?

On PCI systems, when ehci-pci isn't loaded, the hardware routes all 
connections directly to the companion UHCI or OHCI controller.  When 
ehci-pci is loaded, the hardware routes connections to the EHCI 
controller, and when the driver sees that a connection isn't running at 
high speed (480 Mb/s), it tells the hardware to switch the connection 
over to the companion.

So if a low-speed (1.5 Mb/s) or full-speed (12 Mb/s) device is connected 
before ehci-pci loads, its connection will get routed to the companion 
controller.  Then when ehci-pci loads, the connection will be switched 
over to the EHCI controller, which will cause the existing connection to 
be dropped.  Then the connection will be routed back to the companion 
controller, but it will be perceived as a new connection, resulting in a 
brief interruption in service.  For many devices this won't matter, but 
for some it might.  The only way to avoid the problem is to load 
ehci-pci before uhci-pci and ohci-pci.

(A similar problem can occur with high-speed-capable devices.  When 
initially attached to the companion controller, they are forced to 
connect at full speed.  But when the connection is changed to the EHCI 
controller, they are able to run at high speed -- and again, the result 
is a new connection, causing service to be interrupted and then start up 
fresh but running much faster.)

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
