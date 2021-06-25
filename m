Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A93C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 16:15:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6139F61969
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 16:15:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6139F61969
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qqb3qOeGuvOgAmH9HVzsHZ/kbhaimz84VVsQZV2zw8U=; b=CjGypuFmgKzb2R
	svIjl8MDWxmGLV0h3p5YuNZI/0QdrmglR6opawdJNY9gm86Bi8MR5fbUiUxHH4GjqZqhqWZrrekql
	kDOPk8OncTpavHgS5wtGPmgtnY/hUks9hUVkH+amIL8xfk2F91VuJ3DBL5d8Wls3MY3Vp3HCGuzBv
	g4q/8aYEYwqdSzMbyPY88IuXKAza0PBWymziobBnv8t/Yf66ZsrhwVNC/V5Ou4ZrM7D2C4wRfq01P
	nK66APiH6PtZOIip4odRGUyvMhq0XWfRZ70YTs9AKpUkua/AX0Gk3QbVmsHOY7naluOkD0ovtCV5A
	XlBgP7jZ+HvYZxbvn4XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwoUi-002GZj-2A; Fri, 25 Jun 2021 16:15:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwoUV-002GYa-Kw; Fri, 25 Jun 2021 16:15:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE74D1063;
 Fri, 25 Jun 2021 09:15:35 -0700 (PDT)
Received: from lpieralisi (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2FEFA3F719;
 Fri, 25 Jun 2021 09:15:33 -0700 (PDT)
Date: Fri, 25 Jun 2021 17:15:28 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
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
Message-ID: <20210625161528.GA21595@lpieralisi>
References: <20210616211630.GA3007203@bjorn-Precision-5520>
 <0fd19e28-e0a6-fd79-672a-b588fb2763ba@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0fd19e28-e0a6-fd79-672a-b588fb2763ba@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_091539_828830_BB784177 
X-CRM114-Status: GOOD (  25.72  )
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

On Thu, Jun 24, 2021 at 08:30:09PM +0530, Kishon Vijay Abraham I wrote:
> Hi Lorenzo,
> 
> On 17/06/21 2:46 am, Bjorn Helgaas wrote:
> > On Wed, Jun 16, 2021 at 07:35:33PM +0530, Kishon Vijay Abraham I wrote:
> >> Hi Lorenzo, Bjorn,
> >>
> >> On 17/05/21 1:17 pm, Kishon Vijay Abraham I wrote:
> >>> Patch series
> >>> *) Adds support to add virtual functions to enable endpoint controller
> >>>    which supports SR-IOV capability
> >>> *) Add support in Cadence endpoint driver to configure virtual functions
> >>> *) Enable pci_endpoint_test driver to create pci_device for virtual
> >>>    functions
> >>>
> >>> v1 of the patch series can be found at [1]
> >>> v2 of the patch series can be found at [2]
> >>> v3 of the patch series can be found at [3]
> >>> v4 of the patch series can be found at [4]
> >>> v5 of the patch series can be found at [5]
> >>>
> >>> Here both physical functions and virtual functions use the same
> >>> pci_endpoint_test driver and existing pcitest utility can be used
> >>> to test virtual functions as well.
> >>>
> >>> Changes from v5:
> >>> *) Rebased to 5.13-rc1
> >>>
> >>> Changes from v4:
> >>> *) Added a fix in Cadence driver which was overwriting BAR configuration
> >>>    of physical function.
> >>> *) Didn't include Tom's Acked-by since Cadence driver is modified in
> >>>    this revision.
> >>>
> >>> Changes from v3:
> >>> *) Fixed Rob's comment and added his Reviewed-by as suggested by him.
> >>>
> >>> Changes from v2:
> >>> *) Fixed DT binding documentation comment by Rob
> >>> *) Fixed the error check in pci-epc-core.c
> >>>
> >>> Changes from v1:
> >>> *) Re-based and Re-worked to latest kernel 5.10.0-rc2+ (now has generic
> >>>    binding for EP)
> >>>
> >>> [1] -> http://lore.kernel.org/r/20191231113534.30405-1-kishon@ti.com
> >>> [2] -> http://lore.kernel.org/r/20201112175358.2653-1-kishon@ti.com
> >>> [3] -> https://lore.kernel.org/r/20210305050410.9201-1-kishon@ti.com
> >>> [4] -> http://lore.kernel.org/r/20210310160943.7606-1-kishon@ti.com
> >>> [5] -> https://lore.kernel.org/r/20210419083401.31628-1-kishon@ti.com
> >>
> >> Can this series be merged for 5.14? It already includes Ack from Rob for
> >> dt-binding changes and Ack from Tom for Cadence driver changes.
> > 
> > Sorry, I think this was assigned to me in patchwork, but Lorenzo
> > usually takes care of the endpoint stuff.  He's away this week, but no
> > doubt will look at it when he returns.
> 
> Can you consider merging this series for 5.14?

I am running late this cycle on reviews and the merge window is about
to open, I will review it and queue it first thing for the next cycle.

Apologies.

Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
