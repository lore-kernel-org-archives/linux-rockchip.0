Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B51B606A338
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 12:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HvvM2Wmt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=PAsSpj/g
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pMkh4Lt3MujPfIttCzuXFxZTgBx2jfgohz0IKeqVUT8=; b=HvvM2Wmt+p7Ns2PSb5Dl1VDlIZ
	x2kg/N5itOnFHeOIqEpqcuYXm/kg9mghUdf2B3oQTpKYISXSLIGjJZiiq+QGngmKg8wDp52TKh7k4
	tD7W3avguKZ57qmkSxkPSWp3hv99VRF/DUsH5kiyHEp0MHmIC364EWoRZXQVSIq9/QJhlO05EYvRa
	16kMEqHVtkTp3pPcS80cSA5D+urmV9EyW3GF3GN2MM/vJBFvZbdRT9MSe5Fn/PILczwPfuyUUTo2w
	IPdQ/XPJ5zI93FymoaxAX5syrsNHdwSmRtrmE80OUYDfiesOuGsbzHcvBTWBF8PGXa24BoLcNTQfS
	y7SYozxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwI4-00000008qsM-2rPR;
	Thu, 05 Nov 2026 12:10:00 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwHt-00000008ql0-1p4K
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 12:09:56 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-3adac5b29ebso1062717a91.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 04:09:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793880588; cv=none;
        d=google.com; s=arc-20260327;
        b=NpB9OSVHGGUs9t54B2O/q4YmvhP8s9vKWos415XDI0YNzYuQDWMyWaQlBfnw61T9oe
         fKYkn9kZ797aPlIOQDHBHrNGC3sezwtLzt7SbZDJtaT3yyfRDjT1LXOtwz5lUT3JhvS/
         9Lr+HR/4shzXy6rubcN9itRIZRorSdySYBTLbAM/I/UxSrOUP1QqDsoLPuQckE7RAM/L
         /VfVySS7E6s2UcPGzmcBZnAQGfVDypKvCxOzEyVULybQHDHVKICXoDLYd9WliwP+3vSc
         T+e/lnh+vEyFBsOO40DwZNHk0K99hBDcjkSXuqdniglzI1VPXb9aj046CikDsZ1W5VAF
         AKYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4fvBY9zhAaIiPkSg9Hq87qAnpt7MuwN0ORLvoKho5YI=;
        fh=p+GZ346WSw1NzMs7ddJMUTatVIceF/bP6dYZBovQh7U=;
        b=WtEZJpzX5btbmA4Oj313bHvKWw4V1gfVkX9ZLjCeR5LDvy1O8j0k249N9YnEFGnUGu
         0xsB55CU/G/rJnnoYmU2gjFFDYShtj6nzE2509sO/3jo2yYEEpijmCqR3Gp6hKBvV4dy
         ZnMqCj6qmUWo1j7ZPmYtjSZc09vmqbJESVuIE5Q8aVrJgeq7uQqi11qQAuJJPwFEKqDe
         WB7NbdKvAa4UtlPRCCMtCFIdQ31Fq+dOzBAgkAkEY4baPBmZ8W6V3KD/wcbtB1HtvCRd
         5nnDbA+O2FBPhhONxCN8Ht7WnFmDLKdzR+p3xBLyvusAgqTsuBmlRVG3Eg0+S3nSXkpf
         xs2A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793880588; x=1794485388; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4fvBY9zhAaIiPkSg9Hq87qAnpt7MuwN0ORLvoKho5YI=;
        b=PAsSpj/g6EnUeBhHs9oRbCG5WiSP4tETK2MspemK0d6wOd4UaaordV+fNGXoTvF7Vg
         /hdc+PDqO81fW3ZV76frgQSStzRWZmpS9TL1xVXYPrSKEwuU9zLOK7UEBSwJ4fTXx2C7
         YJRRt0bw8o0lWvFlbYt+V4vHxAKUzUPwfYskrPgHYZbpFEh7fqqkD3tYgveCs3NvOiEF
         mohglsWu1l3YQSUc5fgu66Z45FjhDbVcJgkD6R2LmmTw7UwQPtkgjWzo+mJol17Kia8x
         mH7V6NnTc1kQoer5paHxsPBuT3RBXFR7pi0FOncpkOCQDSQANZe1V1qp70zEEuYGPqXQ
         pSHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793880588; x=1794485388;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=4fvBY9zhAaIiPkSg9Hq87qAnpt7MuwN0ORLvoKho5YI=;
        b=oT5hhuGhMomgyMRUKo/9mLkqfvFTxG7ZVeSvH4XeTR8OEgwRpJTn9cgZ9+5N3QM8rx
         WBtgQgFnU7ZYpmlRHQYgc+0dknzXfruJRGNn1c/lJh5LYLlzQeZBFqncvKUN7uNmCeIy
         sXruiTYQyAmSR6rqyxwpO/6omMU+czlVcv4X94vTEwyvmm+/bLM9UX2nhkcs4f6EACVs
         FoWMzD7VyUwl9mLTJBVuNucgHxS5e5H6px1a30o+jMdUz39Od/RfF+GF6ejR13unLbp1
         YcHfuso3vSpdyEdENdauPInNJNjIdlp+VSNuLLKuBpVVTvrhKqO7a9o0vy6SJcEJCR99
         Jk3g==
X-Forwarded-Encrypted: i=1; AKwUvBzFLUQKRXgRfkWFqIcX6Kh0WmL0Dntj3VJ46BtR1XFq/Vp10HMoQZvLW+2Um8NseG+SeRRc+6Zys2fdr4tHHA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9Uule4mw5BAudZAy1j+4UhgtVdR57kgoJHNcX/rsazkw3g97zW
	8YJtlIILmgyyYlb53Uhq3KvQhAhYcTYrat68COZLg/CCJeQT2h8/4Bibg3Ep1toRhxwS51uQbB0
	K5KlVIV+3d08SWFJ0vvQsRs5AuT7WYV8fmf3o2gPoEQ==
X-Gm-Gg: AYBFou3+tnT7ZpVcLGFCqM7va10RJaHek6zR6wAVBYEpNmE4tY3encLTU2iTl0E9/Zk
	AwTQdV8fvs5LirFpiOJIVM0eTdzUzOd+LmwoHAEpDdvvUfDQWRlxk6Gfe3qK/j+cP0uQYHkKWTn
	uKyAfDWBw6JVi3P3j6lsoZG1KIyONqs9sjFeIWcB++q3xZqzyoUfyrhbA0aRhWog6Rjc4w/HvCk
	nfBDicj3iue9mqa/mjC3h0Bv3snNrBhpsyHEvjyD9V/zUDPpov1mIeqHePmTKCR9IIewiSL7iOx
	kc8XSPZqurL1tPfsVH6nTL+ZjMaH5vbuR/5hxfZzSRvAvyLkN9YyQz0X/QYnXSoKwhECVfSdqoe
	1aLJRjXjiHfzBerb/am8ZfidUQCaFZt/lcs0hyLSq3F+mVq0t9khTTpO1vR4=
X-Received: by 2002:a17:90a:e7cc:b0:3ab:2737:3395 with SMTP id
 98e67ed59e1d1-3ae8979d3c7mr16512224a91.42.1793880588558; Thu, 05 Nov 2026
 04:09:48 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com> <20261105-dw-hdmi-qp-yuv-v6-14-1bb63ef5766e@collabora.com>
In-Reply-To: <20261105-dw-hdmi-qp-yuv-v6-14-1bb63ef5766e@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 12:09:36 +0000
X-Gm-Features: AclHuK_MHMThyHgJMV5RxoSYYJYLTJBQMatbDWcZrO2pg9eAtUGM46fm6kw3Mdw
Message-ID: <CAPj87rNp=Qen3CpxdBWHrKqmpDq=w=3fhbuJFM2uVLrwizWQRQ@mail.gmail.com>
Subject: Re: [PATCH v6 14/15] drm/rockchip: dw_hdmi_qp: Enable YUV420 output format
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
X-CRM114-CacheID: sfid-20261105_040953_421705_18067CFC 
X-CRM114-Status: UNSURE (   9.26  )
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

On Thu, 5 Nov 2026 at 01:01, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> Both RK3576 and RK3588 SoCs are capable of driving the YUV420 output
> color format, and the required bus-format handling and VOP2 support are
> already in place.  Advertise it via the platform supported formats so
> the HDMI core can select it.
>
> YUV420 halves the TMDS bandwidth compared to RGB/YUV444, which enables
> high-resolution modes such as 4K@60Hz on links that cannot otherwise
> carry the full-bandwidth signal.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
