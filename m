Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BD3DC54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 14:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9TuWADYaz/S8aIiS61LgWbQBiJVxPVEh7mvwvd9vQHU=; b=les1WBd3eaBZ9vopYtDvKd8Wru
	w7mRTepdzqMgGD1U/o6Pf10WwdqbujwfN450Uki4XB7F2kUkUg0vhY8zxRVDhk6mjTlm3094dpJpO
	vhSkXcl+5QMgGVIhfuSyWiMn6oTosatb9c0CbWWdH5oHgDRlbdQB9o2Vjdt6ZuHxpYbwW5HDgCz3k
	5m56gAlaZGUgavFu2zSyEs106tZl7taxV8eg9eLwucGA5x3RDq6jcEuHsZwEK3GrZ1edB/IpgXiBw
	IU674oUQEjSXx6rAnnzZhrZyjcYzbl2Ph6oPtPoXxrBEVdSjdx0aP2+1Lsk0BP283YcAZUitMMHj1
	H8CJA6rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reyuD-00000005g3A-1TJk;
	Tue, 27 Feb 2024 14:58:05 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reyuA-00000005g1F-1OZu;
	Tue, 27 Feb 2024 14:58:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709045880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JTZuVi0d9uvRZL4My10OcZy9FBePsZQVwsZhJKzdOL4=;
	b=DoNs7ATAI7kNuKmqWQm1bN1fJwd8ZKY0K+/yD1DzuW7xgfvgw085ZOa2rLbXEDfuKVk5eg
	srCPtSdxKNKeetNpEEgERqTKNRJhl01qdjIWrF6mqwLnL911EQzC9pOB2B0RB+RhwGfI+V
	aClodNXyGmn3uX4EbE1IaAdiJWLtv8l0sFoBva7b/FMoo/kEbvZNDXIKly3UXMPftKJCA3
	LiOFFyDaOYXrbbcvBKBC+Ea9cL63jHxLMlniykE9TxQWcgADEZg2IPCCc77GRE4P5HcYUN
	aq/ErBLdPaNAPly9K2A59/SrjU2IsgIiVHHqLGWNkvBc9IzHVL0bVtOb9MVyuA==
Date: Tue, 27 Feb 2024 15:58:00 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add cache information to the
 Rockchip RK3566 and RK3568 SoC
In-Reply-To: <CANAwSgQnoBx+th6s254sML+Zw+RZQC6WU9TjfMoWgHxmCqbDcw@mail.gmail.com>
References: <20240226182310.4032-1-linux.amoon@gmail.com>
 <8ceea100f2ef7cce296943ce1397161a@manjaro.org>
 <CANAwSgQnoBx+th6s254sML+Zw+RZQC6WU9TjfMoWgHxmCqbDcw@mail.gmail.com>
Message-ID: <4676da62ec0fc0fe89318baea0678e0c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_065802_569837_FCCD61E7 
X-CRM114-Status: GOOD (  16.54  )
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

On 2024-02-27 13:49, Anand Moon wrote:
> On Tue, 27 Feb 2024 at 00:39, Dragan Simic <dsimic@manjaro.org> wrote:
>> On 2024-02-26 19:23, Anand Moon wrote:
>> > As per RK3568 Datasheet and TRM add missing cache information to
>> > the Rockchip RK3566 and RK3568 SoC.
>> >
>> > - Each Cortex-A55 core has 32KB of L1 instruction cache available and
>> >       32KB of L1 data cache available with ECC.
>> > - Along with 512KB Unified L3 cache with ECC.
>> >
>> > With adding instruction cache and data cache and a write buffer to
>> > reduce the effect of main memory bandwidth and latency on data
>> > access performance.
>> >
>> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>> 
>> I was about to send my own patch that adds the same missing cache
>> information, so please allow me to describe the proposed way to move
>> forward.
>> 
>> The way I see it, your commit summary and description need a rather
>> complete rewrite, to be more readable, more accurate, and to avoid
>> including an irrelevant (and slightly misleading) description of the
>> general role of caches.
>> 
>> Also, the changes to the dtsi file would benefit from small touch-ups
>> here and there, for improved consistency, etc.
>> 
>> With all that in mind, I propose that you withdraw your patch and let
>> me send my patch that will addresses all these issues, of course with
>> a proper tag that lists you as a co-developer.  I think that would
>> save us a fair amount of time going back and forth.
>> 
>> I hope you agree.
> 
> I have no issue with this,.If you have a better version plz share this.

Thank you, I'll send my patch within the next couple of days.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
