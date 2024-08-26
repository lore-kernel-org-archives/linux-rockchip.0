Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 130CAC5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 09:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzVpRhbkeW9qxUxmi3M03MaaxSk42k4Z3FHFd8kMWA0=; b=cVrhY+q1tyxIFh
	C5YC0UaTjztD3EGSsb3mQLi3aPOiDsb57W+gMQaOV101/9wvLMNd7qgXZA0XVwFiRztjQR3ACCVK+
	qjcVlnffzGWnW6jSZvvXyYqUsnWudF5IyGAiEqKhFUpY1P1fzhOjUz9opQltDmIomjX/AoAZlELF2
	cbPmLslwlu+yn6F+/9I0QfMxAJ3qePJTVj1j+6sxeopRhW1+eZ3Re+EsInaqwsSNR8sFAVWSZznqa
	qqzN/YiaxGVDJLGXh4RCaYD+eIjGCVF/lS1sK1/P18rrw25NYeNKGYKEIzcqdLfLdbzHc7ybsV4FN
	ul5IvlT7j1qW1AEtT5kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siW4O-00000006g68-0g3n;
	Mon, 26 Aug 2024 09:31:28 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siW3D-00000006fZr-1kLr;
	Mon, 26 Aug 2024 09:30:17 +0000
Received: from [192.168.0.160] (unknown [14.153.79.170])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id BEBC3789E6;
	Mon, 26 Aug 2024 17:30:09 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn BEBC3789E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1724664612;
	bh=E1SNoYEZ4p+3pbRHYtbReN/JAn6omYUTA1ydrwnhtbg=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=GbDhn75XwbsxD891FZqbysU++x/WvI6aVU5RhB9FOJiQlwust3OwEXrxCZ8WnO/rO
	 FKP28r2SHmcYl7eYSaijA9UqLa/+J2ozqfKkY8uVuAZThtE3R/7FzL80bJhRPF2DqB
	 ZgIp7wm3XYbS/QWhcNr3qvp90QivOa/65GaWnWwk=
Message-ID: <38d627e8-3dd2-4042-a87d-21220fe9fb5a@classfun.cn>
Date: Mon, 26 Aug 2024 17:31:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for LCKFB Taishan Pi
 RK3566
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240826044530.726458-1-bigfoot@classfun.cn>
 <20240826044530.726458-4-bigfoot@classfun.cn>
 <wacysftuozwpumrw262tltoxqrldlju7mzj5fnxxcjheycjvzr@wb7mcnbiv6ic>
 <25346f43-642a-477d-8df5-91ddf2765d69@classfun.cn>
 <8e14d43b-598b-4aef-9c22-84122e17a77e@kernel.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <8e14d43b-598b-4aef-9c22-84122e17a77e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_023015_767878_1A0A6E30 
X-CRM114-Status: GOOD (  12.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024/8/26 16:08, Krzysztof Kozlowski wrote:
> On 26/08/2024 09:46, Junhao Xie wrote:
>> On 2024/8/26 14:06, Krzysztof Kozlowski  wrote:
>>> On Mon, Aug 26, 2024 at 12:44:13PM +0800, Junhao Xie wrote:
>>>> Add dts for LCKFB Taishan Pi.
>>>>
>>
>> [...]
>>
>>>
>>>> +	dc_12v: dc-12v {
>>>
>>> Use some reasonable prefix or suffix (regulator) for all regulator
>>> nodes. Or even: use name for all fixed regulators which matches current
>>> format recommendation: 'regulator-[0-9]v[0-9]'
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?h=v6.11-rc1#n46
>>>
>>
>> Thanks, I will rename it to dc-12v-regulator
> 
> Well, this makes ordering tricky and is not the proposed policy, but
> sure... I gave you reference hoping you will read it.
> 
> Best regards,
> Krzysztof
> 
> 

Oh, sorry, it should be renamed to 'regulator-12v0-dcin',
as this name complies more with the policy.
Thank you for the reminder!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
