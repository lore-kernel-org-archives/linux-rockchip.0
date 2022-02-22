Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E10C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 23:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMUytCHg72jG8LMgJ1GnEGoZosEsSc6VGhImez8VEH0=; b=rrT/sMcKIVbTgw
	QZQfVjjXL/E/TEoYrHZ/l3h4YcS6pi8ddKkRI3mEGjV8QT17icYcMSrh5QAqwt1STp3gJ8NQRnIm/
	pRb/ux74e/cK6MNCunYAFvkjNk2fBoTItr18XeQ+SbxceicrsaKONEd12FiNA+R7ipaYQAyG3oTFH
	vjX1/pUNkVBoIiVZRhGydDfhldf+rmRDoiPmBtq8Qtrq0wtBsOSfwX22LwRBQdL+n0qyBxl3o17qP
	yisoefZeU7NfddBYDIhRa+7yAb8PfEetYhVJpITcssjqUnh7nKrye2eyDVBA0o1Tq/AYRJwn0fY91
	h28rShogRCC0+Wd63zuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMeJg-00Bs3P-3H; Tue, 22 Feb 2022 23:11:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMeJQ-00Bs1X-L5; Tue, 22 Feb 2022 23:11:22 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nMeJN-0006se-UC; Wed, 23 Feb 2022 00:11:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, Liang Chen <cl@rock-chips.com>,
 frank-w@public-files.de
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: enable rk809 audio codec on the
 rk3568 evb1
Date: Wed, 23 Feb 2022 00:11:12 +0100
Message-ID: <3287619.yDqD7nnjd0@phil>
In-Reply-To: <20220222175004.1308990-2-michael.riesch@wolfvision.net>
References: <20220222175004.1308990-1-michael.riesch@wolfvision.net>
 <20220222175004.1308990-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_151116_744631_7CDB46D5 
X-CRM114-Status: GOOD (  13.85  )
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

Am Dienstag, 22. Februar 2022, 18:50:04 CET schrieb Michael Riesch:
> Enable the Rockchip RK809 audio codec on the Rockchip RK3568
> EVB1. This requires the VCCIO_ACODEC voltage regulator to be set
> to always on.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>

[...]

> @@ -282,6 +301,7 @@ regulator-state-mem {
>  
>  			vccio_acodec: LDO_REG4 {
>  				regulator-name = "vccio_acodec";
> +				regulator-always-on;

As this seems to supply the codec (in the rk809?) shouldn't the
sound part model that relationship and handle regulators
instead of requiring an arbitary regulator to be always on?


Heiko

>  				regulator-min-microvolt = <3300000>;
>  				regulator-max-microvolt = <3300000>;
>  
> @@ -366,6 +386,10 @@ regulator-state-mem {
>  				};
>  			};
>  		};
> +
> +		codec {
> +			mic-in-differential;
> +		};
>  	};
>  };
>  
> @@ -386,6 +410,11 @@ touchscreen0: goodix@14 {
>  	};
>  };
>  
> +&i2s1_8ch {
> +	rockchip,trcm-sync-tx-only;
> +	status = "okay";
> +};
> +
>  &mdio0 {
>  	rgmii_phy0: ethernet-phy@0 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
