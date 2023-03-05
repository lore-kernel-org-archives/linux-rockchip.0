Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64837C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Mar 2023 10:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANVgHJ6cm+CCGDwlDDCoN/CYhe2cPPjQW+UVeGVLFiw=; b=xfwdrPR63wY3PU
	js+LDcNM/C0lixyUyg+FD3CFNsszvStoLWEElcW9CJ5bNdYT1tKeMWWd3IjAcrVtpVvp76M5zW+s4
	FAX3Ac71JJVxV/n7FGw6AU9nuoBbnoy2K1HqauMbMJ5zhYF0RYMVm0pKWhKhgCqe2ip5PTYfGFzuN
	EAQ/2xODDfmVksHFHW6MUG+ZpgxC5L5L5zJYcena2TKqWa4XTngJLDA4uQ5Iwg4nhXy80sVe4akGC
	5yyN3+0kzdDbgLBKUCLoU0OZ5PBPpO0w0EReuJx44e/3hLwwv2NKZPcroxCVqYqXNGnHS99Y153KC
	D0fpPw+Rh/bofna2bEKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYlpr-00A6sf-Ls; Sun, 05 Mar 2023 10:43:23 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYlpp-00A6s4-Bu
	for linux-rockchip@lists.infradead.org; Sun, 05 Mar 2023 10:43:22 +0000
Received: by mail-ed1-x52e.google.com with SMTP id k10so3338312edk.13
        for <linux-rockchip@lists.infradead.org>; Sun, 05 Mar 2023 02:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678012996;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=74guh4eaIKxNA8DndfVVMuiBTQgKkmZG+WJvPFdpQKU=;
        b=Gis4genEroC5iAJn6iJiDxAZq1h2c+x/tN4z+bG5HQZDjhibELTP1352gCd6quLtm3
         yZJemUYdN1NV0lSzJPBVoqcP5XwFozPuv2bGLQ1jpxldNMXhj2WU/PLX1t/rJxTiYTMM
         VR7dTGwwx0F47nuj7PBSh0Wx19RWbXJtqQl1dOVkz3Ijb5U5PROJrVYCc+8J25aEAuWi
         NnPbbbIKVocgh+xtm/qCmYQMVeBFA+oYkaLc5FV1TzPqtYL8gcLMtDqCMB6spaZvPOvy
         dTHuQFmt96a2jxyDYkYaAHlphXh6wtN34Q6z5JI3FCHdwV2bHtZJtvWTBzo2i3SB66kP
         MXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678012996;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=74guh4eaIKxNA8DndfVVMuiBTQgKkmZG+WJvPFdpQKU=;
        b=spCk16unE1Bsqs/6MLQmx5Rs4JW//W9fo9TGL1bv/5Cl5iK5OEpXJFSVpkrDilyboc
         yt1jQLJoNc0MH2qv1LsFTjCEPhsk7yx9k4EkrH908VQJQXqB+XWXniD85iW9/sHjMn93
         Kjx3FvHXDVVLzTMs8Y3Wh569T8/mYhfu0ZHhpyLCnJ5HdGgTaGM+TegZjfwsEejB8bPU
         0ChVRqb8Nu+GPgSKmYwtugxib85cPFtAbbyeSHEV9hNSzKqHsvj1UO8Bv5VCbp9oERuu
         6lRBFvr8QZbRjN77zfRN9S47l4/3jQPBSF8mDWvrGp1yvih4/c4KfT8XBm5481GYNCtp
         q8aw==
X-Gm-Message-State: AO0yUKUTaqwjffYv4i3kysco7a8vZ6zhWfNu8Wht8cvPQAI5Gf1sKIL1
	v2fme+2fPpNPd65shT40mN01PQ==
X-Google-Smtp-Source: AK7set/TPjCHEnNp/I2CFQJYITQCjTCs1vik6GyJEvMvvRQcznt12eityrisF3VeERMU/GbKavbabw==
X-Received: by 2002:a05:6402:1345:b0:4af:6e95:85ec with SMTP id y5-20020a056402134500b004af6e9585ecmr6329581edw.4.1678012996741;
        Sun, 05 Mar 2023 02:43:16 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:71e7:13d:1c29:505f? ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id u23-20020a50c057000000b004c19f1891fasm3522633edd.59.2023.03.05.02.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 02:43:16 -0800 (PST)
Message-ID: <d0a98b17-9bc9-5842-5245-5c7aea2b4d26@linaro.org>
Date: Sun, 5 Mar 2023 11:43:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
Content-Language: en-US
To: Dan Johansen <strit@manjaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dragan Simic <dragan.simic@gmail.com>, JR Gonzalez <jrg@scientiam.org>
References: <20230304172838.38059-1-strit@manjaro.org>
 <30017cc2-12cb-37dd-cd0a-f2e91fc6c252@linaro.org>
 <6bb744c3-a5f6-cb1b-2d0d-1bfb63127439@manjaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6bb744c3-a5f6-cb1b-2d0d-1bfb63127439@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230305_024321_440735_2BCA3397 
X-CRM114-Status: GOOD (  11.06  )
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

On 05/03/2023 11:04, Dan Johansen wrote:
> 
> Den 05.03.2023 kl. 10.52 skrev Krzysztof Kozlowski:
>> On 04/03/2023 18:28, Dan Johansen wrote:
>>> MicroSD card slot in the Pinebook Pro is located on a separate
>>> daughterboard that's connected to the mainboard using a rather
>>> long flat cable.  The resulting signal degradation causes many
>>> perfectly fine microSD cards not to work in the Pinebook Pro,
>>> which is a common source of frustration among the owners.
>>>
>>> Changing the mode and lowering the speed reportedly fixes this
>>> issue and makes many microSD cards work as expected.
>>>
>>> Co-authored-by: Dragan Simic <dragan.simic@gmail.com>
>> That's not a valid tag. Run checkpatch.
>>
>> Missing SoB, which would be pointed out by checkpatch with correct tag.
> 
> Thank you. I ran checkpatch and it just said it was not valid, didn't 
> give alternatives.
> 
> Would Co-developed-by acceptable instead?

Yes, looks good. If checkpatch does not complain, use it.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
