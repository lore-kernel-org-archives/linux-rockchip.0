Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5876CC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 14:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BDdRF71TDfEGPGIiblGWVs9qiD02Az+yVSRDxFXpv2I=; b=UGV3Q/YhGSOq+jSy/dLwqmNXBL
	A2efZsu+Mp4jhGhQDkjPUAnhv7mDMKriMrz7VSkGa0PYO6JQRXG/P97FM0GFLWEbv7WgVP3puRzoi
	wZiSQ3ElNCEIMNN0vzz+qTzfe/xCL52B51bfMiVtVquJsYApwjR2PU1hg6Y2JVal01Ntx60co1czi
	M8+NNa9qXpnzxXn+2OswD/cpQdxJO7PAvq+8Q1DhVOCSRoK2GO+bZFPfpN2jBNcL/fB/oqDmS18+A
	bY26ty7ZC4rS/pfnXc3ifmlVd1rDRQ3sTkPjBCq7SDbUlA8cNRo3UCq2RS9LifS+5OFx+ksz+lqY0
	y+oooDzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siatp-00000007gwV-2mzR;
	Mon, 26 Aug 2024 14:40:53 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siat0-00000007gjG-3tJH;
	Mon, 26 Aug 2024 14:40:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724683199;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UmMRUhyOgg88OhrzC6Uhvrv9RgV9YppTUbN6J/fxSrc=;
	b=lW9zvN9Gf5Kx5jIRwfiuIyIZJxbIvSNPLpqbGUUmM9llR7hDYXRTnbaZmrR+Hpmt3a1cLH
	43/XXmujj6DXlZ0yUjC+W+p0VNKd+HmTx1MhnkWNYZ0WHJMApCg2lE1TPABCOsOoJV8pCY
	9GL5U0H9Bm0RqTlpP/xm1Nt6IcTcIEscrR032NJcGKnPm2VqpMQt/CWbVOOOjwtfs3ilL7
	mUj8OmUQnjC8bHNQwaWJ5NrMvmSWoRLZEYotqR4OwPl0XKZaCNYBGndN0wDeqf6O3/TIC7
	snv5iTwABUY+ek2R1y2V5pzUE2MZ9urN28xTZkh8NmOlF+DFX4rTijdOBGxCNg==
Date: Mon, 26 Aug 2024 16:39:58 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jaehoon
 Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com, Shawn Lin
 <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v4 2/4] mmc: dw_mmc-rockchip: Add internal phase support
In-Reply-To: <4943132.31r3eYUQgx@trenzalore>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <20240822212418.982927-3-detlev.casanova@collabora.com>
 <f0f5dec4a5403616fa25c6ed754f6050@manjaro.org>
 <4943132.31r3eYUQgx@trenzalore>
Message-ID: <b57017bca1a4a5fe558556142a9cec3d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_074003_347753_18F4E8A2 
X-CRM114-Status: GOOD (  24.69  )
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

Hello Detlev,

On 2024-08-23 15:34, Detlev Casanova wrote:
> On Friday, 23 August 2024 01:41:44 EDT Dragan Simic wrote:
>> Hello Detlev,
>> 
>> Please see a comment below.
>> 
>> On 2024-08-22 23:15, Detlev Casanova wrote:
>> > From: Shawn Lin <shawn.lin@rock-chips.com>
>> >
>> > Some Rockchip devices put the phase settings into the dw_mmc
>> > controller.
>> >
>> > When the feature is present, the ciu-drive and ciu-sample clocks are
>> > not used and the phase configuration is done directly through the mmc
>> > controller.
>> >
>> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
>> > Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
>> > ---
>> >
>> >  drivers/mmc/host/dw_mmc-rockchip.c | 171 +++++++++++++++++++++++++++--
>> >  1 file changed, 160 insertions(+), 11 deletions(-)
>> >
>> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c
>> > b/drivers/mmc/host/dw_mmc-rockchip.c
>> > index b07190ba4b7a..2748f9bf2691 100644
>> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
>> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
>> > @@ -15,7 +15,17 @@
>> >
>> >  #include "dw_mmc.h"
>> >  #include "dw_mmc-pltfm.h"
>> >
>> > -#define RK3288_CLKGEN_DIV	2
>> > +#define RK3288_CLKGEN_DIV		2
>> > +#define SDMMC_TIMING_CON0		0x130
>> > +#define SDMMC_TIMING_CON1		0x134
>> > +#define ROCKCHIP_MMC_DELAY_SEL		BIT(10)
>> > +#define ROCKCHIP_MMC_DEGREE_MASK	0x3
>> > +#define ROCKCHIP_MMC_DEGREE_OFFSET	1
>> > +#define ROCKCHIP_MMC_DELAYNUM_OFFSET	2
>> > +#define ROCKCHIP_MMC_DELAYNUM_MASK	(0xff <<
>> > ROCKCHIP_MMC_DELAYNUM_OFFSET)
>> > +#define ROCKCHIP_MMC_DELAY_ELEMENT_PSEC	60
>> > +#define HIWORD_UPDATE(val, mask, shift) \
>> > +		((val) << (shift) | (mask) << ((shift) + 16))
>> >
>> >  static const unsigned int freqs[] = { 100000, 200000, 300000, 400000
>> >
>> > };
>> >
>> > @@ -24,8 +34,143 @@ struct dw_mci_rockchip_priv_data {
>> >
>> >  	struct clk		*sample_clk;
>> >  	int			default_sample_phase;
>> >  	int			num_phases;
>> >
>> > +	int			internal_phase;
>> >
>> >  };
>> 
>> It might be good to declare internal_phase as "unsigned int
>> internal_phase:1",
>> i.e. as a bit field, which isn't going to save some memory in this
>> particular
>> case, but it would show additional attention to detail.
> 
> In that case, I would go with a bool instead of int, that makes things
> even clearer.

My suggestion to use "unsigned int internal_phase:1" actually takes
inspiration from the ASoC code, in which such bit fields are used
quite a lot, even when using them actually doesn't save space.

In this particular case, using plain bool would make sense, but I
still think that using an "unsigned int internal_phase:1" bit field
would fit better, because it would show the intention to possibly
save a bit of RAM at some point.  OTOH, I don't think that using
bool with such bit fields would actually work cleanly, because bool
actually resolves to int that's a signed type.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
