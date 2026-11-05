Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0553606A328
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 14:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z07naZuR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=KgHXtfpZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Vc1rEoeFIHm3UogWu3DODOkog2LbQtG2XUyuZzGmAsw=; b=Z07naZuRAH3yDRntB8KBFKj74r
	nhgZrE4rJsBUokGE/m1dSRrJ40Gs3hvR9n+oWrgghnaaOBj+1slAVEN7pJvX80kJPMMUcthntK+13
	G/hubi3tQtghZuXgp6LUwYC2amgk3+s7lLD7VnAWlihyhSVmG4TpATtlvHyldz6LGftmHDB+46xmz
	erFtZON7KBOTPJvD9o4PwJCxLPuOk/XMz+TDg5gPAzKXjhkLXGnLmy0bgguJeqittmTt7ct1pl92c
	Tg3u7VxY6UA1d9W5QZpspwc4B39Qp/5wKYzDKFqYvAqCwCiaUB4a8glPrpTgQg+q39MQ/LtzV+2iT
	ETaIr+PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyYw-00000009IVa-1pBc;
	Thu, 05 Nov 2026 14:35:34 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyYp-00000009IRy-46pR
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 14:35:33 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-8b29b83fdf1so264415b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 06:35:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793889327; cv=none;
        d=google.com; s=arc-20260327;
        b=sKc+tBMm9Zf+3/hLw2gzGDvKRYhWiJ0UxyORgCezlwsZ3dckElCXfgT7vfRx+llC0M
         wKZ7ztbHeaICNIirSGYCnukaix0+OtcDQrEeu9CqU54dYDjnN5mjjywJyZJr+LoeofWe
         W06quJMurli6xkApB68lThCphK54AYgq/wYoN2rHSPaJn0lRfN9FsSDTlO+4GmIb9J1L
         dHuTnn/82hZswmVKS0OKEecTK0lKG0lTw0vOrR4xTFzhFO3bnKH5jU0ICzR5UHPCuflV
         nSLdM/WZjdwDlQqzYfTTg0lmx3IdfeHIYh2HDchXtmuBhVjxQ29OoML8BSslK5OChdEj
         LDqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CKNrOVtQ7Tx/zqpAFEoFPOOWJYG2yTScVv26B8q6G5c=;
        fh=UFDaebuoCZ7OLAwUxswIJvdGpxu//79xTeUUCkWZx0k=;
        b=ooNTQ3uKdxgDV3pCubW1qjl/t4o7zL+evgXRr41E63MbF9DfTAIHyigyaboMwtuCtC
         l7AYckHWS+fcSv8KK/K6EfLMzroC2oGSvFcHFyryG/znAlsTo1Dp9unKrY6hLRBXzq/t
         Az/BcxaGGMq1WdQNR88yaVK4HjX9tWt+DwUyU/Y1aXU2DexXEi4ZmkbCIz2g6Db2PV4A
         a3U6Q+G5bdWitwxdiNwdyTZUrGovA+ANYF3bqC8tzabY9gkPdAv190IX7nfL2GY/TrWe
         /gsqqRYOmVihpd0pSHB/G0QOmu7Wm3GiSkpF2pudtFb3d97mvROveURH8uZnr6DZDZz1
         qpJA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793889327; x=1794494127; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CKNrOVtQ7Tx/zqpAFEoFPOOWJYG2yTScVv26B8q6G5c=;
        b=KgHXtfpZXzLkfCgw9ZW34TmIWoP1VxMYdLgwvQ1PZcv3w8tHA/jNeoqoZ7VeprQTmW
         OcwB/HaAmv8/w1sFhPFIQa1cZaDeM0DtdrFErE1863RgOMuyx/b+n4dAuYK7LWgph6js
         I6H6KckBJraeaJOgr6DwalWyvSTwRClPm8qR/XX6rpd16KQy3LnL8RJwAPjSdccLaB0g
         /nyeNCbKsbqU21QfrediRu9HWvd06WktUPtvmQtX0K3pMT+8yFtIoocXfiT1eAv5JhqK
         Ss3+k8PnNP0hgds681BjRTFaw05/0zarEoKK70tMGEP51v0NYM48BDdZOaj6e7TXJiYX
         MULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793889327; x=1794494127;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=CKNrOVtQ7Tx/zqpAFEoFPOOWJYG2yTScVv26B8q6G5c=;
        b=VZ+fQWZzROjsLCvCo5VvdiZvFyuaWxs7cMXk0+2fQMdvDOemi5oEtEXISJeK0FXROV
         8hpxtN7n3wv7hvCE9ZWdGklOMsFT3+ZHz7WOAQ4H6j/rCd5Ia5bPypnaDDpeKcpMNQVu
         malz5w1eJIMYj6CbGgsromdjz9a8cifxwzq3DD3PVtybSQCA3a5XfyWYnf3AKCOQb865
         G3WWqENBeEbK90cYUlL+cULCsve128zMvYqm/bK4A6Ol/lnXRtzw/jAcj3h7dFAy9V6J
         RHxCZ5nNT/Ufnxv/jQUU0FJ5sARzpCl4AAzbvOkNK2+OV6K90bZ/y/6J+MRfomw/WFMz
         Dhdg==
X-Forwarded-Encrypted: i=1; AKwUvBxmQLsd5znFLLsz+S/9sV6+h88TE5CXX5YaV8zJuHMcxn3mLPbhFduCTWA23CYpAbHd+391pwzfcUrCMoG4Cg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+K1WXw80rJjUwdIz06FVE+8rHOR54E8aV1PE+9orzp3kcEnscB
	mQH3W0OVAyfkeXmqLZ8Yxw+la0bLDGz3TMVGz9RDew0HgIINy9/mANC0HHqAN4DirT2aDIlLm7T
	GsB+2nhER3wMLSFTA9qVtl2kbJEPnzPFqflCMpFaCGA==
X-Gm-Gg: AYBFou1WufHxgYDhupY4QXgy347EXK3NpVYq1kgH2piTkU9rJPmaJQQi59VE6bTzp8w
	5QXEMn5yn8GreS99s9PYS34b3Hyli7SwzfwPje/4wRt65uDsF9Gvk1fnmhmtJvKobA6KbFl+ogi
	p6CkvDQn8Dp94XjdggaLFpAf3aH1qe6T3QUBLbg51A1t0QSqP3a4L67ZjkThEGVtN9HfPC5NKKs
	wZ8Ni4BQYrhTrmqNyXWqv/uNezCq0TKCjpOJTvsfHm5+srBIppchuGUPkMA9wjm1wmhbzKnkSiZ
	YgzriU9omhgOiARCM9Zr7HiS3Rl3TW0qavoHkbMQLv8UN34mxLAPCGvLf4JA5AACsZlMgVM7jB5
	UXZG7iFfJ0mrWYHtLiRluMOJu8PW3BK5Ss26ipot9NCV9PWAqQkGp6fW9Kg==
X-Received: by 2002:a05:6a00:21cb:b0:8a0:6860:cb16 with SMTP id
 d2e1a72fcca58-8a9ba806f4bmr13913523b3a.8.1793889327094; Thu, 05 Nov 2026
 06:35:27 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com> <20261105-dw-hdmi-qp-yuv-v6-9-1bb63ef5766e@collabora.com>
In-Reply-To: <20261105-dw-hdmi-qp-yuv-v6-9-1bb63ef5766e@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 14:35:16 +0000
X-Gm-Features: AclHuK_n1-N1ApR-k6d2Ij0iknOGmj4ALZ4zRGpX5gsfuT0639_6holwqyNMTac
Message-ID: <CAPj87rOutcy5VhtmqYg=YD4OB6dbRzxyaf1rG2kcASp477X6og@mail.gmail.com>
Subject: Re: [PATCH v6 09/15] drm/rockchip: vop2: Use TMDS character rate to
 select DCLK source
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
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_063532_060721_9FF3D55D 
X-CRM114-Status: GOOD (  19.01  )
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

On Thu, 5 Nov 2026 at 01:01, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> The HDMI PHY PLL can only be used as DCLK source while the HDMI link
> operates in TMDS mode, i.e. for TMDS character rates up to 600 MHz.
> Beyond that, HDMI 2.1 FRL is required, in which case the PLL would run
> at the link rate and VOP2 must keep using the system CRU.
>
> Currently, this is decided by reconstructing the TMDS character rate
> from the DCLK rate and the color depth, i.e. DCLK * bpc / 8, which does
> not hold for all possible output configurations:
>
> - YUV422 always transmits two 12-bit components per clock cycle,
>   regardless of the color depth, which from a clock-rate perspective is
>   equivalent to three 8-bit RGB components.  For example, 4K@60Hz 10-bit
>   YUV422 requires the same bandwidth as 4K@60Hz 8-bit RGB, typically 594
>   MHz.  However, VOP2 wrongly assumes it needs 742.5 MHz (594 * 10 / 8)
>   and ends up switching the DCLK source.  As a consequence, modes
>   requiring uncommon pixel clocks, such as those corresponding to
>   fractional refresh rates, will fail.  An example is 3840x2160@59.94Hz,
>   which would likely rely on a 593.407 MHz clock rate, unsupported by
>   the system CRU.
>
> - When VOP2 processes multiple pixels per clock cycle, DCLK is only a
>   fraction of the pixel clock, e.g. RK3576 halves it for pixel clocks
>   above 600 MHz.  Hence, an FRL mode such as 4K@120Hz 8-bit RGB, with a
>   pixel clock of 1188 MHz, ends up with a 594 MHz DCLK, which slips
>   under the limit and wrongly selects the HDMI PHY PLL as DCLK source.
>
> In preparation for supporting the use cases above, rework the DCLK
> source switch logic to check the TMDS character rate computed by the
> HDMI connector state helpers, which already accounts for the output
> color format and depth.  Keep using the system CRU when the rate is not
> available.
>
> While at it, drop the VOP2_MAX_DCLK_RATE define in favor of the generic
> HDMI_2_0_TMDS_CHAR_RATE_MAX_HZ, since the 600 MHz limit applies to the
> TMDS character rate rather than to DCLK.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
