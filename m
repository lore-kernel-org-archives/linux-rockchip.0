Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF809606A321
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Oct 2026 15:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TI0U0fAI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=KtuE3vyS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1BvwSuPwdQ7NyYn/XhX1U+lEdNef174DlXRw7K5QLXo=; b=TI0U0fAIAAXAb73JeqmkoBMjzP
	oQ/lnLLIgTBw3AvrnGshpGY/xjWAdxMhd/j5lp8Vlap50xFrGggWHTDvXMsi/+8yZvXmtKcT0W/FU
	iwTqKBboCIYBX05icNNoh3DRxv3ecssvxQQo+SjJO1RFnHYaNu3YKMiAvP5YWsa8GSUTPQaBoN5TZ
	YhqEH5JJzYFt2YXHiqk1+X+3ASzHisFyrVEpf31FDUOd+kunquh8bXflVEcQC319giETtfWLOnsYD
	JchUaGHxovcmsmjoXG/UMD/DzzbVsKIU0QBYS9GDv4y3mkrldnJds5serAHI+42CaTN0RKQSIC4/e
	6fMH5taQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL05K-00000001APk-3Ifb;
	Sun, 25 Oct 2026 15:24:34 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL05I-00000001AOw-2yZb
	for linux-rockchip@lists.infradead.org;
	Sun, 25 Oct 2026 15:24:33 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a210470b49so17595945e9.2
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Oct 2026 08:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792941870; x=1793546670; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gr7m8Jgx5qFfXx97jCHm/dv2wdINd/6dtVxf1769JNg=;
        b=KtuE3vySV69aChNmXw1djZBCFUCD1EV8U8Ot/oDiQT020VEcod2NydyyaX0szmBq2b
         YICcbin+Z03iLJzLv1pRtIgNHIWb6SmvD5lTy8wd1x1Y4R8xODb4J0mVxzq6bas6Bp1/
         iQTnZr8Amrc5ypIZxroUJmd7eN4xnjUZpN1b8JSFeYBPRbiJ4dJciGVpOcXn9U08mXKR
         OCMm0vTRZ7ukZ8sO3V01N3bw/F21z2vhVFzGM5FTAr0sxH1EELgehLdXMpQn7MoMTpCN
         dtEwOx/IKUOUpamF0azANwMn15NiN3bK1b9chNnP+guytFjtm8H8zyQVidLT5M3tagsS
         LxSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792941870; x=1793546670;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gr7m8Jgx5qFfXx97jCHm/dv2wdINd/6dtVxf1769JNg=;
        b=VJR8S2GyQQgTztDgVUFDxLA8Q4yN6y8u1KM+3taqqWRKLcdozXkR9/2XpepIucdAkj
         f4dhN5T8DPLao9C27GHAkrIXPwk9THwSbkhacDk51vBNXd/6IRgG1EACeFsR4oTx6881
         mb49+Rv9VeAz1EOlm6OX3ZBobrwKt+ODFb8h8fcA4jB9HKVKGmV58IZqugkhJ4LzbV56
         /ktvk1/auasgMSwmsJ1UZ9k8YmJnI9BwUdV4lWDEEk37ICHidXeUw7PEhStCT3itRscb
         WHHHIWGZj9xV3yx4WqAoPLCyfMYhg5NAlLG+PgDL/nSJgEPgTmsfZBBqBszMnFhVB8Wk
         yqJQ==
X-Forwarded-Encrypted: i=1; AKwUvBx27EezXa4gS9HemhgF0OnMPY/T85Tm0T0k9a1tmnZmSz4sHY/X/SJmxQoQZ7WT7oq5SllCYYCNg4+FQtAnYw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIRadEzV5jWBiKqNngEfPBOMY4X6XlNC5X931e4iiZDO45ceeLF
	zfb7GaXNr03go/BNmzrXzHWQLkDlJPdvbCK1maLCLOF5vR6j/k49SMsKkRY9Byru
X-Gm-Gg: AYBFou25+O+vU/y8WwpV91F2wM8vCJJzriJkVczIKK3TxtqIs2fOMRAsNRXfKJJmJ3u
	YqzOgXX41pB5ceVrxoAoGq5IUWGjNmcQ+8DMkhNbr7AGg77JpfudbieCSqPGCVkTUo7PFZIlodX
	LD4OR/yx5qpJm/hrN9mV9BQOR//ChJHSGbL5UgeeeK6KCrJVOz4CR+FGKXEbbLjPlG059zCmv2+
	FYSo5nyaizKn0cfVX8NknVH7AxNX4kkuYIIGW7llEsDPHi005woWcWLs/1xY0MCQbAtkzQbw6O9
	AFlpTP6VtLCoAXzPqycE0adJ0lseVGDpy2Q2fv+aWYP+IMl/wvFc+rhrtBINPCh7FQi/KBEFRAt
	ylBCZoJGhJYwFfgSxa1Ix/khsdq4RFAyw9xH7uOcZnkoK+Z9KML4u9oywgcOOb9kZwd0e3gHjjN
	GT3HGB7XXVWS8G4uAvhWfSO2sMZwa4tXrn8iJNtlJFGp9xnX6fSfMRs5zjyBC1DVaxNCM+K6CQH
	7B4DzpSlh7x2hX9K0MUmkrBjEwrDJqVVwqdLQqAhRZPa+DNgcqII3cBNjb0qJXaQUZSqHVemzdt
	iKa1+6yhkf6xsK33kyQX7r4NAU1cV7a6YbO9zd5tTFg=
X-Received: by 2002:a05:600c:c0c9:b0:4a5:87b3:ddc1 with SMTP id 5b1f17b1804b1-4a587b3e000mr20792825e9.13.1792941870382;
        Sun, 25 Oct 2026 08:24:30 -0700 (PDT)
Received: from [127.0.1.1] ([2001:861:39c2:e340:4c3:3a00:d533:9d50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a35a04ae28sm132982575e9.2.2026.10.25.08.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2026 08:24:30 -0700 (PDT)
From: Romain TISSERAND <romain.tisserand@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Liu Ying <victor.liu@nxp.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/bridge: dw-mipi-dsi: use the lane rate for lbcc when
 lanes run faster
Date: Sun, 25 Oct 2026 16:24:29 +0100
Message-ID: <179294186960.4141843.10824416552753869438@gmail.com>
In-Reply-To: <sashiko-outbox-184251@kernel.org>
References: <20261025142639.3454322-1-romain.tisserand@gmail.com>
 <sashiko-outbox-184251@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_082432_802020_83B19A9C 
X-CRM114-Status: GOOD (  12.50  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, 25 Oct 2026 14:38:50 +0000, sashiko-bot@kernel.org wrote:
> For a 4-lane non-burst panel using MIPI_DSI_FMT_RGB666_PACKED (bpp = 18),
> (bpp / lanes) truncates from 4.5 to 4, giving a lane rate of 5 * mpclk Mbps.
> That is only 11.1% (1/9) above the 4.5 * mode->clock pixel bandwidth, rather
> than 25%.
[...]
> If the slack is only meant to ignore lane_mbps being rounded up to the next
> MHz, should the check compare dsi->lane_mbps against
> DIV_ROUND_UP_ULL(pixel_kbps, MSEC_PER_SEC) instead of adding pixel_kbps / 8?

Right, the 1/8 slack misses that case. v2 will use the lane rate when
lane_mbps is above the pixel bandwidth rounded up to the next MHz, which
keeps i.MX93, Meson and STM in non-burst mode on the pixel clock formula.

> Should pixel_kbps and the pixel-clock lbcc calculation divide by
> dw_mipi_dsi_get_lanes(dsi) instead of dsi->lanes to handle dual-DSI panels?

With dsi->lanes the patch doesn't change the timing of the dual-DSI Gru
Scarlet panel: its lane rate stays below the per-link pixel bandwidth, so
it keeps the current computation. Switching to the total lane count would
change that timing, and I can't test it, so I'll keep dsi->lanes in this
patch and leave the dual-DSI accounting to a separate one.

I'll send v2 in about a week.

Romain

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
