Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA3CC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 22:05:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C55123D1C
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 22:05:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6C55123D1C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=s3HeeZQwfGdsTb3IJMesfRGg++0sbmATzN4sPDPO77w=; b=UfQQgxig+Eyj07dY/OCAeKgLC
	fmvDIdpf3gTMUh8cW0Z4v+tYqX5FL0NLlY8UzGTJpc0qkp9MrSAe2z72M/lVio3MoewSX7kTTJfCa
	bSWLfsPvymb4fv3bQNAKxW7hQYKb2wKDAHP5pVYRfXLQdlIspsuX3D3ncWI5I4cRGU69HBMQRcdQN
	WXn9SvHV0lRoRupVRUeDpNAC5iACFD1Ro+NGxdh+KuEfJ0W2WByXWfWGch9jzBUimklagb3GpUhPZ
	JPRaDcAEbMtk2ogteT5xxr0XKpUomAzTGr973II8cBCxT5cYt9jufO6fI9DiZOM9L6wcM7sY0yj4K
	XuuxbOAig==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn7ad-0000e1-8y; Wed, 09 Dec 2020 22:05:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn7aW-0000cg-SY; Wed, 09 Dec 2020 22:05:34 +0000
Date: Wed, 9 Dec 2020 16:05:30 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607551532;
 bh=NRmjl76QtNuV/wif/5gsS8SlkBI3WP3SYGnwAzcAoIk=;
 h=From:To:Cc:Subject:In-Reply-To:From;
 b=ke+i/bOPO8oqw4snKSRZqWgA+X70pBTq3TlLU6+f/sBwRMDnK3UQVuxBAlbz+5JuG
 HbsmkIgSr2l223J1gFfhDBWIQt198XfTfVvZ6h7Rs+UeyTu70cWLUFU0BrxvgM9rLB
 NS6CnGtlISHesQmPZ1CicrW8sCDa75BpNlClKad00vgXbdeNDE+Biz+Pd+AHMRKqri
 wZRFqVv3t7igKtAUoiYiLgsG0Z45HNSQgVeX4M/ia18c28B75TzLVFuIgeVEBDvwDx
 wrMbUSHfnlPhp0Fj6zIVeapwE/2HW4eZHz3/Fa6LOC85UB/rD6X+eleGUFnNKeSP67
 6XwImIuzTnqmg==
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <20201209220530.GA2551354@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209214359.gt4wisqh65oscd4i@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_170534_254537_8D582FFC 
X-CRM114-Status: GOOD (  16.86  )
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

On Wed, Dec 09, 2020 at 11:43:59PM +0200, Vladimir Oltean wrote:
> On Wed, Dec 09, 2020 at 03:34:49PM -0600, Bjorn Helgaas wrote:
> > On Wed, Dec 09, 2020 at 11:20:17PM +0200, Vladimir Oltean wrote:
> > > On Wed, Dec 09, 2020 at 02:59:13PM -0600, Bjorn Helgaas wrote:
> > > > Yep, that's the theory.  Thanks for testing it!
> > >
> > > Testing what? I'm not following.
> >
> > You posted a patch that you said fixed the bug for you.  The fix is
> > exactly the theory we've been discussing, so you have already verified
> > that the theory is correct.
> >
> > I'm sure Krzysztof will update his patch, and we'll get this tidied up
> > in -next again.
> 
> If you were discussing this already, I missed it. I was copied to this
> thread out of the blue two emails ago. I also looked at the full thread
> on patchwork, I don't see anything being said about the culprit being
> the size of the config space mapping.

Oh, sorry, this was an IRC discussion on #linux-pci (OFTC):

  10:51 AM <bjorn_> so the fault is on the first read for 00:00.1.  forget my noise about extracting the device/func from the *virtual* address.  the *physical* address is supposed to be aligned so you can do that, but not the virtual address
  10:55 AM <bjorn_> kwilczynski: oh, i think i see it: pci_ecam_create() does "bsz = 1 << ops->bus_shift", but we removed .bus_shift for this case
  10:55 AM <bjorn_> needs to default to 20 if it's not specified
  10:56 AM <bjorn_> result is that we only map one page of the ECAM space, so we fault when we access the second page (which is where 00:00.1 starts)

Anyway, thanks very much again for fixing this and confirming the fix!

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
