Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77958CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 14:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSzx5e75VMFrHoqt0MCfCuk82bBQPMyKeKH8Knrs1ls=; b=AXGE6EN//nvaz0
	bi4rIzRd6o/S7XpWtr4S0gWkthMJ+y48zlcvwQYxfkmdoEqytgX1E8SWl1GTWYMMtkV/KNKJDaMMU
	x0sy5//pcSzQdGUwhZcjVYzD+gkbKdYjFY2T2QR5dLZfj6rpvsh0jkkZkJUpzYyXAxkR9a1B8Eq8c
	0X7LTrl3zHGakBcqBytCniMwx1Jlizm9xvsSe7XHZrcukQ/at/ACCuTnUEOejzd0/IMq+vCGcLaDJ
	LqZ2VPujBxJJzXwzAiXfNjLiKBAtBorn02ymV3jDif8qcUJDohxsLGV2J16+N4rNiCaJyq8l62QXv
	ElZgw0N1fTt+amhsI7TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4a9-000000086se-052S;
	Thu, 21 May 2026 14:41:05 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4a5-000000086rI-3NrA
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 14:41:03 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-c82a6278a4cso4807623a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 21 May 2026 07:41:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779374461; cv=none;
        d=google.com; s=arc-20240605;
        b=elmLD/RjK14sbtAP2/27qZpidFC6eKcMZyhKw71XKKw75puGhEOTQwhtv62IKMhZHT
         HMAnyn4FvZjD5sA6HW3qktRsG3Bd50XbT7cNueOpsA5n2bf3WjkkvqJ46FpmRSKqsrgu
         u9VjM7dDyYGdbEbfDmAEoUzXqN3Npizpt9/dAnPWaAPLDpNi4Z21mu4ptq+ZJVmJEjCD
         4QfWcTHQcxdl4YvoMAVW/TbuANe5BYyzMkvRGUYiJ4RN+pee5rkHvMnlvjhzYsgVdLLi
         QGzlzO36qzNp2XeYLT3VZZlSZSNybQww0RQiASxFYemoxQYghGa9hDcTsxvtqvI0VXeV
         q0pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RI8RcJrMlrGpgo/P0j5rPAmC/BUqQ0jZHOTebzV+Hvs=;
        fh=qj3K8Mu9IT8Zsq7aIVzqm8U0nRe5Stqv1nyC6suZExM=;
        b=aygrI8HhhkPgBHTDZHkLkxj0YOZLheAmWmOBa7KCocLCF2Y4JyE4Qacnokv209isdl
         Sh9JiJR83Si1WZY8DYQJchb0eOrV4pMVcebIuzsQL4iwGQJyr56BAxfH+bO21am5dIgF
         6HpPFAh9LlOZoo9eWz0E6nT2gZR/pYo1yG8RSpkys4Fu6cu6Kqnz/2PBK2V8+YStiQuw
         RTz2eEpTifmexvJSQAVZALhAcqJ79otOB8kjZDsJJvMgaSGuVzU55hPO7mM1fqGqKpg+
         8keR5nUYCgznejs/huipl6xhNwLOjxqGSOJG2jqBShZmO5aYfuWRTtQHCaeJROSuLuRx
         e+YA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1779374461; x=1779979261; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RI8RcJrMlrGpgo/P0j5rPAmC/BUqQ0jZHOTebzV+Hvs=;
        b=czqe/ibGl8nd1htleKp1kE+6fKshHBq2LVtpMFywTegEqK8fP8PkN0znN3tJr2cbpl
         3TZP3SyLLY4mgqmqUV6em8QRmpOKlxgLz6AXL890Chis8Y0+GpCQPEH3R5y2XKNvDWnh
         atAaeKkuvRp2cG5m4oDCEgRsg3fqUSvTBpb88DPOgGbU6KGbNreRE/Ts3763ZJ6CKHgx
         hnykIf5oVBDgMh6SB3OLBWA4VLBLlL0+5vV//exftoq7hrmbeaM2yi8HINcyTe+qW5PU
         ihh8i4pbyOAzxsug3B54rcalxVoTcQ+HXqjPU1MQjgVRIJGLhisnNMQ5QCrVmv9nMZ/x
         8j3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779374461; x=1779979261;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RI8RcJrMlrGpgo/P0j5rPAmC/BUqQ0jZHOTebzV+Hvs=;
        b=iuYYrslvTnLiNyTWEuGVLZqJzPuluMv96kGGcPe78/o2hBNyzqh+XB1uXdsVJcLzgG
         /yZhNxRm0liqhMTXq7FnSmSVgJOvdyfPYtS/7pSvRnLVUpm90vDtr2TeCqlY4ozrpWBI
         umDEG4OYnaaCrX8GmQeSAw909eqDOgEAVZwC1AzkKN1y3K7dtKvWJhGAUnTBpTbRvTYT
         Qc73I35Ne+P6+XFCnz0kYrNnsRM49bsEQv6sK6cnMYwTo6emXvB7SV7QNJATrlDvWYPf
         EOhpY5+xc0uh0WfO2pGNavK05qrGaerpNWJKJQgJIOQqICxf1fYGiNuXaNmk2C8aIpys
         6IQg==
X-Forwarded-Encrypted: i=1; AFNElJ8UiTgHuNCYlQGNKqTGkJfvVxz0RI9J0zlxzo829l932m54/ETDGfGCQiIJIp3hJXcWBBndtsZcuT21dgyS7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxorKfdc0s7TgUVpY3wCAGnsyXe4eJ+e/I/lWtfyZs2++PHc3gE
	lf7HnAb7tcPvuMVvk5LnIeQBbjjwQ/ak0u++vyDZdCaP82mQFD0SVmlJe51CpisU7Wwq94U3SL+
	whRMBNbRd5JylqTwyIkaUulxcaX0fiaBDzwu4aQEjiA==
X-Gm-Gg: Acq92OFvWTtABwtlKCDBqQZEn989s3n0TtsgTuVu4Wfzqdck7qAJxqi1vW5UbUyIzuP
	dWcsQM+gMoHUIkjXWHvwkxjVJIfoDQE/06A4vWjWIHkK4ZI3jFZI9b9KLoXFeZCPPDWUiDu0Csw
	eDoli8GAs7LGhyJTz9aBmv1aUuVmPYXjPB7WYB2YMiDh/T8g1TQooebqJoJvd9t5d7HWMusc7Lz
	yrUF9tKDne9ulu4zBITpaKrRwqEzwU80cjB0trQrLz6+y/l5plSuERLHhf1NpbO+uJ99IUhpNQ+
	mXirlE8MUYU4iWyjMXqpnu8Jryz2MquHuhfbXcNEGWURqksvHw==
X-Received: by 2002:a17:903:1b10:b0:2bc:e62a:979b with SMTP id
 d9443c01a7336-2bea33d166emr36661465ad.30.1779374460988; Thu, 21 May 2026
 07:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com> <20260423-color-format-v14-20-449a419ccbd4@collabora.com>
In-Reply-To: <20260423-color-format-v14-20-449a419ccbd4@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 21 May 2026 15:40:49 +0100
X-Gm-Features: AVHnY4LM5MR-pydhp54-iciGhQnPfxKOlxWC92SZdhfzMOyTtShVga8wCcjC3D0
Message-ID: <CAPj87rOBvjw4v+PER+6+FMuDRajXNnPSKAke8a=tVgiSRg8QTg@mail.gmail.com>
Subject: Re: [PATCH v14 20/28] drm/rockchip: dw_hdmi_qp: Implement "color
 format" DRM property
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_074101_849719_8AD4DF39 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, linux-doc@vger.kernel.org, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Jernej Skrabec <jernej.skrabec@gmail.com>, Tvrtko Ursulin <tursulin@ursulin.net>, linux-rockchip@lists.infradead.org, Harry Wentland <harry.wentland@amd.com>, intel-gfx@lists.freedesktop.org, Rodrigo Siqueira <siqueira@igalia.com>, Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>, Sascha Hauer <s.hauer@pengutronix.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, amd-gfx@lists.freedesktop.org, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Alex Deucher <alexander.deucher@amd.com>, Andy Yan <andy.yan@rock-chips.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, wayland-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Thu, 23 Apr 2026 at 20:06, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> +       bridge = drm_bridge_chain_get_first_bridge(encoder);
> +       if (!bridge)
> +               return 0;
> +
> +       bstate = drm_atomic_get_bridge_state(conn_state->state, bridge);
> +       if (!bstate)
> +               return 0;

IS_ERR() + PTR_ERR()

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
