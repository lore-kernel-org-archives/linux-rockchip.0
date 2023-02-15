Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 791DEC636CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 10:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zqibs0zHQUbhfFQRZCMtJjRvms8BBsuSZrvdRnmwBAs=; b=uRLExZRZTr6vK6
	NZzzxKHbOkqNCFTZ5GL4WmwU0ZqpyNLhFoTJvgKtuGo8JkQ7RM8YmIGYloFkDRK4U/GyVs4CFRbCa
	IYFamINvcAxfStWOqEuYYhJrnCqP0VytRhghMOpu74Oe+Mcj51qeaOslPp9Ucg8rz260MJLxrlNti
	4/bHV6kyCjbRpAYyuZGJ6Sqkb4wGiAIxAAau17ndNJtrjTJxCCYB7Bk4DnKBR4/gE0pYD6101WPWu
	Dccr+T7I2rPenLOlUf0rdfG0mE9FkIQUm1Hdsqn2x32PXqgxOWdR8lxHpEzZoMTJ5llAXtgroWy/p
	I+SgsyOYtdbtOVafuRcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSFJC-005V99-4s; Wed, 15 Feb 2023 10:46:42 +0000
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.85.151])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSFJ1-005V4z-CO
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 10:46:33 +0000
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-34-i_adRa_mOdaDGX2RAwwiCA-1; Wed, 15 Feb 2023 10:46:18 +0000
X-MC-Unique: i_adRa_mOdaDGX2RAwwiCA-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.45; Wed, 15 Feb
 2023 10:46:16 +0000
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.045; Wed, 15 Feb 2023 10:46:16 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Damien Le Moal' <damien.lemoal@opensource.wdc.com>, Rick Wertenbroek
	<rick.wertenbroek@gmail.com>, "alberto.dassatti@heig-vd.ch"
	<alberto.dassatti@heig-vd.ch>
CC: "xxm@rock-chips.com" <xxm@rock-chips.com>, "rick.wertenbroek@heig-vd.ch"
	<rick.wertenbroek@heig-vd.ch>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner
	<heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi
	<lpieralisi@kernel.org>, =?utf-8?B?S3J6eXN6dG9mIFdpbGN6ecWEc2tp?=
	<kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula
	<jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Mikko Kovanen
	<mikko.kovanen@aavamobile.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>
Subject: RE: [PATCH v2 8/9] PCI: rockchip: Use u32 variable to access 32-bit
 registers
Thread-Topic: [PATCH v2 8/9] PCI: rockchip: Use u32 variable to access 32-bit
 registers
Thread-Index: AQHZQN2t4tTaT5pAPkCiUYx37/Wq/67P0uRw
Date: Wed, 15 Feb 2023 10:46:16 +0000
Message-ID: <2a80c4e1f1ad42c6849521d1e644b003@AcuMS.aculab.com>
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-9-rick.wertenbroek@gmail.com>
 <0fa5cef4-7096-7f59-422a-98011d01437c@opensource.wdc.com>
In-Reply-To: <0fa5cef4-7096-7f59-422a-98011d01437c@opensource.wdc.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_024631_707870_9A152147 
X-CRM114-Status: GOOD (  17.70  )
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

From: Damien Le Moal
> Sent: 15 February 2023 01:34
> 
> On 2/14/23 23:08, Rick Wertenbroek wrote:
> > Previously u16 variables were used to access 32-bit registers, this
> > resulted in not all of the data being read from the registers. Also
> > the left shift of more than 16-bits would result in moving data out
> > of the variable. Use u32 variables to access 32-bit registers
> >
> > Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> > ---
> >  drivers/pci/controller/pcie-rockchip-ep.c | 10 +++++-----
> >  drivers/pci/controller/pcie-rockchip.h    |  1 +
> >  2 files changed, 6 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> > index ca5b363ba..b7865a94e 100644
> > --- a/drivers/pci/controller/pcie-rockchip-ep.c
> > +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> > @@ -292,15 +292,15 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
> >  {
> >  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
> >  	struct rockchip_pcie *rockchip = &ep->rockchip;
> > -	u16 flags;
> > +	u32 flags;
> >
> >  	flags = rockchip_pcie_read(rockchip,
> >  				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
> >  				   ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
> >  	flags &= ~ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK;
> >  	flags |=
> > -	   ((multi_msg_cap << 1) <<  ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
> > -	   PCI_MSI_FLAGS_64BIT;
> > +	   (multi_msg_cap << ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET) |
> 
> ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET is 17 and multi_msg_cap is a u8...
> Not nice.

It really doesn't matter.
As soon as you do any arithmetic char and short are promoted to int.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
