Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBABEC11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 14:00:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 613F3613F8
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 14:00:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 613F3613F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=KhFYEF8ZE5fvAGSy+Ic4y2RLuXhvV1vkl/8AI1Oiu4Q=; b=kNOkYo4iK7+G5n
	shHbcqfjyjZhg5ja1EXGf5qG31KMG1wThOBKLXMemKt7tPaPwLBQgKiLOxTkzAX9XEWICatgoS+u8
	vDSQxuGqTMIvI9I0WysYbNksVpGOAgOeQ5Lkny54Bv9eHL3AVzT/TcCwBrjM6IUI7X+ZGudCanQNl
	PC6usmpj3RtM/WpUZnjt7rP7LI4ywJYcnWdau4R5AH9EgSiA9brYugQXcrIj/hxOQTsdEBS++75Ya
	YPqQG/JTPE1NH7Rc5TgSbv9Q3Cf7gzNuv733J7YOGLR009KX1vXIfb82GWk467feJD9Ww+QH2RQX9
	x7PqelK7VGlyO6RZnC7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyxEZ-00HZF5-Ki; Thu, 01 Jul 2021 14:00:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyxEN-00HZDD-7F; Thu, 01 Jul 2021 13:59:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 70AF5613EF;
 Thu,  1 Jul 2021 13:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625147990;
 bh=7yIdbx5G0asNF47kyLGub6yCdbe55aWTfmtrPq+WZHw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=KCKxL/USD4qbC3q797R4dfrTjrmgnqjqtI4cG9TGAb7e9udh2QPQifLboVBxJ/swd
 rFJtdJuj9GBU0p3dUCtB/ph+kDMhtfa+wPoaAHerFD/9lgeuL3us5IElOmrcOQyLyY
 wwesIvzNZtIL+6PJt7EkBbxO3lm7vMbtnT+aksVq3vtLxfB8SiOKhNxYun7U8KdRxj
 x54HlAQUVWM/4tUUtthtHuiU+7HPFin12M8FGtyt211TjTd2Wd76VZf9ecBq+eplFE
 UgFua6rQPEg78rLwXg10P7aWJLQAp2/G6aEFC6M6ftCAT/+a1jrMaIn3Cr9FrIkfF2
 xME9arZwlo11w==
Date: Thu, 1 Jul 2021 08:59:49 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>, Jingoo Han <jingoohan1@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
Message-ID: <20210701135949.GA51123@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51276875-658e-e6fe-5433-b5d795b253ff@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_065951_324250_D131049F 
X-CRM114-Status: GOOD (  23.55  )
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

On Thu, Jul 01, 2021 at 12:09:58AM +0200, Javier Martinez Canillas wrote:
> On 6/30/21 10:30 PM, Bjorn Helgaas wrote:
> > On Wed, Jun 30, 2021 at 09:59:58PM +0200, Javier Martinez Canillas wrote:
> 
> [snip]
> 
> >> But maybe you can also add a paragraph that mentions the
> >> CONFIG_DEBUG_SHIRQ option and shared interrupts? That way, other
> >> driver authors could know that by enabling this an underlying
> >> problem might be exposed for them to fix.
> > 
> > Good idea, thanks!  I added this; is it something like what you
> > had in mind?
> 
> Thanks a lot for doing this rewording. I just have a small nit for
> the text.
> 
> >     Found by enabling CONFIG_DEBUG_SHIRQ, which calls the IRQ
> >     handler when it is being unregistered.  An error during the
> >     probe path might cause this unregistration and IRQ handler
> >     execution before the device or data structure init has
> >     finished.
> 
> The IRQ handler is not called when unregistered, but it is called
> when another handler for the shared IRQ is unregistered. In this
> particular driver, both a "pcie-sys" and "pcie-client" handlers are
> registered, then an error leads to "pcie-sys" being unregistered and
> the handler for "pcie-client" being called.

Is this really true?  I think that would mean CONFIG_DEBUG_SHIRQ would
not find this kind of bug unless we actually registered two or more
handlers for the shared IRQ, but it's still a bug even only one
handler is registered.

Looking at __free_irq() [1], my impression is that "action" is what
we're removing and action->handler() is the IRQ handler we call when
CONFIG_DEBUG_SHIRQ, so it doesn't look like it's calling the remaining
handlers after removing one of them.

> So maybe the following instead?
> 
>     Found by enabling CONFIG_DEBUG_SHIRQ, which calls the IRQ
>     handlers when a handler for the shared IRQ is unregistered. An
>     error during the probe path might cause this unregistration and
>     handler execution before the device or data structure init has
>     finished.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/kernel/irq/manage.c?id=v5.13#n1805

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
