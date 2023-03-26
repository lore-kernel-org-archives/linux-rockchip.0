Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB48C74A5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 17:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWAfMFTyBiGvJXROKMExwhdjJldXKkhDfKh7At9j/jY=; b=walmsEgSt3Ukto
	QToxg4m+P9RItnkFCng9AAYJw/aWs4kulEaTXyySjAcWu3txvB4cTxmcLACgaP1q91BQ44N86InWF
	5VTWK8tspcEm1jcuqd8FSPG1acfmnKjLxV0COQE/oARnHfBVpUZy3mWm0nl1nqylsdSaKh0EaOp8o
	wxZQ57KcoFBKzQm/EbR0EAyWdpO6Wk+eUV9+8GD+upTsIr2dj7ZPsk+joE3FPN/oX5rV/hHx3V9EK
	eo+67PT8Oz1F5oC5qh8PumcDA8R6vCOjh/UHdGuXZR6+5wW2IEBvO2K0/VgQyhaBM2IS0dLEQNBQS
	XOXYzJNz6p559AnGdCmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgU5D-008tMM-21;
	Sun, 26 Mar 2023 17:23:07 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgU5A-008tLQ-0A
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 17:23:05 +0000
Received: by mail-ed1-x52c.google.com with SMTP id r11so26736218edd.5
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 10:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679851382;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c//xVZOdC41tPmentwWhVn74VlOQ2hi6ybonN1NbtRc=;
        b=P5oihEOZTfjDDQazKlVVdjx4zRYICuik+HNXkq4KfUiIgmkyUjzcSoq0RbOFrpL2kJ
         iRgdkV0/sORCmsUTedpMqaSxA9bVoLczQdGYO+nPWqxkVTzGXT84f5fSZEyaZEk1kZFx
         Me+/6H7Ip+mRTV3HjXzqObHBOY+N+apq+aKDp9bSIyYOW0JGFmWpVpscbYAl8xUBxVKI
         14yALPGawyV0I6TRVY7j/2WyIrBpgrDKxXLv3qnJBrG1Ji9Xqv5SZ3bDaitbm9h5Y9Y+
         LzJlK15aj7VBFKzRnKexRbl8xDnBq1JzDNt1Cb1QbddBEIxbPN5RTaBUSRT2gIA7LB4i
         66bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679851382;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c//xVZOdC41tPmentwWhVn74VlOQ2hi6ybonN1NbtRc=;
        b=htEAFn/D6lOGpvcDoCg/3TL4bbnW55DU7v7aXE10m3i0TmmU0ZJwi10WmIoZ8ZMItf
         c/zxQkQqg2mBLW9o5uFjuVzCrVBbC1Yo7aDQNLYoyHkxmdr09zzglisiIdqHFr0tyDBU
         YPHh655wnv4uvZJgNpjv9898bTqu56I/oKVcX1RvwBowO+XPpHtijqm4EKcOPuRZxF9p
         vieI8n58p4xEBwOpRqlzvH9YK8OtZTHLtfRC246waeZ2H3o96qmP7Mnvez9oHe1FZwPD
         6pGTIw7UVNWFwx0LpJAO9avVDCx4Ps4KbNHXyjT/ggNJvikvp/TXjOgCTxNZ5hgis9Dp
         tAMQ==
X-Gm-Message-State: AAQBX9etVUKSQYS6AcK76EQm1sJ3r5+1lYvQr3a4bViMUIAvSOxcno7P
	rIuDlt5xHBuN2zkAcjMx70lNWQ==
X-Google-Smtp-Source: AKy350ZkwalKYzOBxeo21t+SzzcLhWq4fDH4NUP1+KX7mCHqW39g5Wrdbos4r+2xR6xaXE5O8wC5oA==
X-Received: by 2002:aa7:ccc7:0:b0:4fc:709f:7ab0 with SMTP id y7-20020aa7ccc7000000b004fc709f7ab0mr10239236edt.0.1679851381850;
        Sun, 26 Mar 2023 10:23:01 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:eca3:3b8f:823b:2669? ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id e25-20020a50d4d9000000b004c10b4f9ebesm13699097edj.15.2023.03.26.10.23.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 10:23:01 -0700 (PDT)
Message-ID: <717bfba9-1d70-ef09-9193-853a57117926@linaro.org>
Date: Sun, 26 Mar 2023 19:23:00 +0200
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
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnpCuAWm7jh19JKukOquPnZCwHoJispgDPGJzjYy6T_BZSnbg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_102304_084760_E65CD6CB 
X-CRM114-Status: GOOD (  12.69  )
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

On 26/03/2023 18:59, Shane Francis wrote:
> Hi Krzysztof
> 
> 
>> So mention this in the commit msg.
> 
>> Then commit msg should also mention it.
> 
> Sorry for not expanding on this more in the initial commit message, I will
> expand on this in the next patch set.
> 
> However I think in general for most modern platforms it can be assumed
> that replacing the bootloader is not always something that is achievable
> for one reason or another

Bootloader also does not use mainline DTS, so where is exactly the problem?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
