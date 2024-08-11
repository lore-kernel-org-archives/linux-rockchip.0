Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A68CC52D7B
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Aug 2024 20:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B/+7LlINGmocThjcdgAeCt3LknIZWUvdP3d8xR4AcRQ=; b=pYdUj1SnbvHLiUTUJlrZg1lFX2
	ImnaRqRmLcVILkgSA3AcrrOGNjhQpQWlduQFk2MNa+pqhdWVGvlNBzPdPrw9chgX5W0zsIEX04u6Q
	FTJVnU3uypftSRxKFHKVPmZ5HH+yMIV9A7iH940EbixkciI/JyRvSoh5VtmZVzNBt4UYKq+swqkce
	JdRw+2HlUa1215O4RQ22+8LQnMRZUtyFGXMwPok5lazD4LBu7DVsykdDAPAqU4rTM3lVA4RZ73g2S
	bMnixs4ReO3XsG4nOQYNOmQbUuWz3Ab98ARe/IHdHZV68ZMInsIcDHANhi2sM9e4RirWf/TxFt71I
	OmEwg/3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdF2a-0000000G7wx-4935;
	Sun, 11 Aug 2024 20:19:48 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdF1y-0000000G7qC-1DuU;
	Sun, 11 Aug 2024 20:19:12 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723407544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=avYIGd3Krb0jitE0JQR1G+BW2JvujW9lhAompcelzLs=;
	b=p5o4ArLHxxKBFW/W8tNRAOJPR0B+ur/ljeAawHHMVeD/RtlMla8BxDFhrA1rSuI2z4oMqM
	5IrJooETD3PintWwGjCi6WpaRs37je2iEXhjIbZ8vQWLntnQ78hKlNjQTppuRjH0K8IFgD
	4PpZ79UmRaNMgeldvgEDZsKUz9xYt6YMoLj67NxUd9O/3I/koSmhav5wh4h6ndfqtTNw/M
	561t8+7bFO4Np0D17DD71oBj9sqXR3FCyn+J2a7/auSHj0hnuIECQVMTz4kOmw6/cDAiS3
	Subyo6h5273SfmwrfWQ4fn32WEPJtE4RjPtiHGoIxvMFdfKsA7+iRpwCCiwGNw==
Date: Sun, 11 Aug 2024 22:19:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] clk: rockchip: clk-rk3588: Fix 32k clock name for
 pmu_24m_32k_100m_src_p
In-Reply-To: <b827ebfd49aeef3aaed9d35b7cc42555@manjaro.org>
References: <20240710165354.1338287-1-eagle.alexander923@gmail.com>
 <b827ebfd49aeef3aaed9d35b7cc42555@manjaro.org>
Message-ID: <300daf3be205f463922e277d63b73205@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_131910_969602_0923CE1E 
X-CRM114-Status: GOOD (  20.76  )
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

Just a brief reminder about this patch...


On 2024-07-13 05:51, Dragan Simic wrote:
> Hello Alexander,
> 
> On 2024-07-10 18:53, Alexander Shiyan wrote:
>> The 32kHz input clock is named "xin32k" in the driver,
>> so the name "32k" appears to be a typo in this case. Lets fix this.
>> 
>> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> 
> Makes sense to me, and it seems to be a typo inherited from the
> downstream code, [1] which the base RK3588 dtsi confirms, [2] as
> well as the RK3588 Hardware Design Guide, version 1.0.
> 
> Thus, please include:
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
> I'd also suggest that this patch receives a Fixes tag, and gets
> submitted for inclusion into stable kernels.  Thus:
> 
> Fixes: f1c506d152ff ("clk: rockchip: add clock controller for the 
> RK3588")
> Cc: stable@vger.kernel.org
> 
> ... but you should actually submit the v2 with these tags, if you
> choose to agree with this suggestion.
> 
> Furthermore, it seems that the board dts for Radxa ROCK 5B needs
> some related fixes, because it deviates from the RK3588 EVB design,
> but I still need to dig deeper into that and actually do some
> testing to confirm it.  Perhaps that will apply to other similar
> RK3588-based boards as well.
> 
> [1] 
> https://raw.githubusercontent.com/rockchip-linux/kernel/develop-5.10/drivers/clk/rockchip/clk-rk3588.c
> [2] 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi#n423
> 
>> ---
>>  drivers/clk/rockchip/clk-rk3588.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/clk/rockchip/clk-rk3588.c
>> b/drivers/clk/rockchip/clk-rk3588.c
>> index b30279a96dc8..3027379f2fdd 100644
>> --- a/drivers/clk/rockchip/clk-rk3588.c
>> +++ b/drivers/clk/rockchip/clk-rk3588.c
>> @@ -526,7 +526,7 @@ PNAME(pmu_200m_100m_p)			= { "clk_pmu1_200m_src",
>> "clk_pmu1_100m_src" };
>>  PNAME(pmu_300m_24m_p)			= { "clk_300m_src", "xin24m" };
>>  PNAME(pmu_400m_24m_p)			= { "clk_400m_src", "xin24m" };
>>  PNAME(pmu_100m_50m_24m_src_p)		= { "clk_pmu1_100m_src",
>> "clk_pmu1_50m_src", "xin24m" };
>> -PNAME(pmu_24m_32k_100m_src_p)		= { "xin24m", "32k", 
>> "clk_pmu1_100m_src" };
>> +PNAME(pmu_24m_32k_100m_src_p)		= { "xin24m", "xin32k", 
>> "clk_pmu1_100m_src" };
>>  PNAME(hclk_pmu1_root_p)			= { "clk_pmu1_200m_src",
>> "clk_pmu1_100m_src", "clk_pmu1_50m_src", "xin24m" };
>>  PNAME(hclk_pmu_cm0_root_p)		= { "clk_pmu1_400m_src",
>> "clk_pmu1_200m_src", "clk_pmu1_100m_src", "xin24m" };
>>  PNAME(mclk_pdm0_p)			= { "clk_pmu1_300m_src", "clk_pmu1_200m_src" };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
