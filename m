Return-Path: <SRS0=qhcO=LK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E5B3C48BE6
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 21:16:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3305F613DE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jun 2021 21:16:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3305F613DE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=nQYQ+SIpMrPiNRmmbTBgiRZxHSRwwsAkBsSN+d8jKOE=; b=fs9sRlRnoRexdg
	r1Bqg27LpUG9eNYCb+0tFA6gOFrKtHEQCt1mR2om9zD5jUE1cMRkHR4mUuHlkY+7yBFfueZt6zW3I
	/plXYl4qa7FIba9VTkvXpD+1EaLoDbNGxHG1VDotWVXJJ1n8viDuke/4RFZQeNvztbVGJK1bLOMrO
	6IVsDU7Uw7iCkjZ3FhE04/oL5HBHj9aedJAyjXlIZacsRPZBcRPkgpW6IegtnSWWjZF5zvkVbE+xR
	qRLhYL8b8ng0VONs2QeRhHVkJSeJZtryHY/iDIO1TiixhE+IZJPQqzHwpYA2wrJk0w/U3k1qBSuYz
	OyPJa7cjfG04lNENrPMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltcu3-007jRw-1m; Wed, 16 Jun 2021 21:16:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltctq-007jQQ-6k; Wed, 16 Jun 2021 21:16:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EEB65613DF;
 Wed, 16 Jun 2021 21:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623878197;
 bh=g0jleB/kEeeiGGDNq1Chp/dzNVZGcHFtnZ8EpEOi+lg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=LhfE3ydVx732Lk8ZAGuNehW4CtJ7CP+EGLJaXRG5cqlco3TT1Gxm25PByaM8S2Vlj
 JHemkB/lt6CQ3kew15b0BZ18wY/qYbY3Jeheb+nsx6k1Vwn00wrS5/yP67dcDGdeMi
 61KBaUNQ2/xrB4xa9TT1Jb4iRgmjyqxVHebUXgRnPz58nZVCt/c7C8Sis0EC7f/BeZ
 o1AbmvKAmk3rEp4zs2aVS5lO3zjYB+fOOdhCED/AFQVBvz282hhrsMk7WIhRKKnflV
 HTsyLyPOAD9md50qvx8h9WQ2W+/ARkK4dMZ5pWU53893wMqEW0mFTKEz40V+6FzNvk
 5/bHuiY3CTipA==
Date: Wed, 16 Jun 2021 16:16:30 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh+dt@kernel.org>, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v6 0/7] Add SR-IOV support in PCIe Endpoint Core
Message-ID: <20210616211630.GA3007203@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5bcf443-a0ee-fda5-5c5c-d69d25b53bb9@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_141638_325879_E752DE75 
X-CRM114-Status: GOOD (  22.01  )
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

On Wed, Jun 16, 2021 at 07:35:33PM +0530, Kishon Vijay Abraham I wrote:
> Hi Lorenzo, Bjorn,
> 
> On 17/05/21 1:17 pm, Kishon Vijay Abraham I wrote:
> > Patch series
> > *) Adds support to add virtual functions to enable endpoint controller
> >    which supports SR-IOV capability
> > *) Add support in Cadence endpoint driver to configure virtual functions
> > *) Enable pci_endpoint_test driver to create pci_device for virtual
> >    functions
> > 
> > v1 of the patch series can be found at [1]
> > v2 of the patch series can be found at [2]
> > v3 of the patch series can be found at [3]
> > v4 of the patch series can be found at [4]
> > v5 of the patch series can be found at [5]
> > 
> > Here both physical functions and virtual functions use the same
> > pci_endpoint_test driver and existing pcitest utility can be used
> > to test virtual functions as well.
> > 
> > Changes from v5:
> > *) Rebased to 5.13-rc1
> > 
> > Changes from v4:
> > *) Added a fix in Cadence driver which was overwriting BAR configuration
> >    of physical function.
> > *) Didn't include Tom's Acked-by since Cadence driver is modified in
> >    this revision.
> > 
> > Changes from v3:
> > *) Fixed Rob's comment and added his Reviewed-by as suggested by him.
> > 
> > Changes from v2:
> > *) Fixed DT binding documentation comment by Rob
> > *) Fixed the error check in pci-epc-core.c
> > 
> > Changes from v1:
> > *) Re-based and Re-worked to latest kernel 5.10.0-rc2+ (now has generic
> >    binding for EP)
> > 
> > [1] -> http://lore.kernel.org/r/20191231113534.30405-1-kishon@ti.com
> > [2] -> http://lore.kernel.org/r/20201112175358.2653-1-kishon@ti.com
> > [3] -> https://lore.kernel.org/r/20210305050410.9201-1-kishon@ti.com
> > [4] -> http://lore.kernel.org/r/20210310160943.7606-1-kishon@ti.com
> > [5] -> https://lore.kernel.org/r/20210419083401.31628-1-kishon@ti.com
> 
> Can this series be merged for 5.14? It already includes Ack from Rob for
> dt-binding changes and Ack from Tom for Cadence driver changes.

Sorry, I think this was assigned to me in patchwork, but Lorenzo
usually takes care of the endpoint stuff.  He's away this week, but no
doubt will look at it when he returns.

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
