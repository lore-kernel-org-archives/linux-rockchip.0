Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30B47CD11DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VhoN2M1cT/cgnvbx2YgH8zZT1BJv5/N5SXT019PN0Uk=; b=Kiibz5H6Yehpl+9UHxjNqIx3RO
	348+nUE2LsPNOUnrbtuJ2Xjus/mpKoRXffCVzPxaBSJlB8iLEhvOVOEEI9pE7LwB8b8OBtJY0JdcP
	Ag5CTx8k+5yrkGCY/4Y9AuzJKXzTi+nNo2+8JzRrh1uFl+NkvxNkAOTi27TiO6UViY3UXLmLcD+AD
	UJl601D/dD+IeTzevdQI+g6l62z4IrFMJMFPQcGaRidfBCr6GxFvxmWw161ppVE0355nt6ZDoSWau
	0G61ot74bD4l5Rkp/d2QxwhEkVBawvSXaq20gVknneJ8QjXBKSjjR34i0H60tEKWDTK17AtbPUuIr
	DcLBQV2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpumR-0000000FEgS-0HQw;
	Thu, 28 Mar 2024 18:47:15 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpumN-0000000FEeH-0Ltt
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Mar 2024 18:47:13 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711651623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=04gC6M2/0Frg2J9tfUX7YFGcmkAM74zOf2GeQerrMBk=;
	b=iiBvDFW7WH2Ry+jnvZYF4HkPmGtZNDYzO58jJ50XUsCq6SkKD3QSeL1ff88tce90naaXe5
	pwO0iVYRi2WLjDOJL3BAESOKfUM4Uw4DhOsmLBGWWNxuwbzU52FbxpH83Kn+IMiF9zperi
	p5VXvPgBr2vGa1FL7U6rOcmq5I4gw5hUF3svzpfaN6OOeXpOT1vOfC4tf8BDoKeUcZVnIv
	0+EYtj90kXZ4eTYJBOtl0M7qLXSBc51zsg7VYIYSzaNU4d6vnf7hi5vo6tgfMwAECf2TfX
	7PDEEGvJhsss4HTxhmh9pdgC7/J52qcPuQKtO+4hII12KGZwOYxZGtlURXiz/w==
Date: Thu, 28 Mar 2024 19:47:03 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 jagan@edgeble.ai, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 sebastian.reichel@collabora.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable device-tree overlay support
 for select devices
In-Reply-To: <20240328180551.361381-1-macroalpha82@gmail.com>
References: <20240328180551.361381-1-macroalpha82@gmail.com>
Message-ID: <f948555d4a283a8c77a35090b4319433@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_114711_616379_B21BD588 
X-CRM114-Status: GOOD (  14.18  )
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

Hello Chris,

On 2024-03-28 19:05, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the '-@' DTC option for the Rock 5B and Indiedroid Nova devices.
> These two devices are relatively new both with external GPIO headers
> for expansion. This does impact the filesize of the DTB substantially.

I think that enabling this should be either left to Linux distributions,
to be enabled for all the dtbs they ship, which they already do, or be
enabled by us for all Rockchip DTs, instead of for enabling it just for
some boards.  However, I think that leaving it to Linux distributions is
the preferred way.

> rk3588-rock-5b.dtb		75352 -> 150094 bytes
> rk3588s-indiedroid-nova.dtb	69507 -> 136739 bytes
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
> b/arch/arm64/boot/dts/rockchip/Makefile
> index f906a868b71a..26f306db0aea 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -1,4 +1,9 @@
>  # SPDX-License-Identifier: GPL-2.0
> +
> +# Enable support for external device-tree overlays
> +DTC_FLAGS_rk3588-rock-5b			:= -@
> +DTC_FLAGS_rk3588s-indiedroid-nova		:= -@
> +
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
