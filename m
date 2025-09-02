Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD45CCA100C
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 00:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/aeYkg/gVN0m9gfKkJiCAOcQ9atH5WaC8+4dHPS5sk=; b=jm4WDZiYBBp+Ko
	r/1j67shk2eCUHhXzOYsbTmH5qxzjCBioHU97bUuE9YaGytNtl8bMZ799Fb1NezMTVk4Qiim736rw
	Oue4QwZhcWJn+m6rNxwFj9+wNA+jnOuMaEg+nDLvE5FGKQYvMApkyz5oZvpmcs1Pgmu0l43DNbcoK
	yQM/O+Tq1JP9yMXqA3F9wlA8bpjx+9YLhIJrpyRvNWo+ME6How8qamRSiN7tt8w4mFF+cDfLciOJx
	GHRJzVmlLs7X91K6QbgVdQ4zTIglQkiQwdQp+dMPPVvCwXlQNdHPvgBhSNdFmvs4IYF74X9H9drms
	rcEQ4tB5Kk1nWJYXfmDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utFHs-0000000EbH1-0AGk;
	Tue, 02 Sep 2025 00:54:16 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utES4-0000000EQOT-13Ue;
	Tue, 02 Sep 2025 00:00:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756771241;
	bh=lTx5ebup15L8Y8dWezY7Q+L8eTFTcPmG7X75AeaDG7E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Uyhey97Hq08CpJlD4ljK9VVtmMYrunawlcrse06eEGa8pTAZasj3E8hNswtF2a92d
	 iiqxAdfK055Cfczmv+fkX85vHvdfz6EQehT4M8SgQNIEIKvQNTx5WfgR7f00aG/kWd
	 saaI5J1aAkuYOIsCRtX8e1S4NaUFVynlWnZG1xwCbtihv2/GTC/BQ2sbugtx9gwZx+
	 JKo/st3OX8fxXuY8wma6YIVLBF2TsGywK+jB0MtOeTA0/ii/cv0p0eJSH3IUZhwsCk
	 9J+r0b/xQRbKwIoC/g4pUGaUS8mPelIVT9R+yp/2MjADokykyfDPLxavq+hFXXPB3B
	 KBZEfr57+g86w==
Received: from [10.40.0.100] (185-251-200-65.lampert.tv [185.251.200.65])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C7B9617E0488;
	Tue,  2 Sep 2025 02:00:40 +0200 (CEST)
Message-ID: <03182857-2d74-42f5-850f-d5edca9ad19c@collabora.com>
Date: Tue, 2 Sep 2025 02:00:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/7] arm64: dts: rockchip: add mipi csi-2 dphy nodes to
 rk3588
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Collabora Kernel Team <kernel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250616-rk3588-csi-dphy-v3-0-a5ccd5f1f438@collabora.com>
 <20250616-rk3588-csi-dphy-v3-7-a5ccd5f1f438@collabora.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20250616-rk3588-csi-dphy-v3-7-a5ccd5f1f438@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_170044_457861_93223397 
X-CRM114-Status: GOOD (  15.39  )
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

Hi all,

On 9/1/25 22:47, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip RK3588 features two MIPI CSI-2 DPHYs. Add the device
> tree nodes for them.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 33 +++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> index 70f03e68ba55..eedf93247e9c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -621,6 +621,16 @@ php_grf: syscon@fd5b0000 {
>  		reg = <0x0 0xfd5b0000 0x0 0x1000>;
>  	};
>  
> +	csidphy0_grf: syscon@fd5b4000 {
> +		compatible = "rockchip,rk3588-csidphy-grf", "syscon";
> +		reg = <0x0 0xfd5b4000 0x0 0x1000>;
> +	};
> +
> +	csidphy1_grf: syscon@fd5b5000 {
> +		compatible = "rockchip,rk3588-csidphy-grf", "syscon";
> +		reg = <0x0 0xfd5b5000 0x0 0x1000>;
> +	};
> +
>  	pipe_phy0_grf: syscon@fd5bc000 {
>  		compatible = "rockchip,rk3588-pipe-phy-grf", "syscon";
>  		reg = <0x0 0xfd5bc000 0x0 0x100>;
> @@ -3052,6 +3062,29 @@ mipidcphy1: phy@fedb0000 {
>  			 <&cru SRST_S_MIPI_DCPHY1>;
>  		reset-names = "m_phy", "apb", "grf", "s_phy";
>  		#phy-cells = <1>;

Not my day today, apparently. status = "disabled"; is removed from the
mipicdphy1 node.

Hence, there is going to be a v4 in which I fix this -- but maybe you
all can still review the series.

Best regards,
Michael

> +	};
> +
> +	csi_dphy0: phy@fedc0000 {
> +		compatible = "rockchip,rk3588-csi-dphy";
> +		reg = <0x0 0xfedc0000 0x0 0x8000>;
> +		clocks = <&cru PCLK_CSIPHY0>;
> +		clock-names = "pclk";
> +		#phy-cells = <0>;
> +		resets = <&cru SRST_P_CSIPHY0>, <&cru SRST_CSIPHY0>;
> +		reset-names = "apb", "phy";
> +		rockchip,grf = <&csidphy0_grf>;
> +		status = "disabled";
> +	};
> +
> +	csi_dphy1: phy@fedc8000 {
> +		compatible = "rockchip,rk3588-csi-dphy";
> +		reg = <0x0 0xfedc8000 0x0 0x8000>;
> +		clocks = <&cru PCLK_CSIPHY1>;
> +		clock-names = "pclk";
> +		#phy-cells = <0>;
> +		resets = <&cru SRST_P_CSIPHY1>, <&cru SRST_CSIPHY1>;
> +		reset-names = "apb", "phy";
> +		rockchip,grf = <&csidphy1_grf>;
>  		status = "disabled";
>  	};
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
