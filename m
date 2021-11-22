Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10069C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Nov 2021 19:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNt+QgWfYSjrU2ttdlDh1s8d9tLd/yrQEzl4t9Fbcu4=; b=d7Gzs4DXfkMiB4
	ucckzsa9yD8axjgbsYxIcR/mFCBKHY82yQG7apm9CNJ1xb84tMsr++vuC00dsE3Mb1y9cK4mncHtw
	7arp566ujVlm1Zrp5SKvt/7k3wENSREbgyqW0aF9gy3vjKS9lam/VwuUJipwu5PD8iGAsniH4Naxq
	ph0LhBXkoy88T7dqjpOg8QlgdUm43yAfgSnjpd8wxgqNsJw4QjAaQXKk3rTWXKAmMS+MRiw9cd7b5
	MgcvA6+wabXubkumjNv0i9g78TO4aoWLtmx+RJidAR0bbo/QOlIOoW+Ju/YFS4DkLn6qzEhFDEkFb
	Y3iAVmM8xbzv2dZgmgEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpEsk-00HTEd-5t; Mon, 22 Nov 2021 19:21:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpEsX-00HTD9-2Y; Mon, 22 Nov 2021 19:21:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B096BED1;
 Mon, 22 Nov 2021 11:21:20 -0800 (PST)
Received: from [10.57.56.56] (unknown [10.57.56.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E26303F73B;
 Mon, 22 Nov 2021 11:21:18 -0800 (PST)
Message-ID: <ef51bd05-0a83-0097-19ac-9df6591451ac@arm.com>
Date: Mon, 22 Nov 2021 19:21:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
Content-Language: en-GB
To: Alex Bee <knaerzche@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <73c57643-a0db-e7e7-174d-3cb6a978d98a@gmail.com>
 <20211122081008.GR6556@pengutronix.de>
 <0f975419-f3a6-8c5d-f700-904957eea3e6@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <0f975419-f3a6-8c5d-f700-904957eea3e6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_112125_271648_1B9C689E 
X-CRM114-Status: GOOD (  26.90  )
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

On 2021-11-22 17:47, Alex Bee wrote:
> Am 22.11.21 um 09:10 schrieb Sascha Hauer:
>> Hi Alex,
>>
>> On Mon, Nov 22, 2021 at 12:18:47AM +0100, Alex Bee wrote:
>>> Hi Sascha,
>>>
>>> Am 17.11.21 um 15:33 schrieb Sascha Hauer:
>>>> This series adds initial graphics support for the Rockchip RK356[68]
>>>> SoCs.  Graphics support is based around the VOP2 controller which
>>>> replaces the VOP controller found on earlier Rockchip SoCs. The driver
>>>> has been tested with HDMI support included in this series and MIPI-DSI
>>>> which is not included because it needs some more work. The driver is
>>>> taken from the downstream Rockchip kernel and heavily polished, most non
>>>> standard features have been removed for now. I tested the driver with
>>>> the libdrm modetest utility and also with weston with both pixman and
>>>> panfrost driver support. Michael Riesch reported the driver to work on
>>>> the RK3566 as well, but device tree support for this SoC is not yet
>>>> included in this series.
>>>>
>>>> The HDMI changes are based on patches from Benjamin Gaignard, but
>>>> modified a bit as I found out that the HDMI port on the RK3568 only
>>>> needs one additional clock, not two. Also I added regulator support
>>>> which is needed to get the HDMI up on the rk3568-EVB board.
>>>>
>>>> All review and testing feedback welcome
>>>
>>> thanks for working on that - it's very (very,very) much appreciated.
>>>
>>> It took me some time to figure it out: It seems rk3568-iommu driver s
>>> broken - I did only get "white noise" when using it alongside vop
>>> (similar like it was reported here before). However: removing the
>>> iommu-property from vop makes it working for me with HDMI output on
>>> quartz64 as well. Could you check if you have the iommu driver in kernel
>>> enabled if it works for you, if the property is present in DT? (I used
>>> 5.16-rc1 + this series + [0]).
>> I have the iommu driver enabled and it works for me. I get this during
>> boot:
>>
>> [0.263287] rockchip-vop2 fe040000.vop: Adding to iommu group 0
>>
>> So I expect it is indeed used.
>>
>>> Also vop mmu seems to have the
>>> power-domain missing in your series (same as downstream) - however
>>> adding that doesn't help much currently.
>> Probably the power domain gets enabled anyway when the VOP is activated,
>> so adding it to the iommu won't help anything. Nevertheless it seems
>> correct to add the property, I'll do so in the next round.
>>
>>> As a sidenote: I verfied this with using Ezequiel's vpu addtion for
>>> RK356x: It did only work when removing the iommu there as well (getting
>>> tons of page faults otherwise) - so iommu driver really seems to broken,
>>> at least for RK3566. (Or I'm a missing a option in kernel config, which
>>> wasn't required for the older iommu version?)
>> I don't think so. I started from defconfig and disabled other
>> architectures and unneeded drivers, but I did not enable anything
>> specific to iommu.
> 
> I've found out now that I can make it work with iommu, by limiting the
> available memory to something below 4G (I have a 8G board). So there is
> something wrong in the driver or somewhere in memory mapping, iommu api
> (since it works when using CMA), ... however: it does clearly not relate
> to your patch.

FWIW it doesn't surprise me that there might still be bugs lurking in 
the IOMMU driver's relatively recent changes for packing 40-bit physical 
addresses into 32-bit pagetable entries and registers - that sort of 
thing is always tricky to get right. You're correct that that's 
something that wants debugging in its own right, though.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
