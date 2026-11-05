Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A531B606A328
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 14:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lqneyKyO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=B/C4vLK5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4gfX1DOW5iyg6DBOh1KUQ4i4txxFOpkiN/ewO+YnLP8=; b=lqneyKyOEN0+xFqGWq9mT/pZPz
	ZQjDtSzNc9YYPtybKUuwA5G5AM8/UY/in35bexAxTkxoMEh/zVbqSMH4qna2XC5fIFaaGmFXtMwKZ
	+i/KjBzVq1d5CxkzLbHjrQE1bgSGvr13b2YyUSSx4I88WIs5up26qFwnKzHwUMfKodhLMoutnVMiA
	B89ldbfUqNuQ3ddaDGrfIG860U8D25putNbFecQ05eV9fN322ug9lghgar8Cg2EmqDW3HxS5toYNf
	JrCO6Al7PO1sAO57HSzyyF+AiCs7jOadvMnj9hAvAs8LbKpLjr4kwcICTxrTHzFYsQVHealqS38vS
	9EznFZhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyXc-00000009IAt-2Su2;
	Thu, 05 Nov 2026 14:34:12 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyXZ-00000009I9V-0seX
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 14:34:11 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-3b0d0b80fb9so127768a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 06:34:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793889248; cv=none;
        d=google.com; s=arc-20260327;
        b=pPMBV65BmpMnohW4rYaIV4iEWDrBOuf4f+sMl934WqIYiOs/O2OKPmE07vpVFlJato
         gVyVvp9HplNRhmO0XnPdK1LhrgRpZedPeygyYCazEAAprGo3iXm2laDvy5hGHBGkUfGm
         A+26vpPdN9NErCq7fjnakePfN0TbM16vnqqjXnjU7bLRAb/GdimufLEq+T37LSgmMzJc
         9AZ9Y0nxiGdwYoGIu8z4uxiucLZT8qCYa+rrohNvtvCVE8PiIpx2+1eA1rQS1bWkzSzr
         +0ffV3iNmKShzAmrgL7emIslDKuEdbsBNxvRo42w3f9oDcAxjD4t+0SNb1lj3msfcSbD
         SiCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1jZ8AIzpmZVSpEwlYYo7Zj/7Q72rSuq9gl+sxktWfs8=;
        fh=XvTYymOhOLJGYIPmfxjYCGIeZWfGtwColKMqrkcRxxQ=;
        b=g+Dv+jVL9r4nYpUBln+fn5MoXX9qpnhDW7tSH3MNWa3hB4QQr1hDqf5eDNB99jW2Lb
         w1DiuXlVV3rsW19m27g0Ogb8bDHiJTpwJIWIJs78X3vclZvCEW2ZfoW6RDEGT54fR8Mb
         poHFr9ytDonmyp3dibr+6wbpqHHxsR7DDsmWJd1xq+duXiEQ3WkiI+Lfqt+AklNOXGuB
         ++8DeS8VyvOmqRjA4xYgMzs17MwWoWyeVQ+Jemj97gGmWJm4wYxGtFbilXQw9NPPY9Vx
         gxSx2JmELLiKlVceJ6ibaEk7jYVtYP5HKqj/vBoDwOaa0hc3o6oH+z6ITWnSVVGrvngm
         mqTg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793889248; x=1794494048; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1jZ8AIzpmZVSpEwlYYo7Zj/7Q72rSuq9gl+sxktWfs8=;
        b=B/C4vLK57QGu2V2D4XS4A2SBh2Ir+07lKhYQRZGFnSK9EWSOz0IBCZtrPO8kTIOSWv
         1oOgTQ9V8oJJah5FS3SCBI8E5Ajf62XUt0343h5CBcC8rYd/xvAMqNpJnSxK5sqCXf28
         stUwrybFiEFDE+6ZqsuxMzUZYFQ2GpLudi8ttVBLrwbxXlX8ghl4arSxnyg4XGCMe7WD
         cXu5LTlpybSP7o0doFMApkK4oo6P1vs6dTuAB+r5xNxK2ozlGlJyYfAh5DHWlrEe+l99
         mVMnWjLeL9BCy+GLhlkBVt+ulD3AHpNaW/DhQArovXvAwwtn5UvO2ucF6K8X6Ptp3nzL
         6vRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793889248; x=1794494048;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=1jZ8AIzpmZVSpEwlYYo7Zj/7Q72rSuq9gl+sxktWfs8=;
        b=2prNOsfgQ8/lSRy/oAhJxuvhEblN7OqQ0rPZjgMd9rBK2MOBlHvwrZm9poM3MLn9kr
         nmTum+f/yo8ePJyAkWVwBoCdif2NkrO8IjSqOQDABmgz/GKst9KXHThdJ1C96aINb55O
         UbcZWJiCcQLT0WxWNltZG59l9oiCSvAlPzlOgkAphG+/kfS5DixpdAN1hzVBzcar5EVh
         I33oLFNchLfiVUYZQuppna3yTL9/URTLQmKBUnwOG/B/wwSdfk3TOLz3xKMeT/xTHsE7
         f/Xly5D5flI8XxVo6AZGbAIFMtCq1ttOmUYYujqoDD17UYNabgd2rkkcaTRJU7iFhzFs
         rM4g==
X-Forwarded-Encrypted: i=1; AKwUvBzhICWjEPNoMKi15tR11n8vyL5zH0WZolddglYIGDY0yMRLbE1wbdVATmPZBDxOowYAMzJCW7SUzdWAQlNAJA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8Znpu1JmsV6ig+cAxjImo2gqmVEi0I7/F6B+Z3u9Hx4LNB1ySF
	SvzEIedHdEWEjrRDTVgnieyld1JoR4oO0Q/8T9qx21kBLQgyIWbCK93K1DodsOAjPrs4m4/0a/J
	sDca1Etbh3We+YG4ylV8+40CjR+OXUN+ygGPmNAMMSQ==
X-Gm-Gg: AYBFou1KmXqYKc80Wduad+L3BgkZcynD+dYRC65a+AZa/QIBI+Kf6Cys5aZGd9LAquZ
	ye8nsYAWBQlUYz9Ue93ymKbeOqseFIDJu5I+bO/bU2vIjYKIB0aGUdRDL+Luhsd1/qIqFtqHCHD
	Ys6twNIMoaK5Xw+TEiRF6pWaJLSlL4atsuckj8IvSk1u5aASsku2yZ7brMVQp9VN6IkRg2SNlfc
	vbn2ifwB057GZefJL17QHeMbs0EElEXAXmVuRXgD87CjLkC6V1lSYmLpnnKHUEK0MlgytGvag63
	74GqlVMlGNaEMPaBWEct1LVEQZqPxhXNVaLpa5CMbkgavcK7AO7T2Lqh0lZ8x50ajXly9vIdSI2
	m3B+ixBXMPPiDKW4b6EcIZ5qr7yBldI8RQ+rzAwpHW8B25WqOL4JF8w5J/Q==
X-Received: by 2002:a17:90b:4cd2:b0:3a8:a1f6:3b32 with SMTP id
 98e67ed59e1d1-3ae89772b3dmr14182837a91.38.1793889248197; Thu, 05 Nov 2026
 06:34:08 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com>
 <20261105-dw-hdmi-qp-yuv-v6-8-1bb63ef5766e@collabora.com> <CAPj87rPk=girxTziKY5ROV3ZYqGhKRz471BLWpkCjtvNNseuog@mail.gmail.com>
 <7b86ca7f-fe7f-492a-bf88-0ac7afee3963@collabora.com>
In-Reply-To: <7b86ca7f-fe7f-492a-bf88-0ac7afee3963@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 14:33:54 +0000
X-Gm-Features: AclHuK_cuDuuWPdBNDPf4-o5prQpG_rTSQHgkH5hHnp_VrKYmgc4urnB9GsSVjA
Message-ID: <CAPj87rMWa0wyopX6D2dUSYLXUYS9wvzVUFeKUh8coTxtF+Jf6w@mail.gmail.com>
Subject: Re: [PATCH v6 08/15] drm/rockchip: vop2: Consolidate HDMI PHY PLL
 clock parent switch
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
	linux-kernel@vger.kernel.org, Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_063409_256518_E6398EB6 
X-CRM114-Status: GOOD (  11.83  )
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

On Thu, 5 Nov 2026 at 12:56, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> On 11/5/26 2:18 PM, Daniel Stone wrote:
> > I'm confused ... if we have switched to the PHY for dclk, then a mode
> > switch wants us to come back to the CRU source, don't we need to
> > reparent to dclk_src?
>
> This is actually done in vop2_crtc_atomic_disable():
>
>     if (vp->dclk_src)
>         clk_set_parent(vp->dclk, vp->dclk_src);
>
> Mostly to ensure the PHY related resources are released when not in use, e.g.
> after unplugging the display.

Right you are, sorry I missed that one.

Reviewed-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
