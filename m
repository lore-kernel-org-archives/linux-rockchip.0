Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9BB1D78321
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 14:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a70oeJqEX7yJC5kmQTZAzv7r/EWAgCX2WNcd/rntXcs=; b=PfJIPoxFNTSJtW1Sn8p2cAM1Ut
	yN40i8tIkNrfPZgX/kWfiKnMfwnsUD6sWziegdK8WeCZLCjZuBnYpJCP0C/o7WrAvH8xJ7CxL9DQa
	OKnuPSjMx6cbmuHq+fbwe9DTUbPAubw/LmqIn68i8le/7CrJgHsPS46/STnAFCyDuaHcibBc9Vccn
	rGIQmHwit7THM40WmBsahGgdLH2lJTA6bDrFiFIt27UqNcvT1IHWaysWvWV0K//p7HnvfOXXgA0Mk
	PvZny+ocNxIjyrk37vyrrr3G7jpcmBeW6zdFMYKtufzlj2K1lG9ZK8lmRSlWlzcxnDryp3oP/A7Er
	3j1k+WeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7lY-00000006Wjf-2WcW;
	Mon, 02 Dec 2024 14:51:12 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7kX-00000006WZz-2V13;
	Mon, 02 Dec 2024 14:50:10 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733151007;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vQvOggYULqzBhMJ1cY0fm/C4jvh7h3UH+EMhmZlNNE4=;
	b=pS0QbCiu8xFRfw7wE1bmSxp5FwrCCQ7/IeSubP+/JE1ZcuSt9bvx7lAQZBC2D7c3HOvkLW
	MaQZz9jvzhikGm+LmNat93W+iWIk/1ubZj687HfwnHSiaqB0ee1aospPvE6m5AR5p9VpaA
	ugsmOogHnfzYq1o9/hDstMM+UIN0WqeWK0qpAa4SreV0jZA5cLjKYmDVUZ6KHw1h3DZeVA
	QzrUP4L8KwX5MGLXhesRfQpk7YPhYvV2OJRaKzWM87y1/1qaZHr4SzUyIGBy3Ft1Bh9mMP
	FlI4sC/lh2Wc5OGAe8omv6ITXiPYo+Kv7ZnHHmi6kzvA5FUVpYxGG3QfFkQMRA==
Date: Mon, 02 Dec 2024 15:50:07 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, Peter Robinson
 <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable rng on all rk356x
In-Reply-To: <D6175VTSP13T.200HWIIHOIDQQ@cknow.org>
References: <20241201234613.52322-1-pbrobinson@gmail.com>
 <302bdae2f4defeefe88ea4018a0be11f@manjaro.org>
 <b50376c7-c5d5-41ae-95ea-e2d68c1cc809@linaro.org>
 <D6175VTSP13T.200HWIIHOIDQQ@cknow.org>
Message-ID: <c50f603a9e1a819f17f72e97e92aeebd@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_065009_779999_D2A0521A 
X-CRM114-Status: GOOD (  16.31  )
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

Hello Diederik and Marcin,

On 2024-12-02 13:01, Diederik de Haas wrote:
> On Mon Dec 2, 2024 at 11:40 AM CET, Marcin Juszkiewicz wrote:
>> W dniu 2.12.2024 o 04:55, Dragan Simic pisze:
>>  > On 2024-12-02 00:46, Peter Robinson wrote:
>>  >> The rk356x rng is available on both the rk3566 and rk3568
>>  >> parts, the IP is all self contained within the SoCs so
>>  >> it's enabled already by default on rk3568 so let's enable
>>  >> it in the base rk356x.dtsi so it's enabled consistently
>>  >> everywhere.
>>  >
>>  > Please, go through the mailing list threads [1][2] that have led us
>>  > to the current state.  To sum it up, it isn't about what's 
>> supported
>>  > in the two RK356x SoC variants, but about the RK3566's HWRNG being
>>  > disabled because the testing showed that it produces unacceptably
>>  > low quality of random data, for some yet unknown reason.
>> 
>> So maybe there should be a comment in rockchip/rk3568.dtsi so we would
>> not get back to it again.
> 
> I suggested to put that in the (original) commit message:
> https://lore.kernel.org/linux-rockchip/6690040.iosknibmi9@bagend/
> precisely because this was quite predictable to happen.
> 
> So a +1 on a comment in the dtsi with a link to the discussion in the
> commit message.

Totally agreed on adding a brief summary to the RK356x base SoC dtsi,
so I went ahead and sent a patch that adds it. [1]  I also expected
that to be described in the base dtsi back when the HWRNG support was
added, but it somehow went in without the description.

[1] 
https://lore.kernel.org/linux-rockchip/6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
