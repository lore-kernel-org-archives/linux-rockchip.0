Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01BD0C67861
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 14:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSti6S4DDFl7PjFG0MSpw0rcS1fLnBON6v41TbB+CFI=; b=w2xpU7bsbsFLOf
	Uikm6oeUPKozn+7bDQSfUGFac11tcGC3IaNSbZs1NHxCkFTlsm8LEfU4BLqLQqFYTWemanmHJacvm
	fe2RHGjXFv6JxqQ+Tt43s84hvI4KICtM0QgLlHBrovqN24Cq+sEEvjUflsQ67QEiqvUXJU+IACgCk
	kN45ykq/yNZt4WHZoqEuZ8Umj3IFw6pLa9TzzXZ9D8KnedMZ5yCtvPGZGnv++SggNWj6HMV3HYZhY
	JQ1m3i9E3ZlWnndPMzFU9RO9CVufpbklndsv1Xr/0u0gA/N3VJB4HBYChyQpbSIQIg02ocxZO6vnc
	q0Xz3iyAS/BuYw0iEUWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqFg-0000000FuxE-0iml;
	Mon, 08 Apr 2024 14:45:40 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqFa-0000000FuvC-0eLy
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Apr 2024 14:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1712587507;
 bh=iiUPPh2I4PeOMPRWiFfmL4G08QmAU+W5ckpVa9L6HE4=;
 b=jCcJYMXSIIryy79yWf0w5sCgwd1b2fXj6I984vWIIKNNuf4jJDqNeBS4VXTz+mQJJMrMkKfng
 RgSTfPxmSxohJ8uv93gNZTlvxOcO4Zk/qkk1kLj+rguyIMkTy00C1Fo4M2E3yitAvMsTMMs0fBp
 CIP2eHcOeIqAczNolaxHnq+UAP5Do16sVt7I74bdrvr6tda4+XUowcxr7hXpHFJAxa3cVrQFf45
 LeVSu5e5BVpPfIZhiQrjsP6EDNKtXYBr1nPVzlBfb+zDfRbO4MyloBTc1Xu19lJXpsV85zkAiXk
 7oK1mxti+r/ueeiVXiNH/4RcZ/24O0ACiYbISwPmcJng==
Message-ID: <421ab43b-ff92-41c6-9904-3c7681c926be@kwiboo.se>
Date: Mon, 8 Apr 2024 16:44:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable onboard spi flash for
 rock-3a
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240408124005.182565-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240408124005.182565-1-amadeus@jmu.edu.cn>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661402f23464f70b49a22d57
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_074536_720340_953DBCFB 
X-CRM114-Status: GOOD (  12.66  )
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

Hi Chukun,

On 2024-04-08 14:40, Chukun Pan wrote:
> There is a mx25u12835f spi flash on this board, enable it.
> 
> [    2.525805] spi-nor spi4.0: mx25u12835f (16384 Kbytes)
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index a5e974ea659e..d8738cc47c73 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -757,6 +757,18 @@ &sdmmc2 {
>  	status = "okay";
>  };
>  
> +&sfc {

This is missing:

	#address-cells = <1>;
	#size-cells = <0>;

> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0x0>;
> +		spi-max-frequency = <50000000>;

At least in U-Boot the spi clock only support 24, 100 or 200 mhz and I
am pretty sure the spi flash support 100mhz, so I would suggest you test
with 100mhz, same as used on other rk356x boards.

For U-Boot I have used 24 mhz for rk356x boards not defining a flash@0
node in linux device tree, such as the rock-3a board.

Regards,
Jonas

> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +	};
> +};
> +
>  &tsadc {
>  	rockchip,hw-tshut-mode = <1>;
>  	rockchip,hw-tshut-polarity = <0>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
