Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF24C433E6
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:08:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79DE1206F0
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:08:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XIEpA43O"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 79DE1206F0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZbrTt2xhH4veotk/dt6wZECzDDyqbssiqF1rIy5dNIg=; b=XIEpA43O8DuJM4+TGGMMDgicH
	dYgSUbPSrHcq45rS2OqFtjpG79AbcyddlyDtCWxmFzrzQFuWHWs29Y01QMa31uIlbHsQbTVkf7IS3
	h/tHl4vQv6u1Nq0tVbAtArUOxvbSWT9PqNDhzW3myPTFfl3DElzssY0ckbdMf4Vpc+ENtw3FUOlbU
	vaH4Cpo0cq96eA2u6QuBme4Gr2nZuwdEkHBcNc1hFH8zs2FWhPCiGxvHLg4t0BkCYbq8UWn6gHohJ
	GpCybTNHKcad1L4HAbAhefpcQg+25Dd2H/qjtNvCGF9zGPtAhGLOQ5oXKg2l/nr4zPjlIxtFh140i
	9MnYbFSmQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCSgr-0003cp-BE; Sun, 30 Aug 2020 19:08:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCSgp-0003cO-VU; Sun, 30 Aug 2020 19:08:32 +0000
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kCSgh-00023t-Th; Sun, 30 Aug 2020 21:08:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add SPDIF node for
 rk3399-rockpro64
Date: Sun, 30 Aug 2020 21:08:18 +0200
Message-ID: <9694178.H46bfk3Hth@phil>
In-Reply-To: <20200810091619.3170534-1-katsuhiro@katsuster.net>
References: <20200810091619.3170534-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_150832_058246_39B8B847 
X-CRM114-Status: GOOD (  19.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Montag, 10. August 2020, 11:16:19 CEST schrieb Katsuhiro Suzuki:
> This patch adds 'disabled' SPDIF sound node and related settings
> for rk3399-rockpro64.
> 
> There are 2 reasons:
>   - All RK3399 dma-bus channels have been already used by I2S0/1/2
>   - RockPro64 does not have SPDIF optical nor coaxial connector,
>     just have 3pins

I don't really understand what you mean here.

Like is there spdif on the board or not? Because you call it "disabled"
and also indicate that no i2s is available anymore, yet you mention 3 pins.
What do they do then?

Thanks
Heiko


> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> ---
> 
> Changes in v2:
>   - Remove redundant status property
> ---
>  .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index 6e553ff47534..58097245994a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -76,6 +76,23 @@ sound {
>  		dais = <&i2s1_p0>;
>  	};
>  
> +	sound-dit {
> +		compatible = "audio-graph-card";
> +		label = "rockchip,rk3399";
> +		dais = <&spdif_p0>;
> +	};
> +
> +	spdif-dit {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;
> +
> +		port {
> +			dit_p0_0: endpoint {
> +				remote-endpoint = <&spdif_p0_0>;
> +			};
> +		};
> +	};
> +
>  	vcc12v_dcin: vcc12v-dcin {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc12v_dcin";
> @@ -698,6 +715,16 @@ &sdhci {
>  	status = "okay";
>  };
>  
> +&spdif {
> +	pinctrl-0 = <&spdif_bus_1>;
> +
> +	spdif_p0: port {
> +		spdif_p0_0: endpoint {
> +			remote-endpoint = <&dit_p0_0>;
> +		};
> +	};
> +};
> +
>  &spi1 {
>  	status = "okay";
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
