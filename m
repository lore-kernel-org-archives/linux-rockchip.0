Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15BFED2ED0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 10:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxrpnxT0l6syRQY36bOezIkFrogzTB7naSBQEUw/iAU=; b=KkTBrPb92hLzGS
	s2A52EvXNTr18Vc/BHRzLGFHJZU6Cb2lbzA84Uvd1AoD13APl+2G6BtXQQkkvSRTfD4dFuJ4gYNkn
	FaBcYwFzpeBveHDfjSM2re7TNeef1tz9mGLc4Z9WXbIr6NxQfaLlbp+P1I2YGJzBjA6uknYCyPdoD
	F5rGMtRnezxRKYlW1OwKRk+Lxb/F+5EasMPg/euGVDfNlkl+0Pt8liz8s9mox8DOVMkcIOSFRJeb6
	w0uO8BWI9wganhYTsmkXFa/mVTPwtDE0+RuLj35Nn82zfGiJiSQyGutMbTpAJyfUBUWvmOeINfhHd
	UytkNlsCbtLfOGy+Wttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi95b-00000003dJ4-3J7B;
	Tue, 20 Jan 2026 10:35:59 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi95V-00000003dHG-2fS5
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 10:35:58 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-502b0aa36feso25461741cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jan 2026 02:35:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768905350; cv=none;
        d=google.com; s=arc-20240605;
        b=J+kQh2cezzj4NsvlkU1JQnZCoQ8CHHB5ByJb5QxnlMisOgkCrqQ+aWzSGmcgDkSwPP
         UcJfsneytmxsKV9DEUGN8E1uRSV+sRdUthN3jb232wh/YYwcnHvd0K1QMXJ++07rDh36
         IV/iV96RGP8Dllrr/YFtABM48/0JAyttrVPLPiMTTqye4rRJVRneRl++uX6pLOeriZHp
         9j0ajIkU+ozooHIWYY12KTUU1Ic+t1YRNW+rE0RMuRalbEMbhx86j5BmK5Fnb2uJQg/m
         oH7NMVsgKkqGSfEhH0R+q1pQ/bRb+okDgPxPs8mYZDM8N7VOpv5tpKNUG/Z7N8vklY0D
         zFcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EngcF0AuMSe4GxCLzFlk3vYwqxnh61muSwDFDmoTUcU=;
        fh=QYKGdwiqo2BU2IzcpI+JSF/KGZpnTeksr1xRyCV9RtM=;
        b=K6pkZkeujPoBcESBfZO6//lYIWvcBHlS4t2vxLUuutt2bJ1vevvni/g5IeKMO+r6na
         uT45ruBIdfriRbrXVJ9Ri4L2U+wFuNwwWn15rU2MSQu8+D9z/a3bTJcsmg/mH5qy76AI
         Jcenx9rNyX+cjQlCFtC5c5KrplFJF4/gY1MyqYAk6C1tSLg+9tMXraETsD0TgVF2L3+V
         Y86pj9kNcivbFRz0x7w73WRuk5pPpNypNlMvEpIqyzkaRtzQ3Jn1pZXSGlA5oyRHZDWA
         ZEqG7t3Ygw33OvZUxE02YGuu9L2fW+LEaSWU1orvVgJ75jtEoi/fXIdZGfdQ6CWFKVjj
         QG0Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1768905350; x=1769510150; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EngcF0AuMSe4GxCLzFlk3vYwqxnh61muSwDFDmoTUcU=;
        b=Nrf483FJyNr932bnw6h9zJQkiytzycZT8wyIC/GtrfPXcnFrSm/TMYc7L2WkFtaQ+X
         C6uOIS7CfySGHcVVqLRZ2rjiwgkmEaxvT5qNCKaL1jNXpXrDi6fqArQnFsSD0ZoIisfe
         OWxp+JMK2o3YUVp+tLc4UDVnkxgwKFY8XACiDIBl3KEhEbMKejb36/cqTBA+o66FI6KM
         7HtKSm3d+QYvJGPb5ZZaC5dSx8kogROprnfPlrOcnBqXQweVtquCCOg6a1jZetxWA2JM
         bg8ofwlLm3ghbyn8ghIkLvGhIEfaHgmAEZ6JfuXGZ5RIbrb/69eUqSPYuetmQGDHTXuF
         Uqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768905350; x=1769510150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EngcF0AuMSe4GxCLzFlk3vYwqxnh61muSwDFDmoTUcU=;
        b=Hz154IotJ9pP1V61WhnR/Gu+9FFhwbBUsWQEqOVzVBIMPWA0LbD8yPqGUIXtos40iH
         FgOFsPXZFg2aPKuVsIUMuJgkOtvzgwbPsWowUlcgtQ1f63rp3Yc2125xNZ3a2gthxNcU
         tJ0Jv5Zw0EhYKS0N8ovD1Snpa2ag0c33pAuvn5IFGUxtJnXKhzK4gMjQ5BP+wXQlhlJ2
         jSWIlXmn/l7kgrJAOdTfg30DUSsWAGcZunJQz7FLqNd9hJnT+GYiqW/to0VdRWqueOMV
         C3a5xvuhNGcnQjM6BN4aio1EF/NvPy4yhL9xMzMJPicYHa4Qt1lIhaPCJgSA98PR/+YQ
         9FSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWc59pVVLedLSfLUT1cexCmzm5wJxl6hoyV7eNGDEZQWXeX9wMvd3EoH8eHjyTGbsbMaSMcmv2gP8PWL+VGcw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyTstRxyU5mjAhZNgEiGtBkv4LZugx9/sOyAvnqT7Ccz/aJvjYA
	rf+M2G0LU7rX/uwCcySlferxTWSzErTkFUhoNiihmH6zhRYtQ9IHKBoxBpT1qQcqvNNc/Xq5hKT
	PGyiJAFDC+10N3arjRYMTSdwLaYgjZ3byndEM2V34Z5yJZIObTOli/Mg=
X-Gm-Gg: AY/fxX6fH61HfLCZwQ/XHAf7z3wcQwYas1BxMe01k/WbMfKRrqviOyGyMM8Zo6sYrbx
	LJtcyocD0vamaqLuvMeslsb+yp+IhivFpzCBXuI/O9uzajneHbgLY53gvz3fc2wtvpDKRrMqmRY
	KhlvWXXGM+tTGLfOt0qzQuNy+ZBA2XVjL3m6xPDn0Z94Tw5j6bh61Yl75IwKohIgqULqzd8WTEU
	c+RIkIrIjyNyW8zHB7rxMnbgYVXHqqeTZGT9yZExpQ2G8DgMfxbGwdDzkFHqBDGQrUffCw8UGBV
	lbI=
X-Received: by 2002:a05:622a:1211:b0:4ef:bed6:5347 with SMTP id
 d75a77b69052e-5019f8faa18mr267369681cf.30.1768905349558; Tue, 20 Jan 2026
 02:35:49 -0800 (PST)
MIME-Version: 1.0
References: <20251206-vop2-atomic-fixups-v2-0-7fb45bbfbebd@collabora.com>
 <f9f7b446-8575-4f16-aa96-5197b22846e3@rock-chips.com> <4696988.LvFx2qVVIh@workhorse>
 <8655687.NyiUUSuA9g@workhorse>
In-Reply-To: <8655687.NyiUUSuA9g@workhorse>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 20 Jan 2026 10:35:38 +0000
X-Gm-Features: AZwV_QhRkXnTevqN1bZxbydehXRez199_FOqVjVHDQ7c6Ms6YsAuPA9K_r8GGT8
Message-ID: <CAPj87rN19nQcFT_u8WyNO6a+2AbAp2hBG7ARbWoJ8-jwO3yGfA@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] drm/rockchip: vop2: Enforce AFBC source alignment
 in plane_check
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Daniel Stone <daniels@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_023553_788876_B29685D1 
X-CRM114-Status: GOOD (  12.26  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi all,

On Tue, 9 Dec 2025 at 10:58, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> In either case, I think adhering to the atomic API to ensure
> artifact-free presentation is more important here than enabling
> a fast-path on RK3568. I do think in most real-world use case
> scenarios, the fallback won't degrade user experience, because
> almost everything performance intensive I can think of (video
> playback, games) will likely already use a plane geometry
> where the width is divisible by 4. 800, 1024, 1280, 1600, 1920,
> 2560, 3840 are all divisible by 4, so a window or full-screen
> playback of common content won't need to fall back to GPU
> compositing.

That's exactly it. Changing userspace's request may result in
unpleasant visual artifacts and other unwanted effects. If userspace
wants to always hit a fast path, then it will need some kind of
hardware awareness to do something different here. The patch series
pointed out gives userspace a good way to figure this out.

With my Weston maintainer hat on, I'd take a patch to
weston-simple-egl to allow it to use a different size with
command-line arguments if you'd like that for easier testing. (Fun
fact: it was specifically made 250x250 to discover issues such as
this, which wouldn't be uncovered by something that's aligned to a
generous power of two.)

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
