Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F4EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 17:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzPIaBnF3ueYxo/LLgVzRBCYxfCOeLZ6RNQ1Ib8Zph8=; b=bY4Y7Bi2zqmVtO
	aOToStBiFoP2KeV+lLAhTcia/0vh+t3d9lv9R+IyWj8ptuIbYBtqMpCdWlMQto5EH9lQVinO2fm6F
	gt/UxVRAveGECfBimmV0mnAXoXAMTfXOn3j0apzDJQJWaZLb3gJ3EdWA5CJ7hHETWHzsnnWHeZA1I
	f9L+vxzObwGArCzLgBow6qpNo/rfDfqub6mxtxqm+ef1Wy4wgsQNp5+CeiTCd3IViETDxg4PN8kT1
	aNhW2WmZ9RF9rmVuA4XuUI/ZyNqR7dqPN9sjJLHrmLavQ05USa6rEanNw7Fu/D4ZAI0z5peiYD9aG
	Kmd2Fdskc7HdoLpZ6VKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZcCm-00GzMT-UY; Wed, 30 Mar 2022 17:34:00 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZcCY-00GzHB-Ni
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 17:33:48 +0000
Received: by mail-ej1-x633.google.com with SMTP id r13so42967025ejd.5
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Mar 2022 10:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=v0ypuDOZ9iczYgFgx1CgxJv5DcfIjupX67FG6Uawm28=;
 b=Dm4NkdgRizF5UQHrmqClnq9Isje3UUn/6mfSP4EzRO9H4lnnvVVEQ6DnQATUMmZ1Fa
 8tLkTSxaqIdLUv20E/Gu7Q/D+Bf2phajGvNvFRcAngMSJKL6GvlLqrF3BVOqwVYo7dv2
 O5eUq/V1HRa3gacQHhwgilqItG9HfX7McmwvquTGOF29bJRWfX+E49xK+IuBEfn30fo2
 HEKTJ3Ktt2hOU9Q5TFLhrMKTBW6WGIdyda3iv6ewbq/rX9fCGI27hnE2eDFYjQT7L1pz
 dzYq71C8W/guTKY5YxX+v4lUmxUR0ypPvaLjgttweJWRW5YIBMAkQ3JecwKv8cPbpASG
 UI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=v0ypuDOZ9iczYgFgx1CgxJv5DcfIjupX67FG6Uawm28=;
 b=kPqhcSwgpyYNYXGl5Zw6LOZfMg1gtwpNvpT2w4CQixZdVzIDxz+Sp2cN8pIUlpU6fw
 ksAEEo9b6rWqQjhM7oRui5v8MVICTa1mk3Z05GNKzBBDBzUEVBcwkVdOI/UG1F72lg3z
 mu3YZTvXNjbNrh7GxybPTBnCE3FvBtSml+75FTU1sMtTevwPrDP/sTO2LxWMDD6zdQlJ
 l3+GGk1YFKx14STdZSkk7TstTNbsBAJfBDTFcvC8aLDxa+nT4/Q8E5ttw0S0/JKqiL2l
 1mvFY34c8d4V1W9m2+ghaSSRa2meMrW6YsUNd+p3xDXqFN8RwZUtlapHZxFG/0pf19JM
 t6RQ==
X-Gm-Message-State: AOAM533mtKVP0yz3xJNeOeUpT0Fm8jSwc1aPwhVrTyuohuRBwl1Ij5w3
 Qqhvw/EMy47gMWuEc6Fo/E6MBw==
X-Google-Smtp-Source: ABdhPJx8VM85FNTNB3nTJF1PZIQmaZo0yaLCn/umk7bKrByJw9kErPb8vzRj3m4+OkxUDwCBIhXXlQ==
X-Received: by 2002:a17:906:7944:b0:6da:b834:2f3e with SMTP id
 l4-20020a170906794400b006dab8342f3emr681549ejo.353.1648661625373; 
 Wed, 30 Mar 2022 10:33:45 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 b8-20020a170906728800b006e0351df2dcsm8533922ejl.70.2022.03.30.10.33.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 10:33:44 -0700 (PDT)
Message-ID: <5ecf5ad4-a0f7-69f6-7d00-2ae4a83e5f29@linaro.org>
Date: Wed, 30 Mar 2022 19:33:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 3/3] ARM: dts: rockchip: rk322x: use generic node name
 for dma
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220330121923.24240-1-jbx6244@gmail.com>
 <20220330121923.24240-3-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330121923.24240-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_103346_790172_DC98A956 
X-CRM114-Status: GOOD (  12.04  )
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

On 30/03/2022 14:19, Johan Jonker wrote:
> The node names should be generic, so fix this for the rk3228 dma node
> and rename it to "dma-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Squash it with your other change that type and submit one commit per
sub-arch (so for all arm Rockchips).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
