Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18076C04A68
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Jul 2022 07:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6ZO4pcDye8ESkBEy3JmM91dOkDvqwxmSSG7RTYLdDk=; b=ZiP5NkdVMvTvv/
	pAe+/cSb61rZyDDhDjQhr+y2H+zql9rzIgSfIVyivnWDzjJ4Vq2W3CspQQf5E/mlZPnB2AmrkfVFu
	5E2vGdRaUanpVCSk5WAlUUQKoos26yIqR1QDsykNFYwrIg4qahmPE+HpcL4uQ/QDfgwJ+gLOYADan
	2jFUil7Ub4Dc24ryVkIHCSP+M75qATvIm2GakgCkHYfRCdxg5fZsXDhB0QYInm3j70JGNjbjjIc8E
	8Vv7p6HQtp1ThfM2DQzoODCCuwGNzXfUE745xpdjfokr/7ZIUQ6Dm5QpqO3E5fcXYspty81v3EmHT
	XiKKJNJHKzA0mRkop7/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGb3F-00AHRB-48; Wed, 27 Jul 2022 07:01:49 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGb3C-00AHOK-6w
	for linux-rockchip@lists.infradead.org; Wed, 27 Jul 2022 07:01:47 +0000
Received: by mail-lj1-x22d.google.com with SMTP id e11so18826591ljl.4
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Jul 2022 00:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dXZK6C0i0X70KmtV579RKIt55rAn+L75gbuBynNyQlw=;
        b=d7m6TrT7+9TGKTD0TxN1iMc19mPAXQT42SpmyjoeUbp2xQbgqhwFAkBRuZ2r5JOC1/
         9R8l6aJ0oUlv5MNXwlEf9w4CsGn+s7xoJ864cBDVoNmuRAdpm2tNBPhLfXH5Vb+zTvmm
         1IEsTJceo71RLp0Sny9CTvUB56V/vLjUlBKp/CDT52SzUjRbYdVgWXFCINm0u6Bk6dNQ
         2ZIIH9ZswN5D5BhRT9e8otqwRemxTMlOCfne2xVjLgP8W9yJvhSWh5M19+wDzQEMZ+3c
         XsFCdVBZS7VSkhlnyckU+cb0CK2Uf3WCdljmOnGWXeMPWTnHjzB2bPbi6Piy7n9Z8uH/
         zrkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dXZK6C0i0X70KmtV579RKIt55rAn+L75gbuBynNyQlw=;
        b=iQEAbiQsoJbc3WBzdLGgwswCwSevo5et6hkIGKV8/QwDplPQmzfa8iBjrzzJAZOldK
         thgfuwvdgulsMF7o9vuUlsNW9HhaWg3dlYsR3bjeR85ZMMXBAeGop3Qbs3KMM2jlgf08
         5GzBRF6GxDXUaO3uOvo++5w32nkC7weqm11KWEMeWqU65PQmheSluLbVLq3uiSkJYh+5
         NrW+VhgY2HjCFeF38rKZojK8K2+kE2uA3uhIu76HmMhz1HZILHrx8FII5LDrzf55KXiz
         BTR57JH4r5h7vxFo7qYddAfDWJnnC+hFJ3+LnyWI1QTfzGSH4eQj7ZGtUdz9Vl5PQlpl
         4EkA==
X-Gm-Message-State: AJIora9IbOS8O/mALa5yxv8vtuyyvPVz8Bp6FqSmoJVQ5POxOcCWau60
	p71OLjaENmgrxgER9boti6wIdw==
X-Google-Smtp-Source: AGRyM1tHywffhLXONDN5Ms6+hyulYI93frREu+VEfSqawRJzDxcn9TU4SeZnsXCES82tZDj1kGKiPQ==
X-Received: by 2002:a2e:908:0:b0:25d:e37b:2cbb with SMTP id 8-20020a2e0908000000b0025de37b2cbbmr6968363ljj.401.1658905304665;
        Wed, 27 Jul 2022 00:01:44 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id bj12-20020a2eaa8c000000b0025d64453f4dsm1667747ljb.122.2022.07.27.00.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 00:01:44 -0700 (PDT)
Message-ID: <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org>
Date: Wed, 27 Jul 2022 09:01:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
 <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
 <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220727_000146_324990_C6F1EAA3 
X-CRM114-Status: GOOD (  18.10  )
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

On 27/07/2022 08:52, Jagan Teki wrote:
> On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 26/07/2022 15:44, Jagan Teki wrote:
>>> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 23/07/2022 22:43, Jagan Teki wrote:
>>>>> Add power-domain header for RV1126 SoC from description in TRM.
>>>>>
>>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>>>> ---
>>>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
>>>>>  1 file changed, 34 insertions(+)
>>>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
>>>>>
>>>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
>>>>> new file mode 100644
>>>>> index 000000000000..f15930ff06f7
>>>>> --- /dev/null
>>>>> +++ b/include/dt-bindings/power/rv1126-power.h
>>>>> @@ -0,0 +1,34 @@
>>>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>>>
>>>> Dual license and a blank line,  please.
>>>
>>> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
>>> the issue with it?
>>
>> The headers are part of bindings and all bindings should be dual
>> licensed, so they can be used in other projects.
>>
>> Of course if copyright holder does not agree to release it on BSD, then
>> it would be fine as exception. Also would be fine from us not to accept
>> such bindings. :)
> 
> I don't hold anything here to use dual-licensing. The only thing I'm
> wondering here is none of the rockchip power includes (which are
> merged) are using dual-licensing they simply have GPL-2.0 which is
> used in BSP.  Let me know what you suggest?

Hm, I think you asked this above and I answered that dual license should
be used. Maybe we misunderstand each other?

Do you include in this header any work which cannot be licensed on BSD
(e.g. is derivative of existing GPL-2 work)?

What other (independent) includes are doing, it's not relevant really.
If they were accepted as single license, then it's a past mistake.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
