Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD2D0CF6ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 10:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0MTnny2s766BxNf+2Esh2DFoJomHeVAipCnkIyi2yo=; b=DtsIJKKv6L9pnA
	7N2II8wau/QNg62uTyPdjeJH4tOUfE+tufhbPEpsLqtAMkQWAvFroJ4k5ZRCkANJNnAfciD5ersfF
	y0EFy+RhxXo5X++S5eSHVUIcptO4ABCp5AHdrE3gzsG3Qu+rWebVRbI+ztmYKMQcBb5LSy3XATI3L
	rBS0M98/q4hqkkUhYFpEZV0sFrYoAfpeMR5IEeJDhbwMaSXuR3mX8FqIdZ6nOi3nLgS+AEhoCO1j1
	bcA/Oe0i1BIevv53ZczwFjv3Zljz3TkeIe2IA5jHO6z/Z5VCJYTEr2gu6mw7zQA1o+kLz+m52A2Gd
	We9PitA1gESrbQ59MScg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdn5l-0000000Gask-36pR;
	Thu, 08 Jan 2026 10:18:09 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdn5g-0000000GakD-3whS;
	Thu, 08 Jan 2026 10:18:08 +0000
X-QQ-mid: esmtpgz11t1767867447t17b301d6
X-QQ-Originating-IP: iimORQ95rju0zXekm8eBvwFRScDDDgqOrWF9LwG6wVM=
Received: from [192.168.254.128] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 08 Jan 2026 18:17:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14971943080650209670
Message-ID: <6547200DD4E67155+b1fb1848-2f11-4b3e-b556-9386373d23f1@radxa.com>
Date: Thu, 8 Jan 2026 19:17:23 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: remove RTC for Radxa E52C
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260108100000.110354-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20260108100000.110354-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OBDSLDo3By90tSlGmy9itwqN9NO9G4orDi6CCHIg+yJu1ZI4NLnO+pE6
	NihuOgs14xcpbS1S5UCs1HA/ODBaPOzxPS6t2YPv8tQDyqo3FmsLq0d+iEX0+pqORjABZzk
	B/1emMPqePZOBq8uz7ewvv4sBMaP7S/p3pwI83dV7wVzznaZj/JF8DuhC+emESvtUjlvw/5
	dI05lask40L/IjXWuA5sdf0sgWaQtfUh0JXsojyqWm31/polJvQMmWxzv9XjvI47pjv5gSS
	DBRWnYhsEqOac5hwq10xVDBmVCAqZ265iotQGPffMrPKICoX9OCwLoDig83x44d8giBTEyg
	HsnXzmQM5SEFqTXAlYCmyK4hVLtDohU3OeBYEaYjZygj/rS2jLmBs4+JE4szLFGixhKXLxl
	64yAO6tRJXQUnnjQsTIGHlhda2qV2tRmSVIB2/ZAnRL8mW/wDmAoS3q5iSJ/n00MHsqvKN7
	M2Jd/MX8ICxsdjPiIo/+PmhktKCTCp64N8sZfRm/dPFTSx/6arEeIcjvkauCJ0rcAwWGP/q
	g5QzNXxPVLiCepEyeKKwu2418tarr3AG22bVdDrjmgrdpckAleU5IhNvsrze9FdLQ/dsb3I
	/3xEOTgsOutj0sUTVCD+/sOqtjK0kPGb+yZCCziwqpVOJDJcHHVJ7r7byRIICehJKq+ZU9M
	rZN+vCt7E5tSrKbC3QPUXw6Ftent63p+kIwDaamIoWcvZHzoJ2UG4WzrHhMfib7joU2Zodh
	zGGcwL1OdWrTkyvvY0W776uxvdr4H+Wpht/Iqfj57IZcjAe28TgVYwBo8KS7zRc1sxaMv8U
	/M9MM4tOyHqVv4fxtuvC03qJfkNOezc+LQUSSkrtHCdcAhyOoHraG31Mls/QaI6PurBWZLK
	sGlX5ork/5hPmV7AYQb1nrY0YLdOU8XvYTVwEJcdkriGe67+2kqZQn20sjL7/xIHIvTrNNY
	OcFa9tTyxn2Uxg4S8tB8D/JoQO2vDPVKlXPVzp1tt/OFgrw==
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_021806_969875_97CC66D6 
X-CRM114-Status: GOOD (  12.48  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chukun,

On 1/8/26 19:00, Chukun Pan wrote:
> According to the Radxa E52C Schematic [1], both the i2c5 bus and the
> hym8563 chip are marked as NC. Remove them to avoid the following log:
> 
> rtc-hym8563 5-0051: could not init device, -110
> rtc-hym8563 5-0051: probe with driver rtc-hym8563 failed with error -110
> 
> [1] https://dl.radxa.com/e/e52c/hw/radxa_e52c_v1.2_schematic.pdf

V1.209 and later should have RTC. What version do you have?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Fixes: 9be4171219b6 ("arm64: dts: rockchip: Add Radxa E52C")
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>   .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 24 -------------------
>   1 file changed, 24 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> index 854c118418eb..c24ff264cae2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> @@ -266,24 +266,6 @@ regulator-state-mem {
>   	};
>   };
>   
> -&i2c5 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c5m2_xfer>;
> -	status = "okay";
> -
> -	rtc@51 {
> -		compatible = "haoyu,hym8563";
> -		reg = <0x51>;
> -		#clock-cells = <0>;
> -		clock-output-names = "rtcic_32kout";
> -		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&rtc_int_l>;
> -		wakeup-source;
> -	};
> -};
> -
>   &pcie2x1l1 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&pcie20x1_1_perstn_m1>;
> @@ -329,12 +311,6 @@ vcc_5v0_pwren_h: vcc-5v0-pwren-h {
>   		};
>   	};
>   
> -	rtc {
> -		rtc_int_l: rtc-int-l {
> -			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -	};
> -
>   	usb {
>   		usb_otg_pwren_h: usb-otg-pwren-h {
>   			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
