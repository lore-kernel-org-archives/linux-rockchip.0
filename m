Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69F6FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 12:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hi83v9WcAfJqPNcLsozWxdFwGuVsKE0C4tSg5sUtfsg=; b=NBBbTUWBeOK0Ec
	8hS3H5APRz28jCgaVghAOkBZMbnkkJqJrTPGH/pYp0GnrCdosiz8KWMIKSXyJpq0jrZFVmCtQdYHY
	WWAKI1XxeD15Q7qeICcpi+uhOeYiGr8Zx8eTGpUWIUE36RKeNtux9EWu/Z2H/2kGK2fxJnERMmWsj
	jEMIaagBevg/cy8Dit8x1ecGrWYyXAflg3kBWKoEgT2+xNs855NtQTgH+l1qgh+tqWD0re3JVYhYO
	hECGjjtjntxybTW4oRuU5ifcmb7K0D2hMzi2OQcl4y9VM0HLE1iyxkW/G4xDZUhxrmpLkkGgFnPYj
	VVrT6bhG+POuagQLnobg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZuN4-002KJT-6U; Thu, 31 Mar 2022 12:57:50 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZuMs-002KEL-MF
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 12:57:39 +0000
Received: by mail-ej1-x630.google.com with SMTP id p15so47889601ejc.7
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Mar 2022 05:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=vjjCyz+vwniwOkMw5eLLtJi73zd7D7wm3C4gUs1By94=;
 b=ad6aC/6WSULTuiWrxTP8MALNNIFerXEATo3N6mAVVBNbA+bHhrwPzkyl4BeOwgQ2wY
 e3N43cFB2+Nh1s38Ta8sHjvaNvzY2BAV2tbCr6M7PV7hm8iiYgDm9cYYHayI5Oeqq48d
 WvGU0j044OjiKUz8CM34REbhz8SsjmPIQrtLkE5lLMuhGBU0i81EpidBlTEkPG0DMfJL
 2YcvTAIXF1JahAUmMp6p1YsyUCWzQFhW3Jb3G503XBS8Fqhpu7MXvaiWW/lWW2EyF/Cb
 tmcOp1Tz2BZqdQ4j3/yJo5AbDkB6OwbADjCmb3TeQFD38Ikg72qVcL30nfISF5MXV5qs
 2xQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vjjCyz+vwniwOkMw5eLLtJi73zd7D7wm3C4gUs1By94=;
 b=Yu9vQRrewGtAqDc457lLo0O4EkKTvRLQsjwLvZ5upNsX93fybTFjRyKsq8yGvytaBK
 o3WBLcxg6w1qtgJX3iaapHwF2nAB2ljF2VILW0kbg0l+3ktiAM1mxdsativ8hT6gXkjN
 /r4g+x/ZsYCJaW1HgpTqp7JATHZO+wHqoCJ9OM1Qt8AXGya1b6+Pf3UXtRYekIBeOz+m
 vI3amulb2UYL/Pm6YjbO52V2gvjgVT5GFSqhtehleioFREgXwg+lBT2eYWz767jw4zrh
 XXInUjsf1ly4ER9dS5G4mdvs9YFJqGIALzEYxxpgkFeNFcHzqMfoZcwANtL3VSgrR342
 TUkg==
X-Gm-Message-State: AOAM531M4WIvCmBzbj/pgiqcJua1fo3GkgBfUGPwM8qj4K3iK/ZVSZYe
 v2ZHBka9RKjVv2zPnlQYnLRacg==
X-Google-Smtp-Source: ABdhPJzbWyCvgiQjYJSq3vyE0B+lYev04T+73+7zeUpH1kB7eMEf+/iXJ5gKv9sjqdz1y+g9AhQoGw==
X-Received: by 2002:a17:906:7307:b0:6da:92e1:9c83 with SMTP id
 di7-20020a170906730700b006da92e19c83mr4823842ejc.459.1648731455991; 
 Thu, 31 Mar 2022 05:57:35 -0700 (PDT)
Received: from [192.168.0.167] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 e26-20020a50ec9a000000b004193fe50151sm11335931edr.9.2022.03.31.05.57.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Mar 2022 05:57:35 -0700 (PDT)
Message-ID: <68571811-54a7-d4da-8530-5aad663d1d5e@linaro.org>
Date: Thu, 31 Mar 2022 14:57:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] ARM: dts: rockchip: use generic node name for dma
 rk3036/rk322x
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220331125644.6841-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220331125644.6841-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_055738_770989_38472F1E 
X-CRM114-Status: GOOD (  11.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 31/03/2022 14:56, Johan Jonker wrote:
> The node names should be generic, so fix this for the rk3036 and
> rk322x dma node and rename it to "dma-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk3036.dtsi | 2 +-
>  arch/arm/boot/dts/rk322x.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
