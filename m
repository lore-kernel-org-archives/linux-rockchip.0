Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE7FC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 06:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uAvzvtQT4HKZEbqWR47QmkknIrjp7RQJWXSQZlXkI98=; b=MzwO1CoyGo1lj2lR7vhY3iKwz2
	Q1F/NO1mbZPzBlVpDtcZg0+C3+UrABCwwhZxtyyV6RR9gWyqNjcxwTiMRbyPAUXrW5jRaGJsG36K1
	os+HFR7j7HWckSEtsgtAo2BGuNivukl1xO18iDZ8A42HkrP/ukhR893665iyIkc69Uc86IjepXHF4
	0NRB/yINpyoqPSiZp19vHfsb1VeSkBOEPms1AQmPzS/gTbf4A6UKv0UYJMMqYoUFF9E3rfVnH6g0T
	uJBVwDQa+MhIBeUhVHbwtuEIairxhOIf1B8KU21Qb1uRgwzD/IPUJxthO3IOkWf7qEFPPrqZC8dlh
	heC4ezNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWGf-00000002tZ6-1kNz;
	Wed, 24 Apr 2024 06:38:09 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWGH-00000002tQO-0PKi;
	Wed, 24 Apr 2024 06:37:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713940659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pHwmy+JfTUfK+F37enKJhkifnhbbytVW3ZSkIuXP+d8=;
	b=o4xwe88OAwCuuUcZUdhVy8jNxXYrWI9nHW05eYN2hbhKohgLfPxOcDX3YcPJlZvHO2Mh5a
	/SxLddEzYDrrtA3UPSUVNIGAt/zk3cdD8KxVE47sb3sJiEjAfQ3uF1aJ0fZD5aHhhQ2iy6
	yEekLyzQO8ED4r54r4PbCa9KQJXhzWxElna8LpJsiW3lz6ngGPUNAILRF8+PJQnnRQtTwD
	+ubfEPX+NXLLB92iEqVh45op2a4PFIEKUNHBV6i56e1MxDfQImAakgLPyY2HlcP+3247TC
	YF2TgMF40rX8+lBHAduvsXRRo+wZhyj3IJ1IsTSIBZZiZYWeTLHnQRdTusf6AA==
Date: Wed, 24 Apr 2024 08:37:39 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Marek Kraus <gamiee@pine64.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, didi.debian@cknow.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, heiko@sntech.de
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Pine64 boards
In-Reply-To: <171388492373.250779.3280449198658307048.robh@kernel.org>
References: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
 <171388492373.250779.3280449198658307048.robh@kernel.org>
Message-ID: <f1419f4b2003df69a3cd04d36de8000f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_233745_662946_33361CB7 
X-CRM114-Status: UNSURE (   8.57  )
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

On 2024-04-23 17:09, Rob Herring wrote:
> On Tue, 23 Apr 2024 02:43:43 +0200, Dragan Simic wrote:
>> Correct the descriptions of a few Pine64 boards and devices, according
>> to their official names used on the Pine64 wiki.  This ensures 
>> consistency
>> between the officially used names and the names in the source code.
>> 
>> Cc: Marek Kraus <gamiee@pine64.org>
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>> 
>> Notes:
>>     This continues the description cleanup started with Radxa boards. 
>> [1]
>> 
>>     [1] 
>> https://lore.kernel.org/linux-rockchip/1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org/
>> 
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>> 
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
