Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F02C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 17:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FSJQPv9PrPA7AvZWIfqEDPmoxNIKK47aa8YVqzlti74=; b=iYKUAtKfq4ann9cbUXqvTAHcCp
	YZ6xL5cfHAIMFto9kgeZlT832XiQ/ihS5+BksPzkpNIhvRODp0rxKPZSGITQFJ0Zc7NlujSqgTCrE
	a/T1fZlmOMggHag0iAEt4SGFHhgw2MMRFyzokzk6fOWGSlFAA5b7YDLfcClMu1afGd5d4RZkfZ9Dh
	CsaZJpm0jQveHn7U1/anKr7VmW7GfkvC29MNDY/Q+rbpp95unBOMZdZne4NT6NzLidGCdnUljCTmq
	mzqRffHW6/kzp2mYr+mu4ETDl40HuOnIHCtxB0kqG2qZyvJuB0T7l+gD1oWyj90NCYeDBlNmUmngz
	+wkhhhjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx8fq-0000000GvcT-0Tcb;
	Wed, 17 Apr 2024 17:02:18 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx8fh-0000000GvXi-36Un;
	Wed, 17 Apr 2024 17:02:15 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713373323;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VHdkwE1wKobPUP6YkxHMexKranCL+6y9ijo3D9qQ91M=;
	b=spxE8R9xWA8NmolDUPu8n10CZDK0eI349D6Og9WPjmCe2mni/UDucQdHAiAAvT6D3PAR2a
	TSAtpW2P1LsPw24LaE2jd2oqITzhJGrH5W+o96ifCOGD8t0M1/iaRV8Aefs8nKDUS0JoXr
	UCdVPJ7X5lkQORhSQyU4ji/bMqVlUmRBXKX3yOofrZvYr8YycS3/lpoOZDK3nGyF0+BLla
	Cy15fNeqRqe619juzmZIl9rrLasjrvgr+Ns/E5AKUNKojsWeNJArhV+fZ/h6qSr7iGLezF
	kmEL+RZ19sC1eoWeoyH1p0kHdhq6WNad8GWS6zbFi2fG9UCnn/QakeH1P5n7Vw==
Date: Wed, 17 Apr 2024 19:02:02 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: jonas@kwiboo.se, conor+dt@kernel.org, devicetree@vger.kernel.org,
 heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK3 Model C
In-Reply-To: <20240417133016.62753-1-amadeus@jmu.edu.cn>
References: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
 <20240417133016.62753-1-amadeus@jmu.edu.cn>
Message-ID: <a144c052fcc2460a615a754a64a8f739@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_100210_464407_8AAFAAA7 
X-CRM114-Status: UNSURE (   7.30  )
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

Hello Chukun,

On 2024-04-17 15:30, Chukun Pan wrote:
> Hi Jonas,
>>> +	model = "Radxa ROCK3 Model C";
>> 
>> The marketing name seems to be "Radxa ROCK 3C" according to the 
>> product
>> page at [1].
>> 
>> [1] https://radxa.com/products/rock3/3c
> 
> According to https://wiki.radxa.com/Rock3/3c , it should be called
> "Radxa ROCK 3 Model C". I copied rock3a here without paying attention.

If I may interject, here's the result of a quick qrep:

./rk3399pro-rock-pi-n10.dts:	model = "Radxa ROCK Pi N10";
./rk3399-rock-pi-4a-plus.dts:	model = "Radxa ROCK Pi 4A+";
./rk3588s-rock-5a.dts:	model = "Radxa ROCK 5 Model A";
./rk3588-rock-5b.dts:	model = "Radxa ROCK 5 Model B";
./rk3399-rock-4c-plus.dts:	model = "Radxa ROCK 4C+";
./rk3399-rock-pi-4b-plus.dts:	model = "Radxa ROCK Pi 4B+";
./rk3399-rock-pi-4b.dts:	model = "Radxa ROCK Pi 4B";
./rk3399-rock-pi-4c.dts:	model = "Radxa ROCK Pi 4C";
./rk3308-rock-pi-s.dts:	model = "Radxa ROCK Pi S";
./rk3399-rock-pi-4a.dts:	model = "Radxa ROCK Pi 4A";
./rk3399-rock-4se.dts:	model = "Radxa ROCK 4SE";
./rk3328-rock-pi-e.dts:	model = "Radxa ROCK Pi E";
./rk3568-rock-3a.dts:	model = "Radxa ROCK3 Model A";

Based on that, I think that "Radxa ROCK 3 Model C" would actually
be the preferred name...  Perhaps?

If we end up following that approach, the last board dts on the list
above should also be fixed to read "Radxa ROCK 3 Model A".

Either that, or all "Model " strings should be stripped out from
all board dts files that currently contain it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
