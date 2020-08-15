Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6790C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 23:22:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F8DE2065C
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 23:22:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="nptE5U29";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVN9qcq6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F8DE2065C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=D22O34b25RzuCDiMT1avGY62390iOUntfeLGJ2Iw3ww=; b=nptE5U29pQjJlxmZFQv8BskWn
	yKKuf4GHQrEWDSCMduIaK9f6ck1HAGxSXdPKQwj/HqT3qIGZ0uy3WgtKWSnUw8rCppfkn7ltrAzOO
	0p30tsFSjaD7fftq/kQeLvgLRVpWjY+3vGJ1z546s6ZqL7mzc+FcAsJdLbCVcRPzycE8HLVgEq6aB
	h1MpfiS7ZUQPd8iFa/N5d3YgsGvOMf3qV//+cdukiiLl+PU9juryVdJRkxSZq+xnQEbOBoZDCWW4H
	UQ7uunzrh4AKfYKqY4zTd5yHVwp2dkJ6rogtA1nEEPbZuadzqVza1qmr5t/W7yhnA5nb+k2XIcbMb
	cHgMz3dSA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k75VS-0007le-QN; Sat, 15 Aug 2020 23:22:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k75VP-0007l3-H9; Sat, 15 Aug 2020 23:22:32 +0000
Received: from localhost (104.sub-72-107-126.myvzw.com [72.107.126.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 739D82065C;
 Sat, 15 Aug 2020 23:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597533749;
 bh=SB9wxVHgt3m7T/tEhx/Oa+YJt9VN49b1ddeU7NMOvEk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=aVN9qcq6cqmxvD4IsLLewly56VryrzoOr3d3eGSPE1tXpVvGPQOKs97rPBlll36uG
 7bM0cxwtJTA4bjf/rGTjcr8A0Xrcoy9KS/l92ag5S/On003FKZrPumPtta4UJtBrD7
 ghyyujWRbGVHMF1kSphFqAtvcGhXkHRpnPPnx+L8=
Date: Sat, 15 Aug 2020 18:22:28 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/2] PCI: rockchip: Work around missing device_type
 property in DT
Message-ID: <20200815232228.GA1325245@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200815125112.462652-2-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_192231_728097_04E63E97 
X-CRM114-Status: GOOD (  29.55  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Roh Herring <robh+dt@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, Aug 15, 2020 at 01:51:11PM +0100, Marc Zyngier wrote:
> Recent changes to the DT PCI bus parsing made it mandatory for
> device tree nodes describing a PCI controller to have the
> 'device_type = "pci"' property for the node to be matched.
> 
> Although this follows the letter of the specification, it
> breaks existing device-trees that have been working fine
> for years.  Rockchip rk3399-based systems are a prime example
> of such collateral damage, and have stopped discovering their
> PCI bus.
> 
> In order to paper over the blunder, let's add a workaround
> to the pcie-rockchip driver, adding the missing property when
> none is found at boot time. A warning will hopefully nudge the
> user into updating their DT to a fixed version if they can, but
> the insentive is obviously pretty small.

s/insentive/incentive/ (Lorenzo or I can fix this up)

> Fixes: 2f96593ecc37 ("of_address: Add bus type match for pci ranges parser")
> Suggested-by: Roh Herring <robh+dt@kernel.org>

s/Roh/Rob/ (similarly)

> Signed-off-by: Marc Zyngier <maz@kernel.org>

This looks like a candidate for v5.9, since 2f96593ecc37 was merged
during the v5.9 merge window, right?

I wonder how many other DTs are similarly broken?  Maybe Rob's DT
checker has already looked?

> ---
>  drivers/pci/controller/pcie-rockchip-host.c | 29 +++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 0bb2fb3e8a0b..d7dd04430a99 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -949,6 +949,35 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	if (!dev->of_node)
>  		return -ENODEV;
>  
> +	/*
> +	 * Most rk3399 DTs are missing the 'device_type = "pci"' property,
> +	 * potentially leading to PCIe probing failure. Be kind to the
> +	 * users and fix it up for them. Upgrading is recommended.
> +	 */
> +	if (!of_find_property(dev->of_node, "device_type", NULL)) {
> +		const char dtype[] = "pci";
> +		struct property *prop;
> +
> +		dev_warn(dev, "Working around missing device_type property\n");
> +
> +		prop = kzalloc(sizeof(*prop), GFP_KERNEL);
> +		if (!prop)
> +			return -ENOMEM;
> +
> +		prop->name	= kstrdup("device_type", GFP_KERNEL);
> +		prop->value	= kstrdup(dtype, GFP_KERNEL);
> +		prop->length	= ARRAY_SIZE(dtype);
> +		if (!prop->name || !prop->value) {
> +			kfree(prop->name);
> +			kfree(prop->value);
> +			kfree(prop);
> +			return -ENOMEM;
> +		}
> +
> +		if (of_add_property(dev->of_node, prop))
> +			dev_warn(dev, "Failed to add property, probing may fail");
> +	}
> +
>  	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*rockchip));
>  	if (!bridge)
>  		return -ENOMEM;
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
