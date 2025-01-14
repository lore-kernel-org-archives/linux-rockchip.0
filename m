Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04394C02180
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jan 2025 01:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkC3f/+pjKo0QthcpuAbkz4uEK4gOfFpnBgdYcfmvCA=; b=CU/bXea9tN2WO+
	tRun7P5i2w/EoOq5pOKsGXoDLPpk4Q8tU/z2+RN+blEHJpCGo9zWucZDony4e/GpBIvD1L0V+ncC7
	49PgBzExQ02KdTL1Kdpgc16TjB5RX2zw9VhsGPZ0lSZd4Hj7y3k9DKKw2vikUZVxGSwe3fl2hl8UB
	uuR5DpfcF1Z0watp44JJWmDFDCqB8qsbBUqdvR8NJjXYQE7SvMyLucjhrUGfEWxedhZbzDL/TFupP
	59HXElwqjL5+UmwrYAzf6ncp+UvxDBsoH0fA//rqALHNbBnfW0XJGccliGS69Kh7MnnUhR88YB9Vk
	g2MA1NMQRkirOCbpeWBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXVzn-00000007Auz-1vUm;
	Tue, 14 Jan 2025 01:45:31 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXVzj-00000007Atc-22kv
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jan 2025 01:45:29 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-e53ef7462b6so8386958276.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jan 2025 17:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736819126; x=1737423926; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N+8EgI35uv9hF/0OPf+vuhBaBLFzRkr/a46A2Dy1sAk=;
        b=Mdm08VwHvmu9GjL49NPuQQvBJ2p9Y8tWZUPSOu64eNLOulL7jRtt5GIHmHQzi0GIux
         jsH9i6R+XYZY7Lo4sWdURiWIbY72+uyCKliAMOZRz8SWdGYMFBwsaLSAGwawH3bMwX61
         Whe37ZlHQcsWKwHErgUIznYgToDsPZvW+GiLZa8Glp6K44s09VDOBbZHQwjq1JLU0PJv
         am0JVUgR95eR5v+nZWVQcOb2q8hb3thQME4IioA8v+5M1beDtxxZvnMuFxSciX1/nxsa
         Wm4l8b14wlN0IGqOs808Vc5wqouB5i629FN6TPGHbpDyhUb+VMKYncjpuv1qnTwYj/ro
         BFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736819126; x=1737423926;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N+8EgI35uv9hF/0OPf+vuhBaBLFzRkr/a46A2Dy1sAk=;
        b=gtFFOpz4WYuc35xuB89hJEcPvi2NchcYm4q06FlO9O6AtbU42yXCaZpv13fJAkgXKr
         ImKS3oGWuTxHTVRVN1u34/8L6wQNlmE6asedpHo7dVoAanRt87/h/xL4yRgEPF03pYv4
         mN1Brz3fy/YXxDxKzu9cgOEnnZQMLV7xEQP6R74K4Xeo1VJXvUfodKZbz6PPQEku8D3L
         ZrhkHF4JOKac79koeFMpEmXbk6fYlRypVmGPwYs3apYRiBsHv0SUp4XVXc+MujwPCS32
         Rw69SfdXwp/8/XUkQERzftxUyVDO1ARnV+HbOHAUnpAlVEaLAnN3zsTcHkcZLyA9pdwr
         WYEg==
X-Forwarded-Encrypted: i=1; AJvYcCXM6H4MuQMx4uyalxdlEx8P/W8+5DLwhvrn52XmE2WUVzrQBNZAfQrTbdx4+81ULBXWasRASRinqpBymjbBZA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/Od097hKGNq6l1MuU8/QpyregMneEq66MNeorPwZ9SvrNaZBS
	MNb6qYXsYQZmgsVPyaNw3aRAH32573cx+BMnqFZmATx7KNTejEgTrMIL+n4nfTby3vA7dKV3bSK
	WsRlIK6gU5APyPJPvJhdf+9ppKSjQ9DKxkrSJWQ==
X-Gm-Gg: ASbGnctFHJuOA493KhRhHRqpcVmwVE31iCsIzsq0oisIO6/LabwLi/qf+H2KRKxQiRT
	JgR/1q3gFYvHPd9Ze3lOR3fDaYyHXqUrn4deQHQ6TTKJVwqbWwGIKTePaQ6cDPPedZjZ6PQ==
X-Google-Smtp-Source: AGHT+IFw+8EJH3+sYLytBcSM829UVF01V8OV1UAI+CzwsaCh0PJQpMGC1iXxd5V1WhnvSyXdw+9iFPxRIV5QmN5E1YE=
X-Received: by 2002:a25:2055:0:b0:e39:8482:5d5f with SMTP id
 3f1490d57ef6-e54ee2026femr12527255276.46.1736819125705; Mon, 13 Jan 2025
 17:45:25 -0800 (PST)
MIME-Version: 1.0
References: <20241224-drm-bridge-hdmi-connector-v10-0-dc89577cd438@linaro.org> <173680655387.149204.17517246537828613856.b4-ty@kernel.org>
In-Reply-To: <173680655387.149204.17517246537828613856.b4-ty@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 14 Jan 2025 03:45:15 +0200
X-Gm-Features: AbW1kvZk-xrGSPiMdguMFD_hc9SYyHKa4i2bZt-kcCNVjxqbFCr5K6kr1tPBECs
Message-ID: <CAA8EJprDaOTEOYf5JHC7UYwqRn2vXUH9FT==HjZg1QNfDMmBcA@mail.gmail.com>
Subject: Re: (subset) [PATCH v10 00/10] drm: add DRM HDMI Codec framework
To: Mark Brown <broonie@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Russell King <linux@armlinux.org.uk>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	=?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_174527_534648_102DEAFC 
X-CRM114-Status: GOOD (  21.95  )
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

On Tue, 14 Jan 2025 at 00:16, Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, 24 Dec 2024 03:47:52 +0200, Dmitry Baryshkov wrote:
> > While porting lt9611 DSI-to-HDMI bridge driver to use HDMI Connector
> > framework, I stumbled upon an issue while handling the Audio InfoFrames.
> > The HDMI codec callbacks weren't receiving the drm_atomic_state, so
> > there was no simple way to get the drm_connector that stayed at the end
> > of the bridge chain. At the same point the drm_hdmi_connector functions
> > expected to get drm_connector instance.
> >
> > [...]
>
> Applied to
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
>
> Thanks!
>
> [01/10] ASoC: hdmi-codec: pass data to get_dai_id too
>         commit: a8e792d3f0bbecb87ab05e9592cadf0b178ab952
> [02/10] ASoC: hdmi-codec: move no_capture_mute to struct hdmi_codec_pdata
>         commit: 5b0779ae13de345b405a67c71cbb63705cadb295

Mark, they had your Acks, so they were picked into drm-misc-next.
Would that be a problem?

>
> All being well this means that it will be integrated into the linux-next
> tree (usually sometime in the next 24 hours) and sent to Linus during
> the next merge window (or sooner if it is a bug fix), however if
> problems are discovered then the patch may be dropped or reverted.
>
> You may get further e-mails resulting from automated or manual testing
> and review of the tree, please engage with people reporting problems and
> send followup patches addressing any issues that are reported if needed.
>
> If any updates are required or you are submitting further changes they
> should be sent as incremental updates against current git, existing
> patches will not be replaced.
>
> Please add any relevant lists and maintainers to the CCs when replying
> to this mail.
>
> Thanks,
> Mark
>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
