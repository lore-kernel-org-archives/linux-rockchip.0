Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60976CD8C92
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 03:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1z4ktKU2FfO2hHC4vnp2+XxwZHrVbI9jWkg0RXwsGys=; b=tap+YDyHnw2S1H
	THTGvS9yQibZ0ARsl2g1BF/Y71ses5ZZAVYXJ3EVxBOtOJfRRAGxx3qVR1kGplky/2Jpuy/qJLzmD
	LYpTvC7qnxt7r+q9xV29Hk95W0PWrlYM4uEJjS11hasyBjaTFab1AOGpTEluXJ4R3VfQguGTqW58K
	r5FvHFdxij+rVamBewvLXIU+WkEbANIX2Dy2rKnD/GE6rkBYsOc6cYrJbOPqSo69DKQnkPhlX/y0E
	todqk01QQEXZEa8WGWwk7rt05OtHKmXCdoL0J5LtfHctDJ2/UDldybHzW8zUCYemQ3seAB4PPksIZ
	f9JbR4WXVPFPsM4Xe5ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWQqW-00000002ltD-0P5v;
	Mon, 08 Jun 2026 03:40:16 +0000
Received: from mail-m25490.xmail.ntesmail.com ([103.129.254.90])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWQqS-00000002lsj-3YZ6;
	Mon, 08 Jun 2026 03:40:15 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4171d1d3a;
	Mon, 8 Jun 2026 11:40:04 +0800 (GMT+08:00)
Message-ID: <42f1f39f-ab2b-4473-a82a-7ccefad41fcf@rock-chips.com>
Date: Mon, 8 Jun 2026 11:40:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 6/9] iommu/rockchip: Clear AUTO_GATING bit 1 on the
 RK356x v1 IOMMU
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
To: Midgy Balon <midgy971@gmail.com>
Cc: Simon Xue <xxm@rock-chips.com>, tomeu@tomeuvizoso.net,
 ogabbay@kernel.org, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20260604135255.62682-1-midgy971@gmail.com>
 <20260604135255.62682-7-midgy971@gmail.com>
 <e44b506e-e9d2-48e3-acea-ab28b7be9b37@rock-chips.com>
 <CA+GS1Y16++cztPxdUGLrPA73ENm4vJGFrjm-jP8r=8OQqcMJGA@mail.gmail.com>
 <0919ffcc-81c3-483a-a3ba-404b455c2040@rock-chips.com>
Content-Language: en-US
In-Reply-To: <0919ffcc-81c3-483a-a3ba-404b455c2040@rock-chips.com>
X-HM-Tid: 0a9ea550ec4803a7kunm2506f40117785a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSkgdVhlMShlNQx4fGUMeS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	JNS0pVSktLVUtZBg++
DKIM-Signature: a=rsa-sha256;
	b=MJ8kb8iu3k9kUW5PdS39JNE44AdvDP+25KeKewqwvQ/RgHEyL5ihvn80S04I9v8iAvtmc4m/wGvYWr1o93LDIoaLW9JtrrfkctewvhkyIZG8jZ/HS/zECvUB/KflIKXaj175aJMBP6eJFRogrm+S1h77FT2JKEi6FVjAl0EYr2E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Ybnh8S/ooqviaQ5QVM8foenQiJIP8ZWOyOXPrW9VaXY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_204013_458381_AB790D6F 
X-CRM114-Status: GOOD (  15.73  )
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

On 6/8/2026 9:45 AM, Chaoyi Chen wrote:
> Hi Midgy,
> 
> On 6/8/2026 5:05 AM, Midgy Balon wrote:
>> Hi Chaoyi,
>>
>>> As I said, it is v2. Could you please try using the code below instead and
>>> see if it works?
>>> [ auto_gate = read(RK_MMU_AUTO_GATING); auto_gate |= BIT(31); write(...) ]
>>
>> Thanks -- that's clearly the right shape (read-modify-write, before paging is
>> enabled, keeping the reset value instead of my clobbering 0x2).
>>
>> I rebuilt v7.1-rc6 (with the rocket RK3568 series + your per-device-ops work)
>> using your bit-31 version and tested it on a ROCK 3B: the NPU IOMMU comes up and
>> services the NPU's DMA cleanly -- the NPU probes, attaches its domain, and runs
>> repeated conv submissions with no DMA_READ_ERROR and no page-walk stall. No
>> regression from the write.
>>
>> To be precise about what I can and can't show: I tested both ways on v7.1-rc6 --
>> with your bit-31 write, and on the reset value (0x3) -- and the NPU
>> IOMMU services
>> the NPU's reads with zero faults in both cases (no DMA_READ_ERROR, no page-walk
>> stall). So I don't have a failing baseline here that bit-31 visibly
>> fixes. Is the
>> AUTO_GATING write needed on current mainline, or only under conditions I'm not
>> reproducing (a particular traffic pattern / silicon rev)? I'll keep the patch in
>> your form unless you'd prefer to drop it.
>>
>> One question so I document it correctly: what does bit 31 of RK_MMU_AUTO_GATING
>> control on the v2 block -- is it a master "disable internal auto clock-gating"
>> for the page-table walker (i.e. so a TLB-miss walk's AXI master keeps its clock
>> to completion)? The RK3568 TRM I have doesn't cover the IOMMU registers, so a
>> one-line description would let me write an accurate comment.
>>
> 
> Glad to hear this works. Please refer to the commit below.
> 
> [0]: https://github.com/rockchip-linux/kernel/commit/7f8158fb41b5cc8e738aaeebc3637c50ebd74cae
> [1]: https://github.com/rockchip-linux/kernel/commit/6a355e5f9a2069a2309e240791bc3aad63b7324e
> 

It looks like RGA needs this patch too, and it has already been merged :).

https://lore.kernel.org/all/20260428-spu-iommudtefix-v2-1-f592f579e508@pengutronix.de/

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
