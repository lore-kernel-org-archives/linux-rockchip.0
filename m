Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52F8BC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Oct 2022 07:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbE87Cyh5VbMQ1iFhHP5ApBZMmRLlWyDZAYS/rVxgCk=; b=ZEXq6mxHjIoPOz
	4PIdvlUxqXaC01zFYEMtw6Q4grFabkcMUIpAXJVNQkwMZL2SdM+XOUizmkmYBEM1qB+qpGMh7ABW1
	PvIW6ugzm6avu1y8lH6w1wKCABkAFb5NwJ+nFEp9DADDq5qiBQZNjTJK91+yDHYsL8hCpNs3TxRax
	LKqYyAJqPnDl8GLQ8rBHPxIDejkJnZFU6Y+3vNeVC12vqJfWNcg5Vo10r8KkCjwKAR69mrqWGIrEd
	DDYJZHisrzmdkPeW8JjFJ+SLj2Qzg9e4sf1FqarR6TpVBmKxNV23FAX/MeonDz+wuUhXJ3DztRK0u
	/upd7l30ctQqY0FuoMTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofGCt-004VIE-6i; Mon, 03 Oct 2022 07:49:43 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofGCi-004VEJ-Qf; Mon, 03 Oct 2022 07:49:34 +0000
Received: by mail-ed1-x52f.google.com with SMTP id c93so4579246edf.11;
        Mon, 03 Oct 2022 00:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date;
        bh=hdKudSePDxWLBXYpgpsmYiPPEBTmuwXmjH9VQ2JVEKQ=;
        b=mgaFRN3e9nI62i6lIBK7pOvT7M89RCjvaLYY0pTecskwiSnexQez+HtTc0rsr4WceC
         +2pOk4Eyyr0L+MsFWWm9CEAMXXwIT6lAw6PzOEfCd9YaGGLASAR9ItihMWsmq+9bZo7x
         HHMzGPe5lGzjMvjsPK1hwEEdUO9OZgzwHA873Tm6GFp8NYS2qWbj6DUWTv91+2NBiBcd
         prlCo6Vn92AIEos1/X1amWtcnn7LTfc6ZmPXZkt3SkbJCJ0oh36QpycKQUdrr02ivtQC
         8zKdghDcWwvi9BKupCs6qB+flcMLUOwS0O8PfgGVoK0yIW2PZkZcs3IV15+gvQBs8GQo
         G6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=hdKudSePDxWLBXYpgpsmYiPPEBTmuwXmjH9VQ2JVEKQ=;
        b=8HP3zHhKkOVWwxEjScgdAprkLcID15TPkAeEP1TqBGMCjFF/8wyM3BL6qVjGHs/7SS
         sNLzqd+QWYG5MF/34iakbpwt8HOGGx0rE9FoXh0tl+pivQwt5aUligJfk+XonXiWcKAU
         xm0ftbIvmSSDkB1CJsMNndZvgQZFlrpBvtez9s4HGDgqLVgUl9EYrTbTSdarJno+3NUE
         x5yMS+5fNHo1LbXo7ZfsJTZ08kxQ5/UpcQlc/7PGyo1fTbvJsE6QfJLfiEQ8axSDuFPN
         EmqOrPwD2IQit0u4q9+NUjpS3MtBV6MjQQTdAXivjHIGR5MoI5+95t519rJ++lHr8TQP
         6FyQ==
X-Gm-Message-State: ACrzQf2EGdqdO8Kevgb/jCRZHlY5rF7NURqBEsr7bPG+O0m6byO0hkv7
	FhCffaS0GlI6insYnC0/wyk=
X-Google-Smtp-Source: AMsMyM6kCoEAxHJq2sN3aA4M/LNxj7SGtz26zQgE7juVgcBy7TVziLcy7qwpdnUNc8MMCNO2d5hdTw==
X-Received: by 2002:a05:6402:3550:b0:451:473a:5ca3 with SMTP id f16-20020a056402355000b00451473a5ca3mr17697587edd.48.1664783368882;
        Mon, 03 Oct 2022 00:49:28 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id b17-20020a1709063cb100b007305d408b3dsm5002579ejh.78.2022.10.03.00.49.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 00:49:28 -0700 (PDT)
Message-ID: <ed3df2c8-ffb5-1723-0ed7-3a2721972852@gmail.com>
Date: Mon, 3 Oct 2022 09:49:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [RFC PATCH v1 1/2] dt-bindings: pwm: rockchip: add interrupts
 property
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com, wxt@rock-chips.com,
 kever.yang@rock-chips.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <94bcb278-7bb9-d173-497c-fe12682c4a17@gmail.com>
Content-Language: en-US
In-Reply-To: <94bcb278-7bb9-d173-497c-fe12682c4a17@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221003_004932_912537_554B1700 
X-CRM114-Status: GOOD (  20.11  )
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



On 9/29/22 16:04, Johan Jonker wrote:
> The Rockchip SoCs have 4 or more built-in PWM channels.
> 
> Configurable to operate in capture mode.
> Measures the high/low polarity effective cycles of this input waveform
> Generates a single interrupt at the transition of input waveform polarity
> 
> Configurable to operate in continuous mode or one-shot mode.
> One-shot operation will produce N + 1 periods of the waveform,
> where N is the repeat counter value, and generates a single interrupt at
> the end of operation.
> Continuous mode generates the waveform continuously and
> do not generates any interrupts.
> 

> Older SoCs have an interrupt for each node.
> Newer models share an interrupt.

As mentioned by Robin the common interrupt status registers are located outside the PWM node reg range.
The Rockchip PWM driver is only focused on continuous mode, while these interrupts only for "Capture mode" and "One-shot mode" and need a different handling.
Interrupts without reg resources is not going to work well,
so I think this patch can go in the garbage bin.
 
> 
> Add interrupts property to the pwm-rockchip.yaml file.
> DT describes hardware. Rockchip PWM driver support for
> interrupts might not available.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> index f2d1dc7e7..f7634069d 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> @@ -37,6 +37,9 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  interrupts:
> +    maxItems: 1
> +
>    clocks:
>      minItems: 1
>      maxItems: 2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
