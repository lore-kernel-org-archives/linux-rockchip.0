Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07C5606A331
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zR5RoQ3L;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TVMglc2G
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UELb/zIx31I0eKuUW8DwABbUs26lDi0jK6u0T/pcbtc=; b=zR5RoQ3L9jv0mJm+AOPGMVouir
	ACRufQ+9CwdTVUO1QSzgDvW3DKuU0eOT/sZ3+sKGwws5vYyM5OWRH+W2+UCXb74VaVtWWmYO3Agnv
	0W60/hnlMtAaG0FcqXwcYwxdnVzTooCfazeCrDIktQ73r1QKd3qBdlR0W3664SFCttzUAqOpvdHK6
	1U2mTyf+h5LXccWA91Wtw1fpHXTy1fy48Gc1QvMVXsolXvj1/HzHx3ozdBXm+jFLGDAqM8ercBQcD
	qX9iYDdVKLVHAB5U6Hn9EkZTK4JQ71XuXwqcmfyqZu/H6Sq7mZqugR99GG3VfNWwSi+nmWBJXV3PC
	R28LCQCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxqW-0000000EOzX-1601;
	Fri, 13 Nov 2026 20:26:04 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxqR-0000000EOxc-1h9V
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 20:26:02 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5c09dbe96b1so133706e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 12:25:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794601557; cv=none;
        d=google.com; s=arc-20260327;
        b=fBxJgckZH8YionsCd7XGWr5ZNQFmiyyxjL1SbfEl/lKtCfx4EdrfHr8SiVHknbTsct
         LSpZa/84h5Nk2Yl3LLzPfL7DgxZJDjYW0zzTxyKTQtmNGhMUFj1VF8qNwN/KiHsePBsR
         vcN+3zl2m3rbRq+4jFjW5sKzSRL/hHxR9gYOAw4+MddquBIsWazvOzvwv3vXK7EYzLqR
         l9YHIDit8qqHIvQU3xVY7rl9n6wIwhTqnNQDINwz6iSjvX6uYuZpHKpf1lzdhkV3javi
         X4vPSiqvpj/rdlQYLd7I1f2qfH6LbvnmYpqekZ4TkbvftqZkEd+EeMXwXPa+BxCOVut5
         iiFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YavfHroeJbmr+VHcPmcN/QbM0vDy2kwirUjQA6La55g=;
        fh=VYMaZae3kvDsMj/i8wM/ZIRRdGQ5EdoXKIB7/Yc87r8=;
        b=rhJLMwndBi3o6mgDG6Ye44fKeaB/FDORK9Is3kB3R3fLCvEWQiDoUnLWU+EiLLljgA
         IPd5DipNr7zQNpnvqhw0NBurUxqpGHgkzhgzpNw8vOPcQ0JaocmF5p1J7g6u533d2SMA
         6c3w/jQ1KGmYuAxWrAOdyovifrjrDkDKz7VzZUYr4t766H28SIfFWsd03dWaePBWdqX8
         suRkNColm1N+Qy31zBfpn3lM59mtX+mqT33d2ftsw2QRVHIkY3ihH8jGCdCFkFaJnGE3
         JuLbPutzArMzJdq/KFicwFE2J7EiMk7N+QFy6ozVTmypLdNzVd5eJUnHmTs6gc/EWsSJ
         kFeQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794601557; x=1795206357; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YavfHroeJbmr+VHcPmcN/QbM0vDy2kwirUjQA6La55g=;
        b=TVMglc2GfJY+rrEND6EBGUHWYZbdjCgdrhxg6/bzvplDe9O3PoUrS6+Tm+5r8ISH8y
         HYiQmYvUzsm8+Iaq2Dx/EW7G92Wz00znb1av7vg+qsHuYwJNTr1498WsHnQrMoLlhvRP
         qRnvZhZy6A+Al+KPK6eY7WRa2mpW8Nw1pmOtDX1whin/O7EQZraMrzopTouXNCuazcFw
         ZQDjJDDjiDQLIxaHr2Cxw3Ci28qC50HE9hDS43dOC7C6vqWxPVTHXuE74xy4op+dA0I5
         ircSmFHdHtGg9sGIfGPCizTIEBHK5Rq0V9nzbl2p9CUTOEc11dvEQPAfe7+uSNLZw/GZ
         ufaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794601557; x=1795206357;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=YavfHroeJbmr+VHcPmcN/QbM0vDy2kwirUjQA6La55g=;
        b=kgRBEjrIvEuAFUoiO0n3a6v/uBhDcNL7tkITOhdYSjJBJnCOExnQmJHikT49Xr9W9L
         jd7eHiniHSXVFDR+IVoyu8cyMFw1JUkbnvWmcr3Ws0CW0Fv87ykjjvaO13b7QGp7Bn4r
         cJUZAlRhAmE4CVCuPRYotSfOSxrZGzXxL/mAgdyx0iUrSnOYbp4N5xzh9E8b9UYDEgbF
         8di2TYYibJttPjU0rfIDhA11Sv+vCfOKycAc7GHy/6+uIYR0QFlNy1iIdD7RX9ID8Mi8
         +edsD2ajNd25shm9zAPgR7DHL0PkI8C7C3YoC/qKwVo9UkfHoaD1x7ngdvAp7Le3qxPR
         Rk/w==
X-Forwarded-Encrypted: i=1; AL+hErG0HgMSPzmM6c2AXhtyw4f95zi+vyC8n1cnuAPV+RVD7pTmjSIXQip3k2aQad0F0dz7AQxT62vGcvL8BiKMqw==@lists.infradead.org
X-Gm-Message-State: APuU4Z9+OZzRsIEdoJCmFobuerT/iqmqx8fe9HNJZIMm+xgBGVyQ0prf
	Kmfh7J9hOlXUWGwYaQfAtbCMctHtjp2f7DnpCym8jfvnEwUjcOLXfVKx6vVluTX1Gk4FBQ2SzV3
	zyEU6KIOd+BVvkyrfXKBTPEyEySWFM84=
X-Gm-Gg: AYBFou02uTVbMx88CrWL5UxKDfJVRft564cA2z+qHulHlsiAWyeiY3HgYCs3DAR4sSy
	FewJFXLh7paKiCyz2g9/8/VeFxEVoQ8n7jc1VoL3cRB3tcEVvURnvaAIu9Y8jcmXKtVZLcJgTn3
	GR7p4UvjyLUGGq7JzVV11AtlIRGndlPujEabI7l81Y0fenZVS/M9iEZiEYTxjxq4iM+uBI1gwfJ
	vMlZtJpjZW/U6rFLKcos1PD/3FVPLXInwmaxQ/s5nQIqgJ+oK07NNXdvr5rYSwwtxZRZZ5wVfwC
	Xyz95/zXFniVWgl2LjRk5g6S4pGoquqy/bqTM8LSCx6OBSRXpwCaNsvY/bXZMBXqhoOMYNYZXhl
	Oc+jE2jtazVyermvjtSTrqdp2+aTsTbenVB0HfgvkIoaDXNYZcpx/3dobS0zw+D1BC2SMC1k4
X-Received: by 2002:a05:6512:1326:b0:5bf:d00a:b6c0 with SMTP id
 2adb3069b0e04-5c17076e20cmr1778621e87.3.1794601556720; Fri, 13 Nov 2026
 12:25:56 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-vop2-fixes-v2-0-8218c1cf8ac8@gmail.com>
 <20261112-vop2-fixes-v2-4-8218c1cf8ac8@gmail.com> <380996af-b987-4854-8b52-a3a214b19e79@rock-chips.com>
In-Reply-To: <380996af-b987-4854-8b52-a3a214b19e79@rock-chips.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Fri, 13 Nov 2026 12:25:44 -0800
X-Gm-Features: AclHuK9Z0XxZveIpcBwbR-1StXFvWIPfHqJtynCF1BYTTbRYTOBUF4wn1ddT13s
Message-ID: <CAEy9hNUnZkqyg95DsShdr7UF6CiQvKhpvJxrx0TSoq3do2nyEw@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] drm/rockchip: vop2: Don't accept AFBC YTR for
 RGB565 on RK3588
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Piotr Zalewski <pZ010001011111@proton.me>, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_122600_603211_E29DAA96 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Chaoyi,

> That' true. The TRM says RK3588 only support XRGB888/RGB888 AFBC YTR format.

v3 follows the TRM: YTR is only accepted for the 8 bit RGB formats, and
the comment is gone.

That also refuses XRGB2101010 with YTR, which displays correctly on my
board (AFBC 16x16 | SPARSE | YTR from the Mali-G610, HDMI and DP). May
the 10 bit formats keep YTR?

v3 5/8: https://lore.kernel.org/r/20261113-vop2-fixes-v3-5-08ae37e83b5c@gmail.com

Best regards,
Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
