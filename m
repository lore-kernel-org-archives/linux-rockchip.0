Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0CAC00144
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Aug 2022 18:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEgHXlY8EzApG6y9osP/dK+jspw5A3IVCbI7CLjvzZk=; b=r5/lSdwwGrQGy6
	KfCcAymeUGGgaCDQYfHfEOFMWJHdToIaDZCFD5WcXznz2GJT4g/5faHLc8+WZ2hyCsq+uMwsQglbo
	AtKbbaekY5F2R6kklEa3+h7PmWHLm1OQcOR8VxiwmQaYo3gJh9vSfatEc7hLXkI3fxY5ZM1Mf91Ww
	GleRsUGet24WTF8h70ZtCdiiugtFLsOL2GGlcQV1jWDS1ksB3SGiZaYSQ0eVADZxPvSAGjVyTTYcs
	ZXmk2h3jEUGWuW/Yr2RAG4omkuKEETsIyWgAbQKhH7YwUf/gRpFIf5+BUnov4BNJFMvfRtw0xA1yu
	D+ejDa3I4/RsSmEwGBaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIZjH-008WIb-Ir; Mon, 01 Aug 2022 18:01:23 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIZj5-008VxL-5v
	for linux-rockchip@lists.infradead.org; Mon, 01 Aug 2022 18:01:14 +0000
Received: by mail-lj1-x234.google.com with SMTP id s14so13176657ljh.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Aug 2022 11:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uZR/I+yAkBmW0w7mHOk3YtgLxlXC2BKh5JL5UtMmwBs=;
        b=q+w6TE6z8roa1FS6pRp+tOhYcqoLK1RRU14NW5VdOJfv8hFjDkUklpCbJ0Zl4zmPBn
         RCi6pAbq34Qsp896AIPfQsEXgp4FmQ9P1asmBO/5jNtq7wXUDfX9UCfCUp3jhB94dxOx
         bAfL/QhWup7fU2XaCntjtXmyRRdyLfc1J5QqEsljVEOHviQjSxVn6v6KmX9MNtiMfOBW
         dnz6oXrJCAYm4G2Mnz5cwr+o4qtZcKhtz7JY4LiK5ZTLRkgstfhGCAjZP+43gi7bNxDZ
         hXwUACWS4Bigbxoz64aX9jfwSxHSRwx7i+EkjPU2ySYW/48LpOqbvlmdZYAvjHNZ2/d8
         m36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uZR/I+yAkBmW0w7mHOk3YtgLxlXC2BKh5JL5UtMmwBs=;
        b=ty5+aDBeUOq0pEOVnoV796UlmgIcSuSqgMrPIfM+Z9unNKKEDP6xfQiOvjhFSoQaaz
         8BiRmgcTUq2wp7+7hcEx2Tl/rFnTZFNTYXhMqcw34A/MYCNL7DPQ+Kyc64X8U4A52z3Y
         ZFlfy7TO13iuAoVas0NDXOouRHViz34sM6ss+eGiS8Bf5hoi5p15maQbncHO5eipqmOD
         9gmt8gL2qpNCZ6DmgHp7alS3wvLBMgrSUgZDkyh9E7GLULi9SjlzY+vhfGZG77C2B1LI
         8ig/stlw4YTRcftQnfFxmRuBy+Tl+CpTZnHx4qGCxuYRsrGi+gIf7hy4aI0he+duCym4
         8ydQ==
X-Gm-Message-State: AJIora/KaEAAY3vmYOz7hhsiyBezJn8J2nhvaWWhTFwNPAH2mpKD885y
	V6Cd0MVwxynXQy2pXCR/UTeQur268qTG0X9CkEE=
X-Google-Smtp-Source: AGRyM1s+ieLndbXdmOHTogelfkNm1sPX5Vt3Z6RRXxCaWFy4HZux37fvLIAz14ZPc21Ux3ijqkBQBA==
X-Received: by 2002:a2e:934f:0:b0:250:a7bc:2b8f with SMTP id m15-20020a2e934f000000b00250a7bc2b8fmr5464878ljh.512.1659376866299;
        Mon, 01 Aug 2022 11:01:06 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id c15-20020a056512324f00b0048ae7b7b077sm1151293lfr.200.2022.08.01.11.01.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Aug 2022 11:01:05 -0700 (PDT)
Message-ID: <57faa0a7-301c-c60c-6831-00a351ed3ea5@linaro.org>
Date: Mon, 1 Aug 2022 20:01:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [RESEND 3/4 v7] power: supply: Add charger driver for Rockchip
 RK817
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, kernel test robot <lkp@intel.com>
Cc: linux-pm@vger.kernel.org, kbuild-all@lists.01.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com, zyw@rock-chips.com,
 jon.lin@rock-chips.com, sre@kernel.org, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20220721161718.29800-4-macroalpha82@gmail.com>
 <202207242227.mttUkfTB-lkp@intel.com>
 <20220729162828.GB102@wintermute.localdomain>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220729162828.GB102@wintermute.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_110111_399325_CAE2F692 
X-CRM114-Status: GOOD (  17.45  )
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

On 29/07/2022 18:28, Chris Morgan wrote:
> On Sun, Jul 24, 2022 at 10:58:00PM +0800, kernel test robot wrote:
>> Hi Chris,
>>
>> Thank you for the patch! Perhaps something to improve:
> 
> I'm afraid I'm not sure the best way to fix this. The only thing I can
> think of is for now the driver should only be for systems with a
> Rockchip RK817 PMIC (to my knowledge only ARM based systems from
> Rockchip),

Why? We want to compile test everything everywhere,

>  but it looks like the arch was set as parisc. 

The arch itself does not matter unless the actual warning is specific to it.

> Even still,
> as long as some of the functions ahead of it don't error out each
> of those variables should be used. Is there a way to confirm these
> warnings?

Just compile and see by yourself. The error should be visible on
multiple archs. If not, then use parisc. Ubuntu provides most of cross
compilers so it's extra easy to use. The ones not provided by Ubuntu are
also here:
https://mirrors.edge.kernel.org/pub/tools/crosstool/


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
