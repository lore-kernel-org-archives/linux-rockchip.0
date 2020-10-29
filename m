Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36C3EC4363A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 14:15:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9B44A2076B
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 14:15:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MQVSYruZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9B44A2076B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zUwPgy4h5pdYkyg85jVEJezgoR8V/XkY5dWucakW1+k=; b=MQVSYruZaR6O8EJA2qpByHTXy
	9FeadaH0lWXja+0Kxe/ZYWLLf0qvTa2b/NLsvC2ze2nUSpXsa3hxPzSWc+HCQ//ylHYkRdaI5ImuA
	pB8/pviuner4jo/DHGB0pgFhHKaoNZL5LZktYrfgTW2oXDkGnF7K3UeX9fmmuYNzqMHwOnFU/sOj0
	EmSCRQO+acc5VfGX0dahxgvTZRW3Boevn8O/Fy1rrZ/M/0jfWnGMHU1PugzngwQ6IZmXUXKw0Iuxl
	eDcqg3QUI7WoH8antpZAs47aGkhrw6PL09D30RVlZHeyoqWa/GtHigAAFgTLLKf4zt4U86gHdE9ND
	ysAzmWPxA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY8hw-0005S7-HO; Thu, 29 Oct 2020 14:15:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY8hu-0005RT-D5
 for linux-rockchip@lists.infradead.org; Thu, 29 Oct 2020 14:15:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62125139F;
 Thu, 29 Oct 2020 07:15:13 -0700 (PDT)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A0533F719;
 Thu, 29 Oct 2020 07:15:11 -0700 (PDT)
Subject: Re: [PATCH 00/18] Add Hantro regmap and VC8000 h264 decode support
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Adrian Ratiu <adrian.ratiu@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
 <d4d080658113ad97816eda9262736e5fcc7b017c.camel@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0dd9fb9d-3f33-b9b0-a7a8-6d3111e92d64@arm.com>
Date: Thu, 29 Oct 2020 14:15:10 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <d4d080658113ad97816eda9262736e5fcc7b017c.camel@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_101514_612653_0B21D56A 
X-CRM114-Status: GOOD (  32.13  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, kuhanh.murugasen.krishnan@intel.com,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-10-29 13:07, Ezequiel Garcia wrote:
> Hello Adrian,
> 
> On Mon, 2020-10-12 at 23:59 +0300, Adrian Ratiu wrote:
>> Dear all,
>>
>> This series introduces a regmap infrastructure for the Hantro driver
>> which is used to compensate for different HW-revision register layouts.
>> To justify it h264 decoding capability is added for newer VC8000 chips.
>>
>> This is a gradual conversion to the new infra - a complete conversion
>> would have been very big and I do not have all the HW yet to test (I'm
>> expecting a RK3399 shipment next week though ;). I think converting the
>> h264 decoder provides a nice blueprint for how the other codecs can be
>> converted and enabled for different HW revisions.
>>
>> The end goal of this is to make the driver more generic and eliminate
>> entirely custom boilerplate like `struct hantro_reg` or headers with
>> core-specific bit manipulations like `hantro_g1_regs.h` and instead rely
>> on the well-tested albeit more verbose regmap subsytem.
>>
>> To give just two examples of bugs which are easily discovered by using
>> more verbose regmap fields (very easy to compare with the datasheets)
>> instead of relying on bit-magic tricks: G1_REG_DEC_CTRL3_INIT_QP(x) was
>> off-by-1 and the wrong .clk_gate bit was set in hantro_postproc.c.
>>
>> Anyway, this series also extends the MMIO regmap API to allow relaxed
>> writes for the theoretical reason that avoiding unnecessary membarriers
>> leads to less CPU usage and small improvements to battery life. However,
>> in practice I could not measure differences between relaxed/non-relaxed
>> IO, so I'm on the fence whether to keep or remove the relaxed calls.
>>
>> What I could masure is the performance impact of adding more sub-reg
>> field acesses: a constant ~ 20 microsecond bump per G1 h264 frame. This
>> is acceptable considering the total time to decode a frame takes three
>> orders of magnitude longer, i.e. miliseconds ranges, depending on the
>> frame size and bitstream params, so it is an acceptable trade-off to
>> have a more generic driver.
>>
> 
> Before going forward with using regmap, I would like to have a sense
> of the footprint it adds, and see if we can avoid that 20 us penalty.
> 
> I'd also like to try another approach, something that has less
> memory footprint and less runtime penalty.
> 
> How about something like this:
> 
> #define G1_PIC_WIDTH 4, 0xff8, 23
> #define ...
>                                   
> struct hantro_swreg {
>          u32 value[399 /*whatever size goes here*/];
> };
>                                                                                   
> void hantro_reg_write(struct hantro_swreg *r,
>                        unsigned int swreg, u32 mask, u32 offset, u32 new_val)
> {
>          r->value[swreg] = (r->value[swreg] & ~(mask)) |
>                            ((new_val << offset) & mask);
> }
> 
> Which you can then use in a very similar way as the current proposal:
> 
> hantro_reg_write(&swreg, G1_PIC_WIDTH, width);
> 
> The first advantage here is that we no longer have any
> footprint for the fields.
> 
> The ugly macros for "4, 0xff8, 23" can be auto-generated from
> existing vendor headers, when possible, so that shouldn't
> bother us.
> 
> The register set is "flushed" using _relaxed, but it
> could be still costly.
> 
> If that is indeed costly, perhaps we can avoid writing
> the entire set by having a dirty bit somewhere.
> 
> In any case, it's worth exploring our options first, I think.

Or maybe the regmap API itself deserves extending with a "deferred" 
operating mode where updates to the cached state can be separated from 
committing that state to the underlying hardware.

...which, after a brief code search out of curiosity, apparently already 
exists in the form of regcache_cache_only()/regcache_sync(), so there's 
probably no need to reinvent it :)

Robin.

> 
> PS: Another option is to just fork RK3399 to its
> own driver and call the day, given how different it is :)
> 
> Thanks!
> Ezequiel
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
