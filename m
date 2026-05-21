Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9F47CD5BAA
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 08:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naesYMr+4ojYHhinR5kKmP/OxUZ9r0/uMem/CXA9AxA=; b=byH60/rfY5s7Qw
	g0dNOKOXiFh0xnlI+INXJ7jqX7dEJZJF8duqjcoPpFLwyDuH/xo1EJK0acE1+fMGrgy3nBlWIN3SH
	6vBceNV5zQiNZ8lTgvnqoXJarCv3R5h+WN1glW4geTTJFWz+Jl45LzINwFfa4dyzUT0tQnHp5QZF6
	I6N9jf7GW7kvFzYb7sZVEqYva6P6Eegh9W0OvYIPpo7FkTcIusJBTbv534MVnyZOA0aJUa1nIVU05
	T4zFeQgsrkzDUeIKZmsHOMfPPLJ+xE2SkmqmKNAXpBBEtBJQr5g5iIysWEKgbebz5J1zig6vtBSab
	CUIZTTGdzEo2ILGeVtxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPz5t-00000007Cro-3fMi;
	Thu, 21 May 2026 08:49:29 +0000
Received: from mail.mainlining.org ([5.75.144.95])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPz5p-00000007Cqe-14mK
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 08:49:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; s=202507r; d=mainlining.org; c=relaxed/relaxed;
	h=Message-ID:Subject:To:From:Date; t=1779353355; bh=tboziFN+P1ZHSCtpnTlFnif
	oXEx/CvZ7qbR4+LAHbVg=; b=GcRfYq3FC2ZG2tG85sYa2zzPtoXV1GWkmCd+DfBdpFhEvcHKqw
	9YCEV4+VOqAOBohXRJfrIz9PL0+lTDBJR1dQHJ8sQncqk0mM07t9WW9QqcJbj41UVZu/cDfWwp9
	DxC5hOJndfLUDdOokszLDOd7m1sfZnZX4umbw5soH2sZsukd6uTSNUC+5hk2cq6r0yW7wz1VpW+
	+FwJGhqOyY1yjT7LbA6YCBeTfHpgUxYelxdSQlftTcb8qJ3A353/ZHpB9nBEqP0Ngzu0le6krc0
	DZPz0TNaersdxVVXrqMNJH9HZ9X6qyBuKoya3CtG1PYMe5qhHCwhK45hJa/PKqYchVQ==;
DKIM-Signature: v=1; a=ed25519-sha256; s=202507e; d=mainlining.org; c=relaxed/relaxed;
	h=Message-ID:Subject:To:From:Date; t=1779353355; bh=tboziFN+P1ZHSCtpnTlFnif
	oXEx/CvZ7qbR4+LAHbVg=; b=ZwMEa5Z9ssHwbtLxOKe8JMfUOHSaEd+h6PFWZvoBfqUj6gNw8p
	7wUZUI0+uz1hoXkzfvgc4fg4poReBzfYgcCQ==;
Date: Thu, 21 May 2026 15:49:10 +0700
From: Dang Huynh <dang.huynh@mainlining.org>
To: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	Tobias Schramm <t.schramm@manjaro.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vcc_sdio regulator max voltage
 on Pinebook Pro
Message-ID: <ag7Edg9sgEXLuOc3@meltbook-pro>
References: <20260519094439.7918-1-hugo@whynothugo.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519094439.7918-1-hugo@whynothugo.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_014925_433678_6DD870BF 
X-CRM114-Status: GOOD (  17.04  )
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

Hi,

On Tue, May 19, 2026 at 11:44:39AM +0200, Hugo Osvaldo Barrera wrote:
> The vcc_sdio regulator supports 1.8V to 3.4V output range according to
> its datasheet.
> =

> The current DT incorrectly limits the max voltage to 3.0V. This limit
> causes issues issues downstream with u-boot, which refuses to apply the

Just a heads up, you can run mainline U-Boot on the Pinebook Pro without
any modification.

But after looking at the datasheet for the AP6256, I can confirm that
this change matches perfectly with the recommended ratings.

Reviewed-by: Dang Huynh <dang.huynh@mainlining.org>

> out-of range value, and falls back to the minimum in that range: 1.8V.
> This is insufficient to power the SD card, so driver initialisation
> fails and booting from it does not work.
> =

> Set regulator-max-microvolt to 3400000 =B5V to match hardware capability.
> This matches the rk3399-orangepi for the same regulator.
> =

> Signed-off-by: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/=
arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index b5c05928142c..f21fcdc1b49a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -526,7 +526,7 @@ vcc_sdio: LDO_REG4 {
>  				regulator-always-on;
>  				regulator-boot-on;
>  				regulator-min-microvolt =3D <1800000>;
> -				regulator-max-microvolt =3D <3000000>;
> +				regulator-max-microvolt =3D <3400000>;
>  =

>  				regulator-state-mem {
>  					regulator-on-in-suspend;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
