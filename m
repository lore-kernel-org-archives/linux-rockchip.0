Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5EC5C44539
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 12:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/VyMtthoc/CNFdFcoWyEdh4OkTJU9wtVEQcXFCEh2M=; b=3ZXGC9MIxuLl5S
	p5JwINEx+xC7f+GIJR0DvhFFkqXiV8AjKaV2nmVRReD+eLYgDfTgK5xUKTeBekUpAjapU1WAhexLt
	m/vlizTLLWm7JZtn62+icURRtKaebtUfzDaKtjNpFNJGgmNC1RGUSrY/cjSf6q8HwWFbFjba0fp6q
	+8vGuODND+aDGPdshM8BQDn2/BCTFpGIr9edmb9g6qqWQJsf8ttlMQcioxjEdh8Rol5fxYAaN+uby
	HrYeKNMWD1vstsUvcliyLkKib7tmRyIFqyXSJ+nVLkh0iOOqAvUbcOitGSYmy/PPqf4SW/U90lYb3
	aqBBhlC46N+iLC5b7GyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVrP-0000000BizQ-3J4b;
	Wed, 22 Jul 2026 12:15:39 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVrM-0000000Bixj-2EFs
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 12:15:38 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-47f752b3423so2687300f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 05:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784722534; x=1785327334; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VI2Isc4fgmRJDTCJfmw/OSW5rvOEVOT9p4D8XxgQ81I=;
        b=rxnbuh9icHwNY+RlngRX8kJyDQUbGzS4vYuvjL+rPtUwkki9pXeJt6JRik6IH07BMR
         gdwyOa0RX2gXYMDjpNQUw+CivZsjmizFjy8sLC75crx/fgMg4slfYPBnOSdlisfiZqki
         Ww8CNQZ3/FC3tqIT2ZXGdPOWz8dfQ4FerY2VyOwPIP8c/udhRA7wc82D7u0uBmz1gAT3
         gGhdZm/0byig0N3RJNbj5PB949Xgl/6kR6BsaTJZWWfutBmH8KhnbFjSU7w6qWkaA2Fz
         HIK2mVp08G2hC0P1H7PlA0F2Ss6HjQl/5nsC9Bkk+2rA3tyyvksb9rm7cbhZipkWp78O
         Rmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784722534; x=1785327334;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VI2Isc4fgmRJDTCJfmw/OSW5rvOEVOT9p4D8XxgQ81I=;
        b=TSE798J6XP5nU04qAJoCHfCMKzstbKtl7upceNaSs0hHm3L5TmakNcn/W8DI4u81PK
         d1TZmby1l7G/q886MMTYjKFGvHSS0XGubsgfp8THMXS2X2YytTHQpRws9vzgs8soBXzY
         C2Hw9KhvpaFA+m3HL+RtDo027WTQqHJryRk4cIQ4d6tEgyeTllHR7igqNnln2xrsvjKp
         q5U3m3NPCPmqDLW9A1IbaRBTmUyV/hEpU3BITHdrEbSB2gJQ+woSKosPSIjn7NnSH8E5
         nbYYPNbVS0s1dy+GmLar8b268x7x+kQqoNQSNqlYGJaYN5WDJf0WJKgkqf12iGDOR898
         PxHg==
X-Forwarded-Encrypted: i=1; AHgh+RqEZQEAP9hSE2bSD7kq2BJ2MVNofOAG0OvkUBpkYQlha223lN9ktJx2a9q8R9uxCX92qHIPvyWyMA4z5w/odg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXi/RgPwOuGhVlVQIvJQPC5cB6HIMoZyVX7LUHBEK+v2F7SD61
	Qfzzn56nmHm9+RnmzZh9D8OnRGMjI9V+l/4iRyvIyy0GHLwfSb1TM+DMObTKfjT0Tsg=
X-Gm-Gg: AR+sD12JysMR1cjjJINRPa48tt4vQT8A+xoNHm1Im4QLbS7Bj8ZdaMeKLAJPi4kd/d1
	nKmfabYcpsZK6su4XFTZQ/EZVEM3vXOMjbOBXm2YBNFEVYJznlyAD+GaGzjm50Hw2GYlpwPymj2
	RGKWi3MrjJkjwrfDrh9M+20EaSaxFz+zor1JLn2cp/L0OZkA4RBRxE/7/DN8dcV+fl62FhHHJ7Z
	cwZRKdQ8Q+PG5k/9GO9J0kzNSi0KIoS/jpViMaaEmneKTecVnxqGK0R4kAwjNAyjWbjmRxdaD+f
	R0mic0r/+Wb6jba7IXexdNHkbEZgX3/w5RLc72X2+m07amDnErEx/kiNZNOV4dPp1WsuY3O9U5K
	fxDM7xJ0WetT6cjofHaYR2mtBOgwe8zyC1LjOMuhPB1FxLfbmTDuKT62051UyzXPNTerbuouCEq
	s2qZygmlfuR+bj627BHtFKlkM=
X-Received: by 2002:a05:6000:46cd:b0:47f:70f4:7c5 with SMTP id ffacd0b85a97d-47f70f40972mr13998165f8f.53.1784722534372;
        Wed, 22 Jul 2026 05:15:34 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f8635c8d7sm4379093f8f.21.2026.07.22.05.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 05:15:34 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Inki Dae <inki.dae@samsung.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Linus Walleij <linusw@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Stefan Agner <stefan@agner.ch>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yannick Fertre <yannick.fertre@foss.st.com>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Philippe Cornu <philippe.cornu@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Jyri Sarha <jyri.sarha@iki.fi>,
	Jingoo Han <jingoohan1@gmail.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Alison Wang <alison.wang@nxp.com>,
	Paul Kocialkowski <paulk@sys-base.io>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Raphael Gallais-Pou <rgallaispou@gmail.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Albert Esteve <aesteve@redhat.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev,
	linux-samsung-soc@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 0/4] drm/panel: refcounting panel lookups and references
Date: Wed, 22 Jul 2026 14:15:11 +0200
Message-Id: <178472247762.1745070.2847290153778032256.b4-ty@b4>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260717-drm_refcount_wiring-v3-0-023900c32e01@redhat.com>
References: <20260717-drm_refcount_wiring-v3-0-023900c32e01@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_051536_589222_B875994E 
X-CRM114-Status: GOOD (  10.32  )
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

Hi,

On Fri, 17 Jul 2026 16:02:03 +0200, Albert Esteve wrote:
> The drm_panel subsystem provides kref-based reference counting [1]
> (drm_panel_get/put) but almost nothing in the tree actually uses it.
> This results in a systemic use-after-free pattern throughout the codebase.
> 
> This series aims to close all those issues.
> 
> Patches 1-2: fix the infrastructure. drm_panel_add/remove now keep
> a counted reference for the list entry. drm_panel_bridge_add_typed()
> now holds a counted reference for the lifetime of the panel_bridge.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/4] drm/panel: have drm_panel_add/remove manage a list reference
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/61aebeadff40cded27168e53406e0120ad66e114
[2/4] drm/bridge/panel: hold a reference to the wrapped panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/8f79d34ea8950fd825e0d6ecd713705a42f06417
[3/4] drm/panel: of_drm_find_panel() return a counted reference
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b71a623598d319cae2acd9df1b297cc948c58bc7
[4/4] drm/panel: find_panel_by_fwnode() return a counted reference
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ac3baea883dab989178dd4186090d6bcf52b8d55

-- 
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
