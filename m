Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2830C4361B
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 20:59:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7657F23D20
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 20:59:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7657F23D20
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=dLFAfn/tVhx2+gRwh88cBVCoNkvuPygAYLDo3noz258=; b=eoGDzQb5NPDkDK24bZOPi4Lf0
	8Hk/CGNObh/ekID0BtHAKKI7mDzUVaHTY0WbonIydCO8S17Z6sRaIjlv1UJGw03O3ywMynQfDYBMR
	yO4uuMrtpmdWwVqbtkRm7xNY7GO75BG8j07rCMcG9ilR+8zqVbOW4XmSIrsJgb/PcfHm9uC/UUoaz
	oO6LdqUaauXJQd09cGIKKMOtJVwZ/ULADexjRw5VtLDKGr8rUefIaVPc1MC4CFlV13qfNxCNGWhbt
	snNWo3xK+B73Y5M9+JcnqXK6zAreRZG0iO6RtL8hZtdcb99lgLEs0nBl5oWIYSvRNub8p1tzUoriz
	ewOZOaqUQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn6YS-0001C3-02; Wed, 09 Dec 2020 20:59:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn6YN-0001Al-EW; Wed, 09 Dec 2020 20:59:16 +0000
Date: Wed, 9 Dec 2020 14:59:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607547554;
 bh=pvqjMFhla2q4E1L5EcGAjQubfS/OI2TwXomPQ6ykxoE=;
 h=From:To:Cc:Subject:In-Reply-To:From;
 b=rgdkVXQoGmjUyluCxPmeHhIF6oNZyesz2HwME3/MPKmoCJLx1oZeK2WnrEy0eLysV
 Fc/4Pv/USOVx94iZeC2Fqf5cRrbvosbOZse/o06fsfiKmyWOd6Q5vHy2tWew7PUdBe
 ABbpJ1Yd3xt9r33+BJh6OJ96oyoKZM9YX24qR67YPZ68EA71LNX74z+P310bO2/8Z6
 EwxpZWHPdRYtMqEYNcJRQohNJydf/8XDhx6zl/0tEBFqBNw9NqzWcxcPwYMDIROiux
 /5TjgznJZ1aM0dWEzYjdYDmB0uv1Gn8BsIJ+kqyUEZbT7uxWU5wjidEzqYDGx57DzF
 uQ4QLsFP87AUw==
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <20201209205913.GA2543692@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209202904.2juzokqhleusgsts@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_155915_641974_34100FEC 
X-CRM114-Status: GOOD (  27.49  )
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
Cc: kw@linux.com, heiko@sntech.de, benh@kernel.crashing.org,
 shawn.lin@rock-chips.com, Alexandru Marginean <alexm.osslist@gmail.com>,
 paulus@samba.org, thomas.petazzoni@bootlin.com, jonnyc@amazon.com,
 toan@os.amperecomputing.com, will@kernel.org, robh@kernel.org,
 lorenzo.pieralisi@arm.com, mpe@ellerman.id.au, michal.simek@xilinx.com,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 rjui@broadcom.com, f.fainelli@gmail.com, linux-rpi-kernel@lists.infradead.org,
 Jonathan.Cameron@huawei.com, bhelgaas@google.com, jonathan.derrick@intel.com,
 sbranden@broadcom.com, wangzhou1@hisilicon.com,
 Michael Walle <michael@walle.cc>, rrichter@marvell.com,
 linuxppc-dev@lists.ozlabs.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 09, 2020 at 10:29:04PM +0200, Vladimir Oltean wrote:
> On Wed, Dec 09, 2020 at 04:40:52PM +0100, Michael Walle wrote:
> > Hopefully my mail client won't mess up the output that much.
> 
> I can reproduce on my LS1028A as well. The following fixes the bug for
> me. I did not follow the discussion and see if it is helpful for others.
> I don't understand how the bug came to be. There might be more to it
> than what I'm seeing. If it's just what I'm seeing, then the patch was
> pretty broken to begin with.
> 
> -----------------------------[cut here]-----------------------------
> From b184da4088c9d39d25fee2486941cdf77688a409 Mon Sep 17 00:00:00 2001
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> Date: Wed, 9 Dec 2020 22:17:32 +0200
> Subject: [PATCH] PCI: fix invalid window size for the ECAM config space
> 
> The blamed commit forgot that pci_ecam_create() calculates the size of
> the window for the ECAM's config space based on the spacing between two
> buses. The drivers whose .bus_shift from struct pci_ecam_ops was changed
> to zero in this commit are now using this invalid value for bus_shift
> in calculating the window size.
> 
> Before (broken):
> pci_ecam_create: remapping config space from addr 0x1f0000000, bus_range 0x1, bsz 0x1
> After (fixed/restored):
> pci_ecam_create: remapping config space from addr 0x1f0000000, bus_range 0x1, bsz 0x100000
> 
> Fixes: f3c07cf6924e ("PCI: Unify ECAM constants in native PCI Express drivers")
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  drivers/pci/ecam.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/ecam.c b/drivers/pci/ecam.c
> index 59f91d434859..9fda0d49bc93 100644
> --- a/drivers/pci/ecam.c
> +++ b/drivers/pci/ecam.c
> @@ -28,11 +28,19 @@ struct pci_config_window *pci_ecam_create(struct device *dev,
>  		struct resource *cfgres, struct resource *busr,
>  		const struct pci_ecam_ops *ops)
>  {
> +	unsigned int bus_shift = ops->bus_shift;
>  	struct pci_config_window *cfg;
>  	unsigned int bus_range, bus_range_max, bsz;
>  	struct resource *conflict;
>  	int i, err;
>  
> +	/*
> +	 * struct pci_ecam_ops may omit specifying bus_shift
> +	 * if it is as per spec
> +	 */
> +	if (!bus_shift)
> +		bus_shift = PCIE_ECAM_BUS_SHIFT;

Yep, that's the theory.  Thanks for testing it!

>  	if (busr->start > busr->end)
>  		return ERR_PTR(-EINVAL);
>  
> @@ -46,14 +54,14 @@ struct pci_config_window *pci_ecam_create(struct device *dev,
>  	cfg->busr.end = busr->end;
>  	cfg->busr.flags = IORESOURCE_BUS;
>  	bus_range = resource_size(&cfg->busr);
> -	bus_range_max = resource_size(cfgres) >> ops->bus_shift;
> +	bus_range_max = resource_size(cfgres) >> bus_shift;
>  	if (bus_range > bus_range_max) {
>  		bus_range = bus_range_max;
>  		cfg->busr.end = busr->start + bus_range - 1;
>  		dev_warn(dev, "ECAM area %pR can only accommodate %pR (reduced from %pR desired)\n",
>  			 cfgres, &cfg->busr, busr);
>  	}
> -	bsz = 1 << ops->bus_shift;
> +	bsz = 1 << bus_shift;
>  
>  	cfg->res.start = cfgres->start;
>  	cfg->res.end = cfgres->end;
> -----------------------------[cut here]-----------------------------

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
