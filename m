Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A3F607222E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 11:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ReEXH4KL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=RK52y14w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=blV0CbexAH1HD0XDZ0Soie3F/5mNyyuxBLZtIJiY/zQ=; b=ReEXH4KLJMs2l4RxFAIn69sFfn
	1QMrCrvsad/SafNRyPmKt2HlitFfr9MMyGQLe9wlhx9CrPBnbmHLnTvkzWbjuEty0/RDVmSxVoSMr
	w5jImx2oimobumrDntJ531Q26i2FvcH39+utRhP2nv4IV0AFIKQF2YQqwsbyR7VW/ja1NfnolazRz
	92QPGpGZzXnVijkEazqGJdn7MxJMosus9UprLtqTYsBfI5/yWcAZfbMYyaHWclS9Po9ukwv4Ih4Tk
	977aL5+uGS8JRw8h5LnWv5qzVdLoyrWM8xEvU+p9g8KnJPXVUKxqyqqKFIvoKBjZoBrMnbDoab5JD
	t+UifISw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOvso-00000008iC7-3cmf;
	Thu, 05 Nov 2026 11:43:54 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOvsm-00000008iAe-21UK
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 11:43:53 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2e9ae391a05so4087875ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 03:43:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793879031; cv=none;
        d=google.com; s=arc-20260327;
        b=Wd9iFOp/5Sxm6SeFNZNgMkM7LoBZq8E/tDdpa3dMQMUkRxFo+p+spf8ogsweV9fiUK
         rFt+Z1UnKT3O1oRrWF9nFWbdoOUDgdOoLgWUXZP2dkui+BrOCeCHJgeZgmaoSr6fHffi
         37pVQk1TV5/oc2bvfzB4kd4RKWrQGIuKwTI2QVrMdBFeZL2A9wV9q5ds8VYjeB+Vd7aQ
         w+IMdJdKxBVuxKa4vJa03mghKth1GWQ9nijl2demNiZHRBfQxLeTzUPX5HvBYTu+ST+o
         BdUgxZvjQpBkIAyUMqF6qBx0nnKlKqeVC1JCAncgjeD7Z1Sd5VFrXxcdvaK35AgS2YPF
         oxvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OJ9vO3o1ng0Vc2a7LO8PFMvHKiA8ZblNfQZPhAUrQbE=;
        fh=vTY08Uk2gBUhr/cW12eanhibp6HYBSF++OqTYiwPlMI=;
        b=CdZ8NGwVnN5L9Y+JiQvekSEQtcdDOejZCvD7uXcnsXQwbhIxyj2ynJDQW52xUptx3r
         AEb9pgnQ4noaCgsSGVDnTuqsAh2cBS6y/zbuTAgGvVpl327XsFkk/VQPS9OQ0LUVdev+
         f07DW4151gaXtbYxHbMTLf4EDEQp3SwaZ4od+zG9C4I4jYvtWUQv6WdqBaR7MuBWoTFb
         eY8WzArXv3BHxTATfLJg7qkE5ckiF7MAkNKGsUrsHlG9w7FWK1s/6WKy9ELEre3ZReWL
         GxIukx8VoU+pCwNZLGGWbNZuhxl8hfngf6tUPuek9+vdfzD1oManDWQLAFIMTvCjyqyp
         yNJg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793879031; x=1794483831; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OJ9vO3o1ng0Vc2a7LO8PFMvHKiA8ZblNfQZPhAUrQbE=;
        b=RK52y14wGX7xDMAT6dlbCrkHGZvPtV/YlS1AhfZ/ckhQzoLOx+u7JNCTg8EhDXrg+u
         R6uhI+grAnggV2ksCBL6S+7DDF7hJU1OSJmcWKufNu0oCjCgV4S+y8CEeZZEHfm3ZKRo
         x/F/Czv32h2EpGf7G7xigbM+iH8OAgbg2+WiVi6FNFIU5Ivh/2Bc+dWJ0OKH1hlL9Rcb
         PJpWFhTeORbq6HJPAy8w4wP4C3sIaFDVdoO4mzdrD3dvsX1M2sSbQtJppKGsHtYQct7V
         KQVvDx1ZLXQGZCwJ1rJPovtQ4BsSY3h/WrcD9m4flRB2MO4A94PxuQNSdFQDCWfyRWlK
         cYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793879031; x=1794483831;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=OJ9vO3o1ng0Vc2a7LO8PFMvHKiA8ZblNfQZPhAUrQbE=;
        b=lmHmCiqdO4xsieDYCeqGNShZyP5fr9btJeA+V40NHorkTNmQih7oGMbmuPn3zo5/x+
         Q9asFZFwt+b7RAzTjKiMfmqsSJmWVp4PHPK0pp7qUURhAV+Qc13O8iDE6pctGUFPUDN7
         kxN04LPupyKj6IvyoZVQf7aQDyT7RQoBl1fVWIuITggVnmQgdVQVelM0W5H4EoCWVY5f
         jyR65P3pWfaSs0XmrDu886qWRPffumPBJmFi46qaHQUmMapx42bZwCnrudPz5QmXdcME
         8VVR9lpW+Iwpd5YCSByFTPobfyklROj+IH0jVeuBYLyVvjPHfrjgyA6fss/c/atCDbdW
         YDKw==
X-Forwarded-Encrypted: i=1; AKwUvBynHPlbqX8rwg1BYQH/BFFJYOorpXWy0S2mmNTvpfxt3+64U6NJPkhNRLhAK3YEWOPa2OxUJKZDrVtAwvwtvw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/x+uBQty2Mbop0CN96zl9TYL+GcnlygRENy6qkjK+iViRb4BMs
	aHTDPmUUNvMAvlsIglruymKOn1llX2c4Jqwrkj2mNCfMFl4N8YrDWmX7DKfpob8yjmF9yM0Zael
	putEAbL9QL54ivdqKbgsj+YwoOmybMaLofFZrf82tyg==
X-Gm-Gg: AYBFou3uMO7sauv13dWMZJEjFlIy7b3Sqs2itgJ5E4BBoE8xlZGtOb2VldJ1qDBp8I0
	+Mas7/LoH1qZfmubJ1xBgCiEfwpJItyBRoA91yKyzezZKdA9bETjbMY5cHJRXRvsH0HFumo7g+2
	4gfznb6yKD8qXZjuKEKbDIDsLHOSy5OrErqzCFcfR+LNPoIK0Qg+v6UFzFZ08VeJxpPfBtY3qEv
	d1sXZMvjf5ruujJ/Juebx43WTMQMdQDkSZ2OMHFRU8+7qnnjMcF8/qpiEJAf+cD3LmgUCJnwI75
	Sq9OEewT5lo6ptUhC3HN+TN0fuCl6xC+Bax59dVUVKN40iHhWxsouEb52WNX8FatEHSHxym4K7Z
	R13R5ArHudggS7bhU7f52EoUTSbkUxulZ+n3t
X-Received: by 2002:a17:903:acd:b0:2dd:c100:2521 with SMTP id
 d9443c01a7336-2ed2405ebe1mr15348025ad.42.1793879031149; Thu, 05 Nov 2026
 03:43:51 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com> <20261105-dw-hdmi-qp-yuv-v6-3-1bb63ef5766e@collabora.com>
In-Reply-To: <20261105-dw-hdmi-qp-yuv-v6-3-1bb63ef5766e@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 11:43:40 +0000
X-Gm-Features: AclHuK_G5HVtKeWQBX7RTZFBduxaJbvsY8isCNKQp8OLwXCa8s_PlYhYGah1Zi8
Message-ID: <CAPj87rN4sxAmb+Lw_xGeQMsQeD_hR-GNaCHeRFivAKfp+Ww=fA@mail.gmail.com>
Subject: Re: [PATCH v6 03/15] drm/rockchip: vop2: Disable core clocks before
 dropping runtime PM reference
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
	linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_034352_622316_06BA91FC 
X-CRM114-Status: UNSURE (   8.29  )
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
> vop2_enable() acquires the runtime PM reference before enabling the core
> clocks, and its error path releases them in the reverse order.  However,
> vop2_disable() drops the runtime PM reference first, potentially
> powering off the VOP power domain while the core clocks are still
> running.
>
> Make the teardown mirror the bring-up sequence by disabling the core
> clocks before calling pm_runtime_put_sync().

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
