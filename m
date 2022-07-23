Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DA6CC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/iNuoFxuiDz0VvjZphxLqJlhYvXY5Wl6eR4YqpA20ZE=; b=2VTmjxNzMJKILi
	gwOO38aTRiTRAvLzt+IAfXnAOUpVwuQKu/+yM1l2wxKz7jwvzneWbVJ3i+6OGXqO+8+1TN+i7hqFb
	cAOC7zVBnV9tN4h1xIIqf7PU728BBuZWNy64ACWm+Zd6MN24TL6J2Z+TTfxLrl85mzZuYmT9JKTqY
	xM5ZciAOvNjV7PF81bfvvBW9LyArvBJWh2sjquYKsIsx5K89t+B04eBcbnzqwA+EpNTyUulhsMjmR
	p82DpIxqc1+2TK2sgYHUPgwBeAReyklAayaa6FwbeFYYS9T4XIoQpH1MfcJ1V75WRCSzcCmuFfp9M
	sdSvhRf0ee3Uk23zOaVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMcv-007U28-LX; Sat, 23 Jul 2022 21:25:33 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMDI-007GJe-Js
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:59:05 +0000
Received: by mail-lj1-x229.google.com with SMTP id u20so1241766ljk.0
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=w1ctwsOtYQzyg6EBk7hECf/W7+W8HHlw5bTIVgREI18=;
        b=FXIcXCix+71dg504GvQy3v1nAhs1txtvGmIHhtwWRJrjiB3ETflTyo7TXKZdXcjCyH
         k3RUmk3Hz/BOSBDOCUGQrQqv7Sa9pV1uNl7ky6T+5jMYmnQw0zYfDkH2lyevQF/26OX7
         8tuhuo1wcLXObk2DHxVN5tmIRHf2uJxL4wN02zufDxQNFJKeVlhaCAeO9WCyiEUYyNcC
         wtfXEcs/iSt3UjV9icpdERwb+Y3bDar6Jz6y1ZvFZpn4VzZZdyU3l0Doi5LW2AjAqj8M
         R42g5JMx+cUCuJbhlevfT9q1qFk8VxtzEjrptPJmaX55qMTuTdIv4DIQISQ8FcOwgbOZ
         GwYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=w1ctwsOtYQzyg6EBk7hECf/W7+W8HHlw5bTIVgREI18=;
        b=tVsZBkBip08CqzntA0ZNTEv2SCeaJ+TWKuEEMvOUSv5e4FQZF1S6I35cTJRndmIVYp
         MV0Zev64u7GaFPlqLP6nCFsBc6z31IKQ/Fx0e8+JG6ZsZY8m8m9hDvhGm/S1QPKSf/HE
         s9nkVL8lr3cPhxOsDxU7oH0Nhsa1lawjfONpTqvJK11otPGBW9/9mpwOvyloFjJMGwJ1
         qlALE1ofneQjZSpFCjgtm6sQiO3VXMvSHHfsbySjgXWFxlzFKU0rSoMGnlNUTFQyg3Ov
         6xEC1dGHLnRRcQF0vOtw8ffLTi612jBhy7XjYrh/B0UnlCGNYx3NQlWQaY6Fc0k8umQI
         JG0w==
X-Gm-Message-State: AJIora8kxo/wFLT/uqg0iI1oiS8BH6kIRO5OzVD7mc6ZJY9uCI0L/VMi
	S548KPdUFc5SJ24FgnHUWTb8JQ==
X-Google-Smtp-Source: AGRyM1ugsWUDwndqn9lGzC9e+rIVp6UxMogybJu3agwe9LLkBnEwujBE1yiqjhFsyP0O2v6o7mkLXw==
X-Received: by 2002:a2e:9dd0:0:b0:25d:46d7:6bd with SMTP id x16-20020a2e9dd0000000b0025d46d706bdmr1905671ljj.502.1658609942394;
        Sat, 23 Jul 2022 13:59:02 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id v20-20020ac258f4000000b0047f86b503absm1838300lfo.16.2022.07.23.13.59.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:59:01 -0700 (PDT)
Message-ID: <90dce4d2-9027-2f96-c2b0-a43c752eaf07@linaro.org>
Date: Sat, 23 Jul 2022 22:59:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 04/22] dt-bindings: power: rockchip: Document RV1126 PMU
 IO domains
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-5-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-5-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_135904_696577_B0FAB4A3 
X-CRM114-Status: UNSURE (   8.82  )
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
> Document dt-bindings for RV1126 PMU IO domains.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  .../bindings/power/rockchip-io-domain.yaml    | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
