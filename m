Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BAE9C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 16:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hv3nEqWX/rXOt3YBNYdVVFES+MvcnErMTqySw9Dm1Js=; b=Z99Ct3pacBdPUW
	KHgK+cRvlG1jgFOoeDCqQb/6H0UpsBgLCacaYNM/dT7wK7WwbLSLjUf5wC15eWbd31qemSF54wWrf
	W1oPMszBqegRGDMRX4pB+IICeZGq7TnHWwL/3DqyeqtGZq7kvH8Rj15kd7S8UW+iWqj1mhGmEfQy5
	lCf7hUp1beVppFZhICbpLK043pbG24tlXtN/asGLlezxcbQIb1Z/SfCmYYR6vX++d0f+3qCCmisF4
	NUZI17d2oPSQYNRcJo1HnDQRlGEv4qIz+Lb5LyDabC7SDIilV1bD73XTpMrtdF/s60fguG5dHMc5N
	bE1huQSm9+Idci2+AYnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nah65-009gKv-Uw; Sat, 02 Apr 2022 16:59:33 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nah63-009gK6-0Q
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 16:59:32 +0000
Received: by mail-ed1-x534.google.com with SMTP id w18so92443edi.13
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 09:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=mn05wTy/NlZVsNgz6hNdV0Fxw7lJ50c59f6ciYye0FQ=;
 b=fq3SOd6MFtCnhKuLIK+XqlH/P+ltpB9Wgb2pGbPmcDnYS5rZkpXTwRVdNS9sG/WvUA
 a6jXfIbjBmddM7WxPEq54uXmuYuxnbTQAd8Do+KoU+zKRcK1la0JCeHW2Qfo+i1sfsmF
 twivpRIFYeInj73kTMZqga/jEH9wttpctNbWY/aZ+THJec1cB8oioDbGF5GhU8QEVeU+
 coJjJezqBCtpcznrhMSyJab2KfUjB2kamgercpvZTiJ39orM0+48gS9RoPecmgnaQhTK
 UUtrGruEiamfa+MkxcR8171Sgamf/qEfibR+Hj0WhcnfDZxsL1HwPoFmnv8/quPsGlJW
 7zVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=mn05wTy/NlZVsNgz6hNdV0Fxw7lJ50c59f6ciYye0FQ=;
 b=VKW+g4sphPYoAV13Ur5sWfiLvkjTjf+pxXeCOO9xFZeVrbeHTiQShSAvqGpz6DGQPG
 wOUUqkjYeE6rLFNOkShgrCtizo6PD1GgZZAZjtDQrynQ3/zrY+J78o6JzhG4jpj+u6tX
 ZNuJAn8pTSXTaOgIZNirf0aCtFkl9lo/BHD7dYowAZBbaTZq+nldYETKGUaDSmQpAZfU
 DpWjXMfSyZeBrsLS6Df27Ws1fsuebIjWwjK2pxfLNOxrGIgTrkaVsaeqSM7+LJhXmRNE
 xUXX4ChM68SAz+rINVFE6SF2RgB+J+07WtD3D+jsAaSrYYWJisQEdZtfvvnQT8ZaJ0/U
 Mw0g==
X-Gm-Message-State: AOAM531W07d1ISzM4EY5j0unWe2uvri7aoOjP/St8R6c9YUbewYn6Bzk
 38t/k/VZjPicdMgkqku65VaZ1g==
X-Google-Smtp-Source: ABdhPJwoAd+Eq+1ILPRp3HMI7n442Wkx1NQELFVkIpWw5zi4uUY7WVW3nNEmMZDKhp+1fvQw2oFcEw==
X-Received: by 2002:aa7:d398:0:b0:419:d011:fe8b with SMTP id
 x24-20020aa7d398000000b00419d011fe8bmr26354361edq.168.1648918769576; 
 Sat, 02 Apr 2022 09:59:29 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 u25-20020a170906b11900b006e08588afedsm2255299ejy.132.2022.04.02.09.59.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 09:59:29 -0700 (PDT)
Message-ID: <969094a6-097f-1cf4-64fb-c0ae7d3d2173@linaro.org>
Date: Sat, 2 Apr 2022 18:59:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 00/16] Convert Rockchip clk
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220402143636.15222-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_095931_097129_5642C46E 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
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

On 02/04/2022 16:36, Johan Jonker wrote:
> Combined serie of previously converted Rockchip clk bindings.
> 
> Changed V4:
>   combine dts patches
>   add more clocks

Why adding more clocks? The discussion whether to do it did not finish.

You merged all your patches into one series, but this makes impossible
to compare them with your previous submission:

  b4 diff ...
  Analyzing 20 messages in the thread

  ERROR: Could not auto-find previous revision

         Run "b4 am -T" manually, then "b4 diff -m mbx1 mbx2"


Please provide links to previous versions on lore, so we can check what
changed.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
