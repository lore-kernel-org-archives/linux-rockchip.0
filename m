Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32C86C55178
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 13:07:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A0ABC206FA
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 13:07:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FsF+tQle"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A0ABC206FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W7tfNCXSBfCsBFPdxktnzxwYeilusWrbK+9rpzsW62w=; b=FsF+tQle30QhIPRh22b+aPSxL
	OJIB+W2cVhVd2xeURr4hd6n9qbFTdGzQb+pGW4Vv17A1Ie+o1OaTvHCmUkahC2zlitRbIiHRC+pIh
	79zE3HNUHVLUp21sB+pwWp1XLvqs8Y9jtnBeVE+KeJrt3+bBjhSMUeJdkZkVhnUwYgGc4ArqVZwe+
	Ahq4mywYJYGnWKKFI4KDWbFDJ4Oat14HVCalCXBUJV89vPVCgUeMiPTZo3ObmCDirQAOQx8TLA1sz
	aFHD8xv6BHq8eLIetjLwnNAzW3ENXT3qIkC3XdE2OanudVX93gbvuPHA0w4ZXjIUSEunI9dB6KUPc
	dRfDVkHyg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY7eZ-0000YN-Ve; Thu, 29 Oct 2020 13:07:44 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY7eU-0000Vw-Ao
 for linux-rockchip@lists.infradead.org; Thu, 29 Oct 2020 13:07:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 53D6A1F45A47
Message-ID: <d4d080658113ad97816eda9262736e5fcc7b017c.camel@collabora.com>
Subject: Re: [PATCH 00/18] Add Hantro regmap and VC8000 h264 decode support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>, Philipp Zabel
 <p.zabel@pengutronix.de>
Date: Thu, 29 Oct 2020 10:07:27 -0300
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_090738_563117_DA7EB49F 
X-CRM114-Status: GOOD (  22.15  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Adrian,

On Mon, 2020-10-12 at 23:59 +0300, Adrian Ratiu wrote:
> Dear all,
> 
> This series introduces a regmap infrastructure for the Hantro driver
> which is used to compensate for different HW-revision register layouts.
> To justify it h264 decoding capability is added for newer VC8000 chips.
> 
> This is a gradual conversion to the new infra - a complete conversion
> would have been very big and I do not have all the HW yet to test (I'm
> expecting a RK3399 shipment next week though ;). I think converting the
> h264 decoder provides a nice blueprint for how the other codecs can be
> converted and enabled for different HW revisions.
> 
> The end goal of this is to make the driver more generic and eliminate
> entirely custom boilerplate like `struct hantro_reg` or headers with
> core-specific bit manipulations like `hantro_g1_regs.h` and instead rely
> on the well-tested albeit more verbose regmap subsytem.
> 
> To give just two examples of bugs which are easily discovered by using
> more verbose regmap fields (very easy to compare with the datasheets)
> instead of relying on bit-magic tricks: G1_REG_DEC_CTRL3_INIT_QP(x) was
> off-by-1 and the wrong .clk_gate bit was set in hantro_postproc.c.
> 
> Anyway, this series also extends the MMIO regmap API to allow relaxed
> writes for the theoretical reason that avoiding unnecessary membarriers
> leads to less CPU usage and small improvements to battery life. However,
> in practice I could not measure differences between relaxed/non-relaxed
> IO, so I'm on the fence whether to keep or remove the relaxed calls.
> 
> What I could masure is the performance impact of adding more sub-reg
> field acesses: a constant ~ 20 microsecond bump per G1 h264 frame. This
> is acceptable considering the total time to decode a frame takes three
> orders of magnitude longer, i.e. miliseconds ranges, depending on the
> frame size and bitstream params, so it is an acceptable trade-off to
> have a more generic driver.
> 

Before going forward with using regmap, I would like to have a sense
of the footprint it adds, and see if we can avoid that 20 us penalty.

I'd also like to try another approach, something that has less
memory footprint and less runtime penalty.

How about something like this:

#define G1_PIC_WIDTH 4, 0xff8, 23                                                
#define ...
                                 
struct hantro_swreg {                                                            
        u32 value[399 /*whatever size goes here*/];                                                          
};                                                                               
                                                                                 
void hantro_reg_write(struct hantro_swreg *r,                                   
                      unsigned int swreg, u32 mask, u32 offset, u32 new_val)     
{                                                                                
        r->value[swreg] = (r->value[swreg] & ~(mask)) |                          
                          ((new_val << offset) & mask);                          
}

Which you can then use in a very similar way as the current proposal:

hantro_reg_write(&swreg, G1_PIC_WIDTH, width);

The first advantage here is that we no longer have any
footprint for the fields.

The ugly macros for "4, 0xff8, 23" can be auto-generated from
existing vendor headers, when possible, so that shouldn't
bother us.

The register set is "flushed" using _relaxed, but it
could be still costly.

If that is indeed costly, perhaps we can avoid writing
the entire set by having a dirty bit somewhere.

In any case, it's worth exploring our options first, I think.

PS: Another option is to just fork RK3399 to its
own driver and call the day, given how different it is :)

Thanks!
Ezequiel



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
