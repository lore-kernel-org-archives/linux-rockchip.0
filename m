Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16319C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 15:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6hzXJDdEP3zUsbMYkx8hR4Wh8DDqRxJnFJ0k9lWAso=; b=14siO+wh6GWWp9
	e/S9hfscnBgKDFIv+UIUKRPPoULnsTH3UpcRezrvktssKLahfUJa/CnLHGUFeEv+NVVRf0ESnKNA5
	yktEp7jzBtaklxJf5VmcDYHSb14I0HyRAOsjxTn4qVmVWztPHvSOKGjdMQ0AHl0D11flro0thMa0f
	/IktvAqPGRJ6cF0nh0PQgiijFwwCfC2NhkyGwDVpegX04tc3BOL+ScXm6zOS6DsoF82qHlvxIk3Yf
	oWjGrWFhj5iyCEg/IJm/5sj/mZdjiwb0d6DnSZUPNZf6MjfwTZ06Df3GJ3z3zwaeNRTWx7P+kV59g
	WyMrHgRT/uBogM9GY9bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romVL-00000000ZL9-03zJ;
	Mon, 25 Mar 2024 15:44:55 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romVC-00000000ZHQ-49x6
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 15:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711381484;
	bh=p6elCi+U91QoAFAv5OeSOQpHEUSS0AUEz76zcbg2hA0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PYdCrYRPfIizad0x8XJj4QyrkCvECXuEjXXWbP0AvprmmFOzPOap5u9xcrwYZDysS
	 yPpSyA85aJfTBU4XzfhA+CJDo3mX2S4aiNSlZdVEBhua1kJhCmLEJoXOJotemXE6gm
	 OHtw1pGPBMTfl+Mp38Fv7BFU7jwPEaAbbb9O6g+r2JdXsMtZLFtAOEzUvjglnlw5rp
	 lF0ysROvSqj4yonmLH2KAknuStT9vGsOB2LkHK0HDFbdn9A97TnWVcvZ+GWPH7Lk78
	 vgnSN0Zr61wN3O7/eCyX1XD2x1EMW6WIaFQkkGWgektmkkCQZBYqK3s/IACjsJINrO
	 h4YbokDZkcmaQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6617A37813B7;
	Mon, 25 Mar 2024 15:44:43 +0000 (UTC)
Date: Mon, 25 Mar 2024 16:44:41 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v1 3/4] arm64: dts: rockchip: rk3588-rock5b: Enable GPU
Message-ID: <20240325164441.1dab4018@collabora.com>
In-Reply-To: <20240325153850.189128-4-sebastian.reichel@collabora.com>
References: <20240325153850.189128-1-sebastian.reichel@collabora.com>
	<20240325153850.189128-4-sebastian.reichel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_084447_782876_20EC4EF6 
X-CRM114-Status: GOOD (  16.72  )
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

On Mon, 25 Mar 2024 16:37:20 +0100
Sebastian Reichel <sebastian.reichel@collabora.com> wrote:

> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Enable the Mali GPU in the Rock 5B.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>

I don't remember writing this patch ;-), maybe I screwed authorship at
some point, dunno.

> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 1fe8b2a0ed75..096ee7a98b89 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -180,6 +180,11 @@ &cpu_l3 {
>  	cpu-supply = <&vdd_cpu_lit_s0>;
>  };
>  
> +&gpu {
> +	mali-supply = <&vdd_gpu_s0>;
> +	status = "okay";
> +};
> +
>  &i2c0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c0m2_xfer>;
> @@ -470,6 +475,7 @@ rk806_dvs3_null: dvs3-null-pins {
>  
>  		regulators {
>  			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
> +				regulator-always-on;

Hm, should we mention why the regulator is always on here?

>  				regulator-boot-on;
>  				regulator-min-microvolt = <550000>;
>  				regulator-max-microvolt = <950000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
