Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47847C71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 21:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nl6+AAXy2JkhHUJZ9lxGZSkpFdOtdRpqSZ208846gq4=; b=QXeyk51qQVqY9z
	J6rb3jHAZ/maThVnjwPRH1HmN9RJU43bAzuecWBed29EBjfDUi+0n/1xych5SUqgnrwe+me8NK4o1
	OKErk8WQ6NyNTmnPSyIUxkOhuJ6bIG95sWSkBWcE1XxjqFXVTuHX9gexFxKXtKxea3RV9RcCgb3aT
	1pX3Jcunk0Rm1CC9QfSWAvOmdwr3In0K7ef2aczGkN0M3EqrD/hGXcsNXsEEjW1M0n+DsvEV5WAMB
	xEVkUxW0RV0tFHltMYkvHAD5Q2p6xWuxf9Lp8AfzKD+RJjXuH/yDFsWV6+olP8GWYdHctmundRYS/
	hETlBE6jAV2HQhIb4P/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPpAs-0000000EcdW-2lt4;
	Thu, 12 Jun 2025 21:09:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnrK-0000000EKDD-43d5;
	Thu, 12 Jun 2025 19:45:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=E3L1BRXMYQOPZXwWB+HufjRJxBYhvQ+eeWRIbfY6WI0=; b=YWYiprHhlzTOOgbKhH/REgkIoU
	PPyURVfKa3lHkofbe/lVf7NoFQ5HPXmvPY2mzwF3NO4AvcK0Lg/rg1f8ItY0lTckOTSccS/0Nhdzp
	q8/z81V2pX8zNsW55EhXznoLz9iA7hpKEccI/EkAp+rEU1a7PIizeZXu5f7fY9ohw+wd1n+u6PU7j
	1EPwdO0BXVMCwupQkIBzGkQBF6kBdH/SZhOQH79WBa8U5RkQfQ2HcmIT2x63qyWzNMcnbvg44o51r
	V0YQ0aUrFkkl90jh6H5SlGQATH4cnHhH6NNxf/JQa+iIk5hsL7ZvdWBS7GyDMJ0OroDYCHYUIx5bJ
	/sf+oAjw==;
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnrI-00000002eGv-09um;
	Thu, 12 Jun 2025 19:45:10 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-747fc7506d4so1376150b3a.0;
        Thu, 12 Jun 2025 12:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749757504; x=1750362304; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E3L1BRXMYQOPZXwWB+HufjRJxBYhvQ+eeWRIbfY6WI0=;
        b=OWt4zmKYb1D7QNTwkxOn7aln78Z+lSgAFCfzVkt20uGwSIgjSx56ked4zTrd2c6OPP
         l0wCjySJUv9ELVOaZ66CaEMplYH1BvEY5YXMDBUcVjDoksgeG/VsR50G0ggqUTPvNPyf
         SCziDIZRrp26hsyVE7uC1lKdL3u0VyHHE7qD5kmq6aY60fUDkmlWL2p3IYoqC0s41UIF
         QYlqi8Hpr6YXKPwbxh5HPkr/IUgtXiNTAZjRovfVa0oG3uCRnVWbSyZQEpExzAHVjztT
         J4r8VZwAJXxC/OTtqfJ11JPLchirYzJJgX/tKxJqvUXlXHKyz9YhNV2yOmAFggKH8Qi1
         IMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749757504; x=1750362304;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E3L1BRXMYQOPZXwWB+HufjRJxBYhvQ+eeWRIbfY6WI0=;
        b=kidh0FucJQ9J98uauLxDUUYTYgdGYoRebePi2UJXzjyX2d7PZTJuPKvGLWys7bZeyn
         aGz89jjl1NU6ZFIQM5q/ljdFdmmHJgY9OZeByNTMv3qXvaLTqWDjQkE5tbOD57iaxM/3
         pqA3Ulz1UpjDFtLDQzCdCNFTuFTudf7y27rFdhRZcCuJqW4MElxpa98zwzMwnm79VHMB
         Z8AhTcER6b0weOfCJJTCGcbF+kXYbfjPy6lMMmVFtWnXxBXIoQhSxPJIK31v3MrYwZmr
         YREcinLzSSm38AfLLkvJIdqAJ8IQ7SH36ssiEIXX9nzyiIT7Lez2FtlusCF1NNkeq7cd
         Uj8Q==
X-Forwarded-Encrypted: i=1; AJvYcCU0UyMaOFZx1CX/708nowRFCl8EkVC01CNmK//+7aothEQGW73WtJEOLLMFKEZRBvebMIqzP6+pDAo4eolb7G8=@lists.infradead.org, AJvYcCU9vuc3YNX1gFioKqgsVgKOxI3NeGgjW7o7EdWYXrB1cB/e//qUIHJOt71cAq+bpJn9Ys0vtauO5Qcm8N92PB8F@lists.infradead.org, AJvYcCVz+qEibgGUYi5W8ZKI5QDMRXF/sMNfqItMCz9JEDxCNaa0WPXlAPjeG8QSgypIO5g+AJsRUI+az1X0@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+wjoHHL8RnRYTtI+XthizekdjNe0++bjuRGops5RIXx8z50RO
	OVQ9cM4rZULq1FGk5o9oEmdZoYmqcexJr9YCtGbP7QVnLV/k7rAJMCT9
X-Gm-Gg: ASbGncu6vYa6qzO71MHPdiZ07rgGgLwvqhUKTWrOTv2g+py25pV6K5+6SaYQcZeFNde
	wRSivb1/TqsCk3/8FRJLFKIJYV7Cvbbgs02eJoevdmvEvAQtj0G5XGrT6QU53Soxa5AielD63dJ
	Kkk8J58SMBAnOiGEqf94tu+P8TS6TcqCdqg2xKtoMBWk0TVtRRkgaNHSi+0Su2tN0hRTIkQJScd
	tE+BZltawgywiTw5UrA/GuwTu+tcVe1PULzF+G4NG+qFzzbxXmJDAPCRLTvwdgj3SLigM8TEaBX
	92LFBQ4pkYV+e5lSWcMMnh5/D0WZIwXM6SXeax3DLIU8aD3w+hCpc9PsA60+XA==
X-Google-Smtp-Source: AGHT+IH5SI3hUshSKHU0j6QBfj5JqczafiiFC8/0KUaseCcKbsSGpfUoReyErqftJzmx0fPZHAtJ2w==
X-Received: by 2002:aa7:88c2:0:b0:740:6f69:f52a with SMTP id d2e1a72fcca58-7488f485015mr691851b3a.0.1749757503807;
        Thu, 12 Jun 2025 12:45:03 -0700 (PDT)
Received: from localhost ([216.228.127.129])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74890082859sm109585b3a.104.2025.06.12.12.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 12:45:03 -0700 (PDT)
Date: Thu, 12 Jun 2025 15:45:00 -0400
From: Yury Norov <yury.norov@gmail.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
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
Subject: Re: [PATCH 00/20] BYEWORD_UPDATE: unifying (most) HIWORD_UPDATE
 macros
Message-ID: <aEsuPN-kuQ8cjR7H@yury>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_204508_283597_A4CDF402 
X-CRM114-Status: GOOD (  38.35  )
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

On Thu, Jun 12, 2025 at 08:56:02PM +0200, Nicolas Frattaroli wrote:
> This series was spawned by [1], where I was asked to move every instance
> of HIWORD_UPDATE et al that I could find to a common macro in the same
> series that I am introducing said common macro.

And it means, at least for patch #1:

Suggested-by: Yury Norov [NVIDIA] <yury.norov@gmail.com>
 
> The first patch of the series introduces the two new macros in
> bitfield.h, called HWORD_UPDATE and HWORD_UPDATE_CONST. The latter can
> be used in initializers.
> 
> This macro definition checks that the mask fits, and that the value fits
> in the mask. Like FIELD_PREP, it also shifts the value up to the mask,
> so turning off a bit does not require using the mask as a value. Masks
> are also required to be contiguous, like with FIELD_PREP.
> 
> For each definition of such a macro, the driver(s) that used it were
> evaluated for three different treatments:
>  - full conversion to the new macro, for cases where replacing the
>    implementation of the old macro wouldn't have worked, or where the
>    conversion was trivial. These are the most complex patches in this
>    series, as they sometimes have to pull apart definitions of masks
>    and values due to the new semantics, which require a contiguous
>    mask and shift the value for us.
>  - replacing the implementation of the old macro with an instance of the
>    new macro, done where I felt it made the patch much easier to review
>    because I didn't want to drop a big diff on people.
>  - skipping conversion entirely, usually because the mask is
>    non-constant and it's not trivial to make it constant. Sometimes an
>    added complication is that said non-constant mask is either used in a
>    path where runtime overhead may not be desirable, or in an
>    initializer.
> 
> Left out of conversion:
>  - drivers/mmc/host/sdhci-of-arasan.c: mask is non-constant.
>  - drivers/phy/rockchip/phy-rockchip-inno-csidphy.c: mask is
>    non-constant likely by way of runtime pointer dereferencing, even if
>    struct and members are made const.
>  - drivers/clk/rockchip/clk.h: way too many clock drivers use non-const
>    masks in the context of an initializer.
> 
> I will not be addressing these 3 remaining users in this series, as
> implementing a runtime checked version on top of this and verifying that
> it doesn't cause undue overhead just for 3 stragglers is a bit outside
> the scope of wanting to get my RK3576 PWM series unblocked. Please have
> mercy.
> 
> In total, I count 19 different occurrences of such a macro fixed out of
> 22 I found. The vast majority of these patches have either undergone
> static testing to ensure the values end up the same during development,
> or have been verified to not break the device the driver is for at
> runtime. Only a handful are just compile-tested, and the individual
> patches remark which ones those are.
> 
> This took a lot of manual work as this wasn't really something that
> could be automated: code had to be refactored to ensure masks were
> contiguous, made sense to how the hardware actually works and to human
> readers, were constant, and that the code uses unshifted values.
> 
> https://lore.kernel.org/all/aD8hB-qJ4Qm6IFuS@yury/ [1]
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
> Nicolas Frattaroli (20):
>       bitfield: introduce HWORD_UPDATE bitfield macros
>       mmc: dw_mmc-rockchip: switch to HWORD_UPDATE macro
>       soc: rockchip: grf: switch to HWORD_UPDATE_CONST macro
>       media: synopsys: hdmirx: replace macros with bitfield variants
>       drm/rockchip: lvds: switch to HWORD_UPDATE macro
>       phy: rockchip-emmc: switch to HWORD_UPDATE macro
>       drm/rockchip: dsi: switch to HWORD_UPDATE* macros
>       drm/rockchip: vop2: switch to HWORD_UPDATE macro
>       phy: rockchip-samsung-dcphy: switch to HWORD_UPDATE macro
>       drm/rockchip: dw_hdmi_qp: switch to HWORD_UPDATE macro
>       drm/rockchip: inno-hdmi: switch to HWORD_UPDATE macro
>       phy: rockchip-usb: switch to HWORD_UPDATE macro
>       drm/rockchip: dw_hdmi: switch to HWORD_UPDATE* macros
>       ASoC: rockchip: i2s-tdm: switch to HWORD_UPDATE_CONST macro
>       net: stmmac: dwmac-rk: switch to HWORD_UPDATE macro
>       PCI: rockchip: switch to HWORD_UPDATE* macros
>       PCI: dw-rockchip: switch to HWORD_UPDATE macro
>       PM / devfreq: rockchip-dfi: switch to HWORD_UPDATE macro
>       clk: sp7021: switch to HWORD_UPDATE macro
>       phy: rockchip-pcie: switch to HWORD_UPDATE macro
> 
>  drivers/clk/clk-sp7021.c                           |  21 +--
>  drivers/devfreq/event/rockchip-dfi.c               |  26 ++--
>  drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c    | 142 ++++++++++-----------
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        |  80 ++++++------
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     |  68 +++++-----
>  drivers/gpu/drm/rockchip/inno_hdmi.c               |  11 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h       |   1 -
>  drivers/gpu/drm/rockchip/rockchip_lvds.h           |  21 +--
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c       |  14 +-
>  .../media/platform/synopsys/hdmirx/snps_hdmirx.h   |   5 +-
>  drivers/mmc/host/dw_mmc-rockchip.c                 |   7 +-
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c     |   3 +-
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c      |  39 +++---
>  drivers/pci/controller/pcie-rockchip.h             |  35 ++---
>  drivers/phy/rockchip/phy-rockchip-emmc.c           |   3 +-
>  drivers/phy/rockchip/phy-rockchip-pcie.c           |  72 +++--------
>  drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c  |  10 +-
>  drivers/phy/rockchip/phy-rockchip-usb.c            |  51 +++-----
>  drivers/soc/rockchip/grf.c                         |  35 +++--
>  include/linux/bitfield.h                           |  47 +++++++
>  sound/soc/rockchip/rockchip_i2s_tdm.h              |   4 +-
>  21 files changed, 342 insertions(+), 353 deletions(-)
> ---
> base-commit: d9946fe286439c2aeaa7953b8c316efe5b83d515
> change-id: 20250610-byeword-update-445c0eea771d
> 
> Best regards,
> -- 
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
