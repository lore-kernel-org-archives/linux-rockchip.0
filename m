Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D20606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cjURyNqP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=NvTuasaA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=N2pr3E5Qlpxra8w+ib6h1FPS3SfnL69oRv6cKxuSTyM=; b=cjURyNqPQqNuyHhd4ijUmWLKjB
	iLQlAPG3oWdsB0FvTCuRjaYm3BT/eSO2RUmlunI2gaqmxhaMzV8LUV8guaqWfsoTCoPZ4CB4NnIu1
	TS4eUn/himRDAMkYkK6OiqxeUVL6e50GgJRqFBTxK3L3Ip7Rt17yPwtAYRCViyPtpMgOxS+LtK5L7
	W0ghs7RjslJRebBBEfg8/mjjgfPkrTV3ztT4ghYfGbjz7sUVKMcWU/hYmUFy7UO88tgK2Yi1bP62e
	9wAk/USH3G/2NxoZvOFVLCzHBdgFTnFDey6WbW9krlvUlg5YTZafLV0ppz3YEMr3TmWUB+PVyjX+w
	8TzEG8nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMl6C-0000000Bb2M-3Ua0;
	Fri, 30 Oct 2026 11:48:44 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMl6A-0000000Bb1F-1Wrw
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:48:43 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-cd623dfe420so416420a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:48:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793360921; cv=none;
        d=google.com; s=arc-20260327;
        b=D4R8tMEqfkR/LtzMt9hJ60CjKMjUiu+HCBu23Jo3zD64pUOZp/xGCClluEwp9FW9W0
         qHrGnYIXX+tFP+zXlT1scU+yOJdr/7tjvVM5k9XTY/TKHxWMSxggcZWGjlCor5NyRhU2
         xOPMoMKven9gzXMw36iiS/Nm8mqiNq/KpNUJvwHk3r3jFqtEtzmrtYmqbkGdCzJuP+FN
         NfVaIUFoOFeFFdzVr7oA19QG26RvQeszFegLZrJV12kLobUpPBK8p+G7qtI4LaRVYsO7
         AxEssLPLRn01imDuSjrqgu3f9FaLvGP88MuXBgy2Kt1o8r0rf12m6S8cYNM5Vej83dii
         fagQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rytTxuDwmZaxUvmFDOrr2QKEaKAyu/0j3T9Yur/Ie+Q=;
        fh=CK52D+W4ARaqP83rSA+D3gGHAwCKSY4+BTq+SvhcE0Q=;
        b=oA3XAGkX2QdjITcGQ6dA5tnqnQiIfyJpKseachzhTNW3x6GKJwPEG72iB1ifk6+hCg
         GlVaI4ErlmiBUhrc9iBrqvYb58Mrjphes55Cl5MKygYrab9Oid1FMkrKdef4hZseTioS
         XggWE7/OiXe/BbX5cK4euPVnTP4Ei+U4pZjZ6NS3C9FGJW5vtoJ3GW8UAFAYP8Pvn77r
         Gzt5bc7A3F46Mjbkny6q2IMpDcFcxO2f/vd9QlwZyoj46Bo6e1ZPr42RTsCRtnEJEWJR
         ouSMrVUPqbBg2yZSkXV6w/X2Ai+8RzJC+9Q/Zz/KaIL+RGJJM1pXaePmn3BfhJNpCmiw
         9Wzg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793360921; x=1793965721; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rytTxuDwmZaxUvmFDOrr2QKEaKAyu/0j3T9Yur/Ie+Q=;
        b=NvTuasaAonDswJbA8uKU81n5kMwiqfct0XPrURmBvw/FhMAxaV/2DTOyF/S7YZt2wo
         +oR/twVG3F+W4RoDYrJZQQxnHd3N1bihuPe3WhwnM259p5igTDd2wGarF/9BANJv69Wo
         MdHov4TnBlpvXzIf6nZKLqDRpiECLwROuSfrdyeCiX8496s8gIQep8E1M1nJTRpW3xn8
         7yE6LHRFDHbgrYLTLpjlRPwBFeP0FSsjoJZiV/FoZ/uGo5fsOUTZi3FgJzUO7zb6i7l+
         xdlyW1yLbjLyHIyAF7ERuto/KLzIPKixTL3jr8jgVjQ9qdxbdI/9qsCrxG9lvYBRcnZn
         P9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793360921; x=1793965721;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=rytTxuDwmZaxUvmFDOrr2QKEaKAyu/0j3T9Yur/Ie+Q=;
        b=nN6OGmSHcgB7K9YMiVzAcMI51pK8bb3f3dCaDd+fSC1K22kqp1E6diaoGYbYboIBMQ
         HpUx5MFnzdJmmujLKiqMVa/Jv/Wo7WnjsvjqSKc+vCxgSd9q9NGnx5zochmcIazdRrck
         JdtXnDOK4YJqc7omMn0niZXy7MS1Nz4xnX9m0ApHdzgJxzDW1HEhyQYC7Cu8FrNI43GJ
         l0rpMsxDC+LppEJiTIFw3dcdiYjl6j1bbtJ0LhTn5fhFQHVr/trijN0H57Py1hPSwthc
         ryNYldbsfhGRk3uz9i81Ak9MPIZ+oBszmH3VZXXoU09F5ER+/V4bRdPLlLeHJzl9ewRW
         BYZQ==
X-Forwarded-Encrypted: i=1; AKwUvBxSMXrb2C5hLzQGE0qcwGcvqb2uBblj/Ofd8eXLyLfy9ydOCUihExiGytdsInvUQHH/lxsWjixWRh2zqV5j8g==@lists.infradead.org
X-Gm-Message-State: AFq9FYIFtDQXc4/k+800LWndynKymZL756I8W8ZxOn/O0vNBlx+oluAt
	LYnVOyeWDorKX0k4ei2HFElbL+nl8DPKcyiRQ+9zrqks3LHMJAjz9td2iR4hoyVQar+aTTc9LJR
	6VopbnbM9aHkzxugPfzBd7C2YpapxT0PTQe4HnkL7zQ==
X-Gm-Gg: AYBFou0EsNOsVqnO6V20vDE/ylaPXnu0hS+45RhZIiQbMTywdRsoGDK4coYbaH/NWml
	AJtRy2W4+k3hyyZ8YtxUvZOzvBBMrFWaR7oK9ZfOdQzwQ4lAywKBy1Uln1Hr6tdw11VCHkmQNd+
	m5IqhOMUvksZDnmE3eFv9BgKyJqXLTtsVdCdBDJUE/+9WhZQh0xEnhDEoernMPKK6Jhnxw8o4Ne
	ZudGfvry3oHUfPE+RFWPNGFUNsiFIwAaeNA74YTGVKsAQnuQ9sdDNuYYc2oUhj8svAcLuF8/5Dc
	YYTy9HTPuB53cIvZhxzxBg2cbg10CX9eBWnIF/+gvC4tm+z5QEQvJz6+ML4AZIHZGJc9qzEusjr
	35TM0ICoZWm6QZxnKIQJwiMWfSjkSAA++F+XF9ZDsZOqVBwR8uZhqLN9mXw==
X-Received: by 2002:a05:6a20:d10f:b0:3cd:3e77:1dcd with SMTP id
 adf61e73a8af0-3e928a7e442mr2014372637.1.1793360921012; Fri, 30 Oct 2026
 04:48:41 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-11-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-11-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:48:28 +0000
X-Gm-Features: AclHuK9bHaRXHNAR7u16We-RytuEmqtwRDDQT6RAcbrEMxFejcbNnPABR9ssHjo
Message-ID: <CAPj87rN7RWfEa_YypQq+quER7V6pt2A3q4fYRuUXF3_Ch7yL8A@mail.gmail.com>
Subject: Re: [PATCH v5 11/15] drm/bridge: dw-hdmi-qp: Log resolution and
 refresh rate in atomic_enable()
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
X-CRM114-CacheID: sfid-20261030_044842_405135_CBAE730B 
X-CRM114-Status: UNSURE (   9.66  )
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
> The debug entry in the HDMI branch of dw_hdmi_qp_bridge_atomic_enable()
> previously printed the literal string 'HDMI' as the mode field, giving
> no information about the actual display timing being configured.
>
> Extend it to include the active resolution and refresh rate by
> retrieving the CRTC mode from the incoming atomic state:
>
>   dw_hdmi_qp_bridge_atomic_enable mode=HDMI:1920x1080@50Hz fmt=RGB rate=185625000 bpc=10
>
> This makes the log line self-contained and directly useful when
> debugging mode-setting issues, format negotiation, or TMDS rate
> mismatches without having to cross-reference a separate mode dump.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
