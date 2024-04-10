Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC1CDCD1296
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 09:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Fjq4ibWY0KqTxwuZJzUotD+8kmaUbvmEKoBT0IOgvc=; b=nnSPwL3AI4iX8krH3Fa3vaZxRI
	rWiOJutdUjPEn3zWi4AX8puFlmT3+s5wU86Xscq4FehoVwzx5gDYFe/r6WuGK5YK1elGnrVMJR4/Z
	0Gdbr3ln1q2v+iyUumjNQ5iC9B0BkZQSsYG5rOQYsxpLt0ZLWTWmZLzLlZW2vRWQmtLCsGeC74zp4
	Svydp3N9+RR+xNGvaNcxjjlJVEMfI8QIy/QzqN15e8yQaIAmOlRvHiC5MWHWJuxZbjg76tK+IvWl8
	6jlKmY/8CBMP4GEhp6uECm9hVNlPClElK9Ys+GnpqfnKYJM2X1o5hwFRcMGt8i0pHjtNzWrgv+ajr
	y+5BKy7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruUFc-000000068tS-0PdY;
	Wed, 10 Apr 2024 09:28:16 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruUFY-000000068rx-215l;
	Wed, 10 Apr 2024 09:28:14 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712741290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RiYdWuU6TA/MRaisJkvN1oi05HBnSA4JJqXFKW8pk3w=;
	b=abHtNVPg9dPnB3ukM7+xz0G35WCgg6u8vPOyxisReIzDTWEfKOBvxo9dx+qa1/TAR+GQF3
	+Z3ZNNgMSDrnnUGkamYkqWlDfofS646hD7T77g/GzFAHBQGStPmMU9ldYydE85W7oA1Sc5
	MD7+cJt4LFCF5RLhEAt0MQ897p4uZJ/hgIBFvPuu7np1QFCMTCtQGo/zLuw9LuA1PHfxOP
	dSHLs9caK6SSVb2GOvnPyab2fPaVUcmIzuUEVei7ML4A9K66r4ZXLw/5Jpw/uQyNFIbsmN
	2PI/V1Q/GaRieWtjhBrHzYBqjhSRbHumZ2Qy5Tg8lvQYORUG4Dy8ZR64pLZJSw==
Date: Wed, 10 Apr 2024 11:28:09 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
In-Reply-To: <66689051.MzlzmSNrL9@bagend>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <66689051.MzlzmSNrL9@bagend>
Message-ID: <9f4c7615a6685ac42dccdbe35e57c357@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_022812_712468_8211D2ED 
X-CRM114-Status: GOOD (  12.18  )
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

Hello Diederik,

On 2024-04-10 11:19, Diederik de Haas wrote:
> On Thursday, 29 February 2024 20:26:31 CEST Alexey Charkov wrote:
>> This enables thermal monitoring and CPU DVFS on RK3588(s), as well as
>> active cooling on Radxa Rock 5B via the provided PWM fan.
>> 
>> Some RK3588 boards use separate regulators to supply CPUs and their
>> respective memory interfaces, so this is handled by coupling those
>> regulators in affected boards' device trees to ensure that their
>> voltage is adjusted in step.
>> 
>> 
>> Signed-off-by: Alexey Charkov <alchark@gmail.com>
>> ---
>> Alexey Charkov (5):
>>       arm64: dts: rockchip: enable built-in thermal monitoring on 
>> RK3588
>>       arm64: dts: rockchip: enable automatic active cooling on Rock 5B
>>       arm64: dts: rockchip: Add CPU/memory regulator coupling for 
>> RK3588
>>       arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
>>       arm64: dts: rockchip: Add further granularity in RK3588 CPU OPPs
>> 
>>  arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |  12 +
>>  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  12 +
>>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  30 +-
>>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi          | 385
>> ++++++++++++++++++++- 4 files changed, 437 insertions(+), 2 
>> deletions(-)
>> ---
>> base-commit: cf1182944c7cc9f1c21a8a44e0d29abe12527412
>> change-id: 20240124-rk-dts-additions-a6d7b52787b9
> 
> Can you rebase this patch set on Heiko's for-next branch [1]?
> And then also fix the ordering of the nodes and the elements within
> those nodes so that they match the current conventions?

Ah, thanks, this is a good reminder about the proposal for the plan
for moving forward, which I promised to send a while ago. :)

> [1] 
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=for-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
