Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CA2FC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Nov 2022 08:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cmg12yIYAluOxgCEjY/H6nL7EDXFzmbO+CmlU74HD2k=; b=2EJZl01vGXqd/r
	O2KA25Vg3Z4F+NvqUyeQJSFMiSgOsktUKTAIeCSxzEKud8wGwE8VH1xTHKAZqdIuyUGAl1034I5AV
	Hxa1RxgQAZvRV3vCr4kYb5UJRaC40ipjXH82jVZ8xNW/HdZIiM1S3LsCJITGsc6UOffuVewUcGQO2
	kjjH0hmxpDd21mbMQVS0B6olaCuXEUnKTJkNLQkDb1RmcOTK05Iz5kTaJK3fxdSP+hMvdFEfTNdb6
	1qmCS160Jjld+NKlin2dI0pwRVnqprLHv7sKDR8KPmVcm+Rk+UbkQh1YKSXYYm2ED40z3xy9fcsld
	0y+9xn/yXQVRCqTnPtgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouV78-00GvZp-EO; Mon, 14 Nov 2022 08:46:46 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouV6i-00GvMC-Un
	for linux-rockchip@lists.infradead.org; Mon, 14 Nov 2022 08:46:24 +0000
Received: by mail-lf1-x130.google.com with SMTP id be13so18144860lfb.4
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Nov 2022 00:46:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ayjb4SbwIOWUmx2oNYBfq/TTYDmZlaBaAub29KPIR70=;
        b=jt8d7u8QhOnfD+ySzp74OJ8+vcd3RhYSFerY0umLTHkcSE6G0dMluSu4ZdAqV0S//g
         8uUyVjfm2JFq02MsUxl5U8b7GD5AM4MJPR811q7JmOB6VMDARxKgtbX7H3jjxqdmaiEV
         vq2HS8HVeiyLIf8AEcVH69Uql4PtpiutAnyPkGCRYbDhdSIlcaSIp9hO5nPJLJgbpQzc
         KFp3SEFddtm+hYQv+Oud+Nz2OzQIA34vZ9yE5e7Z+ySoYF3ajio4tqzjAfjBinhQuSsM
         jOi1eOikYOMd85AcsGzsPJtg7J/SQAiJepwz2LPTHZq/qALpOvlwarCuCpKhYf9vBzPB
         /LRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ayjb4SbwIOWUmx2oNYBfq/TTYDmZlaBaAub29KPIR70=;
        b=HIOix1Hi9haM5+nXBteoWksTo8427vb4tEvoM3pdt16qOOvGQZNo1xM2kSS4YnQG6F
         FnFP3b5DsSgFJb6fyI3/Ea8e/M481MkWpqAPqNoBACKiR10lBEzv2u6joJ3T5ylzbuNb
         MNI6BajbR2KLaNFpkplPNDQgSYhJP1jQ1Zy6H21eNaiAS6Z4+88DtZ1gf552tFxqxQaa
         HEoNTRz4e0cqEtYrelOTGz2BkZNXXqtnWZSxDXUdo27Jut12tyC796rQwCeDaEBs+8XD
         e3eWwFHWlQSKNRBxcHA3h/e4mwh21nHfggoKIFnilmZXJcqXydOUjKZ/rQGUNbYqCur7
         aSVg==
X-Gm-Message-State: ANoB5pkFjeg+IWpCBcfs0g4mvASP+vh0Zb+PaI9hZhmK9yUm+jE2O+tA
	1fyEUJKCu4Fa+av+trFF98K0Ug==
X-Google-Smtp-Source: AA0mqf5iu4twKL2vLty2ny/0PlQaggz76QRXb+ZgRWLdoaOfeh9gho7WQDbfPdtVWoFFt1HI77O9vg==
X-Received: by 2002:a05:6512:e8e:b0:4a4:2967:78eb with SMTP id bi14-20020a0565120e8e00b004a4296778ebmr3712508lfb.222.1668415578002;
        Mon, 14 Nov 2022 00:46:18 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e10-20020a19674a000000b0049311968ca4sm1730841lfj.261.2022.11.14.00.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:46:17 -0800 (PST)
Message-ID: <de1ff273-acf3-6a2a-6c7f-d97a9bc0a2c3@linaro.org>
Date: Mon, 14 Nov 2022 09:46:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 2/5] dt-bindings: arm: rockchip: Add more RK3326
 devices
Content-Language: en-US
To: Maya Matuszczyk <maccraft123mc@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?B?Sm/Do28gSCAuIFNwaWVz?= <jhlspies@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221112143411.517906-1-maccraft123mc@gmail.com>
 <20221112143411.517906-3-maccraft123mc@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221112143411.517906-3-maccraft123mc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_004621_045921_48D1897C 
X-CRM114-Status: UNSURE (   8.10  )
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

On 12/11/2022 15:34, Maya Matuszczyk wrote:

Missing commit msg, which is actually easy to write - you need to list
devices you are adding.

> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml         | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
