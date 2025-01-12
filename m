Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A353E7719C
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jan 2025 10:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUV9SyGzlE8kSdRjLoqsC9BmGrC4hONmlOCrrdaix7g=; b=tZiJyqDJ9Jkz2N
	OcCnv6kc+GA8PeZ8j9wTxnDEICP+SIllIsvtSyzMTFbj2a3SyzK5mIkGXhK+rjps1+PlV3mVw/8ia
	NoRqKoCyIV4YXZ+d9VHvRQP3kgJD8ITyOgpT2xWkOyjQARq+JPYaX8gOZflVsBJgryDv5Rmx9TmHn
	aSu85SDtg8xYgiabiq5IAIV1f4uLWuQ3e5cd1oB0SFjKa2F6VkzzsavsMF4j+AjpJDiVk9AYNYob3
	u0oMKiopPY4hC+f7e90114Km85ZrfE0gO+ld3sfjqJCAI6RwoLrtCJCG66TSOz56fFZHnROE4Ebby
	pHHwxpImMKF/bh6y5eDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWvWI-00000002XV0-1YtG;
	Sun, 12 Jan 2025 10:48:38 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWvV1-00000002XNS-1A0I;
	Sun, 12 Jan 2025 10:47:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=uLijmqhAw5jNLjBRhm2d/cc/4ja5JlnokOX1s31dGKk=; b=l
	yLdeC6XNbfUhJ/yxiV/UBm/xycSNPKckTvmMN0H5ckDwbYKROYBqtMCcfy5khtDS
	ZiZq6ITHnoq0z6brdXXmrsKzXeHBr6zKFQUzdzpSLn/g/cB/MANU9Xh2xBZajfEm
	r2gXef9RYgok7NxNzrSBrKIRVxyat8w3wdn0banOd0=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-110 (Coremail) ; Sun, 12 Jan 2025 18:46:28 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sun, 12 Jan 2025 18:46:28 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	detlev.casanova@collabora.com, daniel@fooishbar.org, robh@kernel.org, 
	sebastian.reichel@collabora.com, 
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v11 10/11] dt-bindings: display: vop2: Add rk3576
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <i5mp7wrogfc7w3fbmvqgqxsbgcx4xnfnjik4rpd35amdwgppan@fistrhikrrmd>
References: <20250111112614.432247-1-andyshrk@163.com>
 <20250111112614.432247-11-andyshrk@163.com>
 <i5mp7wrogfc7w3fbmvqgqxsbgcx4xnfnjik4rpd35amdwgppan@fistrhikrrmd>
X-NTES-SC: AL_Qu2YBPqct08j7iWbYOkfmkcVgOw9UcO5v/Qk3oZXOJF8jCfp9hkHQ3BTPUD22/mDESm+nQiHVyBC7M55cZJ4f4YkiMOvA/MjaB30brfRc7Guag==
MIME-Version: 1.0
Message-ID: <3a93b0e3.1b0c.1945a1f4dbd.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: bigvCgCHj1OEnYNnfmqzAA--.12837W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hTSXmeDmdcttwADs5
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_024719_660082_8BD7B75B 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

At 2025-01-12 17:27:18, "Krzysztof Kozlowski" <krzk@kernel.org> wrote:
>On Sat, Jan 11, 2025 at 07:26:08PM +0800, Andy Yan wrote:
>>    # See compatible-specific constraints below.
>>    clocks:
>> @@ -120,43 +133,98 @@ allOf:
>>        properties:
>>          compatible:
>>            contains:
>> -            const: rockchip,rk3588-vop
>> +            enum:
>> +              - rockchip,rk3566-vop
>> +              - rockchip,rk3568-vop
>>      then:
>>        properties:
>>          clocks:
>> -          minItems: 7
>> +          minItems: 5
>
>That's wrong, why maxItems became minItems? How is this related to rk3576?
>
>> +
>>          clock-names:
>> -          minItems: 7
>> +          minItems: 5
>
>You are doing here way too much. You need to split reorganizing, so we
>will see what comes new.
>
>And of course you need to explain why you are changing EXISTING binding
>(I am not talking about shuffling around - you change the binding).

How about split this patch to two: One rework the existing binding,  make it
more suitable for expanding to include new SoCs.
Then add rk3576 in the second patch ?


>
>
>> +
>> +        interrupts:
>> +          maxItems: 1
>> +
>> +        interrupt-names: false
>>  
>>          ports:
>>            required:
>>              - port@0
>>              - port@1
>>              - port@2
>> -            - port@3
>> +
>> +        rockchip,vo1-grf: false
>> +        rockchip,vop-grf: false
>> +        rockchip,pmu: false
>>  
>>        required:
>>          - rockchip,grf
>> -        - rockchip,vo1-grf
>> -        - rockchip,vop-grf
>> -        - rockchip,pmu
>>  
>> -    else:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,rk3576-vop
>> +    then:
>>        properties:
>> +        clocks:
>> +          minItems: 5
>
>
>Why minItems? Nothing in this patch makes sense for me. Neither changing
>existing binding nor new binding for rk3576.
>
>> +
>> +        clock-names:
>> +          minItems: 5
>> +
>> +        interrupts:
>> +          minItems: 4
>> +
>> +        interrupt-names:
>> +          minItems: 4
>> +
>> +        ports:
>> +          required:
>> +            - port@0
>> +            - port@1
>> +            - port@2
>> +
>>          rockchip,vo1-grf: false
>>          rockchip,vop-grf: false
>> -        rockchip,pmu: false
>>  
>> +      required:
>> +        - rockchip,grf
>> +        - rockchip,pmu
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,rk3588-vop
>> +    then:
>> +      properties:
>>          clocks:
>> -          maxItems: 5
>> +          minItems: 7
>
>And again weird change to the binding.
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
