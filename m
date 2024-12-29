Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13BB5E7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Dec 2024 10:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DWxP92pLVUb/vImmPIQqzOGSHt7sbHMt1+0+pFVSPA=; b=eZpw4zU6tskKOW
	RIXY3wx15lDwCduccFyJ4mhjfVLGGeLkVYltUEj07inv9MvKLAMhcrzwIMGrntuoIAD7GrMSbqsFH
	YgJV2ajwoJ59b0guE/26vEjdM2Jp268Vr7KlXtXdGIaO8ZqS5LGR0kiVbYY+r03RgTwGmLFFJP3+v
	L4Swl0BGiVk/uXLd2nEnewaJ5k7fPxVEJcS30UoxpnCDZ/PBBlknOHj8I3lKDNt9yllcGhhPRtdn+
	TTMZcBNSAG8/YDY/7eYs52HY9RgYaB1NG3towxbJxHswiDjS/jdnVA2oKAi5ZnjnQFwq5OHaDC3Ll
	kaT3Y6KrF+GEvzUHQ4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRqtP-00000003Hyl-1JaT;
	Sun, 29 Dec 2024 10:51:31 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRqsB-00000003Hl7-2gER;
	Sun, 29 Dec 2024 10:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=6x6DDz8OXltjHQDY/Nb8O3LQiGK4ytUH+XsVeWN6k7M=; b=F
	/q3zeels/yRCPMpYd0L8TenzEk7sD6Vblu5Ibux4tuxUHO9aqIIbXK62SZ7UXFpQ
	UtKXMoDsR4tNc6BEa6nlKMmPgeHPOXE04XMCAD6iQKyw+/o/lHgpDkiNdlUrrb7w
	FbKIqiCd9+nnT3uoW9AXKEOcjKbPNq+G590TSWi/Bs=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-135 (Coremail) ; Sun, 29 Dec 2024 18:49:38 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sun, 29 Dec 2024 18:49:38 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: robh@kernel.org, iommu@lists.linux.dev, heiko@sntech.de, 
	devicetree@vger.kernel.org, joro@8bytes.org, hjc@rock-chips.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, vkoul@kernel.org, 
	detlev.casanova@collabora.com, linux-arm-kernel@lists.infradead.org, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, 
	cl@rock-chips.com
Subject: Re:Re: [PATCH v2 5/8] dt-bindings: display: vop2: Add rk3576
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <ihvrdnntfuvvycnlhysnm43wylotovvnivu4wxcne3bwc6etpj@n2rq6n77lmma>
References: <20241228122155.646957-1-andyshrk@163.com>
 <20241228122155.646957-6-andyshrk@163.com>
 <ihvrdnntfuvvycnlhysnm43wylotovvnivu4wxcne3bwc6etpj@n2rq6n77lmma>
X-NTES-SC: AL_Qu2YB/idtkss7iGeYOlS3TJ694VEL57u+a5GusA2ecAsnATi4iQeZGRsL2rN79jltAEHsN6nekZl9Y1BVSkd
MIME-Version: 1.0
Message-ID: <4847f6b1.1c60.19412092a7a.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: hygvCgDn76xCKXFnKw9LAA--.48082W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQTEXmdxJJEE4wADsw
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_025016_095980_52347409 
X-CRM114-Status: GOOD (  12.58  )
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



Hi Krzysztof,

At 2024-12-29 18:13:39, "Krzysztof Kozlowski" <krzk@kernel.org> wrote:
>On Sat, Dec 28, 2024 at 08:21:48PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> Add vop found on rk3576, the main difference between rk3576 and the
>> previous vop is that each VP has its own interrupt line.
>> 
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> 
>> ---
>> 
>> Changes in v2:
>> - describe constraint SOC by SOC, as interrupts of rk3576 is very
>>   different from others
>> - Drop Krzysztof's Reviewed-by, as this version changed a lot.
>> 
>> Changes in v1:
>> - ordered by soc name
>> - Add description for newly added interrupt
>> 
>>  .../display/rockchip/rockchip-vop2.yaml       | 70 +++++++++++++++----
>>  1 file changed, 56 insertions(+), 14 deletions(-)
>> 
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>> index 2531726af306..f28cea4a6d82 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>> @@ -20,6 +20,7 @@ properties:
>>      enum:
>>        - rockchip,rk3566-vop
>>        - rockchip,rk3568-vop
>> +      - rockchip,rk3576-vop
>>        - rockchip,rk3588-vop
>>  
>>    reg:
>> @@ -37,10 +38,22 @@ properties:
>>        - const: gamma-lut
>>  
>>    interrupts:
>> -    maxItems: 1
>> -    description:
>> -      The VOP interrupt is shared by several interrupt sources, such as
>> -      frame start (VSYNC), line flag and other status interrupts.
>> +    minItems: 1
>> +    maxItems: 4
>> +    items:
>> +      - description:
>
>That's contradictory. min/max say 1-4, but here you list two interrupts.

There are 4 interrupts on rk3576, and the other SOC only have one.
I am sorry that I am not familiar with this schema language; I have read many
other YAML bindings these days and try to write it correctly.

Maybe I should not list the interrupts-names here(then list the interrupt-name by soc at allOf:  part),
 like the clocks handles in samsung,usb3-drd-phy.yaml  ?

>
>> +          vop system interrupt, such as bus error, and vsync for vop version under
>> +          rk3576.
>> +      - description:
>> +          independent interrupts for each video port, such as vsync and other video
>> +          port related error interrupts.
>> +
>> +  interrupt-names:
>> +    items:
>> +      - const: vop-sys
>> +      - const: vop-vp0
>> +      - const: vop-vp1
>> +      - const: vop-vp2
>
>And this says exactly 4.
>
>Best regards,
>Krzysztof
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
