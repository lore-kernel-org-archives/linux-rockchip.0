Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9033CA5FAD
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 16:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=te4aIlmo1d+c8lvHzNgYJSBQ6OKK2upiw6Az/210ZEA=; b=lDfQGELyq1OqFZ
	+Vj+mUwIN2DYI09XJya0IOTOBNLwx8ISA4popSd6kVrRNeK53aUMTiX3bD52/QdxI8q3F4XNLqkXr
	1c/22fD/nAZ0safxLoQmlyz71NZVLZ/AimEbgc5cQFfXeadDzen61uFo3en+C5+Z/+OjCWr+w73XU
	1Owxv8lwl+f5PBP3lhMcnCj7sZ2mzf4XYrPgUHZKme6Q9i6IRRjM2VdsBoYhIkUpgXu1gastZZN0B
	JGt+iib+qlOj1e6d4TtuRLXNYRxOTr0i+K0Qj8ChLUljAQEOIaLGQ8rabSy/4tlXsOGUYbpIlPNhh
	dqwp+VYNHqpn0Sybi5VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viElB-00000004Bl9-2VUt;
	Tue, 20 Jan 2026 16:39:17 +0000
Received: from relay1-d.mailbaby.net ([64.20.36.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEl8-00000004Bjo-3pZ6
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 16:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbaby.net;
 q=dns/txt; s=bambino; bh=SWKDkqyW8KmfpO3IzczC0y2n+YeQvtr43F4lJQkgy4M=;
 h=from:subject:date:message-id:to:cc:mime-version:content-type:content-transfer-encoding:in-reply-to:references:feedback-id;
 b=TzsL1GIAvpQGXIZeWIu+bzkwiV5Fe5K+FCwm3sqiFg7CxByCs7nIcTTVhv8vdrtI9+EevrtSM
 J7XIYlfW+0q36sIRtCdUcsRdceG4k7QLVLUiI9wwx5pJqiSmr5caHf13kpyFnXtRN8J5TRO72z4
 yNqYFF2QVxnA7buBcRoegJ0=
Received: from mb-nj-kvm1.internal (mb-nj-kvm1.internal [10.10.2.10])
 (Authenticated sender: mb25440)
 by relay1-d.mailbaby.net (MailBabyMTA) with ESMTPSA id 19bdc46263b0005958.001
 for <linux-rockchip@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Tue, 20 Jan 2026 16:39:03 +0000
X-Zone-Loop: 05de13c0a375d49e6fe9c4af8cc8d885d8a2866c2cea
ARC-Authentication-Results: i=1;	rspamdcluster17.mailbaby.net;	auth=pass
 smtp.auth=mb25440 smtp.mailfrom=git@luigi311.com
ARC-Seal: i=1; a=rsa-sha256; d=mailbaby.net; s=detka; cv=none;
 t=1768927143;
	b=bIdw0Cf2kQgHpVB8tcnOWk++pipQUC1IG1VHonhRoXeR0dULZDhY6pqNkWU01/AKD8hpBg
	9BvYjGr5qLrnJgV0x9nVhllC2KYwO59Kae97WSTxJgZ7L3T90MTWMd81snm8vt9JvRMBqv
	cnTxHTdFa3AARvxDTnGPOT3+oKKKUlR6vlg+oPnPWMC85N5G9CaAkFQyp6akZroYd8hkRx
	HiZflkdN2Ei2wTZ76ecph0jMvjDtxckv+ZdpJK009E/3q3dGkwPv6amYdHr1fgEpRUGUb+
	GF5eCfVNiCIleqRJbmX+ygu1Bik4vS6+SlLUXIY2xL8yiB7EMA+/bSLefqx1UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailbaby.net;	s=detka; t=1768927143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=SWKDkqyW8KmfpO3IzczC0y2n+YeQvtr43F4lJQkgy4M=;
	b=JbKkeb8G39RkrU1q+8a1BGW3tug1EzHCsccXy92IPrPLsWOPbcMbQVupmyK1BTVsQIYY63
	vsqwDP5qonK/JzdMggKBiXjf2dhErBdFFRDzckPpFUt6n2JvD5NgPCWmhYF1JhxtBhuwpU
	qUbkXwR2SSgAs/S6w/4rzQhS1XFibPEXxFrGiCRn1G4edfnf0gMljPACW7StLLky+RJCb7
	GET0Mdo9M7GUNBRZ9RmZCV66HogbseOvwPsUJ63HB6CLpE9tIiDrXC/g/k0kbZdLrLq9oV
	3TPHLhMWsqxRWcZXHRMmYHzmdhy3ytPjbZ4gR9tqY+vbjOp/8O9Zs81CyVsSmw==
X-MB-ID: mb25440
X-SPFOrigin: SoftFail
Feedback-ID: mb25440:19bdc46263b0005958:45.76.59.163:mbaby
X-NS-SCAN: PASS
X-SPFOrigin: SoftFail
X-MAILBABY-ORIGIN: NONE
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by zmta1 (ZoneMTA) with ESMTPSA id 19bdc41458e0009140.003
 for <linux-rockchip@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Tue, 20 Jan 2026 16:33:43 +0000
X-Zone-Loop: ab5103fe678958dbba643d337b1648e1748bcf3f7e97
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=luigi311.com; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	From:References:Cc:To:Subject:MIME-Version:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID; bh=SWKDkqyW8KmfpO3IzczC0y2n+YeQvtr43F4lJQkgy4M=; b=WwgAMc
	rRgE56fVRbNmofeg88mwIa768qT2AU2bic4rTmwYJfSOL/PgEXQVLDxrTuSdRPaQQx+0jXmAB9arZ
	motqrjfpIiRKlTxVf4BSIc20we4aC/jVODYrX+ItoyKK/GDHmqFDihIV1IZo/kWUgRoTVG7zenB4X
	nlLrY/k5QE8oBdaIUpK7Q3iw3E7ghQqmxcHfzo9OMt79ZiI2+t8AOrwH6GRpacz91L/+BnKHiMHV4
	y/qXfDWu306bfzQfvjivBiHGerWLUnL3xoun2l8yjglc1wXkzDBXNZmtvRmIgxld6vecTWwRTxePL
	jzPxszVgFs/s4tjYEhqjFZRP/S9w==;
Message-ID: <46730110-5713-4e7a-a593-29ad69432e03@luigi311.com>
Date: Tue, 20 Jan 2026 09:33:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/1] Fix imx258 variant on pinephone pro
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Olivier Benjamin <olivier.benjamin@bootlin.com>, megi@xff.cz
References: <20260118214620.3319040-1-git@luigi311.com>
 <176890189889.310054.17634541522861042266.b4-ty@sntech.de>
Content-Language: en-US
From: Luis Garcia <git@luigi311.com>
In-Reply-To: <176890189889.310054.17634541522861042266.b4-ty@sntech.de>
X-Authenticated-Id: git@luigi311.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_083915_076157_DC93FC5D 
X-CRM114-Status: GOOD (  12.20  )
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

Thank you very much for the speedy turn around. Ohh

interesting, here i was thinking i did the right thing with

the reply to with the V2. Ill keep that in mind for the

future but considering how far and few my contributions

upstream are i hope i dont forget by then lol.


On 1/20/26 02:39, Heiko Stuebner wrote:
> On Sun, 18 Jan 2026 14:46:19 -0700, Luis Garcia wrote:
>> imx258 had the driver updated a while back and it introduced
>> two variants, the imx258 and imx258-pdaf. The pinephone pro
>> is using the pdaf variant so this switches it to the correct
>> variant and eliminates the pdaf pixels from the sensor output
>> resulting in a much cleaner image.
>>
>> Luis Garcia (1):
>>    arm64: dts: rockchip: Fix imx258 variant on pinephone pro
>>
>> [...]
> Applied, thanks!
>
> [1/1] arm64: dts: rockchip: Fix imx258 variant on pinephone pro
>        commit: 6742b998166485558ccb0e89b5d5fd93c1aae3ca
>
> In the future, please don't send v2 patches as replies to the
> previous version and instead start a new thread.
>
> Next versions as replies, does sometimes confusing tooling.
>
>
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
