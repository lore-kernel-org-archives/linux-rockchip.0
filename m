Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1020CC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 19:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkhRFr4ZvzbPgX30wykU/+sP2yS4HArQxGWiwuxKvg8=; b=jmEuH8plB6e03h
	K8yip7+vfhP59BUaBBFprJvCjL3WAqIP9WaisABJ4Vz2ACHOGsAyuv4UqBOAdiejOKFA5NktsMipG
	bEG76syl+Fj68tu+ge/aqI9k7gYhGzFb/9220akS2a1itQQVI46RQJcG5OP50J0jkFEEZv0gVEnXJ
	X5zUyPcG/ABhdx4AmoLVVFrYYTud6mip+njwPTb96uL+gElWonl3YYC4DQcu791hdrzqC80YdPhaA
	8AfpKDJQeRwiqjksu67C2QcrVjYymoKRoMaAjeXVdQAToxeJ47HMci/Wvts5tUMqd+bS2RyLiJnuh
	sgBmuRmWU+vSusBRPSGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZH9c-00DJbn-SD; Tue, 29 Mar 2022 19:05:20 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZH9R-00DJYO-6d
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 19:05:11 +0000
Received: by mail-ej1-x634.google.com with SMTP id bg10so37047681ejb.4
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 12:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=S+eaPVhOntRldab/h9j2OpmXWaKh1yuCdKow3ToRxmk=;
 b=BdcWfpm06YeOlKVWp4x/inLyxqw/LWhOVYObUkiX0CqZ41MLopiXNHyloYePwKpTDB
 OcOmCKDbxg1nXs/BiS30rsoa3jl04jvHZM4AKHb8CrCrUhb+IyG8PEn5qNfwGiAyVNjB
 Ln8W7lzoyp1A7A5HB/hIUiaAKWPld+yd0tc+ZO/nsnSh73acoajpMXvqA6b7k4vwhkR3
 GBONWmd5K39r/7iRa9MIBUXVYpnwNA1QYQz6vnf2/Lhw0VBUFj8kmmio17woJSc/UhvS
 pNYGJKvNv9FaSr/sdcl+TO+YmpDMTp3PFInZ/TM/6edkQS60WCKxdRmji+l/0svB0boC
 CVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=S+eaPVhOntRldab/h9j2OpmXWaKh1yuCdKow3ToRxmk=;
 b=NPVNeTWX5YcbxTlzrfAuzbaJA7Tm8Rp3f6sdfeCzcHxLb+F3RnEoh5ZH5G90kClZ4G
 ecW/t2cY6z7pknHqezs11aOMV9JLNXl7O346pSpqgoe9KLNsN4GSbZTns73tSSeGIQ4T
 mcgD9IH8SB47JmzpCQGjg81NRFlduOZVTMOP82yOklRWZCA/uWX/1QaeLWHJqy0fI7CP
 I2oIIQeQazuh/NXY7z7r8g3k4GZAEr4asi4w2NDzXooUyVLzmbhyuU377+iV2VvcCjZS
 E3unGO0hu4bafU1CJPRY09JB6ebSBcuhtUEtRHGfdlK6LQiQj0v+IKYdkdtMJ9hkGk4Z
 9CbA==
X-Gm-Message-State: AOAM530QJrxb4eVlEmu12DoLK2ozA5Ij7IwaV4qK598HUNiUQlU5KMiX
 3OwE21l/3L9itLMjPFXPtJ7ZhcxHrd7b5vOy
X-Google-Smtp-Source: ABdhPJycTC7raztfAiipL763FFF5helrC1RN+N+kIOc93r7W1QZPixjRFiQxK64qYQpm/akt0PEFlw==
X-Received: by 2002:a17:907:60d1:b0:6e0:22a8:e2e5 with SMTP id
 hv17-20020a17090760d100b006e022a8e2e5mr35512365ejc.612.1648580707324; 
 Tue, 29 Mar 2022 12:05:07 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 g9-20020aa7c849000000b00412fc6bf26dsm8990032edt.80.2022.03.29.12.05.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 12:05:06 -0700 (PDT)
Message-ID: <f766c981-2d40-d254-27d9-2d93b500c368@linaro.org>
Date: Tue, 29 Mar 2022 21:05:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 1/2] dt-bindings: clock: convert rockchip,
 rk3308-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329184339.1134-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329184339.1134-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_120509_334361_1B922676 
X-CRM114-Status: GOOD (  10.94  )
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

On 29/03/2022 20:43, Johan Jonker wrote:
> Convert rockchip,rk3308-cru.txt to YAML.
> 
> Changes against original bindings:
>  - Add clocks and clock-names because the device has to have
>    at least one input clock.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3308-cru.txt    | 60 ---------------
>  .../bindings/clock/rockchip,rk3308-cru.yaml   | 76 +++++++++++++++++++
>  2 files changed, 76 insertions(+), 60 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
