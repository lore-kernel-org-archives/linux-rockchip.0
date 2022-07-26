Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3498DC19F2A
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jul 2022 13:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrlagCsl+zxFI+vd/f4x58euzG4ZJz/a6xUmymhnwBY=; b=dICPZIdg042CpF
	/luEx2JsBYMKdIHP/+K2zR3IYUPJGxEkzUWWCj7ffQagrmvtBV+Us7Uj5OWTsug5gnUdeaiDK9ZLm
	f24p23x3SI+Jz2uZtqxhWXnwzm+PuBgP3E4BRvAz9xBJ9P2uFZx2cQBfIegY1vhK+cws96e1xPHLn
	8LzBgX3i1A1uQnvEWxvzBKkP0VksVLc9aHED3GzmkSf3EFehzG3JBTkmSIMeTb6FHvkKLwXf0Qlsd
	eT/QvxRj8zH8rhxoFJjD3vW4iPmvd7r5bMOnhgSSBPSQcfeOv0h4Jf+rDOLZyi1bigUe7vZNj+QEr
	8emZbW0M/Pgadicw6Q/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGKza-00HX6i-7V; Tue, 26 Jul 2022 13:52:58 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGKzG-00HWwL-Ft
	for linux-rockchip@lists.infradead.org; Tue, 26 Jul 2022 13:52:40 +0000
Received: by mail-lf1-x12e.google.com with SMTP id q23so9521955lfr.3
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Jul 2022 06:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VdNg6q8J723SMFE6ZQQCYGOqGdURmHAHReIWq/4Rgig=;
        b=JolIlpkNt6o+ueX2zNM4yFRAmbfGHxnWWJYVj9v1pnBP2RFRWhl2zgHU25XzZjNTEv
         5nejim9DXOWzS3ZH9IVYQ9PpA+gvATiFY5IYPsqJ4T9xJD/xkJ48z2th0GFus9wHHBvS
         dveyJnOVmOE+SAdMdJqlVrjYTOtHnPnCYXfNPcIARwfB5Mi3RQJLqoZXMdmM5ZGYfzqC
         SaiC+5zzgT9A6iLfVWB5leeqTFGOHjTRwO8Yt2x15X1ltMnhOv8FY/jc74JWrQxNUlV5
         /Pc8RMTIecxSYNGUfsJQI7/GgrDj2QFuzgAZVvJ7e34TlH2sPf+4vL4/hybr2HaosOiF
         5dTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VdNg6q8J723SMFE6ZQQCYGOqGdURmHAHReIWq/4Rgig=;
        b=P8mE+x+2qnkZ/dfoh0ACMTFUatYohDDJK9Fw2OgNAU0uTWM+zjtK+oacsR7qqFwlRQ
         mCgf/OlxIghoirkUGGzArzG2DkT7+q6OF40C85+qLCetdFdlzYtm62OT/wQrHiZu8q3L
         2/3y9whIMS76OwA5pp+gGWNB9VerO36JTo+sBsT6x3mF13rHH9gBLXNpCpJ6Qe5IGnex
         xN6ngfDWMpsnOjUPV7DNjMba/u2SAHBE3gzRX6+uAnJsFZTshaVcHCB3i3Gvo0cJXUZP
         P0KSFr9Y45u/9sVf5vXJZ/igO/XLfZOCeoSf+CciWjYPmL8FZ6HSDO571LtQlNG8qnf9
         fnOQ==
X-Gm-Message-State: AJIora853ZEpnHYImOIuV3WeCkQ2JXdzOklq0+l203Ct5OA/6BAp6dsd
	GGMXEQzMyHMvEdG9qtxFQHGO4g==
X-Google-Smtp-Source: AGRyM1s2WMBqRGRZp41IF+YOjNpKC+v+Zf7LpX2yW4k/kj+aGW2kuOAEu62/r0B7/iM+9y/jmL9emg==
X-Received: by 2002:a05:6512:239a:b0:48a:77e0:f5b0 with SMTP id c26-20020a056512239a00b0048a77e0f5b0mr6066222lfv.656.1658843552500;
        Tue, 26 Jul 2022 06:52:32 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id i4-20020a2ea364000000b0025dec0c29bcsm2700088ljn.26.2022.07.26.06.52.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 06:52:31 -0700 (PDT)
Message-ID: <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
Date: Tue, 26 Jul 2022 15:52:30 +0200
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_065238_603448_4E220192 
X-CRM114-Status: GOOD (  15.27  )
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

On 26/07/2022 15:44, Jagan Teki wrote:
> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 23/07/2022 22:43, Jagan Teki wrote:
>>> Add power-domain header for RV1126 SoC from description in TRM.
>>>
>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>> ---
>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
>>>  1 file changed, 34 insertions(+)
>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
>>>
>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
>>> new file mode 100644
>>> index 000000000000..f15930ff06f7
>>> --- /dev/null
>>> +++ b/include/dt-bindings/power/rv1126-power.h
>>> @@ -0,0 +1,34 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>
>> Dual license and a blank line,  please.
> 
> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
> the issue with it?

The headers are part of bindings and all bindings should be dual
licensed, so they can be used in other projects.

Of course if copyright holder does not agree to release it on BSD, then
it would be fine as exception. Also would be fine from us not to accept
such bindings. :)

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
