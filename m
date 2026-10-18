Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A6ACCA490
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 20:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGn3+mjzqM7OXRZA5vazq60PHw/4h5X8gB5OmGvZE18=; b=Newvlxk20e231q
	XuUuIiQ/vVOrPik+KZaAEkosrIWYxE9Zrf3NW9X1DUOhEhP9t5/d22m8hjSvQ0n7h41fcMK7Fw7NK
	9k4ezyXCXnOA6OiymAq+TB2eu/F5O97mu0Brt/ljE/tEtQgww4r+NIX7p01aBf6jy+nbuWd5neIMq
	RtfWbj97P/Pg+6w/px/NBSmojBj2PxGaY19mH0Yx/lMNv7bJuqo37/dOMaI1l46tVMLaeemh4LnvU
	NA0+izcS5ksAHDSDDjOanTM4gBNkPN4rhPuzSIXlPNbRIJFTV4RiWh42arBZ2+IDII9+iUcVH3Diw
	4297GYdMqO24LSFLvSRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIX7P-00000006BwQ-1ENA;
	Sun, 18 Oct 2026 20:04:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIX7N-00000006Bw7-3KDr
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Oct 2026 20:04:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B15E4075B;
	Sun, 18 Oct 2026 20:04:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7582C1F000C5;
	Sun, 18 Oct 2026 20:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792353868;
	bh=gMSKwfEUvy76tp19EXY6DU7m5XMqNAf5LjZmGXHDufw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=nTLME0r7ugQMR3bx7GO1a9UK9dBkIkrbG9Q0ZnHrOMWeE3s0r7zgfhdvvh3VrQJZB
	 QShihuGuW7obaY8TW8GvFkdlhgHtOSC4ryJY363163F1fJzQGVNbQEAMKYomT1T6ju
	 G/zKsCr3ddiJkgYBERfwKJRr+LwA2YVz2YuNs3iA9JNXLlpT30EoL96bFOmIwCQc4j
	 O7sDgvegd4coN/t4/cw7g9Rcrft/T4bNaY3TCRM1FlDSdm1ZdTJ/JG+LdpzSrlZP9q
	 08x6EpPBCELxcg9+AjtQ5Whwoazxyr+fkn6fi40V20ZnU/JhpIK+utysDGOKKdgHTX
	 11Rx9dTf4X8tQ==
From: Thomas Gleixner <tglx@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>, Shawn Lin
 <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enable INTx affinity support
In-Reply-To: <atRLsp1qUA_sGS-0@debian>
References: <1790664898-207928-1-git-send-email-shawn.lin@rock-chips.com>
 <atRLsp1qUA_sGS-0@debian>
Date: Sun, 18 Oct 2026 22:04:24 +0200
Message-ID: <87y0bubws7.ffs@fw13>
MIME-Version: 1.0
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

On Sun, Oct 18 2026 at 10:05, Manivannan Sadhasivam wrote:
> On Tue, Sep 29, 2026 at 02:54:58PM +0800, Shawn Lin wrote:
>> Leverage the interrupt redirection infrastructure to enable CPU
>> affinity support for the legacy INTx interrupts. The INTx virqs are
>> demultiplexed by the chained handler of the "legacy" interrupt, whose
>> affinity cannot be changed, so affinity control for the INTx virqs is
>> achieved by redirecting the handler to run in IRQ work context on the
>> target CPU.
>> 
>> Mask the INTx source in .irq_pre_redirect() before the handler is
>> redirected: the legacy interrupt is level triggered, so an unmasked
>> line would keep re-firing the chained interrupt until the redirected
>> handler runs.
>> 
>> Same approach as the DesignWare core, commit eaf290c404f7c39f2 ("PCI:
>> dwc: Enable MSI affinity support").
>> 
>> Test was done on RK3588 EVB1 board with an NVMe with pci=nomsi
>> parameter. The /proc/interrupts columns are trimmed for brevity.
>> 
>>   # cat /proc/interrupts | grep INTx
>>   51:  137 0 0 0 0 0 0 0 INTx 0 Edge PCIe PME, nvme0q0, nvme0q1
>>   # echo 10 > /proc/irq/51/smp_affinity
>>   # dd if=/dev/nvme0n1p1 of=/dev/null bs=1M count=200
>>   200+0 records in
>>   200+0 records out
>>   209715200 bytes (210 MB, 200 MiB) copied, 0.182021 s, 1.2 GB/s
>>   # cat /proc/interrupts | grep INTx
>>   51:  137 0 0 0 946 0 0 0 INTx 0 Edge PCIe PME, nvme0q0, nvme0q1
>> 
>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>
> I'd like to get an Ack from Thomas for this patch since I'm not an irqchip
> expert to decipher whether this patch is valid or not.

I'm happy to look at it, but I can't be bothered to fish it out from a
mail archive. Can you please bounce me the original submission?


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
