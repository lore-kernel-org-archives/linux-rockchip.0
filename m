Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A4E2CCA470
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Oct 2025 09:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Te52hjDamZRdqpauhoa6L2skwiwEF+KDJ+TuQvMXP7U=; b=U1u/ggV7pI5k2I
	itNyYIy0eT+fBMO09bS0G/TOiiB5cYiaaRmr9ZIauiuQE5SDujwqXTozmtghQXTQQ/uurPNXC2Tvp
	3f5d7vRQM+SB+DFiCfq6Mju+dnO5+iCobXV2J6BRFktilkd9ENYAd/NYmmnZh1xj2OyaYSdLXs64N
	Hf4SeqV000V4cpfBEN9HJt/3DjO+8dQg8wCxvt9n7wTpnibePZf1jqyTltZmGOm/th3hLQTZeRzSg
	zdyCuf04Oth8DPXNpUj9Ymn5qhcymwvvQ26cNktNfTtKs9Z5NsqMxBteH5Tx3zb3rNcKWMiZuFjNc
	icqfQV3ldxvu1vYR2bEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3tIZ-00000007Adk-1j7q;
	Wed, 01 Oct 2025 09:38:59 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3tIX-00000007Acz-33iz;
	Wed, 01 Oct 2025 09:38:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0171461364;
	Wed,  1 Oct 2025 09:38:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B3EDC4CEF4;
	Wed,  1 Oct 2025 09:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759311536;
	bh=H6syAT5lGzrU3swJYL8VgnwKi0EYbeSgtN9L4OFu5Z8=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
	b=fcqErpp7qrjU9McG/p/HpxRq8Hc/eEK9ROwv483siLY2lhXUhIJ4c10tRVmSipFCy
	 H1cUoUwY6REYQYV8WZwfdmDRlOhGGnduKJbFWz93kohU/Guq8JtYyLLoPuRM9+k2Hv
	 GQvQyN+JNnqYbtW7JVcEer1SJyOhrb3ztKSs1aeFSwZHA8vy7a8Obil+4o19c8sqTi
	 LPaIAjUoYTPSJX1vmEMzX+6OQPM0sPKz6KzJsQMYGs4GR0oonRwRzzlehm64B6DYX3
	 FSXty0SlySmG4Um4P4euAUBoFTJ3AHrhBhxWcvfu7azQZtRldOU8fu+H9v3hTxPnN4
	 UPsnsd24Vl83w==
Message-ID: <50676923-1daf-4c15-a289-a791242664f4@kernel.org>
Date: Wed, 1 Oct 2025 11:38:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Hans Verkuil <hverkuil+cisco@kernel.org>
Subject: Re: [PATCH v3 04/20] media: synopsys: hdmirx: replace macros with
 bitfield variants
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang
 <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-4-947b841cdb29@collabora.com>
Content-Language: en-US, nl
In-Reply-To: <20250825-byeword-update-v3-4-947b841cdb29@collabora.com>
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

On 25/08/2025 10:28, Nicolas Frattaroli wrote:
> The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
> drivers that use constant masks.
> 
> Replace the UPDATE macro with bitfield.h's FIELD_PREP, to give us
> additional error checking.
> 
> Also, replace the HIWORD_UPDATE macro at the same time with the new
> FIELD_PREP_WM16 macro in hw_bitfield.h, which also gives us additional
> error checking.
> 
> The UPDATE/HIWORD_UPDATE macros are left as wrappers around the
> replacement macros, in order to not rock the boat too much, and keep the
> changes easy to review.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Acked-by: Hans Verkuil <hverkuil+cisco@kernel.org>

> ---
>  drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
> index 220ab99ca61152b36b0a08b398ddefdb985709a5..b26668a98aafd1682b8342cc11f84666a13f07a3 100644
> --- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
> +++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
> @@ -8,10 +8,12 @@
>  #ifndef DW_HDMIRX_H
>  #define DW_HDMIRX_H
>  
> +#include <linux/bitfield.h>
>  #include <linux/bitops.h>
> +#include <linux/hw_bitfield.h>
>  
> -#define UPDATE(x, h, l)		(((x) << (l)) & GENMASK((h), (l)))
> -#define HIWORD_UPDATE(v, h, l)	(((v) << (l)) | (GENMASK((h), (l)) << 16))
> +#define UPDATE(x, h, l)		(FIELD_PREP(GENMASK((h), (l)), (x)))
> +#define HIWORD_UPDATE(v, h, l)	(FIELD_PREP_WM16(GENMASK((h), (l)), (v)))
>  
>  /* SYS_GRF */
>  #define SYS_GRF_SOC_CON1			0x0304
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
