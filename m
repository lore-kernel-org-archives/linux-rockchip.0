Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B83BCF258E
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 20:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sul6Cq6zk5P0dqaDJIIn0UPhA5Czbz1+6G//mz1ibHQ=; b=cL7zUT2AuZbPLYNsdT9si3O+Kc
	SWoMiXXc5w96k32Y2z8ueWxBjhNCLd6r7sfpVKxHvO/7XZPJCFOBnU8beBZmEvMY/nZxNs5BoUf1G
	YNrQiPoX2R3tLSWwkiWKDlr2wKgfXnNr5NOEIcOoJ8rP2AtNXdzwrD/Cp8e2UmmTLaJZWUxVJyzeY
	lg8+VHvzg//36QV3g10McMrWF5rSvaRWxzCfSt+q+/6q0zzkpN+/O2VeXuDMW6NdWenQDudln6OII
	g39JNkY2Tq+t+1VXJrOPdu51wyZJBIoHe8K30TF5tgWWU5FPs20lT3RjL/exkhZ6t2ebGNwTlRGtJ
	2BMWI09g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t05eY-00000003E1J-1jMl;
	Sun, 13 Oct 2024 20:57:26 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t05dA-00000003DwD-1wH2;
	Sun, 13 Oct 2024 20:56:02 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728852958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MD/SPpvVFaQ7Z8UPvB4YaamXnme8WhZVptqS1G1BBmE=;
	b=uAb3DIJjun6Ex60NNKIpSO3rm8Qw2trBk/7L25KuK2IX5HcexVs8tTTxXO22UqO/H03aFX
	0TylSZ6FDmoiY/ImVHjdO3rbFiIpaGxDdtO+QjyqXH/2Pu9k2IYSISHSMdTNQS+rHf2lLz
	HRVugT1U4U7JMDtcUaKM3lmg+Zg9x4eGvlfdceQMWDwkXH6JZXJi+66K7LZftrhX3NadIA
	0DuqJyr6knbqJZVG0UuhayhBwOfsDP1ooASytD2Du4cdMgeuSXxg8zTD1KYWf+zPpSS2Nn
	YQ+v++J0gUPIsW/fWWZ2UCDe9vpC45iiOX844WEW+YB2qn+m17kkfY9Ut24I/g==
Date: Sun, 13 Oct 2024 22:55:57 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Chris
 Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Michael
 Riesch <michael.riesch@wolfvision.net>, Andy Yan <andyshrk@163.com>, Jimmy
 Hon <honyuenkwun@gmail.com>, Jing Luo <jing@jing.rocks>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add rk3588-orangepi-5b device
 tree and refactor
In-Reply-To: <20241013204446.303727-1-cenk.uluisik@googlemail.com>
References: <20241013204446.303727-1-cenk.uluisik@googlemail.com>
Message-ID: <bac3a8702d3e92c401bc4c4d9401258c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_135600_687802_7FD8054C 
X-CRM114-Status: GOOD (  16.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Cenk,

On 2024-10-13 22:44, Cenk Uluisik wrote:
> Implements a slightly modified rk3588s-orangepi-5b.dts from the vendor.
> Unfortunately the &wireless_bluetooth and &wireless_wlan overlays don't 
> seem
> to compile, so I removed them for now:
> 
> Error: arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts:20.1-20
> Label or path wireless_bluetooth not found
> Error: arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts:24.1-15
> Label or path wireless_wlan not found
> 
> Bigger parts of the rk3588s-orangepi-5.dts file were moved into a new
> rk3588s-orangepi-5.dtsi file, so that both device trees from the
> orangepi-5 and 5b include from it and avoid including from the .dts.
> 
> How does this board differ from the original Orange Pi 5?
>   - builtin eMMC storage
>   - no SPI NOR flash (u-boot, preboot etc. initiates from within the 
> eMMC
>     storage)
>   - ap6275p Wifi module (like the Orange Pi 5 Plus)
>   - builtin BlueTooth module
> 
> Beside that everything is exactly the same as far as I know.
> 
> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 760 +----------------
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 763 ++++++++++++++++++
>  .../boot/dts/rockchip/rk3588s-orangepi-5b.dts |  18 +
>  4 files changed, 784 insertions(+), 758 deletions(-)
>  create mode 100644 
> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
>  create mode 100644 
> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts

Please try using the --break-rewrites [*] to generate the patches,
which should produce much shorter diffs, easier to review.

Also, please enumerate the patch versions.  E.g., this should be v2,
and I'm not sure what happened with the multiple v1s you sent earlier.

[*] 
https://git-scm.com/docs/diff-options#Documentation/diff-options.txt---break-rewritesltngtltmgt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
