Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C28C54E67
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uxoo0Tw1W1yFuMG9XBmNyInj7HH5UNWXesmGSPuDSpg=; b=n1J8xpFhZ9yTHYqJtlfYhYTxAp
	hF+CgNNyxPBjul152iIZOz9EWlKy31WWDW42PFFPIMmqzIsMK7ilxjfpApj1cmrBtj0XfcwKKdbY6
	w7EdXeeIhGWKphwDFKmgfkqEyAyb6C5MDSSUaSI5Az8Zt662pCKnyQd/csV6Q14tnKpnE4iJ9o3gU
	GKVZSJ/Ua5fNB8JWfkdzoXCM6h5mEvVbsO2lZw2pnFMSi0npFpR+dRa16vW54WmJazw4hxmdcyj6V
	Ymo7b2TAlUQ9PHcYGjcC6Gapgd4xmwxVo2NFWGozHLDSMDRu5VLZZ+lbNVerKBRW3P0qca3Rypu5m
	+dfD+7ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCST-000000069Uv-07Nw;
	Tue, 26 Mar 2024 19:27:41 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCSO-000000069Sh-0poA;
	Tue, 26 Mar 2024 19:27:39 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711481249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DRfn67uuUy3m2b7tbUxgtfNJ5qaXNBwO1gHJs31ZlpQ=;
	b=Miw8WXY/QkEWb0N8TybloxXcFTXnGju0WBqcaYBGnwNloBil+GABYU49LGx83oep2QXAcG
	Eu/CXEt5zwWf9xzXktAF8+tBuB/W1CZZDbZi2tuR3oHdeTGrMCbbuYfl2ewKyY4T9D8jew
	HPIhwLMkUpQmbpMRlCfoA3QoFSFfc2CEw3yBwouwygXICFRMz2YE3ob5lN4UmrNOHRqF0H
	dmarNJbIgNDOwKMIG6bt8NiefneSGAfpcnnjqKiuzlDFgx6vOXjwE6sKr6tqFOI6hjCrz3
	dvryb2FltYOw3lhwAJX9wF5W1eAOAs4Q04n4tqwmFg7/3FWJZeEZ9wdAXQqArQ==
Date: Tue, 26 Mar 2024 20:27:29 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Rob Herring <robh@kernel.org>
Cc: conor+dt@kernel.org, kernel@collabora.com, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, boris.brezillon@collabora.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH] arm64: dts: rockchip: quartzpro64: Enable the GPU
In-Reply-To: <171148006524.3222394.1157008244152468379.robh@kernel.org>
References: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
 <171148006524.3222394.1157008244152468379.robh@kernel.org>
Message-ID: <13ed1665e2e3ef4107cb96fcbcd0c3c7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_122736_912724_F78AEC93 
X-CRM114-Status: GOOD (  22.76  )
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

On 2024-03-26 20:11, Rob Herring wrote:
> On Mon, 25 Mar 2024 17:19:04 +0100, Dragan Simic wrote:
>> Following the approach used to enable the Mali GPU on the rk3588-evb1, 
>> [1]
>> do the same for the Pine64 QuartzPro64, which uses nearly identical 
>> hardware
>> design as the RK3588 EVB1.
>> 
>> The slight disadvantage is that the regulator coupling logic requires 
>> the
>> regulators to be always on, which is also noted in the comments.  This 
>> is
>> obviously something to be improved at some point in the future, but 
>> should
>> be fine for now, especially because the QuartzPro64 isn't a 
>> battery-powered
>> board, so low power consumption isn't paramount.
>> 
>> [1] 
>> https://lore.kernel.org/linux-rockchip/20240325153850.189128-5-sebastian.reichel@collabora.com/
>> 
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 14 
>> ++++++++++++++
>>  1 file changed, 14 insertions(+)
> 
> My bot found new DTB warnings on the .dts files added or changed in 
> this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the 
> warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to 
> reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y
> rockchip/rk3588-quartzpro64.dtb' for
> 0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org:
> 
> Error: arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts:288.1-5
> Label or path gpu not found
> FATAL ERROR: Syntax error parsing input tree
> make[3]: *** [scripts/Makefile.lib:427:
> arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb] Error 1
> make[2]: *** [scripts/Makefile.build:485: arch/arm64/boot/dts/rockchip] 
> Error 2
> make[2]: Target 'arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb'
> not remade because of errors.
> make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1387:
> rockchip/rk3588-quartzpro64.dtb] Error 2
> make: *** [Makefile:240: __sub-make] Error 2
> make: Target 'rockchip/rk3588-quartzpro64.dtb' not remade because of 
> errors.

This error can be safely ignored, because this patch is supposed
to be applied together with a recent patch series, [1] or in more
detail, after one of the patches in that series [2] that adds the
missing "gpu" node.

[1] 
https://lore.kernel.org/linux-rockchip/20240326165232.73585-1-sebastian.reichel@collabora.com/T/#u
[2] 
https://lore.kernel.org/linux-rockchip/20240326165232.73585-3-sebastian.reichel@collabora.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
