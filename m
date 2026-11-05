Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42B1606A32E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 12:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tgHvPBR0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=WnJP8bqp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GbbeFS4vnFFS6pcbugSuPs5hVRNClVWZQm8f3BL/a6c=; b=tgHvPBR09ntbDle0pXrTJaJbk+
	2r3KxExwhqJsfEpS2e1XnroK/3NM1qZ+rHrnP8QZv+M2ShDlmZsY7oU7i4PhHTF79pdPcppUQ0t6S
	PNVam5HyaDcrhW9PBrfDKxN4eLLQhQlbRd/AGLwYakUMIbZ8osxNjQHmRb9H/Wfw7ZOSRVUBImWO3
	1P5REq2nPOy5qfYCDDg9tXzC7iliIVHHZjYVfxhopvp3WrU5B71932mpo1e6GsaBItTOm5jYDR32H
	ySCjx3VnV0hzf1u9lqJonbz3JDoUiytQsUALXlwFJFbJCISOK2O4b/dZz6NywYIopywagid4KlVuZ
	GQXrqVrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwWY-00000008wA1-39fi;
	Thu, 05 Nov 2026 12:24:58 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwWU-00000008w62-1NKU
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 12:24:56 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-cd6028ff33fso906925a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 04:24:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793881493; cv=none;
        d=google.com; s=arc-20260327;
        b=blEIHg7BN1tam5Ok4STH7tvcxrT7XMIh8C4u5jENCr9WH9MLrxbAGKZBTGTFIKcvza
         6TyfRPDYcthrDNZ5Vb7abndrctUvAwS0d01vor/yjZnLmA6QENaiBEqTieSwOR6jao53
         j+XiGqBVEz5OhIsOSIa+IUxAqagk2DKv5tksPb7LhlWmeC+9ZcpF7f0VMpl4OPnuh/PZ
         angajSixmJ3K6XAgqX7xVRzUpe0GYSDabru30X7+7fHHn1p8QzmlAymN0kc2zBjgEjaz
         BkHjY95mACot0ZA96nwQtW5iIsQ71UBgDN5AYZB9x13A5MB0cd709+Ll+4975zKHo1bm
         2ytg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fwDskA9fWTX9sBCyIzGNiSQQNIOQGfJ8qP89spP3R4A=;
        fh=4TVajtR5d90MPSr8hnT191r2RlGB89niZDrw+TS3L9Y=;
        b=BpHlBzw28RKrw+JvdCv4N1bcH6L08jccQGDiDo9Q1w2ApMvk8V/D8V0mbFRWlAl4EP
         f0tCyVTtmIuR2te7DWL/sZJ2Q+lmJlrvKjbwoOlDhlkg8cGiHNlyMh4TksQ0rxsSCyYT
         jRM7CG1KH9Q7caCu0jilfH4p8AYxq7O/TISBfkXhE+wnQo942+eMTyEbCNv9TM9vZgfp
         YlSXmSmtL3EksqlDL4Dv0Ycs48fpdR5sN7Tk1l6p2iyU4DsHBFyI+PQjZoDcHlZUs/I1
         i8WFffwS9HGuyPzDff1jfbKiG4CKoLRZnK98rTQAPROndmGAyZ5yqH/JxeycRxsoY0/q
         fp5w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793881493; x=1794486293; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fwDskA9fWTX9sBCyIzGNiSQQNIOQGfJ8qP89spP3R4A=;
        b=WnJP8bqpyog18LZsLGF2qdhZYAkWM+Q2Mu1g40D6N69mwJfTXzENVyPc0A/H0eSu6f
         dws6baXX47ec6YkzgcYUG4nkPkCPO2u/5sLembNvYqeCkpMQUTmKM659V8hFQ4FVntU6
         ku70Nc8BQ43t5Mb468G8J5pSVgGDR2Z0D4mpSjFTuPi9jg9ZFDQsxijZoiR2g6klNAzS
         6uj2zCOOJu6IbdEMQsJaplt8EF1kr+jAbWqHCK5LNZ0l/L1cYhZUtqLU6SrExrcZFsuA
         pe3f2eyXhkA9Nxb1dkFMRqKMg8gHG+QOC/xaF6EWG27/zCcTPbT23QqD2AGuBYhEFioR
         ByKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793881493; x=1794486293;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=fwDskA9fWTX9sBCyIzGNiSQQNIOQGfJ8qP89spP3R4A=;
        b=XZ5DfBRPzRg4BXzX1VBr5VA5rXro3fQjnI2Q2GDGcqBmvpUTEDdlUTTdBFt7uqBTK0
         A/ykqLZm5FTCzUrTXytgZD5nlrpNobYG6efsjN7huCtB6RD5lp34nUfiOIsWf4WpIOix
         9FC59pWV7RNz5lnTsoqY1qqww9sC7jWrgRI12CRu35BwBK30F9tEu0egECHGLppu5Eu7
         C9PL0D7XO4k5PLOShMj45aEKfBEQBQgKzakWDZuL48kpsd7KEi2xyB8xH7wnHbsubKiW
         7QqSBevQOv6m3FCOXj7OFZcOmvRE142glbedNsQwZhfWpp+VcvAxvXahXSFdWZ53BhFD
         SfPw==
X-Forwarded-Encrypted: i=1; AKwUvBwFI2K+JS8yqgPUDwd8qIKl6TNt2S/CAXyK2tHgPPLIcGPElRgANdNnynggc6hxBtIHtsnaQMGZR8QBKLIWDw==@lists.infradead.org
X-Gm-Message-State: APuU4Z84zUV9BVYnK4lNSbms+WF+NvzCPHBYCiRv17v6MJ17rKHXmZ0A
	dKz4/TV7JnK2iY2wSavOCADgwP1XJKTo2XKUPK3V32jPl4oQJBnIUIDKE2CX1y0lqAUdIZNwUtc
	gyHMK837lzkp/rZJaT9C/gxG2yeP8LpzQ3SqQ0DDRdCWc7UrUU/cD3UY=
X-Gm-Gg: AYBFou11UVA54Fu8M4R1uaYR5TMTkYJKxYziFakSHMnLlgsPfxny3yTJP0JaBvSWugi
	U85t7C5Th2/JS829Zns86XiU3NxwK4PhxoJdSkfn5e7qOndibVftvWXFgfzTSG519im0J2lsA56
	9x3x1a0Rt6o2U8mjCKzbh+ABjbj3FEUSp/qWgKOp02WhZ+R9yfq4oM64YVpom+xSuG5tZmqpgvP
	13Tf4pV2FR9F9SFaLd/BswQCDtOQ9nQe1AsbNAHQ5thYhTfaGqBZbvp/Apw4+iq+z5onE0Thckd
	BuQ+HTxCiAkWkoVXsZXkyCJw46bfk7sI2oO3FrVuTEbfnQ2D0JW5zy9wNKmPCHTIkzrVT6C8lDT
	yay0gOvSH8QGLQmb/JdNJx3pYZZ7XTA5KPiQv
X-Received: by 2002:a17:90b:5485:b0:3ad:c482:ae9a with SMTP id
 98e67ed59e1d1-3ae8957cc71mr15827995a91.1.1793881493387; Thu, 05 Nov 2026
 04:24:53 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com> <20261105-dw-hdmi-qp-yuv-v6-4-1bb63ef5766e@collabora.com>
In-Reply-To: <20261105-dw-hdmi-qp-yuv-v6-4-1bb63ef5766e@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 12:24:41 +0000
X-Gm-Features: AclHuK9ClbYY9N6f31xMjtm_H95iii7gcZZZTGs_rA5ccUrhMgtzVapBrsI3_h4
Message-ID: <CAPj87rOgPMc4_nvVj+aHK7qUEQBXCMa4OUHHC=GyYzr2Ls_Wag@mail.gmail.com>
Subject: Re: [PATCH v6 04/15] drm/rockchip: vop2: Balance state on
 atomic_enable() error paths
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>, 
	Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_042454_414332_0DD0D77A 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On Thu, 5 Nov 2026 at 01:01, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> vop2_crtc_atomic_enable() prepares vp->dclk and, for the first CRTC,
> calls vop2_enable(), incrementing the shared vop2->enable_count before
> programming VOP2 registers.  Two later failure points return early with
> only vop2_unlock(), leaking the dclk prepare, the enable_count
> increment, and the core clocks / PM runtime reference from
> vop2_enable().
>
> Since the disable path decrements enable_count unconditionally, the
> leaked increment skews the count, causing an underflow or premature
> shutdown of core clocks and PM runtime while another CRTC is active.
>
> Moreover, cleaning up on the enable error paths alone is insufficient.
> A CRTC whose atomic_enable() bailed is still committed as active, so
> vop2_crtc_atomic_disable() still runs its full teardown, releasing the
> same dclk prepare and enable_count a second time, thus underflowing both
> counts and, where vop2_enable() ran, touching VOP registers with core
> clocks gated.
>
> Fix this by reverting exactly what was set up on failure, and track the
> per-VP bring-up state so atomic_disable() skips teardown when
> atomic_enable() never completed.  Additionally, ensure any further
> hardware programming is also skipped within the affected RPM commit
> tail, i.e. in the callbacks gated by drm_atomic_helper_commit_planes():
> vop2_crtc_atomic_begin(), vop2_plane_atomic_update{update|disable}() and
> vop2_crtc_atomic_flush().

This one is:
Acked-by: Daniel Stone <daniels@collabora.com>

I don't think it's the world's most complete fix which covers every
corner case, but on the other hand, building out the tracking
infrastructure to do that, for cases which will almost never occur in
practice, is going to make the driver pretty unmaintainable. This is
pretty much as far as I think it makes sense to go.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
