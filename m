Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACB78ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 00:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSA4EfbFLwWhIMGXlXmXpl4tR8MVnpJ4NoFR7DFxA2c=; b=bNI5Z40N5SEAKd
	Z6OQQxM6IjxqFlB6+0NxCovpLZH9v0DbLtXOcTYt4gIA/309BjwWxK29/N4kuG4+d5B4O63OYtA6r
	cJ6I7Sot267U/g7ijSIxcq4d36GHg2rs594hK4yvarEJcrWDQAFW2T0PK1A1r+Urb9H/rPwUz129a
	QjY/3h7z1UZYNswuWdIZhGiTpKrnS19XkOfJ+28+5E4U9oy70EaauS4EZxXPG5ndsYw7RlKbXlpGJ
	JI3fFE6qJGwr9gcpkdriAyAtSzxIiZ3L9IokAoLKYLEDWr6UkxcDm8FY6PQ33SI2zaN/bztmnAr9n
	nFdhlqlXi1L/HWQZPC+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVMjL-000sb9-T5; Tue, 06 Sep 2022 00:46:19 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVMjA-000sVc-7d; Tue, 06 Sep 2022 00:46:10 +0000
Received: (Authenticated sender: n@nfraprado.net)
	by mail.gandi.net (Postfix) with ESMTPSA id C8C4D60005;
	Tue,  6 Sep 2022 00:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nfraprado.net;
	s=gm1; t=1662425160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qc6NYY5YexS1HOTxn9qDikjXhg24+BGxEee+8YgWJDE=;
	b=B3cTm8GfX1EYIoLJc4q1Z3RO2PR3LQp/UZ9kTf3g3hvmUIAqtFl5XKHYnzCJCYMW23Z0ra
	xQRSSSnkS4Co4YBkIvIy+L5sc9mMw85G/3qkS/RYUbeNE+0MMXCNIB4iHE3LE2erUszrCX
	CLm73BkIp8Kz7UhULj5fKQ+yIabJIYZBuvh3OFm6/6uPsdhmkyC/2LxEpRKn/jpEf3iirD
	w9MmR0CQGP1gSY6tsKpo7yzk1uvtxPsU9m4WLcHv/OhX2ttxtu4aYFUtEHtR3NmzfQyuWe
	7Fm2jy9dat9B0JOvEVXkcjx5Jqq7Q8I12aS1kbX/muRY6VWx/ZQ9NPfttQ2bqQ==
Date: Mon, 5 Sep 2022 20:45:54 -0400
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <n@nfraprado.net>
To: Ondrej Jirman <megi@xff.cz>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Martijn Braam <martijn@brixit.nl>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Caleb Connolly <kc@postmarketos.org>,
	Arnaud Ferraris <arnaud.ferraris@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SD card controller probe on
 Pinephone Pro
Message-ID: <20220906004554.btzmcjqox4n3hdtf@notapiano>
References: <20220904233652.3197885-1-megi@xff.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220904233652.3197885-1-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_174608_503780_70A809C0 
X-CRM114-Status: GOOD (  18.98  )
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

On Mon, Sep 05, 2022 at 01:36:47AM +0200, Ondrej Jirman wrote:
> Voltage constraints on vccio_sd are invalid. They don't match the voltages
> that LDO9 can generate, and this causes rk808-regulator driver to fail
> to probe with -EINVAL when it tries to apply the constraints during boot.
> =

> Fix the constraints to something that LDO9 can be actually configured for.
> =

> Fixes: 78a21c7d5952 ("arm64: dts: rockchip: Add initial support for Pine6=
4 PinePhone Pro")
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch=
/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index f00c80361377a..2e058c3150256 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -253,8 +253,8 @@ regulator-state-mem {
>  =

>  			vccio_sd: LDO_REG9 {
>  				regulator-name =3D "vccio_sd";
> -				regulator-min-microvolt =3D <1710000>;
> -				regulator-max-microvolt =3D <3150000>;
> +				regulator-min-microvolt =3D <1800000>;
> +				regulator-max-microvolt =3D <3300000>;

Shouldn't the maximum be 3.1V? The SDMMC0_VDD pin on RK3399 that this regul=
ator
is connected to expects a maximum voltage of 3.15V, so 3.3V would be too hi=
gh.
The output voltage for LDO9 is configured in 100mV steps, so I imagine that=
's
why 3.15V fails, but 3.1V should work fine. I haven't tested yet though.

Thanks,
N=EDcolas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
