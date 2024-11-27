Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AD7FD609B9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 09:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhlyRNqxm3GaPVF+ylmZpPA6hHdW2n+DUx8swAYJ1FE=; b=AfeZmnLTm7rDVl
	2Un00xF2/WRzIvJELyFgl/lmPBRnunfc46sKJadmymwX/ytWEtlG+zQl/yyOmJGh1CGg9Mi+14Kyz
	x84hdC8T8qn23aiB69tQrU7ZQKo/SBkWoh6weqXoGtQyhwzpxY+Q/JJ98bfFzkhNLY1a/yjIwmiLL
	X73MP7A6lKvWkEnUooz2S6zlwVm0LBMsB6/zP62Cm7uBQbC475mixVPXPCDd2TNWvK1e72esXt468
	bnhGGSZpYF9DqLXV1k7QBh7Pce2BJnlaqnG5fcsIpfzE62u9k9aeEs0fQ9kouM0mjTiKB8TdGYCHe
	6ooFnRi4ca16dqHvg6zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGDxl-0000000Ceak-3pkX;
	Wed, 27 Nov 2024 09:03:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGDwm-0000000CeRv-3zfE;
	Wed, 27 Nov 2024 09:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5xYFbeCB+e6OAmBPgxWC1aBOZF+pwN3ehhO4OEzGRVY=; b=ewjAQr6UFywEDO7kuHOtJAXJTt
	Un7LL0hV4c1nn5RZMNaYxHVlfYH/LxT3YT0sQyOWXirqP0w1jEXIvcg92jxatSJi63+64knMALY6g
	o2QKO8YUL2JmZRdqIawTGYEjr/26SfJxCmax2fL0JijP/sOBm3xGHX1F9xU0qMx6fV9OXv35DuP3E
	8aORms2QZEMV9dc/U3TZgO3NegubmyiyoPcmKa6uEop9Llx3NeldkIvfi6uYj5NHf4WyENHeI/Xo4
	rb3Rqni2lHGw1SarKUr4ttOM9MLAwLtrkw7bhTyey7kv1F4HeFZGLmvwxv7uuItq4bhq6ye0/tw1x
	8MDzd7LQ==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tGDwd-0006eh-Pp; Wed, 27 Nov 2024 10:02:47 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 10/10] arch64: dts: rockchip: Enable eDP0 display on RK3588S
 EVB1 board
Date: Wed, 27 Nov 2024 10:02:46 +0100
Message-ID: <2485598.jE0xQCEvom@diego>
In-Reply-To: <20241127075157.856029-11-damon.ding@rock-chips.com>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <20241127075157.856029-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_010257_011767_61AFE5F4 
X-CRM114-Status: GOOD (  15.35  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Damon,

Am Mittwoch, 27. November 2024, 08:51:57 CET schrieb Damon Ding:
> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 84 +++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> index bc4077575beb..67c2e6d1bece 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
>  
> @@ -116,10 +117,56 @@ masterdai: simple-audio-card,codec {
>  
>  	backlight: backlight {
>  		compatible = "pwm-backlight";
> +		brightness-levels = <
> +			  0   1   2   3   4   5   6   7
> +			  8   9  10  11  12  13  14  15
> +			 16  17  18  19  20  21  22  23
> +			 24  25  26  27  28  29  30  31
> +			 32  33  34  35  36  37  38  39
> +			 40  41  42  43  44  45  46  47
> +			 48  49  50  51  52  53  54  55
> +			 56  57  58  59  60  61  62  63
> +			 64  65  66  67  68  69  70  71
> +			 72  73  74  75  76  77  78  79
> +			 80  81  82  83  84  85  86  87
> +			 88  89  90  91  92  93  94  95
> +			 96  97  98  99 100 101 102 103
> +			104 105 106 107 108 109 110 111
> +			112 113 114 115 116 117 118 119
> +			120 121 122 123 124 125 126 127
> +			128 129 130 131 132 133 134 135
> +			136 137 138 139 140 141 142 143
> +			144 145 146 147 148 149 150 151
> +			152 153 154 155 156 157 158 159
> +			160 161 162 163 164 165 166 167
> +			168 169 170 171 172 173 174 175
> +			176 177 178 179 180 181 182 183
> +			184 185 186 187 188 189 190 191
> +			192 193 194 195 196 197 198 199
> +			200 201 202 203 204 205 206 207
> +			208 209 210 211 212 213 214 215
> +			216 217 218 219 220 221 222 223
> +			224 225 226 227 228 229 230 231
> +			232 233 234 235 236 237 238 239
> +			240 241 242 243 244 245 246 247
> +			248 249 250 251 252 253 254 255>;

manual brightness-levels shouldn't be needed anymore and the backlight
can create those automatically.

So both the brightness-levels and default-brightness-level should be able
to go away?

> +		default-brightness-level = <200>;
>  		power-supply = <&vcc3v3_lcd_edp>;
>  		pwms = <&pwm12 0 25000 0>;
>  	};
>  


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
