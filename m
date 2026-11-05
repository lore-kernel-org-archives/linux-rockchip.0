Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9E0606A329
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 12:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WnFPi7gr;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=AHOfU3Yy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yrq1efjHUsTfI12ppj+OA8mu0Wr4SkTp/umaBAFWyAQ=; b=WnFPi7grk/NnbliXYbBwsDNN/k
	DadBPI88kQmkcp55eIemYmz0PqHDT2jgNAVeGen57cnXipeXTopo0IyZiF/+L5KcDM7JdWx+Sr0dU
	YKBXOP9RimGZkx7E8oG3mRTUBJtRtZ1Vks5/1vsf/1q78kGtVmii6YKXPOQErgfA+lqXW3fDpNSos
	PVMcBly5S5Yt6q0WCLo3XW2AmmMKWW0KMEngePA02LkCrMyM9W2RVOr+fVzOALvx7QvOCxPhIrnx1
	dvzPqugb8ywcZQ8LdcHJiZzWAqGNQpKq/e2rOG4PGN++rbRDYlZFIHxYiegrv9I26WDvO5Vabjiwn
	u1b2uEOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwF9-00000008pgj-0HhW;
	Thu, 05 Nov 2026 12:06:59 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwF2-00000008peN-3SmT
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 12:06:55 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-cd8ca57ef64so232093a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 04:06:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793880412; cv=none;
        d=google.com; s=arc-20260327;
        b=IorkN/ZsEfbcpx9+tXRE3oejXAuueX68xKneASaXig5xZmK0YCq3YBy/rHFODJ5Wd3
         liXLIYL5nLrH41WVIbth9D3DHDvz6dLbmEoFSOKCz7XmKcYqPyRXyDx3oduzGIxGUhls
         Z5HSV8EOd5vcyElECen6B2z9d0iUbCSO3+xW38+K2aSuUxjQNZJd2emZE/Y5RyYulLNa
         ZVqcxjc6wP0IRUITzJB7WbytuxEVcCCPtOUTiolyL5LUFgA8yxqj2B4qTdezAOYOqg64
         60272UKCv1Myjf2y3BWC2vcn4TXDLWdXn1SoZeTGWHbiv0THTJ0lShtc/F5LzIN3fohO
         bk6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SIhqbZ+2HotYam7MjDXog6M4P1fIwOCZkrn6io6yVIg=;
        fh=s7d5F5ahagPowGDTsVz02wwFvHV3ehNj0EJoRfofpLA=;
        b=JdfNrVMXgbzPFh7LOkaWWXhPhZvqYQITRn3iobkJNVEDqOpDTndn3i/Bjg8hU0TlWi
         UbKX7X5ikD8jw8CPJ7DWuQSO/fp0lUA47WeIt1B8sXExmZXrhmMPWmQ8Gt6HyRAaE8ZU
         33riZny601R/BRyUmC0iBwIQm7o3Xu+IAB1C4iP6v3dxBb3opS2e3oOZlAs+rFvcWklC
         I/DheGojw/9s0ss/beOQP5b1eRRTX9qF13H/JjDejYQ5ryNsyCJFqUq0XPmpl95/rWs/
         3j0etUO7gH77SuOY6rmm9ZimD9IKmxyrlsFHIQNv6E2kMZT++f+0sivDizuwDl9h8az1
         MGng==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793880412; x=1794485212; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SIhqbZ+2HotYam7MjDXog6M4P1fIwOCZkrn6io6yVIg=;
        b=AHOfU3Yy1p4pCQ/54E8ZsYs5lTvwpRpNTgGKdvmFO8NAzIlTB7SEzwz40Oe2P/byOu
         E6d56GU8oYkJ4Nz89q8ITRPaUPYZiW8blCBvMWD4B1IXeMAv1BCIKOsjU7jRFNBlhIaW
         8tz5ZVrDlWbr8fxezLQU6o6fvxPlvWwPfslpcURSnVfi3umMsAbiaZzGmqp+5rDqMM8X
         kud6r/fvok0Y75hJTrCzlpTEbupD2bySINe56D2jhyNl7gTWa1U+hAdru7mjk40sJBw8
         poZc+Me7xB5JIt79L3gLH8Vbiab6u85saKIucILG0VBWdZctvbHwAhjJ/ybkLdOBQDHE
         YvGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793880412; x=1794485212;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=SIhqbZ+2HotYam7MjDXog6M4P1fIwOCZkrn6io6yVIg=;
        b=wbYDdbpJYUdwJzV1d50aJUT8lNJGQ2pmHA9Zd4MERiSReNVSccXnQsYYl1HTofFjpf
         wpzyGQ2rrQi5OBtPhtzXRKXqG4y/xxqIYyfTpzbFJ7GiFSNgRbUmYMzMZcgEwIAjjFev
         rRuyUqMD0ix0ie4rl7AluB7Onk8yFmfA+824GfYlAQCo+pNM+7rdSMFUMOIovDfMjG7J
         6fBaK6u9tlPT525H7D3tC31mY+48nPoIFz6e8bn7Vg2OaRzNBSbchNsaLyB7VLwamMKx
         EVBi9E5iwy0S021/dYtiWWQ5E/+iYghtxwSOO+yKLVFvk+TllYvXfGp4nSVY1kkMXoga
         HU5g==
X-Forwarded-Encrypted: i=1; AKwUvBxieBkH/bYgHi0SMlZiUqcfUBdtlZ+gi+pTRMnLJgFmvSzbD0B1j5oNZZa9QPZs6ZLv2hqR2SX14121Y6XJQg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+uiTxgnN6T8D2Oh55MBPnBrpdZ9jC31CZfE6RQxzVNVznsQv3S
	87YFIb9KtlBU6WDMDclgBomToNgkL1UTh6Fg4wmKY3Ln2I/H1k/kXduEt5E8BtqfcADpUysmOkU
	jM5gfpYMr4xshRYwQC/zMxCFZiZ5g5AYtykkmM8eqNQ==
X-Gm-Gg: AYBFou33WTqo0JumQZUCGD7ygmwJ0z5gUzoN/TP+MAAauiZgSIhwOkjBIgbTaaLGgJa
	KuXNxoUNjOUckQuxIqzKZPBDmp4jMkFfWRL1iNlFiAOX3C6HlSYiSYIDUQ6TCP8mdjLvaPj2FXw
	0vpcu56X1kKGBBEtFGkBKDOodhvxp5bhTn50Y0bNuw6y9NEvTHXlYNAtBLj+BtF6VhhDh8QPFQ7
	jAq7HmQa50zQ5fMQEwuex3GhOA7cU1GyLmLm66TMJB28M7J3KYrRfunLarqb5ABA36MupAxLOmp
	Ttk+BwlXGgVwwwY3m7bdBrT7k0rKsekJRu6ygbl7zhlbhA5//CsT/C5u/QqNeCmvizB5GcNaPSX
	Lej+fiw3fUVVRpICo0Oq6AUI5op920xXWK8le
X-Received: by 2002:a17:90b:1fcc:b0:3ac:7406:b49 with SMTP id
 98e67ed59e1d1-3b0afc29351mr1335407a91.15.1793880411843; Thu, 05 Nov 2026
 04:06:51 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com>
 <20261014-dw-hdmi-qp-yuv-v5-13-6fab0fe43a9b@collabora.com>
 <CAPj87rOMjFEjOQ9TVgbGWu3gTwVjmjuFNtnFiyxbWO+g_RPqeA@mail.gmail.com> <f9797a72-2fd0-4127-b741-dfc6cf3306f1@collabora.com>
In-Reply-To: <f9797a72-2fd0-4127-b741-dfc6cf3306f1@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 12:06:40 +0000
X-Gm-Features: AclHuK_ucWApughnWJGAl5cPjcPtGno9PpRPUGuTDrBVFiQWtpP0tMXmnOOScVE
Message-ID: <CAPj87rN0944v4OyeJ+VNn5QBsnPsjGJUvNqiFmQFsO_wakOX=g@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20261105_040652_891186_A1592502 
X-CRM114-Status: GOOD (  13.81  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Cristian,

On Wed, 4 Nov 2026 at 20:56, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> On 10/30/26 1:52 PM, Daniel Stone wrote:
> > Same question as for the VOP2: why only special-case YUV422 when
> > YUV420 also needs special treatment? And presumably in a way which
> > can't just be mashed into bpc, because the maths doesn't work. So
> > would this be better off being handled as a separate output-mode
> > adjustment?
>
> For YUV420, the halving is already in the TMDS rate, so the PHY PLL output
> equals the halved VOP2 DCLK - no special handling required here.
>
> However, since YUV422 is not deep-colour packed, its TMDS rate equals the pixel
> clock and therefore the PHY must get 8 bpc.  This is essentially what
> drm_hdmi_compute_mode_clock() does, forcing 8 for YUV422 for the same reason.

I don't follow 'deep-colour packed' as it seems like a non-sequitur.
However, the TRM is pretty clear that a 2x pclk divisor on the clock
rate is required for YUV420 and split-VOP display outputs, so this is
fine.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
