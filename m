Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A4C4CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 14:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dkRTRpS/5133taJErhbaRw6BqcxJk+hf2VQjqhBKB8I=; b=mSpqME6mrhDvThKbUqemrvsj1z
	qSfHSaYT5SnnF9M7q0xK8FtJozVnYZ/At0fULv8gQrE4i689d4Y2DgZ8UVwAazeBSAZKOMOdxBmNo
	fFPdcurqLfBgq0exFc3WrFMNGANv474oQmad5WnTfA5oHDBMUA9K9ee55S2YU2Xbnyz/XM6R7bX/8
	KFIidINB7q8TpK5QKGK9xGPHhskqzdGXCF+HMPWwQPOMZFgkPeZQizAuwoda4AaxAu3rr7U8Ze5+H
	Gdk6zS48QR85l/WcQ4sm7l3SOrTcjq1RPKAkld/5UexIczGmdD8dTWaG93nulc+UmqJESCZtoYj+Y
	ImBvHUhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISye-00000005azH-1mlv;
	Mon, 10 Nov 2025 14:34:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISyc-00000005ayO-2YP8
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 14:34:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id F3CB3601DC;
	Mon, 10 Nov 2025 14:34:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87809C2BCB4;
	Mon, 10 Nov 2025 14:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762785277;
	bh=GSYmQ6+3w2F5Y2v3KL+tz1Yyiah/sIkt2T04Cg5nkCw=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=FRpoc/yXSsihGYhZUJKMkEG0SUuM626YAHJaSt896xzpksLSZ2ZB25SAwRwAOVwXg
	 WY3cNYaRVo1AtSdXTJq0hbQozMOTa7Vhqg2sSXEYOJwObfKBljmBR9fUhyLeLgvp5u
	 dw+75HhUekHd2ozjYd/8kL70gkvxaw0+0V8QryxL8zTT0G5alUhFLKRF/EqAIEmCg7
	 vi0nhYAC5quPlgDBQ1scCQAKt3Dwq0KVcsOL2u7OLtEQMT9099qvhgzaHQUo/5aHGY
	 GoKWSys3ZcBM4fguajAFSIiM/zjW5FNmEJzdnRbr8duD/qFBY2ouwRzTOPMkXbu2Jt
	 dnyGd4exIAzqA==
Date: Mon, 10 Nov 2025 08:34:36 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, 
 heiko@sntech.de, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, conor+dt@kernel.org, 
 sebastian.reichel@collabora.com
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251110030036.825150-1-naoki@radxa.com>
References: <20251110030036.825150-1-naoki@radxa.com>
Message-Id: <176278493435.154671.16126556415107681599.robh@kernel.org>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for
 Radxa ROCK 5 ITX
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


On Mon, 10 Nov 2025 03:00:36 +0000, FUKAUMI Naoki wrote:
> Due to the discussion about cd-gpios and sdmmmc_det pin
> functionality[1], it would be better to use cd-gpios for now.
> 
> [1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u
> 
> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
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


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/next-20251107 (exact match)
 Base: tags/next-20251107 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20251110030036.825150-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb: mmc: sdmmc-det-gpio: {'rockchip,pins': [[0, 4, 0, 270]], 'phandle': 145} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
