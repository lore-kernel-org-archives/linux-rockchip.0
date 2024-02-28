Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA8EDC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 17:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9acZpEn+XEGTLPAFy7rEUQcPFNvkynCY5sbPNn3rRNo=; b=vZP8bclwgJt8DoRgfwakBj7wnj
	rUCbR7ZyRUTBcNIDkSLdSr20M2muz4c2G4AIvF1DLX48W6PhP/yyR4b4l3jaHdgQCCiXoyJ8WO96A
	B82zJnQRDW0XFEuAHUOzuZArofZ/bKkI0D3q3832E5ANyFrUnzmMag6RC7NFp3osf9dv3YdlOCYhm
	7apAv62IDO1ck9PWMQ3X6S8R+fECR1fZWimLSA2qyD7tRpyRQrxzJKA59Tp+LXPoV84yRyB/urVsz
	mVmnSt9m17Z5wJLr+ZzKXPl4TIajHj5AXMp9R5nYZCOCPttzIuy0W68LJwGB5E4ARWEjpKrH3REAf
	Hf+nTNcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfO4V-0000000ALxO-0zZC;
	Wed, 28 Feb 2024 17:50:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfO4R-0000000ALwb-1p2z;
	Wed, 28 Feb 2024 17:50:21 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709142616;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I817ZQ9O/ukouSHsI6i+6wIBDPrjcC9I+zq5Mu1bHc0=;
	b=rVADp1L7RTezswwLbMm8Im4Ri6RgLlbFwyQKfDg+enIljDQ2RUJ5L4wX/xjSgKlxU4t1/W
	DvlWz+isN5Zlx0pFJhSMWNi/7GQmhn6u9tlSe4FrKfvjoXcGYq6BWwF4hiSciwhpYJlYMe
	Bg0zx30FZ7V2COf3Eq3puYGuuS9CD7JgQ6OGfFcCn42D9XBm+jrXdecF/sPxrcXrTS9LZQ
	uGl7TTXYdzvAFjqIma+yGwM01uimvv35GIwfebgvCYKIJlWK9D9nAj9fCAOC8gxoXcORo0
	j5fXfHkO1x25lkD2D7YQGx9540nQVPtZyGD2yiPW7RHSMw8Gt6GroHUHGdEDlQ==
Date: Wed, 28 Feb 2024 18:50:15 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add cache information to the
 Rockchip RK3566 and RK3568 SoC
In-Reply-To: <8eb17d05ff857d154169e62b1f04413f@manjaro.org>
References: <20240226182310.4032-1-linux.amoon@gmail.com>
 <8ceea100f2ef7cce296943ce1397161a@manjaro.org>
 <CANAwSgQnoBx+th6s254sML+Zw+RZQC6WU9TjfMoWgHxmCqbDcw@mail.gmail.com>
 <4676da62ec0fc0fe89318baea0678e0c@manjaro.org>
 <8eb17d05ff857d154169e62b1f04413f@manjaro.org>
Message-ID: <31ad86c4e2e3f8f46016227b0d204c8b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_095020_121816_88E3385C 
X-CRM114-Status: GOOD (  18.33  )
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

On 2024-02-28 11:42, Dragan Simic wrote:
> On 2024-02-27 15:58, Dragan Simic wrote:
>> On 2024-02-27 13:49, Anand Moon wrote:
>>> On Tue, 27 Feb 2024 at 00:39, Dragan Simic <dsimic@manjaro.org> 
>>> wrote:
>>>> On 2024-02-26 19:23, Anand Moon wrote:
>>>> > As per RK3568 Datasheet and TRM add missing cache information to
>>>> > the Rockchip RK3566 and RK3568 SoC.
>>>> >
>>>> > - Each Cortex-A55 core has 32KB of L1 instruction cache available and
>>>> >       32KB of L1 data cache available with ECC.
>>>> > - Along with 512KB Unified L3 cache with ECC.
>>>> >
>>>> > With adding instruction cache and data cache and a write buffer to
>>>> > reduce the effect of main memory bandwidth and latency on data
>>>> > access performance.
>>>> >
>>>> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>>>> 
>>>> I was about to send my own patch that adds the same missing cache
>>>> information, so please allow me to describe the proposed way to move
>>>> forward.
>>>> 
>>>> The way I see it, your commit summary and description need a rather
>>>> complete rewrite, to be more readable, more accurate, and to avoid
>>>> including an irrelevant (and slightly misleading) description of the
>>>> general role of caches.
>>>> 
>>>> Also, the changes to the dtsi file would benefit from small 
>>>> touch-ups
>>>> here and there, for improved consistency, etc.
>>>> 
>>>> With all that in mind, I propose that you withdraw your patch and 
>>>> let
>>>> me send my patch that will addresses all these issues, of course 
>>>> with
>>>> a proper tag that lists you as a co-developer.  I think that would
>>>> save us a fair amount of time going back and forth.
>>>> 
>>>> I hope you agree.
>>> 
>>> I have no issue with this,.If you have a better version plz share 
>>> this.
>> 
>> Thank you, I'll send my patch within the next couple of days.
> 
> Here's a brief update...  Basically, not all of the cache-size values
> found in your patch were correct, but I've got all of them calculated
> again, double-checked, and cross-compared with the way values in my
> earlier patch for the RK3399 SoC dtsi were calculated. [2]
> 
> It all checked out just fine.  It's all based on the RK3566 and RK3568
> SoC datasheets and a couple of ARM specifications, which I'll describe
> in detail in my patch description.  I'll send the patch after I test
> it a bit, to make sure it all works as expected.
> 
> [1] 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b72633ba5cfa932405832de25d0f0a11716903b4

Pretty much the same patch for the RK3328 is also ready for testing.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
