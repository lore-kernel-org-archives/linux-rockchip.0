Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1658C02198
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 19:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0dOmCXtYTHAaeidrvJBThd0zpah8u7wyQyYzllep3Gc=; b=XgH/REjLwkP7uw6ib+vyQN8P1d
	tkESnbqRYg3TIW893Lj6LCOBx9avUDegp3vFlEgT9/VlJJcsJJ3Z0BqekBUUxVHE6WO/LhownxIAE
	WW5aMNfY+xkE2o736tLwwRl6cYuk+58likiqNyAJFf0BqxTrPgutzslUkbz2Tr06V4bvqRTRXuMAX
	feGERhYUjlAndXaix/k7QbfbkYZYJeSnMNS3r7sWs+wQMyYF9Yu83T+RjMOmM/b0+Tdm31s7Zx0lJ
	+a/Lz47S9XN7THA1uJilIpBwwPXhxo+69RiPNBaEv04BDftKKWs8fpUWY+e3aKXz6tWUqLNwz5tEy
	M7SFHZzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thZeF-00000001AbH-15Av;
	Mon, 10 Feb 2025 19:40:51 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thYWs-00000000vQZ-0pJ0;
	Mon, 10 Feb 2025 18:29:11 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1739212148;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pZIlzS49+97WDRopE/OBk8wbb4y6vIw1ZgxVtbK+yPY=;
	b=MdGCyzVVkdoAtfzK7IZ1Jqs7BBb+NEEl1H0qCXu3b5Sz8B3GifBWiBkWL4qjpYM0vGXfLJ
	VCDP+N48xH27cwL8TdS8+jKzuhhZODUKrUMr7mKODkjHpgdhC9GFkVyLKAMikVNAe2utis
	H40/K4qlQiyZs6VFiOzWhN6/Jt68b5ji2Hc17ojp1KX78ajb3GAtY5QApDlSYX4OQBBrmE
	KFQ5HHkmM6j+xJwmXzt0GqVwy8nybMb+4kCVjMO8HhCoh4+w/+rsx3pRsjdYAZqSqHbyZy
	5eWFoBQYVXCCm5GEgIwvqoivsVuFhZa3sTSy4yXPMA3+RpD4ttMbmX3lvZQQQQ==
Date: Mon, 10 Feb 2025 19:29:07 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Jagan Teki <jagan@edgeble.ai>, Quentin Schulz <foss+kernel@0leil.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Niklas
 Cassel <cassel@kernel.org>, Michael Riesch <michael.riesch@wolfvision.net>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 2/4] arm64: dts: rockchip: add overlay test for Edgeble
 NCM6A
In-Reply-To: <8d830c2c-6268-4c70-ae8a-47183b8cbace@cherry.de>
References: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de>
 <20250207-pre-ict-jaguar-v5-2-a70819ea0692@cherry.de>
 <CA+VMnFyom=2BmJ_nt-At6hTQP0v+Auaw-DkCVbT9mjndMmLKtQ@mail.gmail.com>
 <8d830c2c-6268-4c70-ae8a-47183b8cbace@cherry.de>
Message-ID: <74502f5556584ee7378c63d4971f2a66@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_102910_523281_E1920BEC 
X-CRM114-Status: GOOD (  14.03  )
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

Hello Quentin and Jagan,

On 2025-02-10 18:57, Quentin Schulz wrote:
> On 2/10/25 3:11 PM, Jagan Teki wrote:
>> On Fri, 7 Feb 2025 at 20:50, Quentin Schulz <foss+kernel@0leil.net> 
>> wrote:
>>> 
>>> From: Quentin Schulz <quentin.schulz@cherry.de>
>>> 
>>> The Edgeble NCM6A can have WiFi modules connected and this is handled
>>> via an overlay (commit 951d6aaa37fe ("arm64: dts: rockchip: Add 
>>> Edgeble
>>> NCM6A WiFi6 Overlay")).
>>> 
>>> In order to make sure the overlay is still valid in the future, let's
>>> add a validation test by applying the overlay on top of the main base
>>> at build time.
>>> 
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/Makefile | 4 ++++
>>>   1 file changed, 4 insertions(+)
>>> 
>>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile 
>>> b/arch/arm64/boot/dts/rockchip/Makefile
>>> index 
>>> 534e70a649eeada7f9b6f12596b83f5c47b184b4..02f98abe1df10f44f2ac27ea5f6c6e6c6334724e 
>>> 100644
>>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>>> @@ -192,3 +192,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += 
>>> rk3568-wolfvision-pf5-vz-2-uhd.dtb
>>>   rk3568-wolfvision-pf5-vz-2-uhd-dtbs := rk3568-wolfvision-pf5.dtb \
>>>          rk3568-wolfvision-pf5-display-vz.dtbo \
>>>          rk3568-wolfvision-pf5-io-expander.dtbo
>>> +
>>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
>>> +rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb \
>>> +       rk3588-edgeble-neu6a-wifi.dtbo
>> 
>> Please add neu6b-io as well, wifi dtbo is similar for it as well.
> 
> Similar or identical :)?
> 
> Should the overlay be renamed if it applies to neu6b AND neu6a instead
> of implying it's only for neu6a based on the name of the overlay?

I'm afraid it's a bit too late for renaming the .dtso file. :/
Though, the DT overlay tests could also serve as some kind of
documentation about what overlay can get applied to what base
.dtb, making this situation a bit better.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
