Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF6CFE77198
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jan 2025 15:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WdefFvfc8YqjLzrdv+F1ZXwZhuDc5VnHuYImLgQLsp4=; b=dd2I4Jtid5XNi9a7ZXMQuGPJ1I
	dNTnww5FXfNjbuhmLn6Zr48MyWHE6tj74Qb4/A30OaMpHdrFRqBVHe6HjF040S07JYmF9H89YUVND
	NH9UK1VWxKOQD0zNeTqf59XQdzLKdtMPK2l/KhUoEenf9jWefDmcPW+WvLBTSOnUo0kdry/njnWVz
	3sluum6nMX6WymBVwaghf9SukTR1rHcH+kmIO3PYvgDQ7j74l8jeta98EH+hsXpenfRGCn9szkuN7
	t89Z6FlfAiaVpXMqOx5VjliaiFE4NDtDPNEdis8SHezSXdCPqS7Rnf/c34r/CRU+PivaNEjgvokEG
	BJK7oRKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUSfP-0000000H0Ef-3mh9;
	Sun, 05 Jan 2025 15:35:52 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUSfM-0000000H0E8-1h53
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Jan 2025 15:35:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736091343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u1MCmjilWTgBhn7D2vqKDiQLyu7tF+DDIvHY3jHHcXQ=;
	b=fLjMkOSik2u/ae8t9/y8LTitp1tnMi01FEDhrivWlzyf6Rz1QXFZ3hmSFdtuY8xPN96mxU
	UM7/93o9r3ohbNzc4u0eMj4rYEAKifnUmRbYKCQ49vFlBZgqdbif0KLb2hoGs5QVpEhw7k
	BSCEQK8O8GTOrHpJM3RY5SmTUe9HWqO85HN0Wi5qTM1AKPFYHCP40Nu13NJFigJJOqzkw4
	PsSkFOEzBjAy2l+4PfGNiJEqQGqvVVSZocDUQCORsEoHx3+RDxM9hwB547I5NHeYelPgqC
	1Fvr7ZyPFk5adkYKGQUBDsaEzrqEXv7OJiUxIsxi6WTn5/BONNK3GL3ONanMyw==
Date: Sun, 05 Jan 2025 16:35:39 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Kever Yang <kever.yang@rock-chips.com>, FUKAUMI Naoki <naoki@radxa.com>,
 robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com,
 jbx6244@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
In-Reply-To: <6900956.G0QQBjFxQf@phil>
References: <20241226024630.13702-1-naoki@radxa.com>
 <20241226024630.13702-2-naoki@radxa.com>
 <E280EE989942CA2A+4252fa87-049d-4b73-ac28-537f29c09660@radxa.com>
 <6900956.G0QQBjFxQf@phil>
Message-ID: <965d7330ece716c991e89d6d2dfe02df@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_073548_629375_50E04609 
X-CRM114-Status: GOOD (  14.96  )
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

Hello Heiko,

On 2025-01-05 14:29, Heiko Stuebner wrote:
> Am Freitag, 3. Januar 2025, 07:45:58 CET schrieb FUKAUMI Naoki:
>> What do you think about the introduction of the "rockchip,rk3582"
>> compatibility string?
> 
> I'm not Kever, but I do like the way you did this :-) .
> 
> I.e. the rk3582 _is_ a rk3588 with those cores disabled.
> 
> So going the way you did allows us to not introduce too much
> overhead while still already having the rk3582 naming in there
> if it becomes necessary later on.

I'm glad that you like it, so it hasn't turned out it was me
providing some kind of bad guidance, so to speak. :) [*]

[*] 
https://lore.kernel.org/linux-rockchip/c6ba70f1681bb635190e9452ecb22d59@manjaro.org/

>> On 12/26/24 11:46, FUKAUMI Naoki wrote:
>> > Add devicetree binding for the Radxa E52C.
>> >
>> > Radxa E52C is a compact network computer based on the Rockchip RK3582
>> > SoC.
>> >
>> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> > ---
>> > Changes in v3:
>> > - Collect A-b tag
>> > Changes in v2:
>> > - Add "rockchip,rk3588s"
>> > ---
>> >   Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>> >   1 file changed, 6 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> > index 753199a12923..2152d170524a 100644
>> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> > @@ -812,6 +812,12 @@ properties:
>> >             - const: radxa,e20c
>> >             - const: rockchip,rk3528
>> >
>> > +      - description: Radxa E52C
>> > +        items:
>> > +          - const: radxa,e52c
>> > +          - const: rockchip,rk3582
>> > +          - const: rockchip,rk3588s
>> > +
>> >         - description: Radxa Rock
>> >           items:
>> >             - const: radxa,rock

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
