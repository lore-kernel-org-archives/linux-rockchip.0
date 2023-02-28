Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C28DC64ED6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 16:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw96/oq8kQreDhYLa9vBVDWQGsw4d6ylKFDrTf3FnGw=; b=OARNebMDFEd62S
	UzXwRrEhuuXmmubUuKg7cUQogtPPscRPtghM6QUYngD50s/ukLgJn5Y4E/0VZv9gyTQuKjWSRj3JN
	bNwZhIAPqbIFBLBSHh8zDKcNB3c9DWau09WvdzMCC3GhYpO1JlfNOS5heKpYNIwowV41UCGs8Qh0R
	G1wJIkYkDFxtVuzZvieieAEhrjOfuUt4xjOw64+R9Lsm4wNrUMC7gCWfptjBJTo8cq5qOf21Rmt06
	1/VP3Ho/TfYMqZuA/khily8MACxAel9oif9nqqHH3S0eK2W7S+cCEWbzDSUASr65e27eFvUWFsjEN
	x6cdpc+xCz+HMqFn9T1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX34a-00Dmfn-GW; Tue, 28 Feb 2023 16:43:28 +0000
Received: from post.baikalelectronics.com ([213.79.110.86])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX34P-00Dmem-NX; Tue, 28 Feb 2023 16:43:20 +0000
Received: from post.baikalelectronics.com (localhost.localdomain [127.0.0.1])
	by post.baikalelectronics.com (Proxmox) with ESMTP id AC854E0EB4;
	Tue, 28 Feb 2023 19:35:03 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	baikalelectronics.ru; h=cc:cc:content-type:content-type:date
	:from:from:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=post; bh=CuNkOupsAqXo74CzsFjX
	z2B4PdfP8UnQM9Atgh14Tdc=; b=Pm5ly4gnRYRRSuGzuxynxW5677hdqTiDpDYl
	gY7BT0wOUqg399GqVjmw3gYAr5UQxWAZ+ht65BYEyec5fOy1kFNWaGaH2D5fNW/b
	TQXzLsiI1Kpd3m9DJrXyPPsuen0QblaiyBK2OWtfwBEkLU6iFrb1kpU3xPv/2yYy
	C9PVhRw=
Received: from mail.baikal.int (mail.baikal.int [192.168.51.25])
	by post.baikalelectronics.com (Proxmox) with ESMTP id 90EB3E0E1D;
	Tue, 28 Feb 2023 19:35:03 +0300 (MSK)
Received: from mobilestation (10.8.30.22) by mail (192.168.51.25) with
 Microsoft SMTP Server (TLS) id 15.0.1395.4; Tue, 28 Feb 2023 19:35:02 +0300
Date: Tue, 28 Feb 2023 19:35:01 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Bjorn Helgaas <helgaas@kernel.org>, Anton <smalltalk@swismail.com>
CC: Serge Semin <fancer.lancer@gmail.com>, Simon Xue <xxm@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, <smalltalk@swismail.com>, Kever Yang
	<kever.yang@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner
	<heiko@sntech.de>, <linux-rockchip@lists.infradead.org>,
	<linux-pci@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Bug 217100] New: Bifurcation between pcie3x1 & pcie3x2 doesn't
 work in RK3568J.
Message-ID: <20230228163420.e4tskh3bwposkxji@mobilestation>
References: <bug-217100-41252@https.bugzilla.kernel.org/>
 <20230228124427.GA114786@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230228124427.GA114786@bhelgaas>
X-Originating-IP: [10.8.30.22]
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_084318_339257_357825A2 
X-CRM114-Status: GOOD (  36.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

* Cc += Linux ARM mailing list

Hi Anton

On Tue, Feb 28, 2023 at 06:44:27AM -0600, Bjorn Helgaas wrote:
> On Tue, Feb 28, 2023 at 08:53:50AM +0000, bugzilla-daemon@kernel.org wrote:
> > https://bugzilla.kernel.org/show_bug.cgi?id=217100
> > 
> >            Summary: Bifurcation between pcie3x1 & pcie3x2 doesn't work in
> >                     RK3568J.
> > ...
> 
> > Hello.
> > 
> > First, I want to say that pcie3x1 crashes if started before pcie3x2 . Driver
> > > pcie-designware.c 
> > 
> > in function 
> > 
> > > void dw_pcie_version_detect(struct dw_pcie *pci)
> > 
> > tries to read parameter from dbi register (PCIE_VERSION_NUMBER) and fails on
> > it.

Could you give more details what crashes? Log/Stack-trace would be
nice to see.

Do you know the DW PCIe IP-core version? Could you try to manually get the
content of the PCIE_VERSION_NUMBER and PCIE_VERSION_TYPE registers after
the system successfully boots up?

On the first glance what you see here might be caused by the DBI
reference clock race condition/malfunction. The
dw_pcie_version_detect() function doesn't do much. It just reads the
IP-core version/type registers content. So if the reference clock
isn't enabled by the time of the function call then the system bus may
return an error, which could be caught by the system errors handler
module, which driver can cause the kernel crash. Though the LLDD
enables all the supplied clocks before calling dw_pcie_host_init(). So
what you've discovered seems unexpected and most likely caused by some
other place. Thereby here are several questions:

1. Are you sure your DT-file has all the required reference clocks
specified for all the Rockchip PCIe DT-nodes?

2. Are you sure there were no updates in the platform-clock
driver(s) which could cause a possible clock malfunction?

3. Could you have a look whether the pcie3x1 and pcie3x2 reference/DBI
clock sources are unrelated? That might give a clue to the problem
solution and could confirm the race.

4. Are you sure that the problem is in the dw_pcie_version_detect()
function? Could you try to replace all the dw_pcie_readl_dbi() calls
with the actual content of the PCIE_VERSION_NUMBER and PCIE_VERSION_TYPE
registers and then have a look whether the crash still happens?

Anyway Log/Stack-trace would give better understanding of the problem.

> > So I changed sequence of declaration PCIE in rk3568.dtsi: first - pcie3x2 next
> > pcie3x1. Now Linux first starts pcie3x2, then successfully starts pcie3x1.
> > 
> > But main problem is that bifurcation in phy driver 
> > > phy-rockchip-snps-pcie3.c 
> > 
> > doesn't work. I tried add next lines in function

It seems to me that this problem and the problem above might be weakly
related. Let's dive deeper in the first problem. Then we can go
towards the second problem if it will be actual by that time.

> > 
> > > static int rockchip_p3phy_probe(struct platform_device *pdev)
> > 
> > right after block check
> > 
> > > if (priv->num_lanes == -EINVAL) {
> > > }
> > 
> > > priv->num_lanes = 2;
> > > priv->lanes[0] = 1;
> > > priv->lanes[1] = 2
> > 
> > And driver writes during Linux boot process that bifurcation is enabled, but
> > 
> > lspci
> > 
> > does't show second device.
> > 
> > Best regards,
> > Anton.
> 
> Thanks much for your report, Anton.  People don't really pay attention
> to the bugzilla, so I'm forwarding this to the mailing list and to
> some folks who've worked on that driver in the past.
> 

> MAINTAINERS doesn't list an entry for pcie-dw-rockchip.c; I'm not sure
> if that's an oversight or if nobody cares enough to actually maintain
> it.

Hi Bjorn

It seems that the driver is currently supported by the Rockchip SoC maintainer:
ARM/Rockchip SoC support
F:      drivers/*/*/*rockchip*
F:      drivers/*/*rockchip*
So @Heiko might give a more experienced advice about the bug.

-Serge(y)

> 
> Bjorn
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
