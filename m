Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA216EFCE33
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPAcNdwHC0JrBwydLQI5yXXw6uVuOQRp0HJ3H4UYg0Y=; b=N97dEmBo7IgYzj
	8ZFhS4tvjFjP8hgU6AT00wiLI+OpmPysPnakW5fM6R57Owr5wU/zU4an2XmwhjrEEIXIcKhjDjpwM
	JSXt7PR4cqzt1RmOKge8BZPYtIFwcNfCLnlPDHHo4K925lfxi7ECChOYZXK9D6/mJYNdAWt0IOo/x
	WcW0RVM/RgBkmYsjsD4jwPg81W/tljxh7+rwOEOy1LPdVGmEIxQ6XfaJOTKR4xoxpauMDejLgnR5C
	6tSF8BuJnuunjsf0l9c5dd3GJ0RYUEhivCwaFrFBeQwrgs5jZQmmTCUDXkhZoE/q3kRNhjWvLozmu
	+wi0xV/T2gX0ctS1TrmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxr6q-00000000LfA-2Etl;
	Wed, 04 Mar 2026 18:38:12 +0000
Received: from out-183.mta0.migadu.com ([2001:41d0:1004:224b::b7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxr6n-00000000Len-3BQp
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 18:38:11 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1772649485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NfY2kXCUHHtHIbcGOoAHRgzyuErTZbqiG1z4V5950IY=;
	b=YZG1wEEYVUF5+0ocmTUfXGVXA5oB/lK5ZWwcUsx41JHqqaNmCohlDPhDNyxMUy6KmOctWh
	qknC1NH0ITC1ABnI6rMhSties4AvN1cxJKG2kIBqshS5/pgPMOOEDKPP21jJ862TJH4ot9
	SFQqkWIxHezOPy8Zx4YSHszbsxf10liguBULWlfhyf+kUjaxKwFNq555eFA0mZ718fd+07
	fCu+82dEM1JBRJtAfLi+V/tZAizk/DrCcPDYkuOF526f7T+NrC7OVeiLLSSgxYl0s2WfYM
	JiHNq3Dqn9ikUVVfmYnWjVNvSgRHmWvBCt+XPxMUMSj2qno1/LRsxFIcJFF6Ow==
Date: Wed, 04 Mar 2026 19:38:02 +0100
Message-Id: <DGU7SPZQMZR5.1506XM8RO4EHE@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Pedro Alves" <pta2002@pta2002.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
In-Reply-To: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_103810_419401_98C51B30 
X-CRM114-Status: GOOD (  21.24  )
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

On Wed Mar 4, 2026 at 2:54 PM CET, Pedro Alves wrote:
> The Radxa Rock 5 ITX board exposes an HDMI input exactly the same way as
> the Rock 5B, but this was not reflected in its DTS.
>
> Change the rk3588-rock-5-itx to configure and enable the hdmi_receiver
> and hdmi_receiver_cma nodes.
>
> One of the existing pinctrl labels, hdmirx_det, was renamed into
> hdmirx_hpd to match the other boards. The _det name seems to have come
> from the downstream kernel sources, where the other boards also have
> that name. Changing it to hdmirx_hpd in order to be consistent with the
> other rk3588 boards in the kernel.

I have a strong suspicion that it was named 'hdmirx_det' because in the
schema its label is 'HDMIIRX_DET_L' where the extra 'I' was probably
dropped as that seems to be a spelling issue and the '_L' suffix is
quite often dropped.

FWIW: The label in the schematic for Rock 5B, Rock 5B+, Rock 5T and Rock
5 ITX+ are all 'HDMIIRX_DET_L', yet none of them follow the convention
to use the label from the schematics.

So now the 'problem' is indeed: make it consistent with the other boards
or keep the one where the convention was followed.

Cheers,
  Diederik

> The configurations were confirmed to be identical on the downstream
> Radxa kernel, and this has been tested to work on a Rock 5 ITX board
> running kernel 6.19.3.
>
> Signed-off-by: Pedro Alves <pta2002@pta2002.com>
> ---
> Tested with the following commands:
>
> v4l2-ctl --verbose -d /dev/video4 \
>   --set-fmt-video=width=3840,height=2160,pixelformat='BGR3' \
>   --stream-mmap=4 --stream-skip=3 --stream-count=20 \
>   --stream-to=hdmiin.raw --stream-poll
>
> ffmpeg -f rawvideo -vcodec rawvideo -s 3840x2160 -r 30 -pix_fmt bgr24 \
>   -i hdmiin.raw output.mp4
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index 172aeabba72a..9f4f31d1ca94 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -349,6 +349,18 @@ &hdmi1_sound {
>  	status = "okay";
>  };
>  
> +&hdmi_receiver_cma {
> +	status = "okay";
> +};
> +
> +&hdmi_receiver {
> +	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_hpd>;
> +	pinctrl-names = "default";
> +
> +	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
>  &hdptxphy1 {
>  	status = "okay";
>  };
> @@ -746,7 +758,7 @@ vbus5v0_typec_en: vbus5v0-typec-en {
>  	};
>  
>  	hdmirx {
> -		hdmirx_det: hdmirx-det {
> +		hdmirx_hpd: hdmirx-5v-detection {
>  			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
>
> ---
> base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
> change-id: 20260303-radxa-r5-itx-hdmirx-f4645e64f8c3
>
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
