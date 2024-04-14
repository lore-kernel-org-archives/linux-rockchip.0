Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B7D1C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 18:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M43JZX60NqXSZc47nzVF/PtCYt+dd2AlXsUwFaCJZdU=; b=kMfHqo3trSlMlV
	MOFX4byu6QgoI5TVMaGLs+5qyHLlcCQ4uIxsRh6x3IikUIsHv6hKzMC/KbR9LWJx12TwNsO8JBisK
	E8I0RuZCj2imMahVIQ8mXz5B2QpYoV4ybRr7aq5LyUJKZNpNBs8/VH9RrIgV8Vp7uc433rgfcu1NL
	11XOdnNrho6E0AYU/GgdWFGsXHLDTOOz5FYO0DwB46zo3whVpcIsszlPVSy66+ALImOYWDL/bxgRr
	tK8ESULtCa0nb5TC/TFmqW385Pp82l67UxygWKOjVafG3vz7IaV5xVAz0Oia4Zgcj8lZEarz9c1vG
	dxEuepcG9e1pjn+8jDqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4zb-00000006AIV-2W1u;
	Sun, 14 Apr 2024 18:54:19 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4zX-00000006AG8-0Xu4
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 18:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1713120836;
 bh=o6KhYcJny4LUz13HWMoNmuFaXLpJ75r6XYs3Wyyjsn0=;
 b=k6n+OtjkbA7wlZ5stF4QXTbWppmX0pwXK219sGso8n2onXpdB3cQJbvSShQ5oyGG63TayHL1N
 tE9NSnWjtrQtnYhgc0i5v4jATmbjwcE8cSsPA2eVMpVggaZqsDrxFQyV/4aPQtovwi3LiEs4liy
 HQNUbG1x4bXk5wkvWOiz1TlftYUsun+jrfeCnHJkQmVMw53KC5+rx1y3D/OURJrzpBzTiiAUb4k
 rZR7AgHnSJS5IicjnZheu5BK12jW+Asuu3za5oxRFXfCg5gxuMznUEbgUK2znsbV/2bcejLB7YR
 kg9+J8Cy+/5wYZeIl4jhxmFp6N1z1QXTiZUgH1x9yXsQ==
Message-ID: <ef4b9abc-6796-40bf-98f9-a12f007ed846@kwiboo.se>
Date: Sun, 14 Apr 2024 20:53:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] dt-bindings: display: rockchip,dw-hdmi: Fix
 sound-dai-cells warning
To: Johan Jonker <jbx6244@yandex.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Andy Yan
 <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Mark Yao <markyao0591@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20240414151135.1774981-1-jonas@kwiboo.se>
 <20240414151135.1774981-4-jonas@kwiboo.se>
 <0facfa2a-bff7-4cf1-b43a-349bba2f2342@yandex.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <0facfa2a-bff7-4cf1-b43a-349bba2f2342@yandex.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661c2644309b3fe15baf7834
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_115415_561687_3B5020BE 
X-CRM114-Status: GOOD (  15.80  )
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

On 2024-04-14 20:41, Johan Jonker wrote:
> On 4/14/24 17:11, Jonas Karlman wrote:
>> The rockchip,dw-hdmi node can be used as a sound dai codec, however,
>> dtbs_check may report the following issue:
>>
>>   hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
>>   from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
>>
>> Add a reference to dai-common.yaml and add the #sound-dai-cells prop to
>> resolve this warning.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
> 
>> v2: New patch to fix #sound-dai-cells warning
> 
> Hi,
> 
> You are #4 that does an attempt on this subject.
> Coincidence with my patches??
> If other notifications could be fixed with the same amount of interest?
> Please be welcome to pick some other random Rockchip related ones.

Hehe, I should have looked deeper at what existing patches was out there.

Will send a v3 without this patch and instead reference your patch.

Regards,
Jonas

> 
> Johan
> 
> ===
> 
> [PATCH v1 1/3] dt-bindings: display: add #sound-dai-cells property to rockchip dw hdmi
> https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/
> 
> [PATCH] dt-bindings: display: rockchip: add missing #sound-dai-cells to dw-hdmi
> https://lore.kernel.org/linux-rockchip/20240326172801.1163200-1-heiko@sntech.de/
> 
> [PATCH 6/6] dt-bindings: display: rockchip: dw-hdmi: Add missing sound-dai-cells property
> https://lore.kernel.org/linux-rockchip/20231222-pinetab2-v1-6-e148a7f61bd1@mecka.net/
> 
>> ---
>>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml           | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> index af638b6c0d21..3285fff54416 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> @@ -15,6 +15,7 @@ description: |
>>  
>>  allOf:
>>    - $ref: ../bridge/synopsys,dw-hdmi.yaml#
>> +  - $ref: /schemas/sound/dai-common.yaml#
>>  
>>  properties:
>>    compatible:
>> @@ -124,6 +125,9 @@ properties:
>>      description:
>>        phandle to the GRF to mux vopl/vopb.
>>  
>> +  "#sound-dai-cells":
>> +    const: 0
>> +
>>  required:
>>    - compatible
>>    - reg


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
