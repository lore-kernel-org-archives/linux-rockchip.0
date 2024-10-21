Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56E41D17123
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 18:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YTQVTEXFogt2FIJzkeFbs2KYhV3eupEGLK0nA5PWzEM=; b=hiu1UhilIVEhjM
	+yIJhl1swV3xv+KCwgIQ1S8jg8sJ3/ANy/Yc3HIodSDhQ2DG0t/CeLYiAskvEwsS56XhrheAujPGb
	rweTlw7K52izx99Ycsyv495v5azK7/w6+zZLab9KiEqH9iIHv8GqyGk17R6RDNVCKGd9/PbdCutS8
	NSQSyOK64Uf1uuhX3yHEi4VyC8kLrqw+4ffymOFcQmVMFBECZVMJoeYdaHosIJYusYyHjH4nFrpN1
	xoc+s/OWp4gjovDABX0W3ETSkgkYtvUPb1zIYycrIi6PWzo7BxzGrf+F/HMm0FNkcpX6NWxqRRL1w
	jwp88uYWAY/u3OAB17mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2xW8-00000008M4q-3hSe;
	Mon, 21 Oct 2024 18:52:36 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2xUa-00000008LuM-3X4C;
	Mon, 21 Oct 2024 18:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729536657;
	bh=c1L7b4KjHyaDOWTiFdUHcYaqE6QeCKPONNoMW8jTU44=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UUFdLXU2XZwN1mO16qE1B3uaHX5rMiu0aoBttN4RjqbwgNq7tohGS0bO8yt0l5pxR
	 ya/yJic/jqu4RNC7lFwZ1lqTxegm2XsH44PssiA0OL7a0/MY4lyeZ3mGGhFUyuPedm
	 rD/8wI9TM+Z+1TSsGu5oXxCsgc+aBxvdnWK9YlU34vrHglu0xzovxtMeioHIJfyQw4
	 F4vM39jENZSuNo6Cr2cGBcOd4hJ5wCtXrVjdIIqm6/gsolZE9SQXQjU35dvsISZ00O
	 DkphpJyBSYcAgXoZwxyZiprXfC0QFC8x09yWZfhR1KzUUASdm8Y9nOJS8hBCyW743g
	 vflQOmX59dH4w==
Received: from [192.168.1.90] (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8724217E362A;
	Mon, 21 Oct 2024 20:50:57 +0200 (CEST)
Message-ID: <1624395d-f4e9-4c82-a5ef-c05e2f3505db@collabora.com>
Date: Mon, 21 Oct 2024 21:50:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid clock-names from
 es8388 codec nodes
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241019-es8328-dt-fixes-v1-1-ca77d5ce21ad@collabora.com>
 <172953337556.748331.14779753664880128918.robh@kernel.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <172953337556.748331.14779753664880128918.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_115101_126358_C9A16997 
X-CRM114-Status: GOOD (  17.81  )
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

On 10/21/24 8:58 PM, Rob Herring (Arm) wrote:
> 
> On Sat, 19 Oct 2024 03:38:10 +0300, Cristian Ciocaltea wrote:
>> The binding for Everest ES8328/ES8388 audio CODEC doesn't support the
>> 'clock-names' property:
>>
>>   rk3588-orangepi-5-plus.dtb: audio-codec@11: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
>>     from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
>>
>> Since the related audio driver is also not making use of it, drop the
>> invalid property from all es8388 codec nodes.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>> Several DT fixes involving the usage of the Everest ES8328/ES8388 audio
>> CODEC.
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts      | 1 -
>>  arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts  | 1 -
>>  arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts      | 1 -
>>  arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 1 -
>>  4 files changed, 4 deletions(-)
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3399-roc-pc-plus.dtb rockchip/rk3588-orangepi-5-plus.dtb rockchip/rk3588-quartzpro64.dtb rockchip/rk3588s-indiedroid-nova.dtb' for 20241019-es8328-dt-fixes-v1-1-ca77d5ce21ad@collabora.com:
> 
> arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: audio-codec@11: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
 
This warning is unrelated, but eventually fixed via:

https://lore.kernel.org/lkml/20241019-es8328-doc-port-v1-1-25c1d1b5c65c@collabora.com/

Regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
