Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F9BEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 15:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bsVpEiuMhuIp8AL5CEXON3XNykYWjZrNoGBS/57nMk=; b=uVTiY5Q79ybbjW
	J2CUBpy5DCXhE4QVszWQbQTiE2I1SzNT7n/HmR+h3cyHwxngueQdjSz/8SrN8hQLzs33xdkqfkUZX
	r8U/JNr7CXwO3TpzNlMb7aYhnO7mu5C2REGrpTJdcId7sBR9rBKEwHTVbClELctT3cZhqlh10XKHZ
	Y8QgaKcGIkuugsnjyIsz32CDaxvgUpSW2btTJm53y4n0dhOMuQvytk1q7kCreFG1y44nh2UlXiBS9
	VrdcPfl8mU0X4Y5uZWUK4hyLw/Ri7R33sWRfk43uFlsHmxs/gvdt4myn0JZLuRjeFNlpaR0XpmaTf
	xFjPnT6ShFij9t7WOzgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIsw8-00C0pP-0o;
	Mon, 10 Jul 2023 15:36:28 +0000
Received: from ip-89-177-23-149.bb.vodafone.cz ([89.177.23.149] helo=ixit.cz)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIsw4-00C0mn-2t;
	Mon, 10 Jul 2023 15:36:26 +0000
Received: from [10.0.0.209] (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id E93171618E3;
	Mon, 10 Jul 2023 17:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1689003383;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aldkW5insQMnvy0Y42XMjzcK11QX2z9owPRPKOsSeRU=;
	b=Icqowe1lGpco59Hi8siUgWjApLT14iKGbHvEtlaXD0lhyfwpM0TaR8vV1rfzBs7J3oe381
	AO7OsyLVeTgK2jC2WqQkr37G04bsuzt+5VP8eFaVAVq5KJFR13aNp3JQLAGZQIUFRuVJz1
	fQcPJld/bo/1oWUKVhLh2oaEc2JwXNE=
Message-ID: <d117e562-424f-d128-fa81-41ec9022409f@ixit.cz>
Date: Mon, 10 Jul 2023 17:36:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid
 regulator-init-microvolt property
Content-Language: en-US
To: Mark Kettenis <mark.kettenis@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>
Cc: d3adme4t@gmail.com, macromorgan@hotmail.com, jbx6244@gmail.com,
 f.kardame@manjaro.org, amadeus@jmu.edu.cn, robh+dt@kernel.org,
 linux.amoon@gmail.com, aurelien@aurel32.net, anarsoul@gmail.com,
 wiagn233@outlook.com, frattaroli.nicolas@gmail.com, strit@manjaro.org,
 luiz.von.dentz@intel.com, zonyitoo@gmail.com, wens@csie.org,
 jensenhuang@friendlyarm.com, lasstp5011@gmail.com, frank-w@public-files.de,
 pgwipeout@gmail.com, conor+dt@kernel.org, leo@nabam.net, andyshrk@163.com,
 krzysztof.kozlowski+dt@linaro.org, michael.riesch@wolfvision.net,
 jonas@kwiboo.se, festevam@denx.de, tobetter@gmail.com,
 jagan@amarulasolutions.com, cnsztl@gmail.com,
 cristian.ciocaltea@collabora.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20230707162217.675390-1-cristian.ciocaltea@collabora.com>
 <168899855919.1747213.9998138836668928892.b4-ty@sntech.de>
 <87wmz7q1fr.fsf@bloch.sibelius.xs4all.nl>
From: David Heidelberg <david@ixit.cz>
In-Reply-To: <87wmz7q1fr.fsf@bloch.sibelius.xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_083625_106404_D3189FD0 
X-CRM114-Status: GOOD (  14.70  )
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

On 10/07/2023 16:35, Mark Kettenis wrote:
>> From: Heiko Stuebner <heiko@sntech.de>
>> Date: Mon, 10 Jul 2023 16:16:16 +0200
>>
>> On Fri, 7 Jul 2023 19:22:17 +0300, Cristian Ciocaltea wrote:
>>> The 'regulator-init-microvolt' property is not currently supported by
>>> any driver, it was simply carried on from downstream kernels.
>>>
>>> The problem is also indicated by the following dtbs_check warning:
>>>
>>>    rk3588-rock-5b.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
>>>
>>> [...]
>> Applied, thanks!
>>
>> [1/1] arm64: dts: rockchip: Drop invalid regulator-init-microvolt property
>>        commit: 4d08b19629495b29601991d09d07865694c25199
> This property *is used* by the drivers in U-Boot.  Dropping this from
> the Linux DTBs will likely result in broken boards the next time the
> U-Boot DTBs are synched again from Linux.  At least that is what
> happened before...
Well, if u-boot uses these properties, u-boot folks should document them 
in bindings ;-)
I found some u-boot mentions reviewing this patch, but only the DTS 
files copied from Linux poped-up.
>
> I think the right solution is to add this property to the DT binding
> instead.

Sure, it should be sent together with the revert.
DT binding property description could also note that the bootloader(s) 
use the value.

David

-- 
David Heidelberg
Consultant Software Engineer


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
