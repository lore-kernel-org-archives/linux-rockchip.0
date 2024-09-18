Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB418CAC598
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 01:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+XKIZ0uxUrJKuoWxMPSpeDW6fv7IfNDqGTa7riAB4Q=; b=kdm3mTdMW+aMyK
	j2rt9zdNvoC0UXOo9HRP/Nu1Igr0ynyDaHKoId0ICQh8kbkUYjQNkuc1pupDhfI/dgxI8x5w7c3Ym
	OusXWwPt6pnuy8UJVKFs/RHoK7+lbnmgrPeWolR0PGIPmydMGtCbWAcmI9ekDFlSwuSzEJ1GP6IoO
	sYBfpag/ScCse/M7l4BHcluYh2sCHsBTlFXtOer4rYT49a16Y6kvp0bwpgzIgNofcp3W1U4I/0nLF
	dql6bzNW3f0QcCT3cekMDcPTp44e2kQsHMnu8uK6Amxmm5PrOGKB53F8UwEGmyXj2xo5JWzKcN924
	KaNV6u23G3N5mMjE0QxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqjcO-00000007Fqi-1ZC7;
	Wed, 18 Sep 2024 01:36:32 +0000
Received: from mail-m1973185.qiye.163.com ([220.197.31.85])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqjcL-00000007Fo2-1USD;
	Wed, 18 Sep 2024 01:36:31 +0000
DKIM-Signature: a=rsa-sha256;
	b=LW6kbAHC+5GXY2OfZMS5sTuDv1f1PUf2Jokq7SwLNMcVkKd5XYcfbfTqPkpzRhq+C84wAq72EZ75gfWTCIxw97GfBr9nLOywtphVyrlgsYkCDJo+6PFQdke69l3JSZV3+nfdSnMiJiP0yiasl5A0BLRAM859TRaxru7J4jFeWlo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=TVkZycR1rpHNLPIXL884jOUJnJVbwEfw2KUOAdKWNS8=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 8307810032A;
	Wed, 18 Sep 2024 09:35:03 +0800 (CST)
Message-ID: <d8161786-24b1-408e-af8e-f942598fa50a@rock-chips.com>
Date: Wed, 18 Sep 2024 09:35:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add RK3588S EVB1 board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 tim@feathertop.org, knaerzche@gmail.com, efectn@protonmail.com,
 andyshrk@163.com, jagan@edgeble.ai, dsimic@manjaro.org, megi@xff.cz,
 sebastian.reichel@collabora.com, alchark@gmail.com,
 boris.brezillon@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240914095456.2347532-1-damon.ding@rock-chips.com>
 <20240914095456.2347532-2-damon.ding@rock-chips.com>
 <krfo47rjxks7gouirhmcfwa67sy3vztq2ktdcs4kkikhtwgbv3@ofvnobfyqzhf>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <krfo47rjxks7gouirhmcfwa67sy3vztq2ktdcs4kkikhtwgbv3@ofvnobfyqzhf>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkkfSFZCH0gZGUoZTB5JGk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	JVSktLVUpCS0tZBg++
X-HM-Tid: 0a9202c4cb9203a7kunm8307810032a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ORg6ERw4LzIrKwsPTUMKMw8h
	CQtPCy1VSlVKTElNTUlISEtOSUJIVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFITE5JNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_183629_585587_33DAFB74 
X-CRM114-Status: GOOD (  17.85  )
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

Hi Krzysztof:

On 2024/9/16 16:49, Krzysztof Kozlowski wrote:
> On Sat, Sep 14, 2024 at 05:54:55PM +0800, Damon Ding wrote:
>> Add devicetree binding for the Rockchip RK3588S evaluation board.
>>
>> RK3588S EVB1 board features:
>> - Rockchip RK3588S
>> - PMIC: RK806-2x2pcs+DiscretePower
>> - RAM: LPDDR4/4x 2pcsx 32bit
>> - ROM: eMMC5.1+ SPI Falsh
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>> ---
>>
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation: Please add
> Acked-by/Reviewed-by/Tested-by tags when posting new versions, under
> or above your Signed-off-by tag. Tag is "received", when provided
> in a message replied to you on the mailing list. Tools like b4 can help
> here. However, there's no need to repost patches *only* to add the tags.
> The upstream maintainer will do that for tags received on the version
> they apply.
> 
> https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 
> 

Thank you for your friendly reminder and the detailed explanation about 
the tag. I did forget to add the tag in v5 patch, and I will pay more 
attention to this in future updates.

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
