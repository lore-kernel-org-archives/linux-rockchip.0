Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B90C2A09B
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 12:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMAqik3UIu7z8FkbcD/PNdxyjZ0S5CY97rZ/37zR3lo=; b=dRp56N1ST7LuQ0
	PlP40iXG8Wr/0qNjRzeJXZKa1HGqulruxgO1g8S99/dWDrbzHjfWaioOvoW00ezB9/qeJMKpYcKjF
	IjcKOuHUuwbUlmE4dlY6Reg3OvjH1G861FqSr4VtqgcX2T2lfYNAi3PMJAl0VSElhrjC3QbcGKpAI
	ezUI1dy0owgskDJPI5EFgFxy9qwYVJhraC6duFicCfR9wuKG3WKpM0tDkkNY9lvKHefqQpXWtT76G
	I1jMmkOXwuTH2NIdNHileWGm4yMhEw8CwhtAmFGCq1Z9NPjstgnMOhXkK61KF8R/R+YSiw9JcQMFD
	8vZg1k24so6xa/DRrxVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK7I-000000082WT-2bqM;
	Fri, 07 Aug 2026 12:56:04 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK7G-000000082Vs-2Crp;
	Fri, 07 Aug 2026 12:56:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 154911516;
	Fri,  7 Aug 2026 05:55:54 -0700 (PDT)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A5A23F9A2;
	Fri,  7 Aug 2026 05:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1786107358; bh=xfEgerLRPb7madfeMA7wFM70ghEiPOqFAV7kOwYDnuI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fzFGtKZvoitFZaUTdqu0c54B3XFfBCnXIAu/DR2Mq58FOkjjok0wWgUeiV77bfx2i
	 5q1rdjt9kOAEo6MqfhqtZKpEHpW1a4PCLERem8+pzB/f5B6iA0LCqEseD/LNCkk0CH
	 gCGZKTgzam0wS2V+g0p36SPV6wRRpQ51dE0RYrRc=
Message-ID: <fb94bd28-fdbf-4f99-a6ff-b5ab18c64345@arm.com>
Date: Fri, 7 Aug 2026 13:55:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v6 7/9] accel/rocket: add RK3576 NPU (RKNN) support
To: Diederik de Haas <diederik@cknow-tech.com>,
 Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net, heiko@sntech.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org,
 will@kernel.org, ulfh@kernel.org, p.zabel@pengutronix.de,
 ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, alchark@flipper.net, chaoyi.chen@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260806063413.350184-1-gahing@gahingwoo.com>
 <20260806063413.350184-8-gahing@gahingwoo.com>
 <DKIKXY8XZVPF.3RFR4ISK6Y4QX@cknow-tech.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <DKIKXY8XZVPF.3RFR4ISK6Y4QX@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_055602_776910_163BB922 
X-CRM114-Status: GOOD (  16.95  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 07/08/2026 9:48 am, Diederik de Haas wrote:
> Hi Jiaxing,
> 
> On Thu Aug 6, 2026 at 8:34 AM CEST, Jiaxing Hu wrote:
>> The RK3576 has two cores of the same RKNN block and a few platform
>> differences:
>>
>>   - the CBUF (convolution buffer) has its own clock domain, so the core
>>     needs six clocks rather than four;
>>   - the BIU reset moved into the power domain, leaving one reset here;
>>   - the NPU spans two power domains, and a device with more than one is
>>     skipped by the driver-core single-domain auto-attach, so the list has
>>     to be attached explicitly;
>>   - the DPU completion interrupt is armed exactly as on RK3588 but never
>>     reaches the GIC. The completion is visible in INTERRUPT_RAW_STATUS,
> 
> I don't know if it's relevant, so just a data point:
> - RK3588 has Cortex A-76 + A-55, which have an External GICv4
> - RK3576 has Cortex A-72 + A-53, which have an External GICv3

Nope, RK3588 has GIC-600, which is very much v3 still. I guess RK3576 
probably has GIC-500 like RK3399 given the CPUs, but that shouldn't make 
any meaningful difference here.

If the interrupt never fires at all then possibly the signal depends on 
some additional clock or power domain in order to propagate, or it's 
just described incorrectly; or if other interrupt sources within the 
NPU/IOMMU do still work then maybe there's some additional masking 
control that's been overlooked, or perhaps it it just terminally broken.

(And FWIW I'm also inclined to agree with the other comments that 
refactoring existing code to make room for new stuff, then actually 
adding the new stuff, should probably be two separate steps if it's not 
completely trivial)

Thanks,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
