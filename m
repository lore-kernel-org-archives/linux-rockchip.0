Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A7CD66BA3
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 02:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oPk5fR30i5pyyKZe+vYm+hzWbY1W/mExQ/pDs5b5Eo=; b=WjXCdhsUbjkTWa
	S8+yG9+P3i0QNYQtCJ2NmtYsEvfFcC9kcnYOZDECOj2Ykl0IG3TsasuLRD30U2i4UL+iAOCV5AGVV
	9pJtIlmiqI6PkCjxqqgPSPnEL3GqTr8cdVCF9jyqyJReomLb/NSyg9NT7hvIlHr8JY97aNch4+jfm
	KScr4zkXZzb4j3ztFU1WANyJ4FIjSY4nRqwU+CuxJmrleEtlD7TMAVsF7fvfVH/0umYSN70PuSxvg
	9krnVk/H6WlmI2BCz3ob1rDuo0OE0Dk6XUsj0zGPtjapdXc/BFGVjdFQZwBgmhFM9TR6EDIQl4MAi
	hrc18NR6g3tvPI9i38HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tG7Rq-0000000C3Q4-2g0s;
	Wed, 27 Nov 2024 02:06:34 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tG7Rn-0000000C3PK-42bh
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Nov 2024 02:06:33 +0000
X-QQ-mid: bizesmtpip2t1732673137tz5qgoi
X-QQ-Originating-IP: ss3d7aByWau7jXBsjWQTmIJs556QpBH5oYBVOYxU8ks=
Received: from [IPV6:240f:10b:7440:1:6277:666f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 27 Nov 2024 10:05:32 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9966666961723898316
Message-ID: <9AA87B7AB00D6A42+d77ab055-e63a-48f8-a994-4b0b44f4acad@radxa.com>
Date: Wed, 27 Nov 2024 11:05:31 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for
 Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 cfsworks@gmail.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org, dsimic@manjaro.org
References: <20241119100813.78820-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241119100813.78820-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: N71rnkwxYMwykHLhv5oxYGBEkPi6KIUBBBrPt9Ad5qZYibh34epGFucV
	XFX7yYJ5itTH2nR5Rq42yQAmzhyQwDvJYTSfxyux3Ph98KIroS9xr4ux8RZWci8SZRW5ta0
	YY1Xxxsw4FL/zHWaSpja4bIfZgkjU+EHZf/WglV2xLflMsw5iuAd/o1FDKoHDyBpbq0wMAX
	GpZ9DZmWlLCbs1sgraN6qAkbnxDqCcWj8ys9tM/RM86KfBaLuaIo9/ghqZ1b1Ecdx++kyGW
	7wQQfcjWkxygBo6B7/ZOypmQhnQSmec1rp+RvGLLOMCCW//sbzhgonLFqo0eSG/0b4uxwM3
	IsVmHYkdDTAKT2kc/U3lxEeC6KtcNBkLcm8uvzJ+9tchXhArxEYpOLl5c2R7RGpPQfZi6Z5
	iifY1lbEryNMKKjc5u0kQxa0ptksPsU0rdj2KmQlP2QycVkqp9srh+jnVUILPdxRredL+6R
	PQEILEpws7x5F0RV7pOn5KWk5m2XvFaukj5AD7AvJKFkcfdiKLRNm/33x6iLtT5g/E9SLNZ
	tk84xHyJuJVSc1tb1Q2d5BjltgSgK8bHFnICnjotf4IMFL4Wy/R4nJubuCwwtz1ceOSsuov
	+ShuEdk3gAiintwo5Sh2WzQdM7eLv03SUR9Va3hw0qipNaTUdbx3ldNYXC/AabsDlvBmdMS
	jVr20anopMmRwjx3j8xFIvOfdh0x/N5nec1Gw7m2yCqHCCRpaIswyY3A9sfVQKTYye2p7Te
	1hq8IqSXQQ7mtlcQnRiZBs3jdjWCzGYHEIUvAbAZ6PK0EoNGddiSLljcy+JsUoxqgoWMaOF
	QmLzLZ/wd23SjPMDZ7r39ZwUupewHWOf0z+Er6PLi4Xfo6jW5IY5WGNg4CHDXpyfWtrJQd9
	6hfLi/ROqJXO8CeeNrih7v9tpEtghkgd2cdsFm+GuiVDXcwQx8OU6WVjYgveqMYBibHmQhd
	DkGc=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_180632_476504_2DFCB80E 
X-CRM114-Status: GOOD (  11.20  )
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

Hi,

can anyone test/review this patch series?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/19/24 19:08, FUKAUMI Naoki wrote:
> add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
> regulator.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - none
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 6da13b6b9a7b..b5460c179ef7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -88,7 +88,7 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
>   		vin-supply = <&vcc_sysin>;
>   	};
>   
> -	vcc5v_dcin: regulator-vcc5v-dcin {
> +	vcc5v_dcin: dcin: regulator-vcc5v-dcin {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc5v_dcin";
>   		regulator-always-on;
> @@ -170,7 +170,7 @@ vcc_sysin: regulator-vcc-sysin {
>   		regulator-boot-on;
>   		regulator-min-microvolt = <5000000>;
>   		regulator-max-microvolt = <5000000>;
> -		vin-supply = <&vcc5v_dcin>;
> +		vin-supply = <&dcin>;
>   	};
>   
>   	vcca: regulator-vcca {



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
