Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3429D1356A
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Oct 2024 21:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hYVRsWX9wdWxPuhgDsMU6PE8kutmAp4CmxcrGWVuRwE=; b=TQYvmatEXPKANBo/sCwJknRlJf
	BDyHyvKn9twiGubovHq67wvXzDzsD7xE0sdzG13/5+bolp9sgwWXLXQ6C93TiJQ4iRfDdScZZ7ihP
	PMNP00ens26B36c9IEJUmrkSHK7gRBl1d2B3z7kD2AZEe+1efNURAfT0THcue5wrH4llcPpKHgOAp
	o8fE3IJKYI0jEoAxCWFc+yF6gtTtruh3SHcbQoWgjlBzNC4miYajYmK0fPtpBJazrKMCTj9ULjGcO
	Gn8w0v1IlIloqH4Lrgf8lCCI50cVUa7sNWEOorlR8IvfedoDA3+uEjo5HobSLM0AZhRAyVB+wxQQC
	mcwt7+Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Ai1-00000008vwS-2Gr5;
	Sun, 27 Oct 2024 21:22:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5AdP-00000008vN6-0zAc;
	Sun, 27 Oct 2024 21:17:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ABD215C58C5;
	Sun, 27 Oct 2024 21:16:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4116FC4CEE7;
	Sun, 27 Oct 2024 21:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730063834;
	bh=OkJZ2a0tGPzKgYgNIUYRWslx1RQvJ/CB+bAEJ9oofo0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=S+GdVswh60z/kEkUsuzXLgj+T8owXIvOxYNHX6yyDkIxxx2E8rifTfika/3uiDv/q
	 A16J7Jy4OUmIpf06jHuD1wCestK//KnUTHSUodBdeKELQE28xSsiOMzsFw2c7PKipn
	 NF/Yd2mW8S9mLtV4h7HXOlJqZYIvd4qomfcG90oYegHqqzjlhrC/gAKjYYoOO7O2kL
	 5irjDOkbPY0ogJye2vPhSp5m5Fn499YqwwxI2foU8HoR77o0CJFts7oUrlj1bYmQbu
	 BoyVMgEaWQ8JthFewww2TQxFjrSzKkZdIRCOWg5Wp378AcbCyLxt6YJorc36meKEp2
	 LkUAPEC83Wz9Q==
Date: Sun, 27 Oct 2024 16:17:07 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, heiko@sntech.de
In-Reply-To: <20241026081942.348459-1-andyshrk@163.com>
References: <20241026081942.348459-1-andyshrk@163.com>
Message-Id: <173006367828.91304.9007142735562178151.robh@kernel.org>
Subject: Re: [PATCH 0/3] Enable hdmi for rk3588 based Cool Pi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_141715_336691_3D18823E 
X-CRM114-Status: GOOD (  10.14  )
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


On Sat, 26 Oct 2024 16:19:25 +0800, Andy Yan wrote:
> As the hdmi-qp controller recently get merged, we can enable hdmi
> display out on these boards now.
> 
> 
> Andy Yan (3):
>   arm64: dts: rockchip: Enable HDMI0 for rk3588 Cool Pi CM5 EVB
>   arm64: dts: rockchip: Enable HDMI display for rk3588 Cool Pi 4B
>   arm64: dts: rockchip: Enable HDMI display for rk3588 Cool Pi GenBook
> 
>  .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 49 ++++++++++++++++++
>  .../rockchip/rk3588-coolpi-cm5-genbook.dts    | 51 +++++++++++++++++++
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 49 ++++++++++++++++++
>  3 files changed, 149 insertions(+)
> 
> --
> 2.43.0
> 
> 
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-coolpi-cm5-evb.dtb rockchip/rk3588-coolpi-cm5-genbook.dtb rockchip/rk3588s-coolpi-4b.dtb' for 20241026081942.348459-1-andyshrk@163.com:

arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dtb: hdmi@fde80000: Unevaluated properties are not allowed ('enable-gpios' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtb: hdmi@fde80000: Unevaluated properties are not allowed ('enable-gpios' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml#
arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dtb: hdmi@fde80000: Unevaluated properties are not allowed ('enable-gpios' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
