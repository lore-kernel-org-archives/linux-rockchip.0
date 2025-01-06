Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83860E77188
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 07:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aDWAwVhubGWsX2B+jGB+ptYuWQJZ22XQrcusJz1VFI8=; b=bg2h+ZWqsxaZkwxrhIv5kDfdjf
	DyJmJTkmb6Cc1nrYayTWeOTGANhyms5CNB+dut3LrDm6CtxJqj2j+uVtCktybdqTo2pSt0q1UjK2T
	q1FMzYOTDSTH7x92rkgdlQCCaj26XuV1scc3b8kCxypzjn4cjOQJK+Y3bUlTGt7bBUA0yqkNM3z53
	VACxM3VDi7oDEZLGk29e6VLKngQ0Rdemm302NVj2IQCf3F8LGuwuVlwLvHMfRBD4Dfa1AlR0CNikD
	bZzYLHu6Z7t5ng5tx6Oh77KlhTG3yjD4kWF8k3rimMZDu73TidYsSNFimYvIw3I7TQef/u4zRhSNQ
	qzHiCu2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUhXG-00000000PFI-1bYm;
	Mon, 06 Jan 2025 07:28:26 +0000
Received: from mail-m1973187.qiye.163.com ([220.197.31.87])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUhXC-00000000PDx-27WC;
	Mon, 06 Jan 2025 07:28:24 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 7d0a3508;
	Mon, 6 Jan 2025 15:28:16 +0800 (GMT+08:00)
Message-ID: <2d9c71cf-6612-44cb-a223-a2184e027d1c@rock-chips.com>
Date: Mon, 6 Jan 2025 15:28:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/17] dt-bindings: display: rockchip: analogix-dp: Add
 support for RK3588
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-3-damon.ding@rock-chips.com>
 <63c14ff2-d3c2-4bbb-8d54-376b75c62fd4@kernel.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <63c14ff2-d3c2-4bbb-8d54-376b75c62fd4@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5DSlZISk1PGEIZQk5DTENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a943a83aeb503a3kunm7d0a3508
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OVE6Thw5DjIIFx8iATNILD4U
	PBEwCxRVSlVKTEhNSk9DT0JMTU1NVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJSElJNwY+
DKIM-Signature: a=rsa-sha256;
	b=ai/xbz6eBCaRmZIOhnTAI58fU8w5eQMTuuFWwyKYYDz/RALnEKKosakJy2RwfTWOzfoGPf+ChfE47Xyjl8zNYpnraWRC+3qO2Y9klUpIT/V3rTgD3djlhMWpcuCCDw0H6ScoQ57DO4Hg/ybZ9xipULhPIG0uJiX0vMXVyWZbuRA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=OGrkyu2TC7xLdj/Df8CnWXafSpzpS9J9hFV3qgsUsbY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_232823_071766_A2C706C9 
X-CRM114-Status: GOOD (  15.48  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 2024/12/27 15:13, Krzysztof Kozlowski wrote:
> On 26/12/2024 07:32, Damon Ding wrote:
>> Compared with RK3288/RK3399, the HBR2 link rate support is the main
>> improvement of RK3588 eDP TX controller, and there are also two
>> independent eDP display interfaces on RK3588 Soc.
>>
>> The newly added 'apb' reset is to ensure the APB bus of eDP controller
>> works well on the RK3588 SoC.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - Add the main defferences of the RK3588 eDP and the previous versions
>>    in commit message
>>
>> Changes in v3:
>> - Expand the property clock-names, resets and reset-names
>>
>> Changes in v4:
>> - Remove 'spdif' clock which added in v3
>> - Add the comment of newly added 'apb' reset in commit message
>> ---
>>   .../bindings/display/rockchip/rockchip,analogix-dp.yaml  | 9 +++++++--
>>   1 file changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> index 60dedf9b2be7..200703905b29 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> @@ -15,6 +15,7 @@ properties:
>>       enum:
>>         - rockchip,rk3288-dp
>>         - rockchip,rk3399-edp
>> +      - rockchip,rk3588-edp
>>   
>>     clocks:
>>       minItems: 2
>> @@ -31,10 +32,14 @@ properties:
>>       maxItems: 1
>>   
>>     resets:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
>>   
>>     reset-names:
>> -    const: dp
>> +    minItems: 1
>> +    items:
>> +      - const: dp
>> +      - const: apb
> 
> I asked why existing variants get this new reset. This is not supposed
> to be flexible (which I wrote as well), but constrained per variant. Or
> explain why not.
> 
> 
> 

I misunderstood you before. Indeed, the new reset is only for RK3588, so 
the patch should be similar to the modifications made for RK3576 HDPTX 
PHY dt-bindings [0].

Best regards
Damon

[0]https://patchwork.kernel.org/project/linux-rockchip/patch/20241231092721.252405-1-andyshrk@163.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
