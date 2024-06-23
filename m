Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5700DC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 11:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=445zl8sRvj+MD8wqjlA5YOeclUt7Czl+MwhbZdiYDrs=; b=LeIxvyU8ZC9nCGgZ7kn4WUjra5
	jQrLsSpwyKC7XaPxG+jupLRVuzCQr2tdO7iVayVRSwfOq3mYoIHvqDQq6/AuOgGDgGtGupjvcHANo
	M6g4aYMjCwjuPDfVBQ/OEGy2JHsMs8fd7K5CC/N6r2PsonLp+xyME77yngwbRun92Qp9x0i4z4TRV
	0tukAhdD55QvvXNwYcxl17Te4hIFYTdsQzgtPkM+o8ey0lG+6+HV45ARG+EEUEVcKLClzEtssaykt
	kxeNKylkJ/2kUbHWBBKWeChNyEjGXECYffCxk82KIYW96mdDiy2Ik+ERvc6ecBrODnVLHUwMNxxFq
	Sce9dRoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLRR-0000000DtWa-2Wq3;
	Sun, 23 Jun 2024 11:31:29 +0000
Received: from out-172.mta1.migadu.com ([95.215.58.172])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLRL-0000000DtVD-0W6l
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 11:31:26 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1719142277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5sGngLZBqkAE79iidbqyoVY0tRIQ64K5ocj/t6ME7os=;
	b=Rw5BM7beOxfAOo/M/g9Y90xdI/WXTSgfKd8Vcc4N06yn0AbYNv+tyhjF5g/VKBygh3VFk7
	5HGGA+ys9qIY/QpCe60KRNBmHBeu0+yWvbouknppNGdtdjOF6McYoQw+lr37zV7sMlSJmu
	Dk7iGGJOo7gFSWl7O1hsqDOIWObEAqpzAVX0Wc8QAxXi3ja2jWyUBzVKpZxq2ja34Oym5J
	MO/2rn6/MhuyZ7CH/dzqjGf9fFq/darjJ4bWPYBclob7uiCm5mD5FbFNc/sOOyRPfVMdIG
	X0KIwqedDvCxcbBM2U8S73oLAbSLXqMIjPqf36lk8/fln+2QTs8MB2Ej5G6Teg==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: andyshrk@163.com
X-Envelope-To: andyshrk@163.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andyshrk@163.com>,
 Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi 4B
Date: Sun, 23 Jun 2024 13:31:02 +0200
Message-ID: <2771372.9AS07kTVam@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240623083413.2051412-1-andyshrk@163.com>
References: <20240623083413.2051412-1-andyshrk@163.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_043123_907871_94ECEBD5 
X-CRM114-Status: GOOD (  14.75  )
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
Content-Type: multipart/mixed; boundary="===============1501740862733881527=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1501740862733881527==
Content-Type: multipart/signed; boundary="nextPart4155544.U3QUcyqSlJ";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4155544.U3QUcyqSlJ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Date: Sun, 23 Jun 2024 13:31:02 +0200
Message-ID: <2771372.9AS07kTVam@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240623083413.2051412-1-andyshrk@163.com>
References: <20240623083413.2051412-1-andyshrk@163.com>
MIME-Version: 1.0

On Sunday, 23 June 2024 10:34:13 CEST Andy Yan wrote:
> According to the hardware design, the i2c address of audio codec es8316
> on Cool Pi 4B is 0x10.
> 
> ...
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts index
> 20a0a60acd16..091dee37d068 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> @@ -302,7 +302,7 @@ &i2c7 {
> 
>  	es8316: audio-codec@11 {

Shouldn't this be `@10` then too?

>  		compatible = "everest,es8316";
> -		reg = <0x11>;
> +		reg = <0x10>;
>  		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
>  		assigned-clock-rates = <12288000>;
>  		clocks = <&cru I2S0_8CH_MCLKOUT>;


--nextPart4155544.U3QUcyqSlJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZngHdgAKCRDXblvOeH7b
bt3oAQCII30iQ/sfgohv2r+DOosF7UhIE+8oOtI6S/ypnnR5ewD+JVcYqudfLmEs
OWE4JSAnFwNwXgGsOr8QJFLcDpI25gc=
=MCtm
-----END PGP SIGNATURE-----

--nextPart4155544.U3QUcyqSlJ--





--===============1501740862733881527==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1501740862733881527==--




