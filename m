Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6179E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 15:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=caiPSgN9lIVMzLLPv/kFvJQxsVvx2jK3efyTAUuchxI=; b=VKJ0geJODn8BujoIRrIoYqd+FE
	0PQF5qj/4Ugs1d63Tuspxykd/IjDda9gmztc/uq5OKg23xD24GRnFJHR+MFhZQqwtoui8hF5hQaRv
	uJ8ExVhFanfF2b/GchpdHIssiEtAxgHbHfuAj+dx2rDYDQE2yiyUgEChvN5VUqPHA1+crQKS7D/H8
	rkWHH45gyWTZpern5xuJfPKI+5FLjcAR9ae/YgztSiIBUW7DKDe21Tb+g92D68Kzn8jb2LjJgTMJb
	1NOSvZ9yTnPDAzwro0o0vYKAvSd1ULqxr4264Gr0Kk8d9I7/uxfFWwZ3eIvo4TRWfNzkoMf7/1voi
	C9zQM2cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNCuj-0000000AOOa-3dfw;
	Mon, 16 Dec 2024 15:21:41 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNCuh-0000000AONK-22jX
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 15:21:40 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734362496;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NMbeOcfZxLWF4PhwS0eZbEbckpVN85Mz3aWtoaOn+yE=;
	b=mHukM9SS8FJwK0srtGF1GvVHfN0YklsWTcFT00EEjEWwijUHkbbGHZnidqqYNsNU5c5sHu
	QUudXqrxPEWjTtdft46YvQ5uRsUhIdkFfdV7hDSyOgdMmpMrC9esvwFmRpHUm5XOA6ZFGT
	MIExNzQb+GKJJAmS5yNifuDd1owKgjjS22ct2lsL8DjssckDOm5ljTOSbQCzdA16mupZJt
	zHUs9QjkCMszgqSSSQ+eYo8pUu4lRuuXT98bgaZCLcQY7NFYDn4wqBo1ZeJ8u5ckgy085c
	yW/mTrdaMbV9I/DtRzQu8NX71MHeFIiRyWwBzCgYE5doHIq97oCtedeUhreIvw==
Date: Mon, 16 Dec 2024 16:21:35 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
In-Reply-To: <2a811610-b132-47a2-973b-6a9cb7956c43@kernel.org>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <629ae206a3a463da7839fa4ee438f381@manjaro.org>
 <2a811610-b132-47a2-973b-6a9cb7956c43@kernel.org>
Message-ID: <bfe16f355a4923bea704c90f18975f6a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_072139_711337_876D7A06 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
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

Hello Krzysztof,

On 2024-12-16 14:42, Krzysztof Kozlowski wrote:
> On 16/12/2024 13:43, Dragan Simic wrote:
>> On 2024-12-16 12:30, FUKAUMI Naoki wrote:
>>> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
>>> 
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> 
>> Looking good to me, as a preparatory patch.  Please, feel free
>> to include:
>> 
>> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
> That's just incorrect. If you really want to review such trivial
> patches, perform a full review.

Well, I don't see what's wrong with reviewing two fan-related patches
that go together?  Moreover, in this case it's about using a generic
name, which you prefer, or using a more common name, which I prefer.
However, as a maintainer, your preference matters more.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
