Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5207C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 18:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtOzTQqe/sMRM1YpW85bAX6OAz6X6idrDnZVUa28aNo=; b=onpn+Gx9yUfiNC
	xJcE3B8dBp2sjbPNJXfucN/WCHDlYsq6pWD9BgkUEP8K4L2UBbc2fAYnE7roumYaQq01BuodCeHia
	7NtihOH+c+IqFASzg5Ai4cCKWtLuYjgYc/sqL/snjAVC4AY059BO1UEv1kJsZac+jaxI4FujPeW1f
	Y64M1nN4IfRR2CGZNStexfRzsgI6w9L9UOgVmpvRl0WJ4e0AMQ3Ld4xqluYlnDxOUfWUJU130WXFu
	Vni08jtSO8jQARq+M9cWFUcfULozDawXqv1nN+k04X4/EdZIssXSCKWrG8ceQCp5lLX/nXJ8MxRdF
	cfESR3coep0Qs0Yg2OZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUC9L-00AK3a-Po; Tue, 15 Mar 2022 18:44:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUC9H-00AK1r-CD; Tue, 15 Mar 2022 18:44:01 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nUC9F-0004zz-0B; Tue, 15 Mar 2022 19:43:57 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add some pins for NanoPi4
Date: Tue, 15 Mar 2022 19:43:55 +0100
Message-ID: <1958426.K55CUjniD9@diego>
In-Reply-To: <f02b2410663150e68cb9e402e910bb2c2f53549c.1647352379.git.robin.murphy@arm.com>
References: <f02b2410663150e68cb9e402e910bb2c2f53549c.1647352379.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_114359_466076_3F9F51DA 
X-CRM114-Status: GOOD (  17.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Dienstag, 15. M=E4rz 2022, 14:52:59 CET schrieb Robin Murphy:
> The NanoPi4 boards have the RK808's always-on 32KHz clock wired to the
> SoC, so have it claim the relevant pinctrl to actually enable the
> CLK32K_IN input. The RK808's SLEEP pin is also wired to the SoC's
> AP_PWROFF output, so we may as well claim that too.
> =

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm6=
4/boot/dts/rockchip/rk3399-nanopi4.dtsi
> index 8c0ff6c96e03..cbb12cfd40be 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> @@ -267,7 +267,7 @@ rk808: pmic@1b {
>  		interrupt-parent =3D <&gpio1>;
>  		interrupts =3D <21 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&pmic_int_l>;
> +		pinctrl-0 =3D <&pmic_int_l>, <&ap_pwroff>, <&xin32k>;

hmm that xin32k isn't present. Is this missing some previous patch?

>  		rockchip,system-power-controller;
>  		wakeup-source;
>  =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
