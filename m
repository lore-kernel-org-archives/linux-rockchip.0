Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B82DCC7619A
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 20:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIeZyPWKSkTXz2AKHeoaj1v5OymBkPI2mYTpWA/HKX0=; b=ruUIxUmV+GctkM
	oQA2kKH0ZxDcsBmvMf/uvwdIK46ANKi9ucidumRkH4Ob2RWri2XMTKTP/x6PFj0VaHXc6KH9tdgID
	E3aoYNcCOBS87vbcNYu7jKgqiEdYsItPeRnaebFE6jYFw+g7MEhdwSK2sfjb8aJ+Bj0EpSI4WMNTG
	oHL4Usbrpn96QfBEN3CtGZPKrM6YSOz3CZo2EXPppQY4bTe3nQjQ9oEix/uixT93PNTuefzDfQVne
	LlHlqOmTGD1VOSFw7f4a0V7W8AkuoqFp7aaJU/wrvJL0pjoswkMcVH51rLcTcMDfJ0I4+TnZPoi0G
	DoC5a+6IYfUQjD0sysEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgWZi-0098Tc-2j;
	Sun, 26 Mar 2023 20:02:46 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgWZf-0098Sq-2g
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 20:02:45 +0000
Received: by mail-ed1-x532.google.com with SMTP id cn12so27730099edb.4
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 13:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679860961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DazWKebj2lRWg1ObnAajvsy7M56gUmUMIv5qbvT2CDw=;
        b=bNPB4Ccy5XCkx+8QAyX+sorKadLmeYghLCv8V3BcQyOu5LuL0hC5ZQB2AXH4pE75pT
         SI4pHWQve+h+TrgjM2jk7fNq/OAgs5d1mX6gu2U9CIN4T7lPJqAYilpSqehZx1OaQa4w
         QHha9kr/LML1UYrEaZ513YUlVs8LRlv3CUz+4lCLLYk6ISVaO0rVWCScM/xXLY3xUyiU
         iaQ9QWBSmmO8PtLUqQrUx1iDaqLF9In0Ng97C+HVcJHS0gWVgE2xZ650ZqKftB88fC6J
         u2QK0x2BxTsO08EkaU9N2O+zUKC+3r1vgUcIrjGOMXlmHH+VON8snF9Ety9gwuKK01NH
         AJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679860961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DazWKebj2lRWg1ObnAajvsy7M56gUmUMIv5qbvT2CDw=;
        b=PJsZ/TqfWnsR3QNIKweQtWTMlxAs0S8PFJLX72dEMiJeqDhk6ypPL9/i11yiBPD21C
         iTYibhDUyWsVFTH16uMBBHb/AKS9htXJNPjBpaHzS6sbIHt/ZijHbIXycYg1Gl4rjATL
         y6ZgxJWcF3/hJWkJAfWBHPMLkaycHJoWFXwQjr08J0+1vwm9cT1mP8N1EwkC/GI4BUe1
         HpVAWBS/rE+4kTYS0F0uYuv3mwwxLb8oYvofujei/uv2iVE9Kf/YLyqYd/Qp3i4sFGeX
         V54cZpmMsaqz3z4WCu9J2ZRXe6otVVDKQTHimlGvOk73yI4rVyiSyHj/RTaXw2j+S19j
         MpHg==
X-Gm-Message-State: AAQBX9fkzgxlQ7A1aINhGm+QN0KVqCgLvIHe93M7pRFQApzSjRAVsZkn
	e4//nUcJ93bbcDDziIWOz551Ig==
X-Google-Smtp-Source: AKy350YQZLA++IfD8sdPFP7K0HlbhI49hKZfioV/qHbnQRL1p2eTf8fgPRmFffJsdIe++eCT8OHahA==
X-Received: by 2002:a05:6402:1285:b0:4fb:6523:2b37 with SMTP id w5-20020a056402128500b004fb65232b37mr10926401edv.15.1679860961614;
        Sun, 26 Mar 2023 13:02:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6b51:4748:3f3f:ffcf? ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id v2-20020a1709064e8200b008d9ddd2da88sm13292289eju.6.2023.03.26.13.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 13:02:41 -0700 (PDT)
Message-ID: <03ec1aac-3c6d-892f-fad9-f386a5d4d10e@linaro.org>
Date: Sun, 26 Mar 2023 22:02:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
To: Shane Francis <bigbeeshane@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com>
 <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
 <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com>
 <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org>
 <CABnpCuAWm7jh19JKukOquPnZCwHoJispgDPGJzjYy6T_BZSnbg@mail.gmail.com>
 <717bfba9-1d70-ef09-9193-853a57117926@linaro.org>
 <CABnpCuA7V9ti6BOoz+3Mq-f=PwgxL2K7rOhjo6tJ4QquSZbaSA@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnpCuA7V9ti6BOoz+3Mq-f=PwgxL2K7rOhjo6tJ4QquSZbaSA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_130243_937844_F1E0EA65 
X-CRM114-Status: UNSURE (   9.39  )
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

On 26/03/2023 19:51, Shane Francis wrote:
>> Bootloader also does not use mainline DTS, so where is exactly the problem?
> 
> In this case uboot does load the target DTB, and it seems a common
> function in rockchips
> downstream boot process, see :
> 
> https://github.com/rockchip-linux/u-boot/blob/ef1dd650042f61915c4859ecc94623a09a3529fa/arch/arm/mach-rockchip/kernel_dtb.c#L70
> 

U-Boot comes with its own DTB, so what does it means "loads the target
DTB"? From where? The one appended to the kernel zImage? No, it cannot...

Any component which operates on mainline DTB must conform to the
bindings (with respect to the ABI), thus your arguments here mean you
are not allowed to change ABI in the future. Never. This change,
assuming original binding was broken, could be warranted.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
