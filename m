Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 114D3CEFC53
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uMcB5gB72WlCV2EW43A581ug6HlzDR1/gnnf2Cr6qY=; b=1/OR+l/2EA2mic
	kdKqD7nQuZpnTnQF67cuOIJQWt6mzUkDQzdVuGVa8RWJihyjT7X+juzaArEzuPFd5hg+dCK+d2HG9
	4F1y+YmlfhZSyRq8nCKQIT3mt6uRa6buRlvQM5GYw5NqAtqJundKePaysuJvRdLj5PHarOU9U0Dgy
	5iSD+S2nS1mMeaOuqkoDDG56Gdnj+gKTyb1a7UHPQGcRZFQjwWSan13vQ0Sk9HjkAhy43HRGtOHYD
	I2oJIXyNOm9kLLqFOrw6sUln1edK65W/UM+VmAJ87ylW756kSz4LEQetrXeunqYQlU0Tc9LjKVrc4
	eBow5u8xjZeIZv4EseVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syGq9-000000073nq-166B;
	Tue, 08 Oct 2024 20:29:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syGpl-000000073iM-43I3;
	Tue, 08 Oct 2024 20:29:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KS4o+17xhu6mrVWg8kWTI9/MLiyd9G3yVbErNjjrH9E=; b=BixWLAySjOPWp51uUSeJAufbjy
	B3RKUwTg6SYM8w+lXtmKxz7WNm61pcZErkqagElxL9cEeWBEGokCiE+3XjM1fcGIFqGnBhpdR5vnT
	C3NqxF7Vglt4FM+i9RSE+j8qAscsSsKEcRfqPbzS8YX0FYRzfDPwUydYtvTPmcV1ulPXarYX9HfHZ
	dMxZmHMyqhM8454JHgJawNw47rX3Xh6SNlSBbiw9YfVxU3MqwZceoWYYhF/QqeG1mB6+aPkYZ4mPr
	/a+n3IH23D0pS5GjDlBm3s8+Pm9ICLWnNM6TofemEPnkUgB9rDVoI5k7PFOJyYPI6CxnWxjN5YQdF
	Fq9h45gQ==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGpk-0007i6-I8; Tue, 08 Oct 2024 22:29:28 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH 7/8] arm64: dts: rockchip: Remove undocumented emmc property from
 PX30-Ringneck
Date: Tue, 08 Oct 2024 22:29:27 +0200
Message-ID: <2008626.usQuhbGJ8B@diego>
In-Reply-To: <79b0bf90-556b-4076-bdf3-8b3d8aec80f0@cherry.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-8-heiko@sntech.de>
 <79b0bf90-556b-4076-bdf3-8b3d8aec80f0@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_132930_024307_CFDCB56A 
X-CRM114-Status: GOOD (  12.69  )
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

Am Dienstag, 1. Oktober 2024, 12:04:00 CEST schrieb Quentin Schulz:
> Hi Heiko,
> =

> On 9/30/24 11:01 PM, Heiko Stuebner wrote:
> > supports-emmc is an undocumented property that slipped into the mainline
> > kernel devicetree for the board. Drop it.
> > =

> > Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-=B5Q7 (Ringneck) S=
oM with Haikou baseboard")
> > Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> =

> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
> =

> FYI:
> =

> $ git grep supports-emmc arch/arm64/boot/dts/rockchip
> arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi:        supports-emmc;
> arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts: =

> supports-emmc;
> arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts:        supports-emmc;
> arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts:        supports-emmc;
> =

> So there's a few more to remove it seems :)

I've now amended the patch to remove all of them :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
