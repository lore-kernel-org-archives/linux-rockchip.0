Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69801C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 10:28:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2197563217
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 10:28:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2197563217
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSFjORKj9unp2sFAnQ76r6naabIQKF0aVI4btc+a82w=; b=eqqcBs/sD6wVoy
	Pk1ej4P0wRNRU6QnQcjzkif90XIUaRM3jf7GnNmHqvnZGr2ii/DNQnF9ISzXAPRiOre1G1hvF/86Z
	zx79wVNL+OteQ1ouwTIWwCQwjKD+4uWI2JuncWXoo+T0DAb7cn+U+4Fxv7jcJI5U3SGIndJlSpPGp
	MueS0Ivjfsds9aYV5h8fOCddWjVE+evPCriIGuxqQLJUh2lqMne6wOBgWYn9Iu1kXBbYObSQnCPMX
	IXqAAgLdyrrOm1gpMALVQg84HLINSBUGXiOQj1Yuze+nk29LDqLKc8jVAk7JExxIbPkPN3xD0W7AE
	LwaI8kSp6cUroMyb5AMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvhK-001C42-0e; Tue, 16 Nov 2021 10:28:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvhG-001C2Q-Si
 for linux-rockchip@lists.infradead.org; Tue, 16 Nov 2021 10:28:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC0D81FB;
 Tue, 16 Nov 2021 02:28:12 -0800 (PST)
Received: from [10.57.82.45] (unknown [10.57.82.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EEBD3F766;
 Tue, 16 Nov 2021 02:28:11 -0800 (PST)
Message-ID: <ba499fa1-c5f7-2e69-2bd5-14677f385d5b@arm.com>
Date: Tue, 16 Nov 2021 10:28:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [Question] rk3399 vfio-pci/sr-iov support
Content-Language: en-GB
To: Adam Joseph <adam@westernsemico.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci@vger.kernel.org
References: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
 <b597b9a6-870a-8fbd-6490-59734c04367f@arm.com>
 <20211115115004.7d043c5b@snowden>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211115115004.7d043c5b@snowden>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_022815_017417_5F2A3955 
X-CRM114-Status: GOOD (  23.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-11-15 19:50, Adam Joseph wrote:
> On Mon, 9 Dec 2019 14:07:02 +0000
> Robin Murphy <robin.murphy@arm.com> wrote:
>> On 09/12/2019 1:28 pm, Peter Geis wrote:
>>> I'm back with more pcie fun on the rk3399.
>>> I'm trying to get pcie passthrough working for a vm on the rk3399,
>>> and have encountered some roadblocks.
>>
>> That much I can help with somewhat: the major impediment is that
>> RK3399 doesn't have an IOMMU in front of PCIe.
> 
> For the more limited case of defending against attacks from
> hostile/buggy firmware on PCIe devices: is it possible to use the
> RK3399 PCIe "inbound address translation" support instead of an IOMMU?

I guess it might be possible to reserve some memory with the new 
"restricted-dma-pool" semantics then tweak the PCIe setup to match that. 
It will mostly depend on what the RC does with transactions that don't 
match any ATU entry. These kinds of registers typically only decode a 
small number of naturally-aligned power-of-two-sized address ranges so 
would not be able to support the kind of arbitrary translation/page 
protection you'd need for something like VFIO.

> The RK3399 TRM, v1.3 "Part 2", section 17.5.5.2.1 explains how to
> configure address translation (including a base/bounds check) for
> inbound-to-SoC memory writes, but details are quite sparse.
> 
> Linux appears to not use this functionality; from
> drivers/pci/controller/pcie-rockchip-host.c we can see that it
> disables the base/bounds (sets them to the entire 32-bit space, which
> is all RAM on RK3399 since it supports only 4GB) and passes all 32
> bits of incoming memory writes:
> 
> static int rockchip_pcie_prog_ib_atu(struct rockchip_pcie *rockchip,
>                                       int region_no, u8 num_pass_bits,
> 	                             u32 lower_addr, u32 upper_addr)
> ...
> 
> static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
> {
> ...
> 	err = rockchip_pcie_prog_ib_atu(rockchip, 2, 32 - 1, 0x0, 0);
> 
> Is this a dead end?  If not I might pursue it, if I can get the
> necessary documentation.  I couldn't find any mention of ATS in the
> RK3399 manual; if the PCIe RC allows that then all bets are off anyways.

Knowing this RC, if it ever did see an ATS translated transaction header 
it would probably SError the system, like it does for such outlandish 
things as trying to probe config space behind bridges :)

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
