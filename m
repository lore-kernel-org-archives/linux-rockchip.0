Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4857606A31D
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=kO9J0vQL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=g3cb1ZJ+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/XWF5+uFiUDs4mUvtWsCQ/gx0S0vo6MXanZeHqf8NKQ=; b=kO9J0vQLdM9sW3Nv/1jcM9NrJc
	OyswE1LrBYXENzG8BJS/LlOHgUWynaOMdlxUejFaHsUjn9zRsA7npUqm4rNR6JxoLShwSFkjK8514
	U+tbBwW1SMInCPCM2N41J1SNFyS3wyM8Uduo9dRo8OIuPsZvprZ/motVvlZGtGdbn26vmvoM8MVL/
	wGqAj8b/MFjTRCQzysKOukErUIpcbfEY/jbBXUJrGMvPPMncG9X1nJtSZJ3kb35m9UTcEaoF4PInj
	mokvRN6YMQ9sh6nNELjGmOzATzwdDYQYZgusuu5rlOtEPXNFmQvSZoUxus/BJxafqaJTQp+sMnOUY
	IJBZZNgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkt5-0000000BYzO-3q5B;
	Fri, 30 Oct 2026 11:35:11 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkt4-0000000BYyW-0fvP
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:35:11 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2e7e742a2c7so3909325ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:35:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793360109; cv=none;
        d=google.com; s=arc-20260327;
        b=n1Po7U+7LQw+VHVg3EOgimSrpu6saz5BCVG/iT0jPBP1OTrGJE/rB+lfOJOs9l/xNS
         YdhsPoaenruFCLn3WD3MM9YfWbPGN5+7BaO5xeVr6OKNRkh5stTrU02kYuXUKI5PdKyl
         U14RGmjTRxxmSpsHhzIn+BqhbSXRVOcJPT5UnbHerVia6wRYuEXIMa6AgF1ak+otYA7v
         XQSUBl5EXEXdzKmw8LIyqCLFOFST9iezsh170vOwMjgM/A/ZccLHASqEsLTmcxQmTIH3
         B0idfgUrRKoLwub6BPO56gmnl3gug9A50qsNEE+UiXyw3bVLGksEOWGh4R5/RTthibJe
         QR1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1/uyCfgrexYOU1XKSxjmyAIj5YjfxeLRY3LwALyGTk8=;
        fh=B+m21VvkL8r3rC/seg0AdvlWFC+JT03rCz3I2jmSAjY=;
        b=RPziu3dY+vffn1EX/uJIfFP3lG+4frcic1G6QqHvy+lsvEgGQvJn3Gk+Dp9+WCHrP6
         UrT5K8/0rThR8Q2L2KGzKjIDLr6wAv2de6u1mMr3u1P8BiNfZGFUu40H/rM9FrSVR0bH
         dqXHe+Bbe8w69QHVXcu/GjOrWk/KcjacDDBZ+NKM3ckK/HlYHC0HA7xYbgd+Ex0uc6RN
         UIuFRe2wcsGb89a0M02309gpzKrpO0iMavO2Ij7H3pYDnTprFm//wDXVHOQ7LM3kzE90
         yngZy2Q4aODH4mM43qzA9pzdsSRSMlTguT4dtz2Qy+ZjOHrLrgEcAZMAhnjhCk80Mmaq
         qLyQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793360109; x=1793964909; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1/uyCfgrexYOU1XKSxjmyAIj5YjfxeLRY3LwALyGTk8=;
        b=g3cb1ZJ+TN2Zak63xVBXdxtjE/fDsNkyMZBKgfgUsaGPv6ARjfejrqjjZP8tpDtjRH
         litUN7zR+DVnRz+6TsbfzSXVCKlC1HA2Km0iZVVbpcWC+N88JvYcWr21gu4583LEmE3b
         tbKoJOBwfyOpxUfEyHGcUYMdEUFEJB6jRZtrGSQPNq3/BdX7hwNpNyZrQ2bNe5Lx/YTw
         I2PMXT4aO6YQDWJr1bia2wqvxXHI7SJSSm5mFf6ivRYBrpit2nVDMSBTZexNJKI3+7NN
         99G14BoWUg4idBOsKDSKL6OM1CVoz4r5EPDI/dLt/nTtbavW8A2MhFawvKGkPlG+O9+O
         +NyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793360109; x=1793964909;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=1/uyCfgrexYOU1XKSxjmyAIj5YjfxeLRY3LwALyGTk8=;
        b=hJL31t2Q516bsp1xvdngKdswlMb7ISTuSSby3jXC7N0Bpo2yDlnPiTa2LyCd4uyK2O
         IrO03hulaIBFE9f88cGTGSZDqk0Gzgr3hkDeqdPjb+a9lAaFh+bn8xXOY+Dcxtj6AOuN
         zEAUf8WsTN/gYMTDLZzLTnKpHmyYCV11NDuKeT5/TD9cl7p0Gx9qUd2jnat+Uu+p+Lkr
         J1Uga2HF7n7eskQ3e3vuYDImglpH2zZENUleSSlU+fJOEIL8w1ZUJlLrPYFs9t9LHNBa
         SHl/226vmhGG1XG45JWcwNP5Kt36OqW+hx5899YQYtp4y6sefag9mLmAxw5IyJeXy2ut
         pr2w==
X-Forwarded-Encrypted: i=1; AKwUvBwZlrXrdxg2gSTBHsVYLNNTuyuAwe9T37b0vI1IOQ7uag/DmdYKDzOzypYfe9xYSRnJH3Ks7JDE5fdub1U6WQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKK2vzuc5XzDGey4ZyW7duI/mIFSqeAN2+WR45I90ZuFyroKpWh
	jSKPMaO41zDwbJb+YOsvC6NsWbELuKkbKvV/9u3K5b4MZ61kDb8Ib1ylVUe1lDgshlL7PJtXHUr
	xgDaDXgVCSkfTbQNHBdOI/ZPipxZfHTvj5sZkaI38Jg==
X-Gm-Gg: AYBFou3MXeN/H8Bqbu14gHbhhJhHnrkf07osdAR1mjTXNzUOSxrWN2AASl2l+BEXFis
	4tA9BSwiUvcx1NQBpHUvoOYr8IGnPveRx/gV4ZCtHXiKbfTfBPDCjFzYfa3n0xWNIvqMG/CJKA8
	/Qq+gyCuNFLNOcYoGdMV7wL/VmAQKh4DxjGQ4aZAZuqTvD2004bbLI2pClLL9UDqXoR3JVsdkzA
	o92Ooiafcu7EQEgR5Itx+DwtYjH5hZtuiHIArepnuw8ZHw+Z100ZSNWbYSI0AnMXZAYhBVQHQSf
	StvkEgcS1Y5Y8IAqG/2RZSAyEVcU2AErw9iU4rK/rXkpkt0liX8+WwWS7VQCZxQ3c4bxBwKeWDj
	vyCs1PJ2c7TkMKkNFdoSFv2jnaZX7+nPFlN2r
X-Received: by 2002:a17:902:e549:b0:2e5:41d6:178c with SMTP id
 d9443c01a7336-2eb364f8d9bmr16400675ad.33.1793360109306; Fri, 30 Oct 2026
 04:35:09 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-5-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-5-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:34:57 +0000
X-Gm-Features: AclHuK9zIGd0T_kGXOKSuNwCM4dWmBNTN1uB9T4b5-OFaEClVCp9NkMOArmh8_E
Message-ID: <CAPj87rMh7_Efefe3D7DyOFmMiFUtBYdC8e6EXfJYzhEu3DXDyg@mail.gmail.com>
Subject: Re: [PATCH v5 05/15] drm/rockchip: vop2: Avoid division by zero when
 computing max_dclk
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_043510_224248_70A97491 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
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

On Tue, 13 Oct 2026 at 23:51, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> Default bpc to 8 when it would otherwise be 0.  The resulting max_dclk
> value is a don't-care on the non-HDMI paths that trigger this, since the
> encoder loop will not select the PHY PLL as the DCLK source there.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
