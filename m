Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B394CD8CA8
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 20:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ij/CycumXWaZOxKS3g6gVxDH73D2Vg93QX42hVbn7RQ=; b=Z+vzV7BOOxC7He
	ryR03bVrtG4DZ4YF4gjGniBpgL0b/RKr/y7Qtvdn8o/k+kgb2vG61o9wA+B0WV7zvkJxA+CIGzWyA
	o8IVoUjQxE1x0B6GO6VqIRqzi1mgyAyUxS4fEy1kDxZCOiiR9hOkrDoLXAMNKElrySnS61IiNqdby
	kr7yZRIWQ/IHZc75K3RX6AVScoIR3jGMdYtD8RZBat2YilIIbvyns55YRYWsaRtHhG5Q6ItObGGFe
	P0GtOrEMwdrS6O0fHCmbCkM32idUH+IUVqfXBaW86aE955wOCAwfhEhRqavU+1jfqMEH15YSKpeit
	sXDngqUxk62mTIgzinfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX2nt-00000006LW5-1jR9;
	Tue, 09 Jun 2026 20:12:05 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wX2nq-00000006LUm-2iY4
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jun 2026 20:12:04 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-36da8439078so5325025a91.2
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Jun 2026 13:12:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781035921; cv=none;
        d=google.com; s=arc-20240605;
        b=HF70H0pJjJbrmwjbo4Hgsh2+N2Ma9cdpwrJqMpEeon6p9O/JXeZRh/GkFNjVNziU9E
         svwqqFXOw0xjMdfO2vhXz7+ECfaJUKDRhPq6fxO3bz76cZQILDX3/R1QpOOBd1ZXUwNY
         7XYuKl1T1ZOmzaQHvAVKUAVOAJAXf3z4feoHxnpc55vcSeiMTk/bw/vusF5ZoUY6P++q
         PqfYmc58wGHaOPkWbAMfcfbnLQq2w27ZkRu9mozHHJc4Er1Z7428wK+O95JgGgMfpjYn
         exuAA158JycrD4LWTeeDOs4rWwoYfq0HwppcsZtx3q84PqNHW2d2qrKiqXG5m//ayTvw
         dw4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1TP2hUiA2w4UiubJG1d5nR2maW5WDwIWjpRzO+M+ax0=;
        fh=Sn/cJ0uEE0Roo0OiVIm5idn8MEfHrw1OsL0BsvOvgus=;
        b=IUaHCpasQaeSqYqbQ6CU2Ag9VYyJdIfWm2E7U0zJBiIPz8CSr+36vo/iz8KCO9aXtu
         FN+mCRM6lmMoGXlhBJnCNNSgf6Z+67JUUW2eOBx/neUyTlxxQp5eyWHyl/CcrwQDCnUS
         +FOxN1AhEmUGBtx2XPzzzANb6POJQkDALOb8lQxnT5sT7JDzCg+KV9GFZ2m6IsluoYWW
         qy6KI9KVCzh/mnNtTEa+P8bV0pncfk4gxT3hSn2X1e0eTced5oiVnhu/RQuLjtaS0WIK
         F1ef641UI/Dcnu31nWJBOINI6nCxKZNUVSuoVnWGulrH6mO5Wo2rugxAGYyxZjW8Wiwm
         L68w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1781035921; x=1781640721; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1TP2hUiA2w4UiubJG1d5nR2maW5WDwIWjpRzO+M+ax0=;
        b=dG/z91W8UrZF3/72kxqwBBUVCJwxud95fvvuUOSjgApUjYYMuHLVDwyM3Fjq4yo8+7
         zDG/r6yxbueU0l8DZ7YvzgvqNdqpfu1gp0N4nv6Ncfasy7NmTMOicdBymXEQNL0L8wql
         qgN/ZNYAPYr2lLrXKFFWp5ltFnQhSX0rbYYzs6bZM68xq8c8NJYdTmnkmWyobOFfmN99
         vyUCWLQeXqEA43vU8B+LajzvvyJq05woKrB2ts7ORd5gqxYTvtW1XAslBi0r79Vu1OLf
         Rv7oT6EBtdySNoripitxw54hQ98nnPD+cqTjs7wUriwjwNRbZFKKPPSl/vM9t7592QSO
         vYdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781035921; x=1781640721;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1TP2hUiA2w4UiubJG1d5nR2maW5WDwIWjpRzO+M+ax0=;
        b=RVXg4ZYB5CkDgzQnQ/LhHTa3sluQtNjY0DSPlURfPyYxVUtt4AC2AVu1DXFITqdRbJ
         DDLI2AE9NnadXImf+r2N+byvgrW4082LnFgvMvw6/xu9lZ1JCFyPG9CmLUcbX3yBWU6i
         l8yg09a75licEUDVgMiwQA73trNYXMhTgdpkeNYYD0yDAwhC2HhTqkcPxNfIGW+uQ5FZ
         fZPOTcNlFikF67d9gPZf31gInDbapKtlj/jmHEe+9NqtJDv8NKWly63QglFK3+IvYIzi
         kNzr8xFHf4Jc3VA5n6vOMINO2K37kzXP18PhAz2akIqHdeh9qDwvEtlZos2c286C1lt9
         08Ow==
X-Forwarded-Encrypted: i=1; AFNElJ9jDULsrmtYTUzybUzinfQwG1/B90wFuLhNohnrqtppOHWo1n+xW/EtB0fqHi3tUhhjBWaKwcBFeo8VH96dtw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywxg4R5ZB3bajDa/9UdleAcJaMzzlDNWwveciaeNisQx+qqtWKo
	qWM573ottuJUXaUt+q6cO25FjAIt2j4ho3CdlqrJjpvB5IgluF5g7N60La/5lQTdXDWmWnthVrH
	SPBVZCHlFcBYRd69B6CBrp02utMgfe62z2mmtPJDQcg==
X-Gm-Gg: Acq92OHY1pvHf0tkA6WFRukr9JV+HsbreO/v+edmkJAjkTip4402UGM9TGVVW43siyc
	MuNB9SwYXGwLJYC3vBoIbt6Tsale8YiQNin+qslV+KxQWcU3Jt6dmNbSxJIN24+AfKgBdDEPiBo
	SSNSdBeaIVHIHxQiPZX9X+GzWcYozmsaJRh0beZrJo6ntgvufm2q8VXeLsUcO9JMriQ0Fw9YuU9
	4+kIkMCpyXIA+O0wFNqTGz35JIXqaGleUBFs77do+mV66hdujGnZUAIQT0JwJGpcunaXbMFO9U6
	SRxKnKUVm2p+Ae8jrQ==
X-Received: by 2002:a17:90b:3bcb:b0:367:cb53:7435 with SMTP id
 98e67ed59e1d1-370f1525ed1mr21923499a91.24.1781035921449; Tue, 09 Jun 2026
 13:12:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
In-Reply-To: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 9 Jun 2026 21:11:46 +0100
X-Gm-Features: AVVi8Cf7R-IrVdYhsGfa6ARvQUl6VjYbn-pxlLXZ6UvxdCSIBKSlKWHfn1zLb40
Message-ID: <CAPj87rNhTViuff5qWeoGkPgyRvP0uOAcUGpcJJPTkPR2b8fJcw@mail.gmail.com>
Subject: Re: [PATCH v17 00/28] Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_131202_856422_30163FEE 
X-CRM114-Status: GOOD (  12.95  )
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, linux-doc@vger.kernel.org, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Andri Yngvason <andri@yngvason.is>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Marius Vlad <marius.vlad@collabora.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Andy Yan <andyshrk@163.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Tvrtko Ursulin <tursulin@ursulin.net>, linux-rockchip@lists.infradead.org, Harry Wentland <harry.wentland@amd.com>, intel-gfx@lists.freedesktop.org, Rodrigo Siqueira <siqueira@igalia.com>, Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>, Sascha Hauer <s.hauer@pengutronix.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, amd-gfx@lists.freedesktop.org, Dmitry Baryshkov <lumag@kernel.org>, Werner Sembach <wse@tuxedocomputers.com>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Alex Deucher <alexander.deucher@amd.com>, Andy Yan <andy.yan@rock-chips.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, wayland-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Nicolas,

On Tue, 9 Jun 2026 at 13:44, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> this is a follow-up to
> https://lore.kernel.org/all/20250911130739.4936-1-marius.vlad@collabora.com/
> which in of itself is a follow-up to
> https://lore.kernel.org/dri-devel/20240115160554.720247-1-andri@yngvason.is/ where
> a new DRM connector property has been added allowing users to
> force a particular color format.
>
> That in turn was actually also a follow-up from Werner Sembach's posted at
> https://lore.kernel.org/dri-devel/20210630151018.330354-1-wse@tuxedocomputers.com/
>
> As the number of cooks have reached critical mass, I'm hoping I'll be
> the last person to touch this particular series.

Thanks for seeing this through!

I've pushed this now, minus the Intel patches which they can merge
through their own tree. The AMD tree required a pretty trivial
conflict resolution which seems to work OK here.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
