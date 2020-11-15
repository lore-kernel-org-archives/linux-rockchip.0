Return-Path: <SRS0=sE99=EV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4889CC2D0E4
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2020 05:51:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 825B522409
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2020 05:51:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Oki8qTgV"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 825B522409
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4jFHjHKWlVvbSaeQvdgHHsLVSGO0BS4srx8wTIz5F5E=; b=Oki8qTgVK5zIH0xM2VXQJbE3Y
	ZrWidwCbzAWrcPmwKZQdYl3KOQdagaLepKM/DnsoLf0XOz7dcAtOvdCUgfw7azVrsdrCbjb9GKs7N
	eEQD5f+p5QGj4x4cWSjEuMUN4AN+bqlaBAupagAJYPTGmXt5Ef+7CuEZhlGiQxFGqRw4BtTQaCFP8
	ENnN1n2SXq+cn2CZdO7JdnmXdokMiO4r1KWL4jWjAee1b/eHYsQlOELJicjrdrKtpqO0fz3GdJo1z
	MKvcxMzS74uw27rzDxHE2FXczFd9HJ+0SuUiTforc5Lor1O9oGf2wurVCqGv9raPYqjK7nYPf4FgT
	u7koAttzQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keAwM-0001gv-8I; Sun, 15 Nov 2020 05:51:06 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keAwI-0001gL-Ns; Sun, 15 Nov 2020 05:51:03 +0000
Received: by mail-wr1-f67.google.com with SMTP id j7so14764075wrp.3;
 Sat, 14 Nov 2020 21:51:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0Ar1HS0TIigbtEbbtbsrbeVh6VW06RBSYq0BlrEFWlQ=;
 b=tQiRdIWLhHVLODypdtZTPb75JG0hdeABy06M/m0hGdeuZkvh26H3HFLA6IKBzOKx6a
 ZQnv1CmOYboJ/mfB63lQQo19nTK3RktKqOcLmSvmTR4CmfxL7kIFBKVWrGZl9W6wRvOZ
 6eiHOZzHOPliq7pETODz5bh/q2P8ZvKSxdnPZkbBR80OiUdytqER6RZ7osIwUyXlu2ze
 MuKd6Qom06XTBWxOdms34QaANs5Otf1XDIgSyewRZoKoe+Fqb8o12BhwpLSoGC8NB6lR
 flK/r3Dif9PYmVdxdEHO7OszvVCC9/ZqKtsWMwcYxkgbhTqj5rdkjnJcKkxOEwZkWS94
 xPdQ==
X-Gm-Message-State: AOAM532VwZwxQVBzApEvAYOlKcYGqCiTZagSvlLwhpB/pPxlUQeFCxFM
 oTrIJ42w8hny6hTIYuP8WRU=
X-Google-Smtp-Source: ABdhPJyyWlqOi881rwwar8nssPXB4LzlZhjcTUAVcp2Ix24BVuoPkzt7VIFoWPh+xOxI1NRrikiLUw==
X-Received: by 2002:a05:6000:345:: with SMTP id
 e5mr12059182wre.333.1605419460016; 
 Sat, 14 Nov 2020 21:51:00 -0800 (PST)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id g11sm17547121wrq.7.2020.11.14.21.50.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Nov 2020 21:50:59 -0800 (PST)
Date: Sun, 15 Nov 2020 06:50:57 +0100
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v4] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <X7DBwZ5cJrbQspM+@rocinante>
References: <20201005003805.465057-1-kw@linux.com>
 <429099a8-5186-40c3-f5c0-f219b3e79f01@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <429099a8-5186-40c3-f5c0-f219b3e79f01@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201115_005102_795711_5516DF8F 
X-CRM114-Status: GOOD (  15.82  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Jonathan Derrick <jonathan.derrick@intel.com>, linux-pci@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, linux-rpi-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Scott Branden <sbranden@broadcom.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Robert Richter <rrichter@marvell.com>, linuxppc-dev@lists.ozlabs.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 20-10-04 19:53:06, Florian Fainelli wrote:

Hi Florian,

Sorry for taking a long time to get back to you.

[...]
> This appears to be correct, so:
> 
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>

Thank you!
 
> however, I would have defined a couple of additional helper macros and do:
> 
> 	idx = PCIE_ECAM_BUS(bus->number) | PCIE_ECAM_DEV(devfn) |
> PCIE_ECAM_FUN(devfn);
> 
> for clarity.
> 
[...]
> For instance, adding these two:
> 
> #define PCIE_ECAM_DEV(x)		(((x) & 0x1f) << PCIE_ECAM_DEV_SHIFT)
> #define PCIE_ECAM_FUN(x)		(((x) & 0x7) << PCIE_ECAM_FUN_SHIFT)
> 
> may be clearer for use in drivers like pcie-brcmstb.c that used to treat the
> device function in terms of device and function (though it was called slot
> there).

Regarding the suggestion above - it has been like that initially, albeit
Bjorn suggested that there is no need to reply on the macros that use
PCI_SLOT() and PCI_FUNC() macros, see:

https://lore.kernel.org/linux-pci/20200922232715.GA2238688@bjorn-Precision-5520/

I would be happy to put the macros back if there is a value in having
the extra macros added - perhaps for clarify, as you suggest.

Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
