Return-Path: <SRS0=bc75=QC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CD82C3526C
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Nov 2021 19:52:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A91661B44
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Nov 2021 19:52:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1A91661B44
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=westernsemico.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2cmKjY0hTeGaqOYtUhT5zmJPGHV1Q4OuMU85Gb2ufg=; b=k35OX2zQisNBBy
	+DniL7qsV3wxVbzpZ9N42uTKzSBwgET9STFP9v8qh0JWvUCishm4XFpoU9RL2S+VBI3kXFxrD9InF
	xWqeXvbCkf91m95mipfpGzZTtgttXCLONBMN3rr15CZhNJRDBnSXw9wngKUmlBcjDKrwigVjFJWfU
	doyA9fXM1REGKjUQfuAGZh172PhDlumG3YOZLLSjPH+YP3zQ1divVQu6HxVK95SzIv5yr5V0edyP5
	UV0872WowEbiWBGvdUH8wgGeuBJ6THOfbBd9quZuo2RUvTKoQE6ZVNjRIykjRMRTrOsz0hNd7nBMg
	G4YFS8f0Lbl2g7LI8rJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmi21-00Gxih-6m; Mon, 15 Nov 2021 19:52:45 +0000
Received: from server220-5.web-hosting.com ([198.54.116.164])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmi1y-00GxZZ-P4
 for linux-rockchip@lists.infradead.org; Mon, 15 Nov 2021 19:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=westernsemico.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N106bhCLQ+s4+KP2V+oVs4rM8QER8S2Y5+PhxVBoSa8=; b=Fugvd3gQAXlbSMsnvVUJ6b3yrx
 lOZVB92B/N4GlzfSFnE3c2lsOKqHh5pq8HMT1kCdlq01eGwf1tZ3YA0SZ1YJby+b8r2V0OH07H9Jt
 nwXj92f3jRCOJI/hjGPgdcuq5EnvAiKZfHzTEtST7jgejQ1LttPYwH+2TZvin8mH2Cp5diDgFlwpN
 b2vlMMPPGew7FN8qZz1igavtx6GMzvkI/4Q/oce/DLwbjxez9RJhULwuPco48Q4dHLrRqXPBz2HKh
 bzR3/ZREE9HL2F9jXw7e0YbU2IXu1YusqJPe7E42OYu9iJ5d+W++7x+mdow/WpZNkgTwLX2jJwpLf
 QhNSNqJA==;
Received: from static-198-54-131-168.cust.tzulo.com ([198.54.131.168]:46724
 helo=snowden) by server220.web-hosting.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <adam@westernsemico.com>)
 id 1mmi18-00Gn0K-Qw; Mon, 15 Nov 2021 14:51:55 -0500
Date: Mon, 15 Nov 2021 11:50:04 -0800
From: Adam Joseph <adam@westernsemico.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci@vger.kernel.org
Subject: Re: [Question] rk3399 vfio-pci/sr-iov support
Message-ID: <20211115115004.7d043c5b@snowden>
In-Reply-To: <b597b9a6-870a-8fbd-6490-59734c04367f@arm.com>
References: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
 <b597b9a6-870a-8fbd-6490-59734c04367f@arm.com>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server220.web-hosting.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - westernsemico.com
X-Get-Message-Sender-Via: server220.web-hosting.com: authenticated_id:
 westwhdn/from_h
X-Authenticated-Sender: server220.web-hosting.com: adam@westernsemico.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_115242_884574_1F1484CF 
X-CRM114-Status: GOOD (  11.28  )
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

On Mon, 9 Dec 2019 14:07:02 +0000
Robin Murphy <robin.murphy@arm.com> wrote:
> On 09/12/2019 1:28 pm, Peter Geis wrote:
> > I'm back with more pcie fun on the rk3399.
> > I'm trying to get pcie passthrough working for a vm on the rk3399,
> > and have encountered some roadblocks.
> 
> That much I can help with somewhat: the major impediment is that
> RK3399 doesn't have an IOMMU in front of PCIe.

For the more limited case of defending against attacks from
hostile/buggy firmware on PCIe devices: is it possible to use the
RK3399 PCIe "inbound address translation" support instead of an IOMMU?

The RK3399 TRM, v1.3 "Part 2", section 17.5.5.2.1 explains how to
configure address translation (including a base/bounds check) for
inbound-to-SoC memory writes, but details are quite sparse.

Linux appears to not use this functionality; from
drivers/pci/controller/pcie-rockchip-host.c we can see that it
disables the base/bounds (sets them to the entire 32-bit space, which
is all RAM on RK3399 since it supports only 4GB) and passes all 32
bits of incoming memory writes:

static int rockchip_pcie_prog_ib_atu(struct rockchip_pcie *rockchip,
                                     int region_no, u8 num_pass_bits,
	                             u32 lower_addr, u32 upper_addr)
...

static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
{
...
	err = rockchip_pcie_prog_ib_atu(rockchip, 2, 32 - 1, 0x0, 0);

Is this a dead end?  If not I might pursue it, if I can get the
necessary documentation.  I couldn't find any mention of ATS in the
RK3399 manual; if the PCIe RC allows that then all bets are off anyways.

  - a

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
