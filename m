Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEACEC49EA5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 21:58:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC79D613C0
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 21:58:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC79D613C0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=nKbu7VODBJOAdRBcdBckgp/242Kvl4KvaWiYbiJJ8LQ=; b=DpHf63Xf4HFdA6
	XjWINTW7/XFi94tbfkQZwm6KjDuYhK9on/rGAPWb6l8Rj0ncvk5DRmUj63wYyq+Gm0ohNmBwvAGpQ
	fCB9xRCwKYZeqkxfZbVY3Gsa5K0cW5hDm7FHSWyORqjYWueO23ke5AOmCVtOEiCVtlFq23rdaahyW
	dDRG0pEmj+CtfRcAK/gguM4OFUHLK800ak6np1tYyeyiJ7CinJkfncQ/J07mcp8A8ipx73sDOqYmk
	N4KbzT2RRcNNpqFYvcuqJn54KfngLBFUtY0Eb+p0p4N84gotkCiV5x4HH83Et/pPpNW3OHiZvlZqX
	lay10pSApsqe7Zv6pBiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwXMT-00GT5h-PV; Thu, 24 Jun 2021 21:58:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwXMD-00GSzE-Ma; Thu, 24 Jun 2021 21:57:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00831613B9;
 Thu, 24 Jun 2021 21:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624571877;
 bh=yVk9OWhsYOUvvXi+eu9rDTIcKsexzhSWaaaSYGYVEWs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=bHbi53wf4EUCWV/VckTBBkgagYzQIdjlzw3hcwmfMZfsbYZSE4G0Othlk82OPvcZi
 mTEx1LgDjqNpWsw7u/wWPfhnX171bPwXZlPLByNKd2MAj8OYJctlnftGgyeTNf/vth
 TQZAgILapC5f3WM5jzMoBYOSMct2ATOCDOPDpXj6uDP1GHbaDHra10TGXLV5cp0eeA
 9o3UJCFoK9B2eXWiaufN4zDbHO/7TJ/GUTRU/E6lBcF8YfsNAxN5rNFHLPb3BhYZIL
 7RkKaM3A9/4ObdekMM6p0pDuF0bnJ8f3JhCuFhK4V12QZgbyB0Kdjb5i0xSx58rS1e
 uRlaHLRc8ceiQ==
Date: Thu, 24 Jun 2021 16:57:50 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
Message-ID: <20210624215750.GA3556174@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210608080409.1729276-1-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_145757_791460_DEC4C87C 
X-CRM114-Status: GOOD (  12.85  )
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

On Tue, Jun 08, 2021 at 10:04:09AM +0200, Javier Martinez Canillas wrote:
> IRQ handlers that are registered for shared interrupts can be called at
> any time after have been registered using the request_irq() function.
> 
> It's up to drivers to ensure that's always safe for these to be called.
> 
> Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
> their handlers are registered very early in the probe function, an error
> later can lead to these handlers being executed before all the required
> resources have been properly setup.
> 
> For example, the rockchip_pcie_read() function used by these IRQ handlers
> expects that some PCIe clocks will already be enabled, otherwise trying
> to access the PCIe registers causes the read to hang and never return.

The read *never* completes?  That might be a bit problematic because
it implies that we may not be able to recover from PCIe errors.  Most
controllers will timeout eventually, log an error, and either
fabricate some data (typically ~0) to complete the CPU's read or cause
some kind of abort or machine check.

Just asking in case there's some controller configuration that should
be tweaked.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
