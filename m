Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D75D9C71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 19:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3VjWsclm0h1Rf6I5tJR3MVVeNTq4PNAh/BwqthxDbSU=; b=smS3+Lwg0Npc/K
	mkyr52L5jdRe0PRNQARrQs3s+8bbTwjqidT9Owlic3MV5fY2TFbBbw7q7J1iwpmShguymAcza4k2R
	TMujLDg5eiGm6y9lO90GKu9DWOfFz55Gb4/8mh1fyZORURLAmYWyyC5vZPCB77yLDbzJ6qjae8okq
	Oj6sLdp89bBh090v0Uk8ZQxwftw46uf3NC5wVvKNTPyPCHkAMyIGk46OHMHJYO81zxOpRKW+KBbTk
	E34YHhw7CKo5RGyVRBSgc/ggv7Dxsnd9qA18st3dOGIbXfU3yZN5npSUXTbo5bUqYcvUFuTqGK7s6
	UvNXT3XroMN3sOYxHaPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnuZ-0000000EPL5-45Cz;
	Thu, 12 Jun 2025 19:48:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnju-0000000EDGj-4BJI;
	Thu, 12 Jun 2025 19:37:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 955D75C5874;
	Thu, 12 Jun 2025 19:35:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0E6DC4CEEA;
	Thu, 12 Jun 2025 19:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749757049;
	bh=36nvgb3RLVqinSwoB6Toikfenc4MXd/GpMoSKwvz5Wg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=fHWO0Z95cw6Xnif0lgMkudamEsIYQ5TItFPsp0mV44qGzrnNQ/l8ATa/QW/mlVbW+
	 BJDpv6XsUOV1sfZpyXtti3XbmHIkDJB1ieS4WcckkK6g9Kf1ow7LpYemlXBMsdrifv
	 EQDb8d8yeyT/lWL2Arniqju5L69l3NaMhdfc3HZKCBzriJZgyfBOPcpqqceJFNtEwE
	 4zTHYWNF3D204ecOvirQqHBZov1CX7evGsPUFIKtJknlqOp+7G7qZ5AFUow9pgR754
	 DWRwulVdfVVAa15hWiP1TEVqsNevAFM17wtlrxew4HG+c9atHC8iXC9XalOxCB4x9+
	 UuloGJC1fGthw==
Date: Thu, 12 Jun 2025 14:37:28 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Yury Norov <yury.norov@gmail.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Qin Jian <qinjian@cqplus1.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
	linux-sound@vger.kernel.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH 16/20] PCI: rockchip: switch to HWORD_UPDATE* macros
Message-ID: <20250612193728.GA924118@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612-byeword-update-v1-16-f4afb8f6313f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_123731_117671_98795CC5 
X-CRM114-Status: GOOD (  24.84  )
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

On Thu, Jun 12, 2025 at 08:56:18PM +0200, Nicolas Frattaroli wrote:
> The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
> drivers that use constant masks.
> 
> The Rockchip PCI driver, like many other Rockchip drivers, has its very
> own definition of HIWORD_UPDATE.
> 
> Remove it, and replace its usage with either HWORD_UPDATE, or two new
> header local macros for setting/clearing a bit with the high mask, which
> use HWORD_UPDATE_CONST internally. In the process, ENCODE_LANES needed
> to be adjusted, as HWORD_UPDATE* shifts the value for us.
> 
> That this is equivalent was verified by first making all HWORD_UPDATE
> instances HWORD_UPDATE_CONST, then doing a static_assert() comparing it
> to the old macro (and for those with parameters, static_asserting for
> the full range of possible values with the old encode macro).
> 
> What we get out of this is compile time error checking to make sure the
> value actually fits in the mask, and that the mask fits in the register,
> and also generally less icky code that writes shifted values when it
> actually just meant to set and clear a handful of bits.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Looks good to me.  I assume you want to merge these via a non-PCI tree
since this depends on patch 01/20.  PCI subject convention would
capitalize "Switch":

  PCI: rockchip: Switch to HWORD_UPDATE* macros

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/controller/pcie-rockchip.h | 35 +++++++++++++++++-----------------
>  1 file changed, 18 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 5864a20323f21a004bfee4ac6d3a1328c4ab4d8a..5f2e45f062d94cd75983f7ad0c5b708e5b4cfb6f 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -11,6 +11,7 @@
>  #ifndef _PCIE_ROCKCHIP_H
>  #define _PCIE_ROCKCHIP_H
>  
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/kernel.h>
>  #include <linux/pci.h>
> @@ -21,10 +22,10 @@
>   * The upper 16 bits of PCIE_CLIENT_CONFIG are a write mask for the lower 16
>   * bits.  This allows atomic updates of the register without locking.
>   */
> -#define HIWORD_UPDATE(mask, val)	(((mask) << 16) | (val))
> -#define HIWORD_UPDATE_BIT(val)		HIWORD_UPDATE(val, val)
> +#define HWORD_SET_BIT(val)		(HWORD_UPDATE_CONST((val), 1))
> +#define HWORD_CLR_BIT(val)		(HWORD_UPDATE_CONST((val), 0))
>  
> -#define ENCODE_LANES(x)			((((x) >> 1) & 3) << 4)
> +#define ENCODE_LANES(x)			((((x) >> 1) & 3))
>  #define MAX_LANE_NUM			4
>  #define MAX_REGION_LIMIT		32
>  #define MIN_EP_APERTURE			28
> @@ -32,21 +33,21 @@
>  
>  #define PCIE_CLIENT_BASE		0x0
>  #define PCIE_CLIENT_CONFIG		(PCIE_CLIENT_BASE + 0x00)
> -#define   PCIE_CLIENT_CONF_ENABLE	  HIWORD_UPDATE_BIT(0x0001)
> -#define   PCIE_CLIENT_CONF_DISABLE       HIWORD_UPDATE(0x0001, 0)
> -#define   PCIE_CLIENT_LINK_TRAIN_ENABLE	  HIWORD_UPDATE_BIT(0x0002)
> -#define   PCIE_CLIENT_LINK_TRAIN_DISABLE  HIWORD_UPDATE(0x0002, 0)
> -#define   PCIE_CLIENT_ARI_ENABLE	  HIWORD_UPDATE_BIT(0x0008)
> -#define   PCIE_CLIENT_CONF_LANE_NUM(x)	  HIWORD_UPDATE(0x0030, ENCODE_LANES(x))
> -#define   PCIE_CLIENT_MODE_RC		  HIWORD_UPDATE_BIT(0x0040)
> -#define   PCIE_CLIENT_MODE_EP            HIWORD_UPDATE(0x0040, 0)
> -#define   PCIE_CLIENT_GEN_SEL_1		  HIWORD_UPDATE(0x0080, 0)
> -#define   PCIE_CLIENT_GEN_SEL_2		  HIWORD_UPDATE_BIT(0x0080)
> +#define   PCIE_CLIENT_CONF_ENABLE		HWORD_SET_BIT(0x0001)
> +#define   PCIE_CLIENT_CONF_DISABLE		HWORD_CLR_BIT(0x0001)
> +#define   PCIE_CLIENT_LINK_TRAIN_ENABLE		HWORD_SET_BIT(0x0002)
> +#define   PCIE_CLIENT_LINK_TRAIN_DISABLE	HWORD_CLR_BIT(0x0002)
> +#define   PCIE_CLIENT_ARI_ENABLE		HWORD_SET_BIT(0x0008)
> +#define   PCIE_CLIENT_CONF_LANE_NUM(x)		HWORD_UPDATE(0x0030, ENCODE_LANES(x))
> +#define   PCIE_CLIENT_MODE_RC			HWORD_SET_BIT(0x0040)
> +#define   PCIE_CLIENT_MODE_EP			HWORD_CLR_BIT(0x0040)
> +#define   PCIE_CLIENT_GEN_SEL_1			HWORD_CLR_BIT(0x0080)
> +#define   PCIE_CLIENT_GEN_SEL_2			HWORD_SET_BIT(0x0080)
>  #define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
> -#define   PCIE_CLIENT_INT_IN_ASSERT		HIWORD_UPDATE_BIT(0x0002)
> -#define   PCIE_CLIENT_INT_IN_DEASSERT		HIWORD_UPDATE(0x0002, 0)
> -#define   PCIE_CLIENT_INT_PEND_ST_PEND		HIWORD_UPDATE_BIT(0x0001)
> -#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HIWORD_UPDATE(0x0001, 0)
> +#define   PCIE_CLIENT_INT_IN_ASSERT		HWORD_SET_BIT(0x0002)
> +#define   PCIE_CLIENT_INT_IN_DEASSERT		HWORD_CLR_BIT(0x0002)
> +#define   PCIE_CLIENT_INT_PEND_ST_PEND		HWORD_SET_BIT(0x0001)
> +#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HWORD_CLR_BIT(0x0001)
>  #define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
>  #define   PCIE_CLIENT_PHY_ST			BIT(12)
>  #define PCIE_CLIENT_DEBUG_OUT_0		(PCIE_CLIENT_BASE + 0x3c)
> 
> -- 
> 2.49.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
