Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96571CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 14:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/RQGh/bVZYIK6Nc6lCPHOeDQGk1xU0zE3Rzvktqv50=; b=QQK5CXtmA9vb+X
	rtSVoVWke1qTsHvf4sqRtz4W2l7W7BUi+9+Szsn9dQi/VycNLIHEWzlB1JgUcduI6V1v9YFNE1vyy
	RXQubMId9Zoa2j9qUcpyOxCmF9tJtyChDQJ6KwCYTn7h6myGu815Eq+ra7E7oOZb9I0llo9Noww7z
	ESv19x2tuxTK+JWSENenri7dON5jZcNNDOUGSdu5TCZNdiq00N/U7tYm82fszgqi8/p23d4ssLLxX
	aQ7HJq2RGfxd/kX2NuyKRAATqZ1G9s1qYB3n65zMIud2FjfePgT7OmddzslXgjgf/y9BuL+fhaif2
	MlTkFEDGweFskQ+cftrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDl34-0000000G7Uj-0Aw5;
	Tue, 28 Oct 2025 14:51:46 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDl31-0000000G7St-42Zo
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 14:51:45 +0000
X-QQ-mid: zesmtpip3t1761663048t634afc42
X-QQ-Originating-IP: N3D2Y/ycKWBHdmH0R78SWRdM4s9dXaooUn9/4ftBn5o=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 22:50:41 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10947994854737333038
Message-ID: <8DBE8BDF78244903+c3dab9f1-e7ae-484f-8a8b-ae3454543117@radxa.com>
Date: Tue, 28 Oct 2025 23:50:40 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5B+/5T
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
 nicolas.frattaroli@collabora.com, damon.ding@rock-chips.com,
 jbx6244@gmail.com, detlev.casanova@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251028115040.101156-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251028115040.101156-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OGRTx1KypL8C6viJQdislXAbYoJzKs+h1JUl03U0q96bmTZMM6UG/3Gy
	SH8B3qweTbg638h+WFD6H3GQVO7DShPqfl0uvpHxJa7nQWXnKwvkSHkSMTZaM0h+pMzQpVt
	1xBKVeMv5rQ8lhpXWTsD1GHIRZY3mkEzW84fF42JPubGptSwa4BrXCQ5OQwd9rjyvNybF7w
	7VJeJhe3UxFlrC39YeSRtooxVLrC85wOrvc0yBmKFVBuXeIWwViEVcf/Rcx6yJvsNiRSsYW
	4VbipTtV68lUx4PjpPBYo/FgMl0WeUYvRLJlC3Qu6ysL1qOW5c74ixq2mphOGTaQlJYfarY
	w83MQTg5EMCEjwirCsFHwgjBexEgZ0cIylajsJKZxPGJ7QdcBSj75kmor4HU9MB1PdChT/k
	2wn+nuWwLXtlPQj/tcqPA8VvzsGIOFQS80w9gvMejPQcNHayRS+cAHCEivBXANY79SyVYJQ
	v2vuMUubsXiOh9LWJlXp+3IniJ6J6dR9IkNVR4gyQP/IcZNQiDi/1JR5acP6ncrcIT861XI
	pJwU7Hc9AynIi2X0GqC3J+YpvffDmoyRaBr7ZvaHEAEadI9YFlqnA1gBeLILss+Nar8KYDs
	P9Ryu8uguCGa+QWQBTtjJaTuv4z2mGF2TFNr+IObYymXCYJ3KFuhV235TxkeGl0LMl7teDr
	UBFAD+/DEbwmLqkY/mti3aUthDCn42+O7t9VmJODrwsxmSgjzSjjT4Otd6Kdt36I9j8nGbU
	gYO59SxPoxSXR8v+lHYZqrtZWrrYT4rtxCvnP0Tps8Q13GSTAMwLkI1aWdN8wn7YO9F0OHF
	xFio9pI+aXK4JQU1y6b0OfJti2kMTRkuClmy30kXS8VQxlpxH/Vym3IpVEMCQqud2vwtTB7
	WBKS1FJkefjNrh0jol/8+3vXxhJQQj2WPtjusOPpiFNl39SebCwpoMYVQrQclfYcjGoEyNB
	PKLfMqReX2O9GxOfou2SbhC4mkGwlyIbxmgo=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_075144_398153_4FD50FEE 
X-CRM114-Status: GOOD (  19.44  )
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

On 10/28/25 20:50, FUKAUMI Naoki wrote:
> The USB Type-C port on the Radxa ROCK 5B+/5T supports Dual-Role-Data
> and Dual-Role-Power. However, currently it cannot operate as host/
> source.
> 
> By setting "power-role" to "dual" (along with adding related
> properties), the power role can operate as source and the data role
> can operate as host.
> 
> Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
> device's orientation is reverse, the root port is detected but the
> device itself is not. This must be addressed separately.
> (USB 2.0/1.1 devices operate even in reverse orientation.)
> 
> Furthermore, this file is also used by the Radxa ROCK 5B, but the
> Type-C port cannot operate as a host regardless of this fix. This must
> also be addressed separately.
> 
> Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> index 3bbe78810ec6f..b77c5a8229e75 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> @@ -331,12 +331,14 @@ usb_con: connector {
>   			data-role = "dual";
>   			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
>   			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
> -			power-role = "sink";
> +			power-role = "dual";

Ah, this shouldn't be applied for ROCK 5B (which is only "sink").
I will revise the patch to target only ROCK 5B+/5T.

By the way, even without applying this fix, the Type-C port on the ROCK 
5B still won't work as a host. The kernel outputs the following message:

i2c 4-0022: deferred probe pending: typec_fusb302: cannot register tcpm port

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>   			try-power-role = "sink";
>   			op-sink-microwatt = <1000000>;
>   			sink-pdos =
>   				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
>   				<PDO_VAR(5000, 20000, 5000)>;
> +			source-pdos =
> +				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
>   
>   			altmodes {
>   				displayport {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
