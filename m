Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13683C63777
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 18:19:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AAFB5206F9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 18:19:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VTzJvUqt"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AAFB5206F9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7eQj5+w+b1mkaZb9Kq7Ae5npsL2W6plr3+hMaHjolf4=; b=VTzJvUqt03H5C0RLoTkybsZx1
	YcLSyk1P0lZvjmoZVbkJUXhUEzcsCN9ZibGifq1kcQGJj8uhusBCNXwXzMh5rc+94OFKA4+CfkhEs
	BTUBiKU1qngsGlWzqIFklG9dabJCSKTDLbtFSGFm7Xtpm6Zw1n/j0SY/1Q3Ono5jsw6wrSzvtSHJ+
	sNnzu75T7Dy9V09wrWB/wYTlSALkYNITB1/QOOb+iS7qXzdcson95hOR/vpBzrrxVgx15j6Qrh6M8
	aASu/rkjQOFJvWJaNT2wlxnznKHEk5BgdMoQ2+0bCyqlJJT95iA0co1sQnzZvCrCQYb45XAKfg3lk
	bZBlUFtIw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjnm0-0001y4-9n; Mon, 30 Nov 2020 18:19:40 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjnly-0001xB-CM; Mon, 30 Nov 2020 18:19:39 +0000
IronPort-SDR: oBlkrvXrjXBlrYGizjqLOmAlGz/NXMnDHjknTp9dVMb7Cfyo6n8GBsxTHBY2m0zOcK4ZaJjhBv
 Wu2p9FX+XytQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="172843615"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="172843615"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 10:19:34 -0800
IronPort-SDR: XS1ISZYLRuHr2DP6wa+hnr2WbMlBroaPLFVMDoyVIDoBZGj3fB2+pzVl69W66H0oG/Gb4RGpz7
 zALQS1ilcxMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="314662861"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2020 10:19:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 10:19:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 30 Nov 2020 10:19:32 -0800
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Mon, 30 Nov 2020 10:19:32 -0800
From: "Derrick, Jonathan" <jonathan.derrick@intel.com>
To: "helgaas@kernel.org" <helgaas@kernel.org>, "David.Laight@ACULAB.COM"
 <David.Laight@ACULAB.COM>
Subject: Re: [PATCH v6 4/5] PCI: vmd: Update type of the __iomem pointers
Thread-Topic: [PATCH v6 4/5] PCI: vmd: Update type of the __iomem pointers
Thread-Index: AQHWxqR5T+KTElL2ckS1iiGCxL3tTang6SEAgACKCACAABBbgA==
Date: Mon, 30 Nov 2020 18:19:32 +0000
Message-ID: <f562dfc0043763ad6df3574dc9b7f0440687e66e.camel@intel.com>
References: <20201130172058.GA1088391@bjorn-Precision-5520>
In-Reply-To: <20201130172058.GA1088391@bjorn-Precision-5520>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <D6FB06213AE4BE4191D81BA8794047FC@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_131938_567573_2CC7FEFF 
X-CRM114-Status: GOOD (  23.57  )
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
Cc: "kw@linux.com" <kw@linux.com>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "shawn.lin@rock-chips.com" <shawn.lin@rock-chips.com>,
 "paulus@samba.org" <paulus@samba.org>,
 "thomas.petazzoni@bootlin.com" <thomas.petazzoni@bootlin.com>,
 "jonnyc@amazon.com" <jonnyc@amazon.com>,
 "toan@os.amperecomputing.com" <toan@os.amperecomputing.com>,
 "will@kernel.org" <will@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "Jonathan.Cameron@huawei.com" <Jonathan.Cameron@huawei.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "wangzhou1@hisilicon.com" <wangzhou1@hisilicon.com>,
 "rrichter@marvell.com" <rrichter@marvell.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "nsaenzjulienne@suse.de" <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 2020-11-30 at 11:20 -0600, Bjorn Helgaas wrote:
> On Mon, Nov 30, 2020 at 09:06:56AM +0000, David Laight wrote:
> > From: Krzysztof Wilczynski
> > > Sent: 29 November 2020 23:08
> > > 
> > > Use "void __iomem" instead "char __iomem" pointer type when working with
> > > the accessor functions (with names like readb() or writel(), etc.) to
> > > better match a given accessor function signature where commonly the
> > > address pointing to an I/O memory region would be a "void __iomem"
> > > pointer.
> > 
> > ISTM that is heading in the wrong direction.
> > 
> > I think (form the variable names etc) that these are pointers
> > to specific registers.
> > 
> > So what you ought to have is a type for that register block.
> > Typically this is actually a structure - to give some type
> > checking that the offsets are being used with the correct
> > base address.
> 
> In this case, "cfgbar" is not really a pointer to a register; it's the
> address of memory-mapped config space.  The VMD hardware turns
> accesses to that space into PCI config transactions on its secondary
> side.  xgene_pcie_get_cfg_base() and brcm_pcie_map_conf() are similar
> situations and use "void *".
> 
> Bjorn

Yes it's just the passthrough window for PCI config bus ops.

Reviewed-by: Jon Derrick <jonathan.derrick@intel.com>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
