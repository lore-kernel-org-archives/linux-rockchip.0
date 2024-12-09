Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6647DE77180
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H0QPNiOof2ZNQAPrVFwRPSyoJHCHFy7R11y5idDh9Y0=; b=UVoxehC+M5FrPQ1N2Y0pSu7Uz7
	T3IoltD5Ay0+8+sy4NsDSRzPdk4i206899gqdiqchrvB3AEfz3t+MsCUX/QZKrLCSaMTK6Y8Zghrb
	U+tnlXr+M5tgba6TWfGgvxBXt6K0ZwMBIejmnRSTMhL0j7ty5xDrA8eZNtCIp7TcjNsIQcktYjNFm
	4tV65/RdjKfT97XQz0RfkOIZ089sORUoU2Hoybrg+7lVmh+IVW+AvBXP0IjxgPzsZEdrIM1OcDX/3
	XsWglYQTNMp5Gdlx9ihrrPYytm9+RGgS3+iC4t+2SQblLCZL6d/Xn3Q5pXnGNopNkCbWiukCcHBx/
	RtGO2oyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKcBz-00000007Xzy-2IDk;
	Mon, 09 Dec 2024 11:44:47 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKc9x-00000007XZR-1xS9
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 11:42:44 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-434e3953b65so14004975e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2024 03:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733744559; x=1734349359; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W10XgeMj5m+No6tcPataZmZSnoW6PK2I9Ff3cBJBg7k=;
        b=zmo1RrCs9bP8gU+1vuikj5QfH0MKM3yUTNtgTXG8Az/P6ctBNqy1/xxfc7EGgRkniG
         /y+ofcBj3nRUr/fXlsYw35+1zGOSddY7xuvR/DA76VZvL8sYqO2e6KMmv13MPG/PK4Rq
         oy3lRmJ4MkRgfU0/SsW43YreRA7UYwkRJy87LkFuN+yJFRY1YuWHSJsTVXAMDSZQ+9up
         dRFYZ6PaRYG7Elhq8fgDAaW3tuqzxP1dWbh2rOtOSwwWIGcW4y34pI2yANRu2IORLNUW
         IBJrT/rgjGLw0p8v39WJAb9zbiF7+01kb6wtuHHXWpZnkFvPh/5zNkacgJOeeE/qzAxl
         wd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733744559; x=1734349359;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W10XgeMj5m+No6tcPataZmZSnoW6PK2I9Ff3cBJBg7k=;
        b=qRqVjcFxGShC1ckkldeAhdzUP4C+Yqs1jxCil8wYKkfipgPWOE1WEImSe/qj4ImSOd
         VmskNMsj1ITIk/9geXKS1jh5GfnqBFJDBBgGQyCbpkK7BXYg8Wkhc3VA9FDPj7Pi56Tv
         EIbpyLInlAYxs9XPJ28GK07m86YvBEKNNRTNB4532E2GUeayE9DxMucmpR6c5g6N9/dO
         EHck94u3+urxjjnRPg6QQ6zTLruJElXkCsXnA9yVfXzWv02GrnRHo4kmL/qH83ne0o1m
         sTF56gsFYBP+7llXEqPILZTY3d/MP0D2S8YFfoZndSAafHR8+SIwfVLHHvFd4QBfLoE1
         Qskw==
X-Forwarded-Encrypted: i=1; AJvYcCXgYQn0lSxk9Lm4jQXM5B5Hc3zyz5w10+mcvYmfXMUzWpPtTn/315fNuEyRDIgKfvjLVFLorjUSF+bw7Te75A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZzRIjLj/q14JPnLcoMdVAMQ+7AFRf3VqDBSzSlfwJA7iHhAf5
	rZUnuDk815vvE/7OK3Ys6LHK16YH3ixNH3++LKMt5ahdO02a/iz8EyH9bowPMzU=
X-Gm-Gg: ASbGncuPGM97s2OXnoZTVvf8UH0jAZVQfY9oP0AtOFJ48un+/yBtWAWbH+6AsdxxCxx
	fk5oi4bZ0CXXc9rPH+kC8WtcrIQ11zTmP+jG1ksWUKKR6f6K+MRBBvk+GGvPK7FkpUm74Tv19Wg
	2qMOz6uXio3fSaHwu1UjPD5Le31/DX8Qj/8PZk/qTsULDg7C/5h66SeTRqwny+brY5TZTFzimaf
	wkJgPJ009lCrXS1qvcPbEwS77QsthOMeP1G+IqAHwnCddW+I6pTq6qb5XQMCm0=
X-Google-Smtp-Source: AGHT+IEbIQYg8EnIUDUPigKjpDEo3nHZn5oUqp1eGUTq6LEGGzSr1WjwD8bOZqQ7VZz3k53CLChrPw==
X-Received: by 2002:a05:600c:1da7:b0:434:f871:1b97 with SMTP id 5b1f17b1804b1-434fffca42dmr648225e9.33.1733744559181;
        Mon, 09 Dec 2024 03:42:39 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f2b08972sm60014355e9.27.2024.12.09.03.42.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 03:42:38 -0800 (PST)
Message-ID: <c8f42175-3501-4d65-92ba-5878fe5ea5f4@linaro.org>
Date: Mon, 9 Dec 2024 11:42:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH] media: dt-bindings: trivial white-space and
 example cleanup
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Ming Qian <ming.qian@nxp.com>, Zhou Peng <eagle.zhou@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Viktor Prutyanov <viktor.prutyanov@phystech.edu>,
 Shijie Qin <shijie.qin@nxp.com>, Michael Tretter <m.tretter@pengutronix.de>,
 Emil Velikov <emil.velikov@collabora.com>,
 Del Regno <angelogioacchino.delregno@somainline.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 imx@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20241209113405.74226-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241209113405.74226-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_034241_899954_881A46E0 
X-CRM114-Status: UNSURE (   8.36  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 09/12/2024 11:34, Krzysztof Kozlowski wrote:
> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> index 9cc0a968a401..3469a43f00d4 100644
> --- a/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,msm8916-camss.yaml
> @@ -1,5 +1,4 @@
>   # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -
>   %YAML 1.2
>   ---
>   $id:http://devicetree.org/schemas/media/qcom,msm8916-camss.yaml#
> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
> index 5cb0e337ea6e..644646de338a 100644
> --- a/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,msm8996-camss.yaml
> @@ -1,5 +1,4 @@
>   # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -
>   %YAML 1.2
>   ---
>   $id:http://devicetree.org/schemas/media/qcom,msm8996-camss.yaml#
> diff --git a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
> index 584106e275f6..68d8670557f5 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sdm660-camss.yaml
> @@ -1,5 +1,4 @@
>   # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -
>   %YAML 1.2
>   ---
>   $id:http://devicetree.org/schemas/media/qcom,sdm660-camss.yaml#
> diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
> index d32daaef1b50..289494f561e5 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
> @@ -1,5 +1,4 @@
>   # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -
>   %YAML 1.2
>   ---
>   $id:http://devicetree.org/schemas/media/qcom,sdm845-camss.yaml#
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> index 06db2c1e6079..a372d991e652 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8250-camss.yaml
> @@ -1,5 +1,4 @@
>   # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -
>   %YAML 1.2

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
