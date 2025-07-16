Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CA93C83F27
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 01:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAxJyFugdwX1JSgBC/woi/X2aD4aH1emDM3Dnx395MM=; b=1bhueTu5rIhcmI
	bvrjTJ3uK1G+R73AlRHzFB6EOdyCkyr1s0Y1RrUY8DLjiY2AuojzavV8qP6pXVd10SBitYf5n0Gz4
	dG7fZeAuF/LiH2Cn8tdULzyYT4poeC4+FBOX3slIS9bCCvnm7RfMSjhzbbCSY4nvsYQGmkOBoCOCm
	RT8hAifzTy5Vowd+ovXKAyEJwcYzr77UIrln03WtVdfEq7DRpfOpCOrNABt2pbD7dMPOgy2TEAr6m
	Lr+6REm6JAybYf2i1QHkGpIVXj9AHIgAQOg6eFCwDk+lcts2tFO1wcsv/AOSChqADnc6/H0YFidMp
	N0uw0iV6M6tRTGVZnrlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubqnh-00000006X8B-3Ecc;
	Wed, 16 Jul 2025 01:19:13 +0000
Received: from mail-m1973191.qiye.163.com ([220.197.31.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubqne-00000006X6S-41xJ;
	Wed, 16 Jul 2025 01:19:12 +0000
Received: from [127.0.0.1] (gy-adaptive-ssl-proxy-3-entmail-virt135.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1c20f26cc;
	Wed, 16 Jul 2025 09:18:56 +0800 (GMT+08:00)
Message-ID: <9e6c432a-9bed-474c-afa9-fd6ada8bb8f8@rock-chips.com>
Date: Wed, 16 Jul 2025 09:18:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: phy: rockchip: rk3399-typec-phy: Support
 mode/orientation switch
To: Krzysztof Kozlowski <krzk@kernel.org>, Chaoyi Chen <kernel@airkyi.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-3-kernel@airkyi.com>
 <4dfed94c-665d-4e04-b527-ddd34fd3db8f@kernel.org>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <4dfed94c-665d-4e04-b527-ddd34fd3db8f@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh0eSVZKSEpKS0pIQh5KHR1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
X-HM-Tid: 0a9810d0310c03abkunmd19fa1411423d24
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBg6LTo*FDE0NwlMMVFCFTc8
	KTUKCSlVSlVKTE5JTUlDTE9NS01JVTMWGhIXVRgTGhQCElUYEx4VOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSExITTcG
DKIM-Signature: a=rsa-sha256;
	b=WzL1xQNdru/zKe4DMlBTqwjgA2IwGOyI3/txUXdcBAVE1KQqUbQT9JBMVDdMm8ZIMgaP0HN8jb4iceyiqmOwPb0XX7j6gmpr27mF8e13nD8gV8pFdhA9hTR5AW1FxVdoVWvT2k+f5qv827ZzKc29N2+W2JtkLU7e4ajVmc3kr0g=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=y9UGnpqAWUlGLKMTmekl851slDMZjV5j64meupx2I6w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_181911_162473_4953EA24 
X-CRM114-Status: GOOD (  17.92  )
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

Hi Krzysztof,

On 2025/7/15 19:34, Krzysztof Kozlowski wrote:
> On 15/07/2025 13:24, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> Add support for Type-C orientation and altmode switch.
>> The Type-C controller can be specified to handling switching.
> Please describe the hardware in details. Above sentences don't help me
> to understand this.

I will add more description in v2.


>
>
>> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>> ---
>>   .../bindings/phy/rockchip,rk3399-typec-phy.yaml    | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
>> index 91c011f68cd0..a885c6893a90 100644
>> --- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
>> @@ -43,6 +43,20 @@ properties:
>>       description:
>>         Phandle to the syscon managing the "general register files" (GRF).
>>   
>> +  orientation-switch:
>> +    description: Flag the port as possible handler of orientation switching
>> +    type: boolean
>> +
>> +  mode-switch:
>> +    description: Flag the port as possible handler of altmode switching
>> +    type: boolean
>> +
>> +  port:
>> +    $ref: /schemas/graph.yaml#/properties/port
>> +    description:
>> +      A port node to link the PHY to a TypeC controller for the purpose of
>> +      handling orientation switching.
>
> You are using usb-switch.yaml properties in phy node, which raises
> questions whether this is actually complete. It might be, but commit msg
> is so vague that I have doubts.
>
> Also, why only one port?
>
> Or wait... you already have ports! two of them. This needs to stop, why
> are you adding more?

Oh, I will try to reuse them. Will fix in v2.


>
> Best regards,
> Krzysztof
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
