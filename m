Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F79C54E94
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 15:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o010701vtdO7HDuytYe5Wcsne8Olb0EENBFQyjbX87E=; b=Us16/dIkrQiCos
	NxOwLXld/1TeHarjbGh1oO8Powyf1FxClhSHa1NjyvtYgfPCjatbCFXp2F3ATCThiUdCCA8dRwT10
	3IqG4qbEPmNr+9GI4nYHEA8C+01w6SoqK7EllJ3VrU5onXJsZqLfeRbvAUKZZx912V2OU6b3slh/6
	zJO3Ej3bZulAmN5fqMmfkSKgofJJQtYt+ZP7e5bCUk0wuJ9kSc5pFLN9uSTsTCBL/QqzRxubWd+/D
	EwdCAaYrLFlGCqE4EyjPtkGLF8Tv2Ubl8wvik+iFbfXVE4xsSl1GzBZrqV8GNNjhpFALsAE53HJGO
	V8UMENrFsacagH6ucQfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL46B-00BUGI-Qg; Thu, 26 Jan 2023 15:23:35 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL467-00BUDw-Fq
	for linux-rockchip@lists.infradead.org; Thu, 26 Jan 2023 15:23:33 +0000
Received: by mail-wm1-x333.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so3478652wmb.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jan 2023 07:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OsProH1FLDNaI7BK1VAv3F5PPttHIZQfk9ow0JlU4mM=;
        b=jA1aIZapv4TbXEQf1jQNWsfVqEmo5Ggy7VU6/5IYzjx+EtuQ59Tj2FwVIpgWgacEcN
         LCwMPMl6rAx5SnNztLlQ0yydukfIypegA5hzfANAIDAt4zjjOl4VXGjp6H+NQBg+p0s4
         0rwMJFPYr69/wpjY4lI0n0x5QHv7fxjafyJK2d8He10GFEzZ6eMxBeU8ktgvrRz077wf
         6js8psJPQ362Kx1m/me5QSi/KOzm+JzuEViqpO8g3ub9x4QJRq9x6f+ybC6JP7ahNqFb
         Hp42W+nnlmaGYBm7Ei9uVrUtOBvYeCD7RzDzECYqSFhqsosvRf7Ez71f3t9o4FWFJBHv
         90fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OsProH1FLDNaI7BK1VAv3F5PPttHIZQfk9ow0JlU4mM=;
        b=i7OFXzEb63YS6G+1ZAeEnKj+Sqn01Yy6OBEt7J2z3p46q6d9MBDWNokeyARz6fTDmt
         3R+L9HPRa5fzlMPLnxkpmYgQnlZTm05LyeFZCWdWx9D+Wa35+VXRRj/ANe8ksCmg79xI
         nXKg0XphTXx7dhVEkpEs8V3U46cgDqZOieRbJLtnWnVOEKL/ElzSKEJwc1t+65xirV17
         l18Po2xpjWH3NcyDH2OE0YNzSq3LY7JcSQM+M8jaUrFubSjrpg/8t+WOvk8KdKGYK1Ml
         +RqYkqBLbXF2WwK5AcWC2Z5vtWVjNbAB+jurYTGoZxrMr6gD08kOnnLl07PcjBJBlp4k
         NYig==
X-Gm-Message-State: AFqh2krovUkOmWIaTDul+cxfITe88hwYoNYwNb1ZBGA07E3QmhhiDtSX
	FWt2UMVNtLdPOy2gM/qQ1PKujQ==
X-Google-Smtp-Source: AMrXdXsCXXjCTiIflpPPkWf3wTVp2oNNsqJ+e83FbNBDZM59FqaEVQ9WDFsH7yvv5Ng4srWuycjQFQ==
X-Received: by 2002:a05:600c:310e:b0:3db:fc3:6de4 with SMTP id g14-20020a05600c310e00b003db0fc36de4mr33027373wmo.35.1674746609151;
        Thu, 26 Jan 2023 07:23:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id e19-20020a05600c439300b003cfd4e6400csm1723340wmn.19.2023.01.26.07.23.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 07:23:28 -0800 (PST)
Message-ID: <6a54a51b-cf1a-c601-275f-00f825fcec5d@linaro.org>
Date: Thu, 26 Jan 2023 16:23:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 5/8] PCI: rockchip: Added dtsi entry for PCIe endpoint
 controller
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, wenrui.li@rock-chips.com,
 rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
 <20230126135049.708524-6-rick.wertenbroek@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230126135049.708524-6-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_072331_614212_7EEC0AD5 
X-CRM114-Status: GOOD (  16.56  )
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

On 26/01/2023 14:50, Rick Wertenbroek wrote:
> Added missing PCIe endpoint controller entry in the device tree. This
> entry is documented in :
> Documentation/devicetree/bindings/pci/rockchip-pcie-ep.txt

There is no such file

> The status is disabled by default, so it will not be loaded unless
> explicitly chosen to.

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 9d5b0e8c9..5f7251118 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -265,6 +265,31 @@ pcie0_intc: interrupt-controller {
>  		};
>  	};
>  
> +	pcie0_ep: pcie-ep@f8000000 {
> +		compatible = "rockchip,rk3399-pcie-ep";

reg is usually second property...
> +		#address-cells = <3>;
> +		#size-cells = <2>;
Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
