Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EE46C44515
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 13:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWuPhKf3pUmwQMgRv1DHFSS4+8hHmUZhWmddxOgmfIY=; b=vwTv6McGs3nauF
	NoU6ewteVApHEnwnJUFPaqLyeZQL9Lek+l5JGM1ZUS1ZBOoxdMNxHoNPn2xZHw0pMsz3qolYPvz/A
	OE0b3TWZaWhuxNZva+f3JKfO8VLV0QU8h2g2N+W3cxfqEf2JxM4gQRijlwXs0tDxmWRiPJbg0hxew
	9nAsvfNfAYtckN159bwv2moP1LqSg54QZ6ElftqtxKAjsf+QOegWvTh94+rXg8OXR0qTZeh9Z4U2T
	b5M5kmMQ/v5GkAcrSzOjZe2jDw0hXZXQ4wSbo8ROf2DNqsYqiM2q7Df9aLlW6+tDHmhmfwv/DlDbP
	IeqGMUHiDXiL1yJhyyUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlnko-00000006lLy-1fjx;
	Mon, 20 Jul 2026 13:09:54 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlnki-00000006lL7-3h3n
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 13:09:53 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-4728c12ba97so5028932f8f.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 06:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784552987; x=1785157787; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=E8mYPhXUmZpNbn2oVo3k+YKafzsgCsS1GE9LMv7AFBw=;
        b=wFwkQka7SoAiwtva3GAOkNuo2qra/dF0Dy0i64qWbrSorFoo8BTcCU6h1+xHPNynmc
         YflFy/em0NRpWTIQWqiUVPNkkv+NulNFyQBi4fexapzcGCz6UP0Oqw1NDVpa0ulIrZhk
         rsxoR1jVLHOqC6Xb89UriZ3//kOyLgT0yM4J3WpfHmInkPz/DxXxZ1/sZqkVxqDmMHnu
         I7x8MqB5TXhSVUQnBY7D8laqZOAI5bYQjMPGQPk3KA2nRlbqdPplXZXiflyli3rOh6gh
         /QUlAQOZnce2P4kzdKGHuf3tfRp++PiiLYQleuyspnANZGBnmucJRI6A/bczzI84Il1T
         OJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784552987; x=1785157787;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=E8mYPhXUmZpNbn2oVo3k+YKafzsgCsS1GE9LMv7AFBw=;
        b=EtIczDYrl6P/bDejMdIagafcL20FN3RAozrf+YkJl2ORhCqG8jglikZpIyj2A3uglH
         fX3mNUFuIgtKbjOxyivdj0BKl4fbmw/Axfr9OCLWtbrd0fUrJfSMS8Kc+Je8qWGZ8mIK
         Ph++W3Z6bBhqRo9w85rpN/ikCA7XVuX7ro7VpRxFpZh2u4PReRn3wd8i+DlsWSvHSeXS
         vxdbEVrrVfdZYub9s8EqlanrOIu8e+jpKwVlpuhUbvaRU6/tN8U5PU41+ueQagGJMBe4
         g5Kl4A0ry2qbDeJhAa9JWdsbnPCO4tDBttM6ZC0rwUCRZrwFKcLu4PQAZO9AlXZcP04G
         0Ggg==
X-Forwarded-Encrypted: i=1; AHgh+RozH98feehrxDNU+oAkvlV3YLVen8TGHDS4KWIftz7R1doW5mCM0u/Ga18ZP5U77+4VsoBTAp2M8/pxnaSZog==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFefuw4/v7m+sPTk12BJjKmIv26S87i3fhzkWul6Owl0C3b/b0
	MEjGDoNpzjTOos4u+WAQjKl1K/ntLQ/ekAgB9mnblNZW+eK+zUOBmyoYNb+YhtH9KoU=
X-Gm-Gg: AR+sD10dTZo/c9PaEBB54hLW6G+OW7b0xwbDQqfDpQ50kjXN7dyGIQon80EfXiPJXvW
	rqnQfJMV1EwJ3UBBj4ZGAbZfMN4Thi0T3Q/042nwAyJMhMSuhq/VGgSAg4kBPYRoxag2+i18wxG
	y/lJvn7JUe3zkTf8UGMK0XZTVB5PrH2WTSch2kr/BE7zoWULu1APNqvTy+EYC7vwKVSxEOfiOtj
	F4KZrYwlaLvbQpjogZ4qrL6+D/ziHxZkz8QS/VeeOSVtkHcRtSWOCKlnYXbPgtcQom6GpLfZA0U
	0rvVihEw8m9AQSS5VDqUSRL6EWJlkluEdFCSvrfvEBRiWiE9m4MLI8jMe8FU0shKrNKrqDAShs1
	hhZYe5T/rw9dN4ziKtqvu1kMP3vI8sGD/7+n4xmXElLl6qcg3w6S1sif5EfLhgxer1qe3qltrY+
	C7/fJLKNrSQns3274fE0QsAgo=
X-Received: by 2002:a05:6000:25fe:b0:46e:c978:7ddc with SMTP id ffacd0b85a97d-47f62316b85mr16082343f8f.24.1784552986541;
        Mon, 20 Jul 2026 06:09:46 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63ec7ea1sm30767434f8f.24.2026.07.20.06.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 06:09:46 -0700 (PDT)
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
Date: Mon, 20 Jul 2026 15:09:38 +0200
Message-Id: <178455228150.789946.15332957012612566281.b4-ty@b4>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260717-drm_refcount_wiring-v3-0-023900c32e01@redhat.com>
References: <20260717-drm_refcount_wiring-v3-0-023900c32e01@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_060948_945428_C3E1A9C3 
X-CRM114-Status: GOOD (  10.06  )
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
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b619d9d2af33db01ea237e3546e9d55595e94ea0
[2/4] drm/bridge/panel: hold a reference to the wrapped panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/34069e04d338a333561b64a2da055bd16bfba39b
[3/4] drm/panel: of_drm_find_panel() return a counted reference
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/738ff709f7cf82a41cbd9f6b8f9b1f236ce26610
[4/4] drm/panel: find_panel_by_fwnode() return a counted reference
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/d857b8ce04a7ed4b36a11db16968ab1652ed702a

-- 
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
