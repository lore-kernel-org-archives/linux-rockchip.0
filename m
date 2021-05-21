Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B5AFC47076
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 15:53:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4593613E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 15:53:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4593613E2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QWtgU+STjN21eGzJPLDXpBWg/1V43NlMNYHYEf4SYFw=; b=bhASQ8QATKWw9ziZnpuJLs3eAD
	TTEsabcqbWWoNBhdqf/pexkXT+9SOuz06FA2qS92iufvDG3yugYO24FJ+IIVP/ihEaeHxoLmUzDkw
	hpIbsZcSAB4IDXaXlZ5RqKUX3+R7OQkPpGTU0AzPsRZydbzB28wymzRSUye7rTeguSyUwPOX3DaJy
	6UHFwNA1aUmm13Hs7+6fxsf2jcf84SFYM6AiY7c9m6SeAPm1EAFPXBNWx3iCbc/oAUL+tnj0AvBAz
	IJJce8Hu/SCko5INQG8C0PNm2cDwljDC1dP+qnFjLAm7StEOmr40983kQ728vBZYOzKF6zpGf1en+
	TVAVkidA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk7T5-0009Rt-I6; Fri, 21 May 2021 15:53:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk7Sm-0009Pr-Lb; Fri, 21 May 2021 15:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=kdAs0Ep5+2K53fiSGhNfrLNzj7MMY3EgOQjni9Umht8=; b=hSD7GAeCyLemvN42dzjGA1E+Wb
 jZsyAlULXDQRgUttz+9PP4fftWgE8CKJXGS6Cu3+Ly8QNIdTRGWrqXs2TkwRUVDHPeW4IAHCN+MP2
 w+QcXQvQb01xQDJuNOer5PZSaFApuIk31UT/h0k/FJjqH9L+V0H75UZo7POchMxDeATDGR0Q+tr+7
 +Iem00Z2a1ED9rZ4U5lmt8aFAhCkS0aKDTfrPg0qqu1eaA5m0Qu4TfRBkfrhkJSC702zsT1TDes3l
 A273rJXyKkB3wMv+dA07Om5KBg6x4CXeQ6JCsavXwFTZvsi0snrtq6iRfPhJdIz8lot2B3p2wdYTD
 v2VMcXTA==;
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk7Sj-00HFzR-O5; Fri, 21 May 2021 15:53:23 +0000
Received: by mail-wm1-x330.google.com with SMTP id t206so11412844wmf.0;
 Fri, 21 May 2021 08:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kdAs0Ep5+2K53fiSGhNfrLNzj7MMY3EgOQjni9Umht8=;
 b=IhYlOGhD14MnNUDN3/gcfgDBq/BNMorjLEdyQeq1zzib97z1tEhGiiXaphyov0B6rm
 Fnug5G0nwmDNTjmkdcXodXq9U/gz3ibsum4pzrkpfI9FmltJSw2CUcxsWX7jGXwwmyCj
 6vxc3W7raymKSRp3BSh9pxV9ixt7fhYnirv/L00YJBgVdZZYogPdXKuTSkEFfH1IrFRZ
 Da9BK8RCuQqZjWtJt4Z9PY1PYT/d4yv4t/as1y1Bzr1dc6M55Y5AjpEufmJ68LUqwnaN
 r/4pWcKNmcNKigTm4vX1D6oC/E3gRqOexUh1NDZr0Zq9RS8nw5b/KoUs/ymofl20nPkJ
 EdEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kdAs0Ep5+2K53fiSGhNfrLNzj7MMY3EgOQjni9Umht8=;
 b=Qm4WI1pR4MjmgANn8WY4mKBu851L37pg94nF6h2eH8LT5weLhDXZejGuQ0QyFl/MWf
 Xyw3QBezjj1J7wy0QOtkvgABHDZkWPnzHgpuFrhk989O6LoQd9valKBZmbww4uLrr73u
 DelN0XXxS8COsvTU89AqEJqhbmsyVHg4p2E4ssa3YblXh7+BBVwgKrg3mwa8hAb8gaZD
 huKvcOlff8No7ZllFKzzaqk8ppJ4p+X7Yi52dJzsmW02crUnjyLfEnzUIM178n9k7+aQ
 0Vvypxey7FRL2lt7pDZIrROi1cZ4RhKWutZGYCvOo0ZbTXinHl+2zMv2y6vo6UjUxPrv
 XxQQ==
X-Gm-Message-State: AOAM531+u/hDC5Rq8WmKm0altdiV9JUyarlw3V+dEEjIld+Rm/zdtiIK
 RevdKx2vrS4PYVvMqNpaIQM=
X-Google-Smtp-Source: ABdhPJxTn/ueWgal7rvRO3A3ECHpC111Q7o7SxwZUm6zNTqM9YK/SolsENlCqq1BAUxDrXnfxploOg==
X-Received: by 2002:a1c:5443:: with SMTP id p3mr9425116wmi.101.1621612399794; 
 Fri, 21 May 2021 08:53:19 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-17-133.cable.triera.net.
 [86.58.17.133])
 by smtp.gmail.com with ESMTPSA id o129sm13051356wmo.22.2021.05.21.08.53.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 08:53:19 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, 
 Daniel Vetter <daniel.vetter@intel.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Cercueil <paul@crapouillou.net>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Marek Vasut <marex@denx.de>, 
 Stefan Agner <stefan@agner.ch>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Yannick Fertre <yannick.fertre@foss.st.com>,
 Philippe Cornu <philippe.cornu@foss.st.com>, 
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomba@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 06/11] drm/<driver>: drm_gem_plane_helper_prepare_fb is
 now the default
Date: Fri, 21 May 2021 17:53:16 +0200
Message-ID: <1940958.iMR1v07LRx@jernej-laptop>
In-Reply-To: <20210521090959.1663703-6-daniel.vetter@ffwll.ch>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-6-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_085321_827866_009BF173 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Dne petek, 21. maj 2021 ob 11:09:54 CEST je Daniel Vetter napisal(a):
> No need to set it explicitly.
> =

> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Paul Cercueil <paul@crapouillou.net>
> Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=FCbner" <heiko@sntech.de>
> Cc: Yannick Fertre <yannick.fertre@foss.st.com>
> Cc: Philippe Cornu <philippe.cornu@foss.st.com>
> Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Jyri Sarha <jyri.sarha@iki.fi>
> Cc: Tomi Valkeinen <tomba@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mips@vger.kernel.org
> Cc: linux-mediatek@lists.infradead.org
> Cc: linux-amlogic@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-sunxi@lists.linux.dev

For sun4i:
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
