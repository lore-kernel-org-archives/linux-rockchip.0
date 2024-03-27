Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29665C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 15:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FjJyoXIeNm3oxjqoLgROYqD8tYxbbubz1bZjFkQP/g8=; b=BXpIcIZOGNeYYfOj3SXz1PSTAA
	LiU08v0vgKRbC5mYKeM9x7QSYDOylJlB45Q0B2OIG3HpLwrhKjyehbOqXFJ+IQmNT84/DoT6dhs45
	Hi3KMv/OKCy2ZPWyKI76Os2ej4jTI3oodD/TMX0FIXlt6rT5eomOqUNZ/hOIgWQnX4LNy2Ns863X8
	1E+uhYXFL8cjmJ2w56CHspdZnhslUalmyfU0UCECpIAO3606PBpqfKm2OVcFSuWKjXPKbozRIHFgP
	Wj0TUBUfsiZVRaqfaVko/IXiCHxk05EwrUlb37J27zEoNsLaURZBXL5NqMcOsJZXq6xwVav4OpvpN
	PzIvwI6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpVQ5-00000009sMe-2tqm;
	Wed, 27 Mar 2024 15:42:29 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpVOy-00000009s3e-1aTi;
	Wed, 27 Mar 2024 15:41:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 64776CE26E1;
	Wed, 27 Mar 2024 15:41:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77363C433F1;
	Wed, 27 Mar 2024 15:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711554077;
	bh=JfNv58IzhxqdSVuz3q+/2tUJVGkkvo9EkZbnGNx5yJA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=C+1sA83Qr6dsaxQiWpS4FhA8UCj+3mkeGdtoGpwNLW+WbVpfytHG/e+Ns8cQp8+D/
	 jVAw+byw/8OlGl5V9OnF9BpNTGblGCplL3Icm96zz5LHPCaaDEmMxFPgTjXnRKLHol
	 OGioXlSa6pzS2EoUIpyMpj263Pge614nvwFFnstCA8ZvWCEScDMb3/AUzY4OFtX58z
	 N7A06NnyrfIasIfAcfAxPldSPoeq5DxgPEZfW0qakdwwhtpZqHVkZM5MkUn57EsEgc
	 5PX53BEq1jgeCdezXRQcsEJ5oWPB5NDmNTVkAp9Jjjojg5UU3JOpz0Ae12rtBGKj7E
	 JWG2OEoBMaIWA==
Date: Wed, 27 Mar 2024 10:41:16 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Heiko Stuebner <heiko.stuebner@cherry.de>, 
 linux-rockchip@lists.infradead.org, quentin.schulz@theobrona-systems.com, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240327112120.1181570-1-heiko@sntech.de>
References: <20240327112120.1181570-1-heiko@sntech.de>
Message-Id: <171155390231.3454263.7417156077347248437.robh@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable gpu on rk3588-jaguar
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_084126_550264_D8E3733E 
X-CRM114-Status: GOOD (  11.50  )
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


On Wed, 27 Mar 2024 12:21:19 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Enable the mali gpu node and add the board-specific supply-regulator.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-jaguar.dtb' for 20240327112120.1181570-1-heiko@sntech.de:

Error: arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts:248.1-5 Label or path gpu not found
FATAL ERROR: Syntax error parsing input tree
make[3]: *** [scripts/Makefile.lib:427: arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb] Error 1
make[2]: *** [scripts/Makefile.build:485: arch/arm64/boot/dts/rockchip] Error 2
make[2]: Target 'arch/arm64/boot/dts/rockchip/rk3588-jaguar.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1387: rockchip/rk3588-jaguar.dtb] Error 2
make: *** [Makefile:240: __sub-make] Error 2
make: Target 'rockchip/rk3588-jaguar.dtb' not remade because of errors.






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
