Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95B3CC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 08:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMKY5nwv1p9BkAO9Mfg4n8tbcqs+uG0jeJKOZUz3aQw=; b=XOGVysvFvvp7uE
	B8RKNLgw2joNHJOKwlsGI1bOTDqX08Gsz71P3XZThM0XI5fiILn+MU8rm2LgwPdoXde/5u3OmbVvc
	6Vgbt6ihKDtjVMwVMPDtylCvoyf+bu2jV0+d8xQqTrZpnzkihWVJ+rd6MPUJpTTxnoSIOUMTFmr9Q
	XhTTC+iuPUl3yhqH8fFssYTUaKlS+HgUacssgdpn4k9uTxDiSWFY0Izg6VOZXI7Bamy0eRUiGClyj
	5N/cE/i2EaTx7aYKvXhxBsnOpmNaxuSsvl+Y+y6qsZRIWkT+VAMiZkuW0SOWInvVZ99VFw8UvTmE8
	jIvxo58StqDVRfsdbiNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmX7H-00EoLv-Ul; Thu, 05 May 2022 08:45:44 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmX78-00EoJB-TL
 for linux-rockchip@lists.infradead.org; Thu, 05 May 2022 08:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1651740304;
 bh=xx/4O0ev2h+cTTB8VZtp7yVZgwGZrAIwxUX58uMFqq0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GeGv5ooBNOUCELJdyhcGPi5AxDeLQCnfHp3QiXcKhJzX3b9D8/fJcMn1t/ATvpd3E
 VUrTifK62rAZzyK3nwmHXtJb0DwDSl+bfLGvccxI8O9IytezT49YOQQD9lL4FIkamo
 fHsJ4HY+UhrAFI35Nh0sRUP3ViKytEhycutq0pQc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.208] ([217.61.145.208]) by web-mail.gmx.net
 (3c-app-gmx-bs47.server.lan [172.19.170.99]) (via HTTP); Thu, 5 May 2022
 10:45:03 +0200
MIME-Version: 1.0
Message-ID: <trinity-bfbffcba-d1ed-40f7-8f37-0c8ad9245e3c-1651740303894@3c-app-gmx-bs47>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, Benjamin
 Gaignard <benjamin.gaignard@collabora.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Aw: [PATCH v11 17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
Date: Thu, 5 May 2022 10:45:03 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220422072841.2206452-18-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-18-s.hauer@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:jhHeBB0cVrPpmyuSV8dkcZkfMMoOV6qVeNwsgrvv2BcHyrAD72naC0el219Z5ID+Z/Re/
 5cFt0p836fqtEg3/WBhTIHvozZg+qauPcPv2V/HiN+36OxKfXenbX8mkMkS9cP2hLcbpAH94/XF2
 Ee6ya9jarBvfYFc40yW1cB6jkU4h5+hrxI+2CoRz8QUdvDTl7CO0aKJbcxroi4icmuounMlaKfuM
 CBLLu9ZCJdj7X2zTm/5V/04h2hTpMkujwQRLAsZ33x0MlM6NRmewtbu3BWtKgTAXxCzJT8uuXB02
 xo=
X-UI-Out-Filterresults: notjunk:1;V03:K0:hc0JSv9jgAE=:bZXSWIrFTtqezeF/jRdgdZ
 NnwkpgZMZnJuCsrlkdUy8btjwq8ZoV/0Xpzcs13FWuCtYIPQ5ro64TS6dvgTFIyyJL2ZmtUJd
 DihkaR+cIKek7YXrjROayUF89hAclkSKAyqQ+HC51L+Pl0i4jY5UwJHPUGFX1dzVcPZMz72vT
 vKQmQ5AGX+Nda0LKrhWy7NRmp0WrhAmp6tamK/ijygEGCEntUpUImUs8v8eOB/ASyDfWEKEuM
 +I8gNabAR0sp3exIaWqR7m9GUtRzkJOAVgiM2tPqp8nuo0nhBDHyBUwqofFQ3T8QwXt9hQlwd
 aB2iYe9EjootdPpT72SaiouyXDQHLmoL0zo18RxhNnA0sGA7c+n4B699M70TcVmU7pT7czuV6
 8+Lyw+tnzm8iONWsrJS+rngS2zf0rTzq0TbZdHJUxZSZgF9Z26AfaDrOGBz0awRvW/rYrFb7M
 vZiYKM4W/6K1a5V5AecMf+c7wVgaXrJw6HgVztSLSs1IjEU1jIgfP/pKAk4/KrZxgvIm/PLTw
 1G9roRVpNQHHPORfBRHtEiQwUxMzYbcxKTikfPtOmRWGJyNtsMDSbucb9sd2dJoLS0MBotOMn
 h+x49mJ/hzTZvm97DeV3rKLun0mwW/ezhcQ9wX4BbcUQDCis79x/3UGtgCgaMIS6uEspEFSvJ
 mU+nX3CGpBFSV9b7n6woeUNzrIUThfayn+fcngw+HFO14azzOp7jZet2vblY8uB+Fpvh1YUuc
 mKfsXjtnm9WsaLRT4/uGFfzfZWLDY/JBRfYQhbqc4/sEj/1ZmeYZqOH4imOhm97W0keilCxFM
 eG5inPC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_014535_266131_26D44F7C 
X-CRM114-Status: GOOD (  10.44  )
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

Hi,

> Gesendet: Freitag, 22. April 2022 um 09:28 Uhr
> Von: "Sascha Hauer" <s.hauer@pengutronix.de>
> Betreff: [PATCH v11 17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
>
> Add support for the HDMI port found on RK3568.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>
> Notes:
>     Changes since v7:
>     - Rename hclk to niu

clock-name no more present since v9, see below

>     Changes since v5:
>     - Drop unnecessary #size-cells/#address-cells from nodes with only single endpoint
>
...
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -620,6 +620,38 @@ vop_mmu: iommu@fe043e00 {
>  		status = "disabled";
>  	};
>
> +	hdmi: hdmi@fe0a0000 {
> +		compatible = "rockchip,rk3568-dw-hdmi";
> +		reg = <0x0 0xfe0a0000 0x0 0x20000>;
> +		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru PCLK_HDMI_HOST>,
> +			 <&cru CLK_HDMI_SFR>,
> +			 <&cru CLK_HDMI_CEC>,
> +			 <&pmucru CLK_HDMI_REF>,
> +			 <&cru HCLK_VO>;
> +		clock-names = "iahb", "isfr", "cec", "ref";

noticed there are still 5 clocks, but only 4 clock-names. So i added "niu" after ref.
maybe missing clock-name was causing my iommu page-faults...on a quick test i have not got it,
but they came not every time.

what do you think?

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
> +		power-domains = <&power RK3568_PD_VO>;

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
