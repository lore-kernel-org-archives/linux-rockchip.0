Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B43C0D0C5EB
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 08:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yir18/vqHSiBnh5OrsGPg0tLj4rERzVSkQLav4KQPOI=; b=Ycz1MsV9t3vLIa
	H6ErHIWMyCsoOVk7ja4cG/ElZIEr9g+HjqWRvHjlmOGdYvey182MuwfsxFFMc7vnIMEaxXzNj/Slr
	ilRXgGE4hdB7dECl9KwjYOlaM1HhFnVwPJiEubPc7nN/BesRrEh/sHuq/f9jlSBOV28Iht7YzCKD6
	0j1V+RC4RKR8Y9JSUNQQvcAS/CwXJtKbKKpV84Uf7KWk51YrME4NNILCKCbEKzkuYFK7Gd6nwUqyk
	zPaat/6QHbfEZ3sFk5whGRzJVz3VSP2TCW5ziw+d7bfcFUSgtRvWRGTCabu1fouyV5G2U3/oObPfl
	UXXaXrTcpC9ErDeuuyZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G3T-000000033M5-48Up;
	Fri, 25 Oct 2024 08:52:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G10-000000032fS-2fdM
	for linux-rockchip@bombadil.infradead.org;
	Fri, 25 Oct 2024 08:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=dCTo7/Paqcj1EVHb4+w12POrbZzZC7lWqiLNM5hDYKI=; b=D2TACSOulAlLT5no4btjN33wFq
	8Kj0yhKZ2XAquV9ncLkuk6704jq3uwYy4e6I7PCmi8ZcemYUgWLGjrpk1ywdZm/HcrjSKNbD86RxC
	75aaPZY1TX+6HcTe7lCz5l1xqZ1jpZ00jCc1zih9uHZsyv6y6oD1W6iJY6WEB+WJBfrdyQVRBUmuA
	V5lK96/EWX11lZoJBHzRnKo8JZWnxL0NmYtDyafeTnFJMDzVjM84OKLlOS6CsNR2/Y8yzZhtqn9Dt
	ddgnhwUN7YW0KSZk3UpbXeGFrqHpoubKjR8r9JskA4ESZWZuPN6cTbygft3oaWFb9USre+HPkzk8f
	ofUL1Q3A==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4G0w-00000008sEo-1PpF
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Oct 2024 08:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dCTo7/Paqcj1EVHb4+w12POrbZzZC7lWqiLNM5hDYKI=; b=Ijs4zHqNaVR7dlv1gXLpnhp09+
	b6VLYRy2mZtaoHGHyJZIttynYfdS68bztttwgmOEyOc8O+buh1qm7gjMoXDWEDquIoLTbRukqwN8t
	eoTZgzpqGSFtGi9Im9UwYsjy2nINm67DRvieKeJRLPAVdBZmIsE2xIW2YfMyhdJmJBbw1dkXlhZ+V
	YYehv11NjALmjpaUjHDjdG0FLkj3QJ2T8PVcNQbH8O/IAOid88QOR4Mj2/g8qbhI0WMbyIdZuNqlX
	Ia+mgPcZ91tYQKGC34/cKjZMs5ZmG5xVMdDLf+/nSysStHE4/Xqxn4H5qYIbjzN3aQH98Xxjd3PkY
	M6ttTubQ==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t4G0i-00078T-UX; Fri, 25 Oct 2024 10:49:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mark Brown <broonie@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v3 7/7] arm64: dts: rockchip: Add GPU power domain regulator
 dependency for RK3588
Date: Fri, 25 Oct 2024 10:49:31 +0200
Message-ID: <39319975.10thIPus4b@diego>
In-Reply-To: <20241022154508.63563-8-sebastian.reichel@collabora.com>
References: <20241022154508.63563-1-sebastian.reichel@collabora.com>
 <20241022154508.63563-8-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_094947_019121_5BCA6C2F 
X-CRM114-Status: GOOD (  16.53  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 22. Oktober 2024, 17:41:52 CEST schrieb Sebastian Reichel:
> Enabling the GPU power domain requires that the GPU regulator is
> enabled. The regulator is enabled at boot time, but automatically
> gets disabled when there are no users.
> =

> If the GPU driver is not probed at boot time or rebound while
> the system is running the system will try to enable the power
> domain before the regulator is enabled resulting in a failure
> hanging the whole system. Avoid this by adding an explicit
> dependency.
> =

> Reported-by: Adri=E1n Mart=EDnez Larumbe <adrian.larumbe@collabora.com>
> Tested-by: Adrian Larumbe <adrian.larumbe@collabora.com> # On Rock 5B
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5b.dts
> index 8f7a59918db7..717504383d46 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -465,6 +465,10 @@ &pcie3x4 {
>  	status =3D "okay";
>  };
>  =

> +&pd_gpu {
> +	domain-supply =3D <&vdd_gpu_s0>;
> +};
> +
>  &pinctrl {
>  	hdmirx {
>  		hdmirx_hpd: hdmirx-5v-detection {

nit: this seems to have seen some spillover from the not-yet-merged
hdmi-rx

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
