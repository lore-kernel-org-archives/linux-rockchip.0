Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F5E3CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 14:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DD1E5My0A6Ty4oMCgoCQRyLAr/3fjICiHf0VeFC9/0=; b=VuFJrk6n6P/tdS
	tgzn2RmSLbvrxTzZRanKFz3C/L+pGUwgiSXLDOjXEsVFfoNJ2nnieIJg1YUTFPV/VhvNl7gFDM0UX
	jdXi8bMtTeBn3WD+21A6cobFybmEeGIyQzXChAiMNxntb4iJ+SE8gOqcIKhlO1UUoCa3J2R5Lc1AL
	mgRmnovCgrnxCPc6/m2mdiMmq9XxBFPfj9egpno2xi20HZwfIIvw7WPydXtPcZFeEid1rgowbksPG
	4bOI4kHHVf2f/Qz/4RYBnNmCYaOJH3zylPQGZjST8PHEq0twUoJmQQEFBceGJ11YRU+u7Cpm7hqCK
	5Nk10ck3rK/vt/ZEmWRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4ma-00000008AFq-1FL0;
	Thu, 21 May 2026 14:53:56 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ4mX-00000008ADN-30aD
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 14:53:55 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-366375c4076so2457521a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 21 May 2026 07:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779375233; cv=none;
        d=google.com; s=arc-20240605;
        b=YBTkZgnVPaF/TDnQGBEeOknyfJZyeLJkpV5rrMAiEbw0pQ0yqr1uiaXF+0hL1E6nDt
         DVDUJGam1T+8SGG95T/XckWqVyHzxpSvSkpAnHDibdJ7jcwmbpCNiyz3qX+y4FIr+zg3
         qht7SlQGERhNx+cW85eI9zLwU6FeiwEuOKhXTOvLJ6ei8R312h3IhjbFC93okENti2La
         KxlhvBKc23ItEH3BWEDz3a+2s0oduKtXVFKLbJwB0jfQ1YIPSPfTGEbQuuP/XZhard/T
         m9n6XzeRWxeDKt4884mmPUcAljKi0OAP+ohHAiu5JMPVs1YfA5gujO/jOB6wxiKxpPUN
         m8nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bA/ypZiwvOF7bLYV81VPBE2mEbMWo9wKAEc1kqSaHPI=;
        fh=4TfNSeSXqvfGd1kaS6LpkBAm215ztlmS9u9FDVPruYw=;
        b=iWXkhVvi+vG14CJSU3gcm1zlgTNGzc3H5eojpVrgustfOBNO/dLSy82moUjSPA0qgG
         6labpdy8/SqGP6qSRetzUWHyiUu2OoHjHq7DdZnxX7+UmIjNb61l5F9+fNALlz6+f1sh
         H/L1uwgPD1QnC4svlKeQUUuaROeOBd1DNF15cxLxJGCk5bF3QtdTPoppY8yT6g/OOijR
         zVrf/zSSwiKJDPJA61gDBvHu1tZIzXG4yj9tL0Z0+bjLbA8viiJrXPYKOMalWy+gae6e
         u4eY1O/qD0pSaw4PfShlMvrB+Jm+YCpPtOCOOwZGhZAuFaMW6aHvy1AaNkcBqZJCp+w6
         I9DQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1779375233; x=1779980033; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bA/ypZiwvOF7bLYV81VPBE2mEbMWo9wKAEc1kqSaHPI=;
        b=JUzU4ppMVn1uSgtLVyxBldyrJ2iG3SM45bjgUpPibuGWiSujufe2d/eatgGaQvza1w
         Jvz+UHNO5VM/qtLE6LIPRVXEofOnNtZ8MBaCnVUNlY21/BHv7VS0zU6EQvXNH5K4f5uQ
         5lHPa860FTQSyLNHeY8IHSxMG6MZS1eZD2gY4uynhptKTC/s9jGBmHg6NXWaaDJFSfYc
         Y0YL1GrjSPZStsE/EJDCehVltKTuBqTvDTyyDWXDlPZUb0L+RgITscVVIVd2zmQeddo+
         JQ6Lu5eJhLNg8/er/dPeG9czS0KO3T1Q3cZLVVlcVZDIvSCKeHNtcrttz1Wfvc0LoEqK
         Xa+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779375233; x=1779980033;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bA/ypZiwvOF7bLYV81VPBE2mEbMWo9wKAEc1kqSaHPI=;
        b=q/AKbXkT/9KXNvqNlP8McU0g2LiPhkAJPAoYjsWgVW3t+arXudWjdEahyebwBrLRMJ
         lysS/z9kFKspS55JUgwnsTTkPrXt6tpwJ7a7sBwDLo/ctWWCCYG8crtRKvBsvAo+EGz1
         BR01TX9kW+xg+ye9g+34BC+hSKP10RF1WXdT427D3S4h/SagAiHqdKUIMEqwnQAXPj23
         RXjHrfaYFVu5pGqkE6fJGkKVbYwF94t8uPi4b2opFAjAk0PBJfsfspLRHwdpXHe6ahX8
         8SpbpZvjq3zkhyZe+DKUPp1gs9WiNTKDfRVXlGlBKeFcgC9tQD37Y1yJkETnTxYTL6cC
         EDUA==
X-Forwarded-Encrypted: i=1; AFNElJ+s9p/mfi/ci8PTIs0yThfIK5O1r0KAbm7Z+iLVodsKxBD1L/zkkHjV4F8INAmxd+iqRDn8TDA4btJj3y0nHA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfqkEdDyOt8Q+Fhd9pkJ0t2kpwAHD7vCrYjzEAn3WphTaHlcxJ
	kR9XNd+PA+pITFACiC0ZA7c23Przf5TVTTrkvd3PL5DnbRlVV+c8Uir+yEHzrQc21UZMcGGJsTw
	habmO4QirfrQLliBCoDy616Q0gtLWaDSu6e+yqDX52g==
X-Gm-Gg: Acq92OFT3hmvdb98Jkpgb4f01fZArsnO8w1N/y98DoxtCZ6OUUxQIqEj/OjavZuCDv0
	Qj2p4ZJ7NhC2IScn/XafznnSEin91TdJFZCygOhzgThgE0KVvNbLt37s2w2UFg6PsAoGnLqtfIx
	Q2/PVH+BrTTZqSDLeNNygv94g08xrk6B/MqfYxmmoslhakhVlWuQGkG7m6zU1dfjn800W8BOanI
	AciXX+ptRF7sGJVGunaRX/kUZgEOMRi5S+uwIsIvDdKbX9+tiFBm8Z406X1rLhifsSF19ow+M5b
	wEqkye8fhnm0NsAWwU5ZuMGImWxNCVHo67/AXiQ=
X-Received: by 2002:a17:90b:2d50:b0:368:78da:803 with SMTP id
 98e67ed59e1d1-36a451816e0mr3680773a91.12.1779375232901; Thu, 21 May 2026
 07:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
In-Reply-To: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 21 May 2026 15:53:41 +0100
X-Gm-Features: AVHnY4KPQYYiaRNDiAsU-wmS8JuOZnjSnShN4CXgg2DHzWx0LVSgQ_nHQROoprA
Message-ID: <CAPj87rOFnB+csoswOOSBR2-=abtCDbsKq2uJ_PgYKPWh-G8m9w@mail.gmail.com>
Subject: Re: [PATCH v14 00/28] Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_075354_085761_5C35CF7F 
X-CRM114-Status: GOOD (  16.30  )
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

Hi there,

On Thu, 23 Apr 2026 at 20:04, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> We have an implementation in Weston at
> https://gitlab.freedesktop.org/wayland/weston/-/merge_requests/1825 that
> adds support for this property. This patch series has been tested
> against that MR on i915 (HDMI, DP), amdgpu (HDMI, DP) and on rockchip
> (HDMI).

This MR is R-b me.

> General notes on the approach taken by me: instead of silently switching
> to a different format than was explicitly requested, or even worse,
> outputting something to the sink the sink doesn't support, bubble up an
> error to userspace instead. "color format" is a "I want this" type
> property, not a "force this" type property, i.e. the kernel will respect
> the limits imposed by the hardware.

Yes! If userspace wants a fallback chain, it should encode it itself
through a series of test commits, rather than adding the sequential
logic to the kernel. Doing that might work for one axis, but pretty
quickly disintegrates when there are multiple parameters to perhaps
fall back on.

I had minor comments on 03 and 20, but they're Rb me with the obvious
fixes. 11, 12, and 19 are Acked-by me, as I don't quite know the
hardware specifics well enough to say. The rest are Reviewed-by me.

I suggest you merge the common code and VOP2/DW-QP implementations via
drm-misc, leaving Intel and AMD to merge through their own trees
whenever they're ready. We'll merge the Weston implementation when it
lands in DRM.

Thanks to you and all prior cooks for all the work, and to Maxime and
Dmitry for the help and review as well.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
