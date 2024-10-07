Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B4DCFB446
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 15:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KBduLhzAptrzG6ow2Pnn5uRIpZEGhV+BYVuQe82/5dM=; b=eH/dIFc9LXYXOLGlWm8AwtqQx0
	N/rNQ68lx2/IRPqEOR9iTzAxB+YWOJUxwrOcwdPBb6H7NFWV3GYG0MK4QPuUWRjbfW2mL/77yBByS
	98uMPowTZo5DEJWz3ZCQJImHhRQXoh5hi4vVVL2bdFYgjqlOAr+daMuqQ8puhs92LHsdeC+shy0Vf
	s1whguEBKtPUzzSNvKOExVfMPi/MwK3KEW37eN9ZXK8na/0lf79hde79FBIgO4KW7a7zGHQ2MQiVg
	u2iMJyP7FNTTfhDChnNZ2cJFpP0y8/3mn0OxBLM+hMFSTiVc3MtBgttq/jWe0LO9BWwsv1xTyO0L9
	iJDvvUfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxphs-00000002xKV-2MV5;
	Mon, 07 Oct 2024 15:31:32 +0000
Received: from out-180.mta0.migadu.com ([2001:41d0:1004:224b::b4])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpdn-00000002vxR-2AFT
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 15:27:31 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728314835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yAd5jiIqXKi0gbyJVYnCih0IIWJ9F3v+KMLrZ7QsIZE=;
	b=IkcZZuPnzzcdR7ThUJ9tVZT+zIQrRONPJj80CtBSyx4Nka87PQmf3d7TTayDvGMhJOrRFW
	3DKHJxFRfo1JUTRUgZ0kqzzEZcYwaiJiSuYyhsx/7EJRR62CI9f26xxZDTtfU0/NKH5i+e
	cp9Sf380MPlQSfewQFJhY+z8wjUR+aQMnv1m3voejAsvrS6Dmk0upfSAV39BBhq8IE2vuk
	nv8nxAOQVmqf4G7X++sLaIFPfyWyfVk0I4TmnONZ6+c8+vi/HMxcQipCqe2N35Fc1kAjue
	lotU3ihC/mlozxlP+CpnvkcJYXhBGAWxV8s09/AwsJ5GW+DTSu6IRXc7gxJifQ==
Date: Mon, 07 Oct 2024 17:27:12 +0200
Message-Id: <D4POH599C91R.OQUBX190GASQ@cknow.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "Andy Yan" <andyshrk@163.com>, "Diederik de Haas" <didi.debian@cknow.org>
Subject: Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on
 rk3566 box demo
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, <linux-rockchip@lists.infradead.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-6-heiko@sntech.de>
In-Reply-To: <20240930210112.1993625-6-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_082720_184668_E2A0C884 
X-CRM114-Status: GOOD (  14.49  )
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
Content-Type: multipart/mixed; boundary="===============6298852809774203714=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6298852809774203714==
Content-Type: multipart/signed;
 boundary=4d62d13e81e3eae288851ed4485f386e347fd7fa62a06ad0cf65806ae49b;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--4d62d13e81e3eae288851ed4485f386e347fd7fa62a06ad0cf65806ae49b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> The expected clock-name is different (ext_clock -> extclk) and the wakeup

According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor of
'txco', so it seems better to use that?
Same would be true for Rock960 boards (patch 6 of this series).

Cheers,
  Diederik

> gpio properties are named differently when changing from vendor-tree to
> mainline. So fix those to match the binding.
>
> Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 b=
ox demo board")
> Cc: Andy Yan <andyshrk@163.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm6=
4/boot/dts/rockchip/rk3566-box-demo.dts
> index 0c18406e4c59..dd6fe964d618 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> @@ -449,9 +449,9 @@ &uart1 {
>  	bluetooth {
>  		compatible =3D "brcm,bcm43438-bt";
>  		clocks =3D <&pmucru CLK_RTC_32K>;
> -		clock-names =3D "ext_clock";
> -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +		clock-names =3D "extclk";
> +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
>  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;


--4d62d13e81e3eae288851ed4485f386e347fd7fa62a06ad0cf65806ae49b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwP90wAKCRDXblvOeH7b
bpRMAQC3eQ6yx+yN6Dm6QDzVnmRER3bnxRIAL5osAxY+l7bFTgEAypLyCd90FYMN
ZDgakZawAw1Q4nX2Z3uax8pzMr8y/gY=
=FgA/
-----END PGP SIGNATURE-----

--4d62d13e81e3eae288851ed4485f386e347fd7fa62a06ad0cf65806ae49b--


--===============6298852809774203714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6298852809774203714==--

