Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F263C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 16:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ki7wal6L+Cx6is0h2g9Ww1x4Ul0twH1XfGUFYDubO/I=; b=YZxX47Evpw27fu
	qQscOp18lImLqDC2iLFODS4so0FT+44DZS6pp4bNWn3d+QAe53yI70CoV1NJAWkQk8rprjx2z9gBy
	1Ys2UnbuaRIwYqUMnfT+1aQZrVYg/IxkNvyZQr8n0djcU11ayCbfhrQDkFNzyEiRyWZRGVZQu35Ii
	EzddHXMhgeXol3vL1EVrmpy1F6e3nmTyJaXA+5fVe18cn8k6aqtVur1brqsqhoacYnhPOmbIwiheg
	jrGSdDcgkhZJuld7rO97HSUtOHvYxh1Vg8NfWek7u2Q6/t4nL6gPTuGD+CrO/vMcaIWV9gJMKW3oK
	N4YmvkNv11sNunUqcJvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omH33-00DBfQ-8v; Sat, 22 Oct 2022 16:08:33 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omH2t-00DBbt-Jn
	for linux-rockchip@lists.infradead.org; Sat, 22 Oct 2022 16:08:24 +0000
Received: by mail-qk1-x729.google.com with SMTP id o2so3813982qkk.10
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Oct 2022 09:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I0p+oQ1M6EtK8DgXQshbn1CCbBGt5UFmRE78AD8DMrg=;
        b=zEqU40yYAUOWyZaERGuu6yjDI4xmGEdbi/Wb/xDI6FvU37BiGbL9jIZXrhTFVWGGOg
         cLeAaR/nm5/WY55ki7Tw+PpSagbJrK/GmkVJ0EbDMUr9424gEqoTcE+QSTexfmbZ+Sol
         sV5EQDF02LUFNdDfSpdDEWsAHY8YzeYoMn+MUlD0hA07nnCVNLOz1HARHb9mrsyZ6kdI
         24PqY4rSzEB9ELjhuYI+2K/ybKnE+4zxkLwT2X5l37XlBNP7ulr0/DvjsKHsojRNrtJf
         oxPLOviZi4aG+e9XwpMbhv2ASRpFwSZyNl84g0a+bWARQZDnTF+fMYojK5USLydY9pTD
         wNYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I0p+oQ1M6EtK8DgXQshbn1CCbBGt5UFmRE78AD8DMrg=;
        b=aCBcNcrZZIEvLS19zO0Yw740HXQ4ViGmAeyxEE06QX8BNjhhYsvtQzpMjF9lATBU4b
         NVMsYQeqrwLwxOJAYMihQKarURz/7gUoeAX6G96GvlvqW8+nl8gGZdz8vFMA05ctuRIW
         Ux9Ysj9dqDtBdSCBQIah0Lrzy53Z8YF+JCwlytnWl3r769z2HOYwOiLhEPEGD9XmeTOd
         CgsIHddKGiT7PBr+pCPIOd60+XwPXQv+LASkKNfEYWnulCbkhIVeLXby0hgGmEKHS4V/
         YPcuz5h0GCCCo2XQRqixodagpdgh6qRIqVdpjuLr9FN0exSur/mookpl+6RwKfTZsf/L
         /Akg==
X-Gm-Message-State: ACrzQf0XJZ3WK8MSRRzqNTzqlltURfyeffl+ZP6EHy4aeUJJDDtxUL3/
	UBh8MHmIdNaF05Xi+guVEq15fQ==
X-Google-Smtp-Source: AMsMyM4wonpIqSs3FDigKQsP5RS3n1Fzgc4+kxV5kTBF2fzG12lV+S2xEv85AamamAuM5KCSbhFXCQ==
X-Received: by 2002:a05:620a:2443:b0:6ee:b1f0:3798 with SMTP id h3-20020a05620a244300b006eeb1f03798mr17010684qkn.444.1666454900546;
        Sat, 22 Oct 2022 09:08:20 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id l12-20020a05620a28cc00b006ecf030ef15sm11704035qkp.65.2022.10.22.09.08.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:08:19 -0700 (PDT)
Message-ID: <5726693b-367c-8070-c296-710c2e828151@linaro.org>
Date: Sat, 22 Oct 2022 12:08:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/1] dt-bindings: power: rockchip: Increase pm_qos number
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com
References: <20221021171405.86509-1-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021171405.86509-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_090823_659435_6EE330D2 
X-CRM114-Status: GOOD (  15.07  )
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

On 21/10/2022 13:14, Sebastian Reichel wrote:
> On RK3588 some power domains require multiple qos blocks to be
> saved. The maximum required number for RK3588 is 8 (for VDPU).
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index 0d5e999a58f1..cf0f2946fea1 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -134,7 +134,7 @@ $defs:
>        pm_qos:
>          $ref: /schemas/types.yaml#/definitions/phandle-array
>          items:
> -          maxItems: 1
> +          maxItems: 8

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

You now require minItems 8. It's not what your commit msg is saying. You
miss here minItems: 1.

>          description: |
>            A number of phandles to qos blocks which need to be saved and restored
>            while power domain switches state.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
