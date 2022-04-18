Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B220C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 15:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=1cb2zXz1iGIkkJzNY75mno+IuamyoD6xOWSURGLPqho=; b=KGLNcWrFeLZb8p
	YjeS6e0kIOGqxnoKQzu67iQ+sbOQgt2tfDGfVAgZTIJXF3aouZUL1INJz/xtwwCiGzsYhdZzLlvgA
	1gC6JaxClDAwcsIloTCQP5EX71M5HTGbZtnIWuLi0U0kYR4X6KonkHnjxxDUzxej8At9qqScc/rDV
	NP7/hIx+vLCFeuOLaKQzJ72LXNedvmY4P4tOu+w6HtvTYvZRaw42JCwwrZQ03W662TKTlDYa7EdbJ
	l4cZ5nRszvBiSdCSDI1chI7lotkYyybck2+fL2S8a/aPokGrQYB3TKoKkfV0AgTEUnpgkdnp3rxI2
	iCkyQE8BltYT8RQ0yypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngTh1-00HYD7-W1; Mon, 18 Apr 2022 15:53:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngTgn-00HY6z-Kf; Mon, 18 Apr 2022 15:53:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DD4F4B80E5B;
 Mon, 18 Apr 2022 15:53:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C21CBC385A7;
 Mon, 18 Apr 2022 15:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650297195;
 bh=aYZg1IKIfMQLIL0wtoZyeEOyQnwvMvDnvwNzngzlnjk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=WK68PO31YI8JAiYMovjg5uNw+os/75YZuU34TXqHwolxI1p74aZtz/bzsBeJS2o6U
 XDCctIZIIFQVilDavTUVHZhHWR2Jt1fHHFWCVOe9rbFvIcc8ciz81dubr4LrAZFhcs
 SMmcS5Wy/5EdOC0yQxaulXswLkjR+E8aaLGtAMAdcyivBNRa82nQFc4vIJExw+623B
 h7vEevp/8sv3hSOxVo0tj8mZXwgaTvgZZXZGbBZAxOvnL36BJrqIfgQ2QdrSyw6wm+
 iGNO7pxMJ59IoujLcls/JavFPbWQgzTXlFp9O+q+v1H1DHwIPfHzX2vDJ6s8kJeCB8
 VWvXOc4T0am/Q==
Date: Mon, 18 Apr 2022 10:53:13 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: Re: Re: [RFC/RFT 4/6] PCI: rockchip-dwc: add pcie bifurcation
Message-ID: <20220418155313.GA1101563@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-a220fd81-2ee9-474d-bd65-505b9ed904b2-1650186482865@3c-app-gmx-bs58>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_085321_858831_C1B1C92A 
X-CRM114-Status: GOOD (  16.22  )
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

On Sun, Apr 17, 2022 at 11:08:02AM +0200, Frank Wunderlich wrote:
> > On Sat, Apr 16, 2022 at 03:54:56PM +0200, Frank Wunderlich wrote:
> > > From: Frank Wunderlich <frank-w@public-files.de>
> > >
> > > PCIe Lanes can be split to 2 slots with bifurcation.
> > > Add support for this in existing pcie driver.

> > Is the "rockchip,bifurcation" DT property something that should be
> > generalized so it's not rockchip-specific?  Other controllers are
> > likely to support similar functionality.
> 
> I do not know if other controllers support similar functionality,
> but i ack a property without vendor prefix is better. Should i use
> "bifurcation" as name or do you think about a different name which
> is more generic?

Really a question for Rob about what name would be good and where it
should go.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
