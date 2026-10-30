Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B0D606A324
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oRbeyxkp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=HZ5snsFi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=im3AaTdvr5Wio6P5H5ejSHLOveIfyipw+A0Y3nAoVsM=; b=oRbeyxkpWaMEa05LEAZer7pfxO
	wBXLDTftVnefgF+PbPzJTb1LQAuH3ZqA40vZ/jVa5I2Mbg0J1WDYy1Glwgt8iokeFUlktY0Av9+Zz
	g+qbFd7rfeynF5IxTRzsIB5OMTyBvcBtchRG8rJKsQnYE7QUpg4QBExcG/TVk/fLIDee7jCBvfuNg
	Eq+8RpcjiliKVgdN7YFp3lPw22fAvLQbCTmEwTR5efB5/kiCYUvrAIBu2eE5d1YQxsuoaNacPiqit
	TCovfLkBCpErm+8ImCiBcwzAIYfez3NSNg6gqlfMutnj4+kh7ZBzqD4adbCvFdnWdn+5Yi3OXXcBJ
	vNgUqcGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlAC-0000000Bbbv-0Xuf;
	Fri, 30 Oct 2026 11:52:52 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlA9-0000000BbbA-3mK7
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:52:51 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-3ac9f49b984so358343a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:52:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793361168; cv=none;
        d=google.com; s=arc-20260327;
        b=KY9OTwtLfbTDvT5ZHWNC2ElXalewJmXtqHaHdf3xP04DOPMb8pcn0qmGvFfyRgt2kz
         +W0Dpi8RpQw1RHxhAzq9zHZRa7CJpLPiMWq58sgoikBLTnnAaa4TyNYv3JL92XiwJ3Ai
         uNTtcfZ3+mffRNwhcTMimcuEngKrngaoK1aHzVJ3YP3hzMKaqmk+ji4HvGF4PBS2+DqR
         jGzPdPxiSNOnKN0MpkmOSuUWgZ9dw6jZdDcvkpSNPt1HOYFeXzSv1iGRKKO7UxaL/PAq
         JuSZu+pwxcPTYZNlq9/Z9ANSZ2iyN89PPy4Xd1oi4wB7/aWE2BMWTarPPOahSdXsh5wI
         L3+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/PX9RtW2X0oN+uy2podVJ42Ja19q2gn1FASRjTAuuRE=;
        fh=ydQWWlD7ev9m93Hrci/Z0FecXuoUVQ2nJFQe8I9JCpQ=;
        b=sYtfROwSFJ2kf2pCPzv1UYxazC1As1HW7Y6CDU5hajwI2/CRT3+8y4YTm5YsNr+eaa
         a1M3khF7OyNa7eBfkp0TgD3pHP5tc7e38Qoutr6H5Bxra+mjvF5tkuh0O628p/yynZ0o
         ZXKZdEtSRt0DHJ9x5zHew0TVEKP/UIsquPqb3LngbpGziTo3YJcZKxJsCVBSFf7ve/wo
         O8LMQ889lY0xvfWwZlhrVXxblWg0LxyHpycM4Y2GncHnxV1Bx2qJr7itgAOGo1tbX7y7
         mvQFAFg5sFF58mCZ1AhcMOZqOGZb4vHQG5ZYRXDe+j/ABYugQ9YQkNQF08n04BLuk7pA
         11GA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793361168; x=1793965968; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/PX9RtW2X0oN+uy2podVJ42Ja19q2gn1FASRjTAuuRE=;
        b=HZ5snsFiHPa+EmBhti1qsfsYmqR3s4j+HNOGWCm+vhJa2KtAeeJDNWmDYmgiPiw6E5
         l4Dp6qiFK4I6maRp30GVcFDxDnBga7Gc1/eu6tPFjxuBYEPnQVfjmAqI3ij/4VTa2l+J
         MEeW3gVCDp3SoIwAcjZ9PftUtU/puGeuwmA728POzC52Gj5jHZe3vu3IlC+s/+fJfhGx
         pfGFk7HKYC+VVUm95x/0r7rYcKeNLMTYi1rRXSZDbNy2DTG7KdUFpvimJrhg4qRfMATm
         62ij7D0zCFRNRJeOpHGd+F9fhX2OnOPv1cspxgclL+/pzgKKTqa8efVcDYtkfImerr3W
         Iw5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793361168; x=1793965968;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=/PX9RtW2X0oN+uy2podVJ42Ja19q2gn1FASRjTAuuRE=;
        b=c/VPyVKoAJ4aKXGCdCNLFzJExcEY2PWaiZR6u68evEaCZd+2Q8/Ch8rQ41Z9jFpfuD
         P6gfeXlKYfV9fk4yw/OjDtr9pjCWRUK/ZFHCLqSNBjSZoOuPE6SGeSr6ZZAUKhYzsnsG
         ihtdli0XxAlpPUYITRpBTtZ596y6Ke7kJbnpXya39ga0spB2JVragrNEj0z+BaMUzKoG
         cL9fHr36cFNf6Ot86ALZiBvrJP82ZjG28yaUy7SSG/juB0kV9AqW9xAU3w0a48eT8rK9
         Oh27QhyZ7XEiojMh1chMr+poWxBbWXIJbOtS4Mar3sB1tfy6ay9vTkXYg+Nj+l2/9ZcB
         obDQ==
X-Forwarded-Encrypted: i=1; AKwUvBzFvUVR1gq413DispzPvF5YgppvfZVm1UE6hzpkt3MStTKqpoUdxfwx5oXMwJsSdHUIRirfAabtK8GIYJYoTw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKDvGaO/7YOQ1yUUpnM1zEg7B/WMC1RASFQ/p6KYHwUh9AOh02S
	7ID7/AYSLzDbHupJkyFKYYU7S+i+ZMD4JRNaCZCmqjP5xBeTH2zTlfI/ZLO3WOrk0DgNQQK7aAB
	mJbLEt1ujDiZDXcil4ZP/Wugau00esep0RZYmr5laL1pSK2a/1xE7vgI=
X-Gm-Gg: AYBFou0w9isfOGLLvOZGkti56+HHhk17kysrsiHgYx6ZGz+tX6RYI9rYbIB48aFVbbJ
	zpN0KgnqHIBbv8YDRBYuBLAh6Ea7ofaIluf1NPrqVYGpGx3/xkqG3BiGuE+2oZbLpvTQXSokqqQ
	XQYRBSXZnOj20nf17J0dF7FyloqZeCE7NuN99ihXxYkBfUGscgAnQxNBcZLEP4ekvNkl7YKntvi
	Z1p853FySdNB5DDrWMYnrDuru/JpIiEVhl/cCviq38LHgN9MJ2VaeBbTflShYL79Xi0T/heEeF6
	rwx+DuF4rCmaPCmI8TyWfbM/jK3gLW0Sd1aaWeu3Xk/ygBnbVKRZoDecHQHWR6/yJFhrM/LeDAi
	J59+dfRremO1Pcna78khdiJmiuQVIn4ga+jl0
X-Received: by 2002:a17:90b:2f0f:b0:3a0:e568:ed63 with SMTP id
 98e67ed59e1d1-3ae896d7af2mr1070361a91.8.1793361168540; Fri, 30 Oct 2026
 04:52:48 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-13-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-13-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:52:35 +0000
X-Gm-Features: AclHuK-idMrAXuG27Lf8hdgtB5yVIMARZUjc-ne4rm8j_v5CZmkmZ5d54vPJbms
Message-ID: <CAPj87rOMjFEjOQ9TVgbGWu3gTwVjmjuFNtnFiyxbWO+g_RPqeA@mail.gmail.com>
Subject: Re: [PATCH v5 13/15] drm/rockchip: dw_hdmi_qp: Support 10-bit YUV422
 output format
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
	Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_045249_942365_D6B2FDB4 
X-CRM114-Status: GOOD (  10.50  )
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
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On Tue, 13 Oct 2026 at 23:52, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> @@ -229,7 +230,14 @@ dw_hdmi_qp_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
>         }
>
>         phy_cfg.hdmi.tmds_char_rate = conn_state->hdmi.tmds_char_rate;
> -       phy_cfg.hdmi.bpc = conn_state->hdmi.output_bpc;
> +       /*
> +        * YUV422 always transmits two 12-bit components per clock cycle,
> +        * regardless of the color depth, which from a rate perspective is
> +        * equivalent to three 8-bit RGB components.  Force 8 bpc here to
> +        * keep the PHY PLL output aligned with the TMDS character rate.
> +        */
> +       phy_cfg.hdmi.bpc = (s->output_mode == ROCKCHIP_OUT_MODE_YUV422 ?
> +                               8 : conn_state->hdmi.output_bpc);

Same question as for the VOP2: why only special-case YUV422 when
YUV420 also needs special treatment? And presumably in a way which
can't just be mashed into bpc, because the maths doesn't work. So
would this be better off being handled as a separate output-mode
adjustment?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
