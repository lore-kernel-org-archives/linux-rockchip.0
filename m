Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD178C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 20:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9q2D2GrQu9niwskzIxrz9L+yUic6EF3s0oeBoDT0sL8=; b=v5AKDDFnesxcLo
	hwXHeL+1AesVri1b9m8wrF7WI701tnEz+zf9VwG5B0X2+e5yvRi6VLVX+vTV9lKJKsWEGd0HsNyzC
	7w6wqYVRNtDP/UP14EwOnq0gfQ9hMnpJMZn0p8KRs6HMFv9WLOB9/HUSEd2NQqyPt5PybDN5vpLtb
	ibH0uJvwHl7OrsaKLxNSZh5zDN8aCfp75RZBaLgL4z3n4nLDzKhcu4K5oVdxq0dwfexHTLp6L3qCg
	CEqr2PxSyhYnCjl7s851upP33OlVXP7zJozRbtlCv5hrPAo3eNy65Nn4ArEXgmBvtqBFhdyrSDs/p
	bMQ/jWH2rT3rSXlwti2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpZvQ-0000000B1Nr-2XNF;
	Wed, 27 Mar 2024 20:31:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpZvL-0000000B1Mr-1HjX;
	Wed, 27 Mar 2024 20:31:07 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rpZvE-0004RI-0O; Wed, 27 Mar 2024 21:30:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko.stuebner@cherry.de>,
 linux-rockchip@lists.infradead.org, quentin.schulz@theobrona-systems.com,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable gpu on rk3588-jaguar
Date: Wed, 27 Mar 2024 21:30:55 +0100
Message-ID: <2545754.4XsnlVU6TS@diego>
In-Reply-To: <171155390231.3454263.7417156077347248437.robh@kernel.org>
References: <20240327112120.1181570-1-heiko@sntech.de>
 <171155390231.3454263.7417156077347248437.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_133103_370886_AF424EF1 
X-CRM114-Status: GOOD (  19.45  )
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

Am Mittwoch, 27. M=E4rz 2024, 16:41:16 CET schrieb Rob Herring:
> =

> On Wed, 27 Mar 2024 12:21:19 +0100, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > =

> > Enable the mali gpu node and add the board-specific supply-regulator.
> > =

> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 5 +++++
> >  1 file changed, 5 insertions(+)
> > =

> =

> =

> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> =

> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> =

> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> =

>   pip3 install dtschema --upgrade
> =

> =

> New warnings running 'make CHECK_DTBS=3Dy rockchip/rk3588-jaguar.dtb' for=
 20240327112120.1181570-1-heiko@sntech.de:
> =

> Error: arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts:248.1-5 Label or pa=
th gpu not found
> FATAL ERROR: Syntax error parsing input tree
> make[3]: *** [scripts/Makefile.lib:427: arch/arm64/boot/dts/rockchip/rk35=
88-jaguar.dtb] Error 1
> make[2]: *** [scripts/Makefile.build:485: arch/arm64/boot/dts/rockchip] E=
rror 2
> make[2]: Target 'arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb' not rema=
de because of errors.
> make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1387: rockchip/rk3=
588-jaguar.dtb] Error 2
> make: *** [Makefile:240: __sub-make] Error 2
> make: Target 'rockchip/rk3588-jaguar.dtb' not remade because of errors.

just for the record, that error fixes itself because the patch gets applied=
 only after
the main series adding that gpu node ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
