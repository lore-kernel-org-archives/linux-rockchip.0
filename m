Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E41AC02181
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 10:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrAYpWA4mrece9W9udOuWPu6xwML1AWWqzjOlK2qZSE=; b=Luw5F0kwKt/rlp
	t8qEKkrTUkr07FeLntwDO3A4Bk+FWWFsLu5aU+9H+jTNbrtAa59TJo7G1MKKANiPUyATpSVq5bhx/
	zIo2dSlRtL+EXlrC7ZstrDG5YhMy6Nd7mKF+mMsIuPPx6NhTUjqNdcxFY0qp3dqeIaP2fT9SrzeF5
	O6K6KtHVuBDy9RCCy12qh0RVoZCRwl0iI3rEFn5YdyiWakkSiCDaB4iby2fWGT9xjdNk/fybshzGc
	F+59CPrGb+Snp+lbjDo7ixE30eLuw3NFK+uJ2i88UakAQiSrAiBzGXjnXnFinSZxxciTnQ4CDJ6bO
	vb4vYdgK5ZOI7szUUs1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taXmp-00000009unn-2IAI;
	Wed, 22 Jan 2025 10:16:39 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taXlX-00000009uf7-0nPe;
	Wed, 22 Jan 2025 10:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=X8Jqip2+EUnxTzwkbxgRzDjMVQmyTYWY55G8IQGsnqg=; b=J
	TFgnUhmPLhBtBzXJEpH/oTSefjxwCukLrU0bnmvK83Vru1gpCSVSzt2TC0c2VDzg
	+/e223PumNREJ/j8rtEIkmIYkwTSJYQJf5sOdZJcGC8J7JWD4YGlSh5KmO5MaUHa
	kt1nUKfRTXluNWH0tfzYCBZNfRtJfDEjqIxYA9fkaw=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-141 (Coremail) ; Wed, 22 Jan 2025 18:14:38 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 22 Jan 2025 18:14:38 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
	detlev.casanova@collabora.com, daniel@fooishbar.org, robh@kernel.org,
	sebastian.reichel@collabora.com,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v12 12/13] dt-bindings: display: vop2: Add rk3576
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250122-amber-moth-of-upgrade-fa8331@krzk-bin>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103500.2528258-1-andyshrk@163.com>
 <20250122-amber-moth-of-upgrade-fa8331@krzk-bin>
X-NTES-SC: AL_Qu2YBfmfv0As7iibZekfmkcVgOw9UcO5v/Qk3oZXOJF8jCrr+CUnVkFMJFbsweeONhCLrheYTj1O48h1bZN6b5MbUXGMFwQ7SUeIEvUXSRjajA==
MIME-Version: 1.0
Message-ID: <76fe64e1.7132.1948d81c1f4.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: jSgvCgD33_kOxZBn3c1cAA--.18436W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gHcXmeQv7FH9wACsa
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_021519_601823_3114A374 
X-CRM114-Status: GOOD (  15.64  )
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

Hi, 

At 2025-01-22 16:04:59, "Krzysztof Kozlowski" <krzk@kernel.org> wrote:
>On Tue, Jan 21, 2025 at 06:34:57PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> Add vop found on rk3576, the main difference between rk3576 and the
>> previous vop is that each VP has its own interrupt line.
>> 
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> 
>> ---
>> 
>> Changes in v12:
>> - Split from patch 10/13
>
>Order your patches finally. It's v12 and you still send binding after
>the user. Read carefully submitting bindings/patches.

What do you mean by "sending binding after user" here? 
I think PATCH 1~9 are fix and preparations, PATCH 13("drm/rockchip: vop2: Add support for rk3576")
is the user that uses the new binding.

>
>> 
>> Changes in v11:
>> - Remove redundant min/maxItems constraint
>> 
>> Changes in v10:
>> - Move interrupt-names back to top level
>> - Add constraint of interrupts for all platform
>> - Add constraint for all grf phandles
>> - Reorder some properties
>> 
>> Changes in v9:
>> - Drop 'vop-' prefix of interrupt-names.
>> - Add blank line between DT properties
>> - Remove list interrupt-names in top level
>> 
>> Changes in v8:
>> - Fix dt_binding_check errors
>> - ordered by soc name
>> - Link to the previous version:
>>   https://lore.kernel.org/linux-rockchip/6pn3qjxotdtpzucpul24yro7ppddezwuizneovqvmgdwyv2j7p@ztg4mqyiqmjf/T/#u
>> 
>> Changes in v4:
>> - describe constraint SOC by SOC, as interrupts of rk3576 is very
>>   different from others
>> - Drop Krzysztof's Reviewed-by, as this version changed a lot.
>> 
>> Changes in v3:
>> - ordered by soc name
>> - Add description for newly added interrupt
>> 
>> Changes in v2:
>> - Add dt bindings
>> 
>>  .../display/rockchip/rockchip-vop2.yaml       | 55 ++++++++++++++++++-
>>  1 file changed, 52 insertions(+), 3 deletions(-)
>> 
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>> index 157a37ed84da..a2a6369c7b6f 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
>> @@ -21,6 +21,7 @@ properties:
>>      enum:
>>        - rockchip,rk3566-vop
>>        - rockchip,rk3568-vop
>> +      - rockchip,rk3576-vop
>>        - rockchip,rk3588-vop
>>  
>>    reg:
>> @@ -38,10 +39,21 @@ properties:
>>        - const: gamma-lut
>>  
>>    interrupts:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 4
>>      description:
>> -      The VOP interrupt is shared by several interrupt sources, such as
>> -      frame start (VSYNC), line flag and other status interrupts.
>> +      For VOP version under rk3576, the interrupt is shared by several interrupt
>> +      sources, such as frame start (VSYNC), line flag and other interrupt status.
>> +      For VOP version from rk3576 there is a system interrupt for bus error, and
>> +      every video port has it's independent interrupts for vsync and other video
>> +      port related error interrupts.
>> +
>> +  interrupt-names:
>> +    items:
>> +      - const: sys
>> +      - const: vp0
>> +      - const: vp1
>> +      - const: vp2
>>  
>>    # See compatible-specific constraints below.
>>    clocks:
>> @@ -135,6 +147,8 @@ allOf:
>>          interrupts:
>>            maxItems: 1
>
>So this change moves to this patch.
>
>>  
>> +        interrupt-names: false
>> +
>>          ports:
>>            required:
>>              - port@0
>> @@ -148,6 +162,39 @@ allOf:
>>        required:
>>          - rockchip,grf
>>  
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,rk3576-vop
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 5
>
>No. You did not implement my comment at all.
>
>So again:
>"Why minItems? Nothing in this patch makes sense for me. Neither changing
>existing binding nor new binding for rk3576."
>
>To address such comment, come with reasonable answer to "why". Not just
>send the same. It's a waste of my time to keep reviewing the same.
>
>Best regards,
>Krzysztof
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
