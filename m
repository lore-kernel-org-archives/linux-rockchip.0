Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7193C63777
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 17:21:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 375CE2076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 17:21:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="brmDkrew";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGw3iJHv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 375CE2076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=FpEwTacHid2/ZJuW7Zq5ax2ZdnqXckrwhR9+mkAOEsc=; b=brmDkrewecNxSzFWaLuCtcoxH
	3GGo+PVvIpv9PX7mOf/YFGM1ZpuwvaVF2QykdVVRq15VLU/pWMgaD9LDiaRvfOs4eR293ZKfqUyST
	D6w0xgYc9fqwXPOp5YZ1iGQUOK1jfgxTvtFGK2efElhZqdiD0o35yoxifo7tIq/izcVCHTpzGignt
	AY6DP75wC9MGaO+V50bUD7DaB3YXNNAXQRuemVJw8vKIXoLAv1xAnOIPpCJ69ZgVlrPJJG8VyAIav
	O9pnNFbJ8EsMLXhdBxDSTYaWOunh6cIGbxOHwnPL2ffsw/Wg3ChjMakEHPUoeaX3DtP5OKlDytBk2
	I2yaCelDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjmrN-0000VI-Vp; Mon, 30 Nov 2020 17:21:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjmrE-0000Sp-Ky; Mon, 30 Nov 2020 17:21:01 +0000
Received: from localhost (129.sub-72-107-112.myvzw.com [72.107.112.129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E7372074A;
 Mon, 30 Nov 2020 17:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606756859;
 bh=CbyJZAykpCyvjLTpCkzzfJ9pt8bGnYt3xwR2qqUfoI0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=TGw3iJHvgbb+g7diOKMOugr/nuC73+5xTFsD9rPkDlD83W1yHAv7Z9v4H3q8I+h2c
 xfiTLITVOpwfI8mn+Ad8xB8BJQI4zSsYIJBr4W2mHE1j1LovJTR5pfq9Lf1A6rY2iM
 aagN+CcdLl1BicBBB0tVOwQNrEZ9ea5LezYWYgRc=
Date: Mon, 30 Nov 2020 11:20:58 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH v6 4/5] PCI: vmd: Update type of the __iomem pointers
Message-ID: <20201130172058.GA1088391@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81f4ddc2f0524b4b80c8a0bfa2df57fe@AcuMS.aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_122100_851886_32D11F9F 
X-CRM114-Status: GOOD (  19.18  )
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
Cc: 'Krzysztof =?utf-8?Q?Wilczy=C5=84ski'?= <kw@linux.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 Jonathan Derrick <jonathan.derrick@intel.com>, Ray Jui <rjui@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Robert Richter <rrichter@marvell.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Nov 30, 2020 at 09:06:56AM +0000, David Laight wrote:
> From: Krzysztof Wilczynski
> > Sent: 29 November 2020 23:08
> > 
> > Use "void __iomem" instead "char __iomem" pointer type when working with
> > the accessor functions (with names like readb() or writel(), etc.) to
> > better match a given accessor function signature where commonly the
> > address pointing to an I/O memory region would be a "void __iomem"
> > pointer.
> 
> ISTM that is heading in the wrong direction.
> 
> I think (form the variable names etc) that these are pointers
> to specific registers.
> 
> So what you ought to have is a type for that register block.
> Typically this is actually a structure - to give some type
> checking that the offsets are being used with the correct
> base address.

In this case, "cfgbar" is not really a pointer to a register; it's the
address of memory-mapped config space.  The VMD hardware turns
accesses to that space into PCI config transactions on its secondary
side.  xgene_pcie_get_cfg_base() and brcm_pcie_map_conf() are similar
situations and use "void *".

Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
