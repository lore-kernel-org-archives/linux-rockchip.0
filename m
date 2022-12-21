Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A82C9C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 15:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/j7aT55adxgWY7QH1hDJQzfipW8IBqLtCaTAp7wqvv4=; b=CFwQJC0PgNlIRZ
	LudDeJQFB++0F8r3+HaI5BBwtXCEJ/x7OAt71izHYZX8MKbAArCaccsGkxqcIvo61sYYktRMP/ULW
	sBmsdkF2hFZCOf2Z4QXCC3BODwkikRV6D+D8aGLMosDrS8KdyiTAbIgSeZjXqcEiAj+YOUcLLrCaw
	rn7u0KwNt8Mh8vRrxe2vOJSuyIxGpLjrtsQ1ScaDCDpjA0lCRwkuHrRpHmvc5sxZdxkQCfQOcL751
	Pge6qHzqtQ7S/yKohVOHFmB4l/SXcERyx1o2PkPUSfcqTeVaI1uv13aQKX+/FItWd8tnhNScf/Hxk
	NHQtma2nUSL8eQUDo9Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80ry-00G9UK-BR; Wed, 21 Dec 2022 15:18:58 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80rY-00G9DZ-V9
	for linux-rockchip@lists.infradead.org; Wed, 21 Dec 2022 15:18:35 +0000
Received: by mail-lf1-x129.google.com with SMTP id 1so23971041lfz.4
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Dec 2022 07:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UJ4B4pJYlwdPnmMgzAei6VmFRD+WqOl8bCPm4S0FF3E=;
        b=Bf9+YE93iqthCL9U+jef1b+4y66ybTBIVj26MyvsmnLJsdMwy1cXv9oYK4xaT76P5B
         ZZxXXaTbT9xH82SlnU3gRF5uUZlj+aTeEmTRI3Xe8CxHjkYPomwAmT/4vYCsLcMlqERo
         3md1iOpnGjnmJb4nBDJpqH/nUauLJfgivegDnZPzG8dlORIOl++SufVqE3SZx+iQ8gy/
         Od1lfm7arKui/1k+Z2JcUItbtP9bqKCZQ9IajsA56HW/gEHmRN00SxtXQiknRikksoD4
         fhawxEMHiRfr02xIX60etUZwe4Q4lSIUkxYHO7BQGGN6luftYhH0bF40WyjiIbBhANlX
         OhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UJ4B4pJYlwdPnmMgzAei6VmFRD+WqOl8bCPm4S0FF3E=;
        b=PzuDSThyLO9x6e2tuQ4N2uJkYI6bZH0cis1v8hmoULxRcCqzvmm8N7VIbMVZ5F/Yzb
         K7ZNqHuYD2P66UTiDSAC70BODwCNLfgp+ruhcgfjqjz3YWxe1xq1J3FbIn1JspKDEjjw
         jMYPRKZLcWIwCZZuy2NT1tZTPdq94fhbKnN5QeiGl5K7c84TCCfdPxxZnBJIlYHmzPvT
         +G5X+mxV4wScqOuk1bQm4qX22XhlZVy28a5AM/qAJaEHy/ihD+iWytQMxPneMob3tWX5
         ZCLUfMlzqORERRsj3rNalxgj0ylUw/T9/U5zuLcq7U4PSxUN3PFOQf2qwaQrTHdiNYS/
         8Taw==
X-Gm-Message-State: AFqh2koLNB7dcdiXCYXITTEaOkE2SlvdiB6OBBF2aoUds4P6o8gC/kFw
	99VXIzLQO1KNWv86yCJW5jYvYspIK0jVWZHj
X-Google-Smtp-Source: AMrXdXtywIpnpCjNc1Ma6/HMgqcZKm4WIYycu+xWewizvd53rG3cJH40JE1SHiKyK9AFbfHDo/B/rg==
X-Received: by 2002:a05:6512:258b:b0:4b5:b85a:5ba6 with SMTP id bf11-20020a056512258b00b004b5b85a5ba6mr770837lfb.20.1671635911256;
        Wed, 21 Dec 2022 07:18:31 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d4-20020ac244c4000000b004b57277474esm1863046lfm.106.2022.12.21.07.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 07:18:30 -0800 (PST)
Message-ID: <8b491003-236f-8f11-08a8-25bde910a2e5@linaro.org>
Date: Wed, 21 Dec 2022 16:18:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v5 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To: ty <zonyitoo@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
References: <Y6MQ2b8JyST6fPVE@VM-66-53-centos>
 <0dda49c1-2162-d473-0c4c-591519096008@linaro.org>
 <CAMmci2UC0kG-4us+RO4NQ2-5kd_1m7jK5+PDWVXvR+khofcmGQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMmci2UC0kG-4us+RO4NQ2-5kd_1m7jK5+PDWVXvR+khofcmGQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_071833_199958_79664162 
X-CRM114-Status: UNSURE (   7.32  )
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

On 21/12/2022 16:15, ty wrote:
> Got it. So the two SoB lines should be swapped? They should be changed to:
> 
> Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>

Yes.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
