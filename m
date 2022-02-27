Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2E66C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 09:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTWYh3fgH/+0DaQTJCh6Um03k3PvFK8l1K4KvG6+AeM=; b=ImOOCvJrp1yT0q
	Pu+th/uut4Hp9FkckQkwWJELQqaddvByEtYqlf0+KfBrEL9Ys6pwKVPCpwQOwp3Jg61qOHhRkRKnp
	DsSj1/if4wBkDlPEKObpVgdB9V7pr29hNtjXXjCMu0Px5p/WvcHxR9QOpokUIFTWGYIIFbs4Qgnq2
	75acxO4KCysLy1V1CFzHPiQEohH6Bw6W1hdeTl30CMhuKW0ixLNp5ggFHhoI72EbP2C+f2hvEFpbE
	xXrKspeMVKzxeG9sCRmlRPRG0uxUa/n0Xq88wxC2dzVc9lsg7hUgpdbXJKQxLVAbDcd4LGJLyX9Fn
	3nJPaZUB6QAUHQ/zhpAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOFvF-0090BX-FX; Sun, 27 Feb 2022 09:32:57 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOFvC-0090B3-RJ; Sun, 27 Feb 2022 09:32:56 +0000
Received: by mail-ej1-x631.google.com with SMTP id p9so19160875ejd.6;
 Sun, 27 Feb 2022 01:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=bPYynrjqhgBLtN2cr7LwW1Kf2fLVZCu7r0EjUJ+YJiA=;
 b=LYhWFAXnRxSuSvGZnnvVcr2T5OpbkiroI1QxIQj+W54Oyelh03Q30ieQdg1LyfVqS7
 HFUm9bMy7N1/iUaQfE1/U451qlV5t7BNldbEZGqm9l+nk+5cjq1Ahf1+2E/JGCX5f6pX
 0OnLzJ7SjZyFrdW/I0M/XS2+F0g/BA+jfvsFPhG+5chcOeHgpvVVoo6VbCRMSCpJgVi/
 d90jE/o2skITJ+v2PFc5RmLQJHFqHKEbXtN6O6DCmxzX+diJ1oj+781w3tQsywuYRypH
 2y2JK9LeuoBjc5cTlkeecsXxl+HOMF0bpCkKwUBSkROZQ771hQo6U1YpXBh/ukG/yPF2
 xzRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=bPYynrjqhgBLtN2cr7LwW1Kf2fLVZCu7r0EjUJ+YJiA=;
 b=xMxI9HCfALcGYT014l40m0vi04+4infAY+HD5fvBA0i9qMJbQCADyDM1VOGHz2OtkY
 0OuPR3IfrHueMxH8scuvPggHZUVs7LsE/eiWQz+JagLoQkptvADwsrmo7Kf9Z42R+yCT
 0HbbZ2KOWso8siqvIATySCULr2WLM1xF7IyOuROsKJbJi7a1DdCgGWK/s5IVCmXdftsU
 mhkmHAKfX+v992R/rLKwxj6udaUsNHcwJXaNmtk98ZWzt7KXaZ9d9bO9ubDq3ph/cZB9
 HjhXAZqDoghjKlbDXQ7qA9GRNEsLmLOkCYtS+OOgaHaFLbIt9tVqScQD+mfBJ4nv3fyi
 Yt+A==
X-Gm-Message-State: AOAM530BR/2Lj+O0aoacTO4SnpP1gSmm5I1GA7bCDo+EsJC0KeWWCFZm
 74QYQubRUL0WlgfvQpjmhto=
X-Google-Smtp-Source: ABdhPJx5ot/uXGhr5obXyws4B25ucf9VX/1Th/XDjyDOsT+iqK5YagLm09kuiQJ/Y+hXhld1lFapUA==
X-Received: by 2002:a17:906:35d5:b0:6b7:faf7:9611 with SMTP id
 p21-20020a17090635d500b006b7faf79611mr11571638ejb.537.1645954373052; 
 Sun, 27 Feb 2022 01:32:53 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 lx9-20020a170906af0900b006d0d3179e11sm3166949ejb.105.2022.02.27.01.32.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Feb 2022 01:32:52 -0800 (PST)
Message-ID: <89f358ac-eafa-3887-2fcb-db952a6161b3@gmail.com>
Date: Sun, 27 Feb 2022 10:32:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add sata nodes to rk356x
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220227082131.131883-1-linux@fw-web.de>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220227082131.131883-1-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_013254_957271_2D9B34B7 
X-CRM114-Status: GOOD (  16.10  )
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

Hi Frank,

Combine your patch in a serie with the ahci-platform.yaml conversion and
include all current CC people and Rockchip list.

Your conversion and DT patch contains lots of errors.
Check your serie before you submit and fix.

ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/ata/ahci-platform.yaml

ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/ata/ahci-platform.yaml

Add power-domains as a new property after the conversion patch.

Johan

===

make a serie:

conversion ahci-platform.yaml
power-domains patch
rockchip rk356x sata nodes patch


On 2/27/22 09:21, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> RK356x supports up to 3 sata controllers which were compatible with the
> existing snps,dwc-ahci binding.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes in v2:
>   - added sata0 + 1, but have only tested sata2
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 45 ++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 7cdef800cb3c..2e2e73be7417 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -230,6 +230,51 @@ scmi_shmem: sram@0 {
>  		};
>  	};
>  

> +	sata0: sata@fc000000 {

rk3566 has no combphy0
Move to rk3568.dtsi

> +		compatible = "snps,dwc-ahci";
> +		reg = <0 0xfc000000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA0>, <&cru CLK_SATA0_PMALIVE>,
> +			 <&cru CLK_SATA0_RXOOB>;

> +		clock-names = "sata", "pmalive", "rxoob";

remove
> +		interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;

> +		interrupt-names = "hostc";

remove

> +		phys = <&combphy0 PHY_TYPE_SATA>;
> +		phy-names = "sata-phy";
> +		ports-implemented = <0x1>;
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		status = "disabled";
> +	};
> +
> +	sata1: sata@fc400000 {
> +		compatible = "snps,dwc-ahci";
> +		reg = <0 0xfc400000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA1>, <&cru CLK_SATA1_PMALIVE>,
> +			 <&cru CLK_SATA1_RXOOB>;

> +		clock-names = "sata", "pmalive", "rxoob";

remove

> +		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;

> +		interrupt-names = "hostc";

remove

> +		phys = <&combphy1 PHY_TYPE_SATA>;
> +		phy-names = "sata-phy";
> +		ports-implemented = <0x1>;
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		status = "disabled";
> +	};
> +
> +	sata2: sata@fc800000 {
> +		compatible = "snps,dwc-ahci";
> +		reg = <0 0xfc800000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA2>, <&cru CLK_SATA2_PMALIVE>,
> +			 <&cru CLK_SATA2_RXOOB>;

> +		clock-names = "sata", "pmalive", "rxoob";

remove

> +		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;

> +		interrupt-names = "hostc";

remove

> +		phys = <&combphy2 PHY_TYPE_SATA>;
> +		phy-names = "sata-phy";
> +		ports-implemented = <0x1>;
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		status = "disabled";
> +	};
> +
>  	gic: interrupt-controller@fd400000 {
>  		compatible = "arm,gic-v3";
>  		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
