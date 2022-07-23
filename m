Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC93C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0lAUwpgDEipdeI948GkVSsiysptaW3kaHTJJNz1dak=; b=nAlhYjzMNKx7WK
	gO8PEqUyfk11BUw4bZ8ZHAMhQRXtIoQCwePTAV3IeHySKPjPeKIP7cYNw/qVHhTOfjnm+Zx6v6mqV
	6pb5quhbF/YHyyztgJGpYiS0eNNOYAyZvpfdzxoteAFTgsWYIp2NNhhx1FWPojbd5GmLHy1zTDSSQ
	ipuaRlLAzCnqFnNaRGdeYnKYkLfdMkrfoo5O8+IooZCvlpxK7LeG0sCy/JtKqTZQi03u/5CQSZCgZ
	9FRafqvSPZ+FsBAc4xlfIi6vvhoBq2r9Ycj1iP+EI0EVhgbDTbazCCEBi9Iydr3YlcOc2Phhah/oj
	TRGlST7AI1mRKjrOW0Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMbL-007T4K-5V; Sat, 23 Jul 2022 21:23:55 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMBl-007Faj-Rm
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:57:31 +0000
Received: by mail-lj1-x22f.google.com with SMTP id a10so9036441ljj.5
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GXqHBBrsmPel+pa53zazqpINe57WFI4H4RqOdxGeCY0=;
        b=Ilg+UwCPMZCeIpP30G9ycB79XDhMvyeAV5kSfo2NWyH43hWYoNcGab0RjrCzyGF1Xg
         7CrEIjmJO/BOb4qdpQ4FWCgXM+6lfWOPhqimLdhKImznCbHFbWSfVcVO7WF1vDIg0WtL
         XlsfZsKH5EAaxquODjIZHc6cGx9aWTwhLhe+QTkxmoCQ4eItR7iXLMqrKUA4uBkBiH/c
         wqi1aM0AaB1v1UCLFnjHADTyezQYD159+HHdsVJ0l2AXxsU/NtIGn0GLIso9o6FXf23a
         mHEQJiWMCpNtrPGsMxLhwOlTELBJOjq8Xv15zV/ZqnDZl/F+ImCQ4uxM8mQd2tUzrdbn
         Qvqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GXqHBBrsmPel+pa53zazqpINe57WFI4H4RqOdxGeCY0=;
        b=pmZpypfV22gxqgUQCivzkAY/BZfd9BhQK9SdwugvNuEaDu4y+RxRQaPlOfydybyxoN
         hQ4xXFtsWVfCrsZUkapFX//7jstUEnwVhdZjzh1jGQsz9VN57G+kNhZ1stq5Dk5h16XA
         gZ/66uhoFR2KVpgAsaSUcewueMs/u0/A+zyY9jQj+bfjlNdady5MlUG1ZOyrmGkp5GWL
         4VPjMhuQNZhpC/eTl58R143Ap6CNTNHSyOljYh1Vdi1Q6xF/ukTFD/PhwKs6JwWkY0UT
         0yF3eSsoHSYxLCQCeegzCHaj61Pyrwyzdhb6dA20oNdKqdd/+6cc0wmVYsEVW1y9dUVG
         RmTQ==
X-Gm-Message-State: AJIora95EB8z/sXFQ/CAk3SMLp9kEr8x9nw3I7FGGCQpeZlptfAGvrM1
	L6flrnUZIEZaSk+XvHOI2mW+7Q==
X-Google-Smtp-Source: AGRyM1uNoNmxWnBuVTmEiohN1eoOBdO6IQfMVIgNygXDqC//h7C2nfwugZvpCZ4nZzt0ecycY/bn8w==
X-Received: by 2002:a2e:9cd8:0:b0:25e:ec:237c with SMTP id g24-20020a2e9cd8000000b0025e00ec237cmr717ljj.277.1658609847745;
        Sat, 23 Jul 2022 13:57:27 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id k19-20020a192d13000000b00478772eb18esm1831476lfj.92.2022.07.23.13.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:57:27 -0700 (PDT)
Message-ID: <4e086144-a367-a22d-3cf8-8d1018d433d4@linaro.org>
Date: Sat, 23 Jul 2022 22:57:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 01/22] dt-bindings: power: rockchip: Document RV1126
 power-controller
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-2-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-2-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_135729_919630_17E23DF2 
X-CRM114-Status: UNSURE (   8.99  )
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

On 23/07/2022 22:43, Jagan Teki wrote:
> Document dt-bindings for RV1126 power-controller.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
>  1 file changed, 2 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
