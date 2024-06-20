Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ABD8C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 18:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoZXqMYOfebxrBIEPN2AtKrq+/LuZoTRqnfo0atUoAM=; b=BUinuTtiKtfWN3
	mB7q+e8pjcLs5QeoTSG3NchshMpLBgbzwS3/N1MCuAl/TcZn4yJbPBsLWI7jOH+LmLIkBskWuX1+J
	pfDITQAgLCdy+ubIHJsDHZX4VKty3jEtgnEbFVAUadG21XmtQNMXBVqEAgxtW7bo82a9QTROMbCIV
	iqnXl6gXmG5RN32kaK12c1Td0TgNaZ9mqVzgvw3qvH+bn5Pou53jxJAvl9xXRbhuw3A1UXAR11lpK
	helLtIcGH8opkRstWsfDh/LmzqbQPUtk0upI+pmyRMYmT0CLR1IPOiJT0WNUv/b2PnX8oJWboRFVo
	1nh0ECoedT8LG8Jm8+HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKMca-00000006K58-2w0m;
	Thu, 20 Jun 2024 18:34:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKMcW-00000006K3q-1XnH;
	Thu, 20 Jun 2024 18:34:54 +0000
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKMcT-0000Sm-1A; Thu, 20 Jun 2024 20:34:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Kropatsch <seb-dev@mail.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: rockchip: Add common definitions for NanoPi R6C
 and R6S
Date: Thu, 20 Jun 2024 20:34:47 +0200
Message-ID: <3392879.RL5eaSpR8r@diego>
In-Reply-To: <20240612205056.397204-2-seb-dev@mail.de>
References: <20240612205056.397204-1-seb-dev@mail.de>
 <20240612205056.397204-2-seb-dev@mail.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_113452_539787_4FCB1A28 
X-CRM114-Status: GOOD (  21.41  )
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

Am Mittwoch, 12. Juni 2024, 22:48:10 CEST schrieb Sebastian Kropatsch:
> The FriendlyElec NanoPi R6C and R6S are quite similar boards,
> although they differ in:
> - M.2 M-Key connector vs second RTL8125BG Ethernet port
> - One of the LEDs has a different function on each board
> - 12-pin GPIO FPC vs 30-pin GPIO header
> - R6S has a PWM-based IR receiver while the R6C has not
> - R6S has a 5V fan connector while the R6C has not
> 
> Refactor their DT files by adding a common definitions file to
> improve differentiation clarity between both boards and to make
> hardware-specific DT changes easier in the long run.
> Do not introduce any functional changes.
> 
> Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
> ---
>  ...-nanopi-r6s.dts => rk3588s-nanopi-r6.dtsi} |   7 +-
>  .../boot/dts/rockchip/rk3588s-nanopi-r6c.dts  |   2 +-
>  .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  | 756 +-----------------
>  3 files changed, 7 insertions(+), 758 deletions(-)
>  copy arch/arm64/boot/dts/rockchip/{rk3588s-nanopi-r6s.dts => rk3588s-nanopi-r6.dtsi} (99%)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> similarity index 99%
> copy from arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
> copy to arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> index 4fa644ae510c..e68d4071400e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> @@ -1,4 +1,7 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Common devicetree definitions for the NanoPi R6C and R6S
> + */
>  
>  /dts-v1/;
>  
> @@ -8,9 +11,6 @@
>  #include "rk3588s.dtsi"
>  
>  / {
> -	model = "FriendlyElec NanoPi R6S";
> -	compatible = "friendlyarm,nanopi-r6s", "rockchip,rk3588s";
> -
>  	aliases {
>  		ethernet0 = &gmac1;
>  		mmc0 = &sdmmc;
> @@ -74,7 +74,6 @@ lan1_led: led-2 {
>  		};
>  
>  		lan2_led: led-3 {
> -			label = "lan2_led";
>  			gpios = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&lan2_led_pin>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
> index 497bbb57071f..ccc5e4627517 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
> @@ -2,7 +2,7 @@
>  
>  /dts-v1/;
>  
> -#include "rk3588s-nanopi-r6s.dts"
> +#include "rk3588s-nanopi-r6.dtsi"
>  
>  / {
>  	model = "FriendlyElec NanoPi R6C";

you didn't add a label for that led here.

Though I think it might very well be much nicer to just define the led
with differing function in each board separately.

Especially as the phandle in the new dtsi now still reference the removed
label.


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
