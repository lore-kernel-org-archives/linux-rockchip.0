Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 440D3C77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 20:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqsNI4QTsHPJXOq/CIfGghQScsaEgfBGdktYIwA7jVM=; b=eYhgKmbYNhlD1Y
	P++u3GPJSE5KxnvHdWihdOMwV8WH70XTsvHZajvOENPcsaf+LEyKT9FyiV0pR1DVkeWNcnTtE25MQ
	1uRo0l0YeJVjRzknyY3+L52tFFY2gPUOx6jH6HAzqvPZY+9B2qd1/3VvkZ1M+rY3K8gywuiFClXZx
	RzuewgvxRSir/ETUsMwHemL8BbNzWO42jXTsJilLzxxlNAMOLuHvuw9EpWK1E2cwzRbaL3mwPWzFJ
	QEg0Rmm25AS2BUQvud71j22DkOnCv3MY+TqVeHhZDRD67JeLzMtulUCzlPYyZb230VpOUQE+OvnXR
	QSqcW9K6szQAn3vw1K7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppDzj-006JFr-2j;
	Wed, 19 Apr 2023 20:01:35 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppDzf-006JDY-0h
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Apr 2023 20:01:33 +0000
Received: by mail-ej1-x62b.google.com with SMTP id z6so1229428ejc.5
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Apr 2023 13:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681934487; x=1684526487;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uR1sg37u4yLqstygNFNs5VOG/aJjyMp9p6EHpt4xrlU=;
        b=t8UO6709ej90L404wmD+d6lwQDgZJ3lnbmCFTtcjX2lYbOOp6jCA8/PNdrpn+g+Dz5
         /ufKN1PjfmQNz8C5jLDjv7sCFtpttLjH8Isk1T90rZGK2qeJquSTpMuT/qCxfmU8V5oP
         wbrnjdvQ+Jq8Zo4PBL172EiONjNMF9HbAxCdqXkrEdMEsAZN77ahqq3iQa0J2jBffHfu
         D5rloRoTmMyjdkp0dBPkN50iwhKXYLlnJW+5uXikYZwSxCla0reblEDRbmdsepE9w0GM
         P9KWA5G0Y4vPtQVAcrqNRGu4mU2zmmqjkFNqioPaovUJnb4YEoPDJJdaMtMfY/HA+DeK
         zYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681934487; x=1684526487;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uR1sg37u4yLqstygNFNs5VOG/aJjyMp9p6EHpt4xrlU=;
        b=i0kNMxg5Cts5bkFdTGUlV41KYcHTfRJ1tP3/4PlZnx3nGVBhurOaG2gE3A1K+4xUum
         3iW8ILfOCjkMCfKL+gCW2bbhWVhwSjgRAcKdfbm1MkdWts5pgb9ECoheT0WCRyJB+BNX
         Ou32qOX4QFBpqVu7X8HXHQ/7cwN7YCHnWkrG4jMDTdKLIV3Ct7bsztmvoq7bxG2XsFVT
         WBW/0TKilOtVNE9J3LiPI+9xtCUE0xP3XhnGIcU+togOyv2yButcDCLxlU0eA1vAI9Vp
         lcfpzfMWJw3J1TfshO4FitWzIu9kiSdk2AHdFcm+xMo4qch1GgWZ0ggwwh8s33hpYlRh
         cpSw==
X-Gm-Message-State: AAQBX9fG6asETTwPKCMl1wt+oP1BIBm/XQNezJV+rgh/cCydhawUwQuH
	nC8huIr7QijYzgokX43atlG5qA==
X-Google-Smtp-Source: AKy350Ymx4qFw5Wb5XaUf2ClN/hYaKBoxle02tqUxYWB3N1hLco5TfUFJFyOd9eaddTXOetVPigRsg==
X-Received: by 2002:a17:906:7006:b0:94a:44bc:31e7 with SMTP id n6-20020a170906700600b0094a44bc31e7mr17921518ejj.60.1681934487403;
        Wed, 19 Apr 2023 13:01:27 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:976c:1d6c:6ed0:8935? ([2a02:810d:15c0:828:976c:1d6c:6ed0:8935])
        by smtp.gmail.com with ESMTPSA id v15-20020a17090606cf00b0095336e8e012sm1922174ejb.176.2023.04.19.13.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 13:01:26 -0700 (PDT)
Message-ID: <172c46b7-256e-b09d-3940-880fa8989b49@linaro.org>
Date: Wed, 19 Apr 2023 22:01:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v5 06/11] dt-bindings: PCI: Update the RK3399 example to a
 valid one
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, dlemoal@kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Caleb Connolly <kc@postmarketos.org>,
 Corentin Labbe <clabbe@baylibre.com>, Brian Norris
 <briannorris@chromium.org>, Johan Jonker <jbx6244@gmail.com>,
 Judy Hsiao <judyhsiao@chromium.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Hugh Cole-Baker <sigmaris@gmail.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
 <20230418074700.1083505-7-rick.wertenbroek@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230418074700.1083505-7-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_130131_272534_B8638A49 
X-CRM114-Status: GOOD (  19.58  )
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

On 18/04/2023 09:46, Rick Wertenbroek wrote:
> Update the example in the documentation to a valid example.
> Address for mem-base was invalid, it pointed to address
> 0x8000'0000 which is the upper region of the DDR which
> is not necessarily populated depending on the board.
> This address should point to the base of the memory
> window region of the controller which is 0xfa00'0000.
> Add missing pinctrl.
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> ---
>  .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml      | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
> index 88386a6d7011..6b62f6f58efe 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
> @@ -47,7 +47,7 @@ examples:
>  
>          pcie-ep@f8000000 {
>              compatible = "rockchip,rk3399-pcie-ep";
> -            reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0x80000000 0x0 0x20000>;
> +            reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0xfa000000 0x0 0x2000000>;
>              reg-names = "apb-base", "mem-base";
>              clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
>                <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
> @@ -63,6 +63,8 @@ examples:
>              phys = <&pcie_phy 0>, <&pcie_phy 1>, <&pcie_phy 2>, <&pcie_phy 3>;
>              phy-names = "pcie-phy-0", "pcie-phy-1", "pcie-phy-2", "pcie-phy-3";
>              rockchip,max-outbound-regions = <16>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pcie_clkreqnb_cpm>;

This is just example of the binding, you do not need to fill all
unrelated (generic) properties like pinctrl.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
