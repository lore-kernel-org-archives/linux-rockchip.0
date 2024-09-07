Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0616E6FE53
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 08:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CvlSyDDMSFbnLqW/q2M8WSW+JQ6+kr31QW/y3Zp1pAo=; b=aY1/xXvc0Dj7gXivczEK0pNgXt
	5Lj7Sx6vbTiIDPNi+uzjn/JufZRfwLBeHOBMPx2Egp8+R0dHmMHHhaf1fTmgelA/OcP2uzkZknDHi
	o0avh0FS1FpBo9JQe5+mxXq+7stKOvDevvJ7ZGH4ekrfizuQ9jvokc4XfaVTVyc0NVH4wQykP7N9x
	1AEYI8pDN8ohOkCymrnINIraHkpmLuhFxJYZ3UyKfOZxVNmL3ZAWJceq5F4KgFgCpVM3OOtc1ZmMz
	JYhqT3/yVY2lL94GPgjOvOioIuKclbvvun67XkQD5tK13z7G7qBMYXd0eaOdoxzNyFmDpnSaI0ctH
	TDHVkYGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smr7V-0000000Eh7W-3wXS;
	Sat, 07 Sep 2024 08:48:37 +0000
Received: from out-183.mta0.migadu.com ([2001:41d0:1004:224b::b7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smr6U-0000000EgzV-1Vz3
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Sep 2024 08:47:36 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725698849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=U/V4gJDEeseX5jQFeW0yYA0toqnpKY469k3mQ17ssiw=;
	b=wQkj4bC+WErNtAEm8BxqIHn2dlwtM4UpfbVG4kVsVCFyPcyJn1hfJUAI3PAIatPtYMw6uh
	0MUlu+Wy4C0/RtBqiSyAsTiqtu8ayeMonmgPbJaWaKFR9Wd65RyQK3Iu7j0zt1nJtV/y5A
	VmmjmG8EsLLzjvL2O4YsHVzt6tVMvSV6sSmCC2QL0yHzHn3NZqnDA5FPGRpop315vUTMx6
	2tGNMflQrIP6EzT/fbsSpBZH8+OS81BkYsYv+y7rd+fKvRSnBKvSUDpOtS95robjbLhpYk
	xTf2LWG6bsf64yAHsqCtCbxFJuCOrfB4AqyVA45T0OF/EcnLtjaUNYNHbjAFNw==
Date: Sat, 07 Sep 2024 10:47:18 +0200
Message-Id: <D3ZX6LZNLOYC.30CT6AX32VI2T@cknow.org>
To: "Min-Hua Chen" <minhuadotchen@gmail.com>
Cc: <airlied@gmail.com>, <andy.yan@rock-chips.com>, <andyshrk@163.com>,
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>, <heiko@sntech.de>,
 <hjc@rock-chips.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>
Subject: Re: [PATCH] drm/rockchip: include rockchip_drm_drv.h
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <D3Z5JMTKPQIS.2M5O5DY0S4U9G@cknow.org>
 <20240907030259.1243487-1-minhuadotchen@gmail.com>
In-Reply-To: <20240907030259.1243487-1-minhuadotchen@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_014734_809132_C0EF224B 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4432736593409473628=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4432736593409473628==
Content-Type: multipart/signed;
 boundary=ae02d6677900286bbc830f90aa3ab8aa0d85c0a15f3e902cf9eb68b94b65;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--ae02d6677900286bbc830f90aa3ab8aa0d85c0a15f3e902cf9eb68b94b65
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Sat Sep 7, 2024 at 5:02 AM CEST, Min-Hua Chen wrote:
> >FWIW: I didn't see it either, but I assumed I was missing the right
> >context (i.e. patches) needed to trigger that warning.
>
> I triggered the warning by the following step:
>
> install 'sparse' first
>
> ARCH=3Darm64 LLVM=3D1 make C=3D1 CF=3D'-fdiagnostic-prefix -D__CHECK_ENDI=
AN__' mrproper defconfig all -j8

This, especially the 'LLVM' part,  is important context information
and should be part of the commit message.

I had only just started when I saw a number of sparse warnings:

  DTC     arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtb
  OVL     arch/arm64/boot/dts/ti/k3-j721e-evm.dtb
  OVL     arch/arm64/boot/dts/ti/k3-j721s2-evm.dtb
  OVL     arch/arm64/boot/dts/ti/k3-am654-idk.dtb
  DTC     arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-kb.dtb
  DTC     arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtbo
  DTC     arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3-lte.dtb
  DTC     arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dtb
  DTC     arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb
  DTC     arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r9.dtb
../init/main.c:192:12: sparse: warning: symbol 'envp_init' was not declared=
. Should it be static?
../init/main.c:290:16: sparse: warning: cast to restricted __le32
../init/main.c:291:16: sparse: warning: cast to restricted __le32
  CHECK   ../init/do_mounts.c

And several followed, including in c-code files. So I stopped the build
and assume you've identified a or several actual issues.

I've seen several commits where changes were made because LLVM flagged
potentially problematic code, where GCC did not, so it's quite possible
you're on to something here.

But it would be helpful if the commit message said what code was
potentially problematic and why. And then the proper fix for that could
indeed be to include `rockchip_drm_drv.h`.

Cheers,
  Diederik

--ae02d6677900286bbc830f90aa3ab8aa0d85c0a15f3e902cf9eb68b94b65
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZtwTGQAKCRDXblvOeH7b
bjrVAP9sF01iIKgasYGx4OaHq+E2M92V0wabM3HMo2iTFErnoQEAkAD2CVBFzBtD
wMom4q6z9MP5ClefkbqycuAelKYGkAU=
=iQLh
-----END PGP SIGNATURE-----

--ae02d6677900286bbc830f90aa3ab8aa0d85c0a15f3e902cf9eb68b94b65--


--===============4432736593409473628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4432736593409473628==--

