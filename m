Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F1D6C47094
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 04:04:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07DE160232
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 04:04:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 07DE160232
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=yBxLg8weTqffANVH3Csii87K9zZFwUs3Z4Vv0vs+S9Q=; b=Hre1Zn+e1VcP/J
	xdUcE3WEBxJc8ZIWnEwGVGvkpAzYTMYueR0QTUBLgsbP+Y6amz003L1YH/qjr0QGmepkaMTObiukl
	QUhYXE9FOhP7853XYYiuRF2ypS5GCNaz0pOze2NlFfTTxq8u5gqKdOB50Fk26V0e3UT6lHZ6TI7z0
	oTuhiJYvDwTh1MCfw5ofWYa6U4gTkn8EQjOMCSM2iyHim+ncylwaKM13aspuiy6vE8Hfrq0B+4TNP
	DJhjEUIblEwK1D1wr6f54B7Lh3h5mMDCGmClmRJhU7YWrzoEkHGtB7lnjy7MpzB53o6gK99SD/JR3
	fFFVUPjv4c/RBjiq1YGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrBw3-00GlF5-LK; Thu, 10 Jun 2021 04:04:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrBvi-00GlB5-4L; Thu, 10 Jun 2021 04:04:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DB2D2613FF;
 Thu, 10 Jun 2021 04:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623297869;
 bh=gp8DSf2esejDzMXehJatTxOWzp66b5XoGY3UTIHCbD8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=AZmcaE+0HKjr2RD9KRGy4kZ97dxs/cgNCvnqI1q9uOmfdb1Rj2q3RPh84QE/mct9J
 wx4/AIzg8GsqluYOOlMEfzfDGFCYIgieeqsMET8dR4vq+6pVKLHzXBK4dV05+c896U
 SxMr26o02Arm84iU8LcbESBixMhb+hezwxvM8OBfes3NoRWP6kObdcdx1vFuVVa5cl
 vZgHwdXMprNIznRLN4xjppEvlU0phebLYC2UgXyMN+8ToASg3uI3Q3dqY80WyE9B+x
 nWWHqnGEkH/BM0c1IMSxTYwXaSxGyAKO486tR26hmP/ibsgQLo4VwVPmclLr1jBvfD
 yU9BrsH3g0XIA==
Date: Wed, 9 Jun 2021 23:04:27 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: Punit Agrawal <punitagrawal@gmail.com>, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com
Subject: Re: [PATCH v3 2/4] PCI: of: Relax the condition for warning about
 non-prefetchable memory aperture size
Message-ID: <20210610040427.GA2696540@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac6bf3c8-fe8e-5897-b225-699a7c46a818@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_210430_232584_0B71B7B9 
X-CRM114-Status: GOOD (  29.84  )
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

On Wed, Jun 09, 2021 at 12:36:08AM +0530, Vidya Sagar wrote:
> On 6/7/2021 4:58 PM, Punit Agrawal wrote:
> > 
> > Commit fede8526cc48 ("PCI: of: Warn if non-prefetchable memory
> > aperture size is > 32-bit") introduced a warning for non-prefetchable
> > resources that need more than 32bits to resolve. It turns out that the
> > check is too restrictive and should be applicable to only resources
> > that are limited to host bridge windows that don't have the ability to
> > map 64-bit address space.
>
> I think the host bridge windows having the ability to map 64-bit address
> space is different from restricting the non-prefetchable memory aperture
> size to 32-bit.

> Whether the host bridge uses internal translations or not to map the
> non-prefetchable resources to 64-bit space, the size needs to be programmed
> in the host bridge's 'Memory Limit Register (Offset 22h)' which can
> represent sizes only fit into 32-bits.

> Host bridges having the ability to map 64-bit address spaces gives
> flexibility to utilize the vast 64-bit space for the (restrictive)
> non-prefetchable memory (i.e. mapping non-prefetchable BARs of endpoints to
> the 64-bit space in CPU's view) and get it translated internally and put a
> 32-bit address on the PCIe bus finally.

The vastness of the 64-bit space in the CPU view only helps with
non-prefetchable memory if you have multiple host bridges with
different CPU-to-PCI translations.  Each root bus can only carve up
4GB of PCI memory space for use by its non-prefetchable memory
windows.

Of course, if we're willing to give up the performance, there's
nothing to prevent us from using non-prefetchable space for
*prefetchable* resources, as in my example below.

I think the fede8526cc48 commit log is incorrect, or at least
incomplete:

  As per PCIe spec r5.0, sec 7.5.1.3.8 only 32-bit BAR registers are defined
  for non-prefetchable memory and hence a warning should be reported when
  the size of them go beyond 32-bits.

7.5.1.3.8 is talking about non-prefetchable PCI-to-PCI bridge windows,
not BARs.  AFAIK, 64-bit BARs may be non-prefetchable.  The warning is
in pci_parse_request_of_pci_ranges(), which isn't looking at
PCI-to-PCI bridge windows; it's looking at PCI host bridge windows.
It's legal for a host bridge to have only non-prefetchable windows,
and prefetchable PCI BARs can be placed in them.

For example, we could have the following:

  pci_bus 0000:00: root bus resource [mem 0x80000000-0x1_ffffffff] (6GB)
  pci 0000:00:00.0: PCI bridge to [bus 01-7f]
  pci 0000:00:00.0:   bridge window [mem 0x80000000-0xbfffffff] (1GB)
  pci 0000:00:00.0:   bridge window [mem 0x1_00000000-0x1_7fffffff 64bit pref] (2GB)
  pci 0000:00:00.1: PCI bridge to [bus 80-ff]
  pci 0000:00:00.1:   bridge window [mem 0xc0000000-0xffffffff] (1GB)
  pci 0000:00:00.1:   bridge window [mem 0x1_80000000-0x1_ffffffff 64bit pref] (2GB)

Here the host bridge window is 6GB and is not prefetchable.  The
PCI-to-PCI bridge non-prefetchable windows are 1GB each and the bases
and limits fit in 32 bits.  The prefetchable windows are 2GB each, and
we're allowed but not required to put these in prefetchable host
bridge windows.

So I'm not convinced this warning is valid to begin with.  It may be
that this host bridge configuration isn't optimal, and we might want
an informational message, but I think it's *legal*.

> > Relax the condition to only warn when the resource size requires >
> > 32-bits and doesn't allow mapping to 64-bit addresses.
> > 
> > Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
> > Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> > Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
> > Cc: Vidya Sagar <vidyas@nvidia.com>
> > ---
> >   drivers/pci/of.c | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> > index 1e45186a5715..38fe2589beb0 100644
> > --- a/drivers/pci/of.c
> > +++ b/drivers/pci/of.c
> > @@ -581,7 +581,8 @@ static int pci_parse_request_of_pci_ranges(struct device *dev,
> >                          res_valid |= !(res->flags & IORESOURCE_PREFETCH);
> > 
> >                          if (!(res->flags & IORESOURCE_PREFETCH))
> > -                               if (upper_32_bits(resource_size(res)))
> > +                               if (!(res->flags & IORESOURCE_MEM_64) &&
> > +                                   upper_32_bits(resource_size(res)))
> >                                          dev_warn(dev, "Memory resource size exceeds max for 32 bits\n");
> > 
> >                          break;
> > --
> > 2.30.2
> > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
