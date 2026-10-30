Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4174606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Eq7Kkl67;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=V1ickBR3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xYYcRXyG0lngQLVNQDUDp+d3BHmnOPVF+UXQCq2cFlk=; b=Eq7Kkl67b2uBCyLoEw6LPjD94y
	t2nR39VHvWGL81ZrlPBPBpuks4HlUxIo6IdRI+IRYOryoU84lqOTdbj6OgES8Kchyx0mImKnai6sN
	LhK2pRMQXxHVJEfUN4mIsTkBMhyNMgd2R094CvG9yTDjSuEJOHgKnZ2wx5+1b1U+OUH7G476gYssB
	Rm9JIbcliXBFPWhyaqx67p/FZayel02ErbVq9pRdWPJ6F+Fj/UPb11tpMZNbmZrwM9HDaAwuglT3v
	y8BxMD9omdi1pomAMysHnE268K+rwAVcGG/fMgnDGW1o81IXmD/SxSwaW9O22yZC9Pe6LbtnWhpF+
	NrXfSAlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkuQ-0000000BZJb-3UAm;
	Fri, 30 Oct 2026 11:36:34 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkuN-0000000BZIq-2wDl
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:36:32 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2e98798cbddso2672285ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:36:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793360190; cv=none;
        d=google.com; s=arc-20260327;
        b=c9zWiIwBpPVqchCfBOGJiS4WtRMpABQJ9iq0ChfZDiZ1a20LSaNWB/EhcYMhrRT42l
         lOiB2GmjADWJ8FFUSD5JfmVvjnBlsaZbVUa6g2d9CmpVddYk7JeIq5xrY4jbKEXpuxVp
         XPiU8Cq+xCaPHc+D4Ilj96q6myDazDKTKlHttaF18eLLOATKKkETczjrQX9GC1UHuAvm
         8E8MtT1VaQHhg+WvsOJPRiwF65zzcQShui6AKmnGrxz/dsFyZ21HuSefxirMJ5KovN8g
         XIjDVlaZZFLtMsA3JXu4LsLitkYHdzzv1qURj/bu+GsjlDLqQaGc3Q8TPUk1zVYjiSF9
         /9Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LtCf5nVW5bznJzuzPUP3xJSxpr7qf7Ib525PZhWyGlc=;
        fh=M6jPDiYtTqF40KG0UXtYhJDWM/1CtxMld41IdQmUkJY=;
        b=J4N8atPM9kMMj6VnP5glZVIAnQ9NIyQOZ7UAYqbcfxGKG0FEjhf5jitnRVSLAcNpPJ
         kNivrkmfT4c9cpV0kkLRPvAEGHPaIGNY571NqY6N/SvQxCgYFYU9R9Gf8paR4UIXT+jZ
         WdeTAt59r8j5sKCln5Ig74w6T5V8hjE5rgW43njINvVrAe4e++pvCulB8rGcd4bwA5ci
         qwpXGCMo84Y1vKrugLDJXcHZd8HSdKs/dyTApZcW0b+ymGvWy46IKb0VubeND5oMpS7H
         Ipk+vecoRXLVR17DQhgK7/qB+68YecYoZ3+aS0KmBIuWw9YhBDoXfrrPUyD+SPkd3FfX
         yEHg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793360190; x=1793964990; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LtCf5nVW5bznJzuzPUP3xJSxpr7qf7Ib525PZhWyGlc=;
        b=V1ickBR3IQwBA5lJ/mu44SbFr/zvMqxGy2SFhB9xy/WKrqjO5RzM2S/7V+mrToIro+
         ehwY9pC/9hVJHs7QimwB+WwlUlgBLUHjf+acyCKWlUnDjljgyW/D2rmZbIHUL4FjCyYD
         EuvjuU+SS02gRJGlMINb50fFdTjCGcZi+mWtJxoxkHTV5x52PVn5u/76hmmONV/V6Zqz
         r3NE2HC60CqVv+ir+PytG/Jx/kwfWhXvEIsbXEX4+MMtMBdqldddL2A0LIIdOoVuDv5C
         DUrk8YSoOH/TZFwNpNtIgggmAYtQvB6f/7+12UEMxSXzpVD60B2EZL/8I6S4/nd6Frk5
         57dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793360190; x=1793964990;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=LtCf5nVW5bznJzuzPUP3xJSxpr7qf7Ib525PZhWyGlc=;
        b=Cr7wTiaG2Qf+GCf6RGZfdV6kJttfvBzS61URFT3ik0J0m7I3Hdt6QbgLdpa5czHSIy
         /54HFwDBQfAbzOzCDrJWOJwakLaCBoALvIrXtligZLDOwXDLIy8iuyhLv7lcdh4twmRA
         LBrSy3pnWVrSvRZ8JQDOHRvRNB0LJ0Hz2ULmHnRGwssrYfIMpYzVEy0McORSIhS3VWNR
         wqEz8DKEmGWe5biC62i/V3OiuFarikaYJ+mU+QiGyira850sJaBbVh5ejSz0ZukfRktQ
         lMIQP0NAu3Pwc3U+fYdqIewO8ZGLxzKAJ9lOdbrQBxAWDDYpHznRT9GJqZ2QY+FIXRAk
         NsmQ==
X-Forwarded-Encrypted: i=1; AKwUvBxgeDNtd3aRhy/XXOy7r+Q+sP2HSb+65AXZY0X4l0Ieb3YwXvQLKMC6q31SsOsdov/OhBjMitGCcNhSNulymA==@lists.infradead.org
X-Gm-Message-State: AFq9FYI3wxlSwOam55+c5NTUjl2pzNi9JzozgX9AYNNMJ/3jZtYMz6dl
	jUjiirUJMYmRD3mihlrwqu2Tz90gsMh57YxWSxh9l1RfM5IFWX2gY1St/0kEvHwXNRj/+ZMp0iq
	Hr1NOk+pfRcUd/E5s9V2npm0Y8+3QAKwhrCGBMQD4fg==
X-Gm-Gg: AYBFou1cQTMP0BlTqqvMieas4nT3EFyURJdN88NLBHgHDgWDlCF91GAvl2ays0g11w3
	1OoqnkkRmNy1BqrAszGmoyLEoXdjsazlreCFPYv3WGXquWreABRSHT+rxUiK4nwpw86WnkQ93DK
	B9xhRZmYzvMdhuhxAToz10NmURkAg0j9ZT+Ruc8GTv7tyNNXHYgD8c3DIU+Ry5S6WL+DNoHfUwB
	6x0SssG6yvTWccy+mUo4GplZqFk99gio4S05W4OuFcchdn/ICYCb3HZ7y6EX+GTJ4EAKfJhEA8g
	NOkrCKDslBb2V9RG53kvNn6ONPCQB8JlIfccCJrcPjOGTgladUC3vIZWdvFHYD3ONgXR85QwFKR
	SWIXG3HHxUYl2nj+TPie9raR22Qb+5xurXGTs3OT7yX5ONZ8GQ+euOL/YTQ==
X-Received: by 2002:a17:90b:4d83:b0:3ab:d26b:c2e9 with SMTP id
 98e67ed59e1d1-3ae89763ad5mr1536469a91.33.1793360190259; Fri, 30 Oct 2026
 04:36:30 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-6-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-6-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:36:18 +0000
X-Gm-Features: AclHuK-U0mC8XWkCgVPn0dV4tOoEVFqDFmKaCqBI68agDhWQD9u0tSx5WY3ydLY
Message-ID: <CAPj87rNJgUPhXtBj6tw7pzeHqmbPwkmVzzc6fT5pj_XxAuss=Q@mail.gmail.com>
Subject: Re: [PATCH v5 06/15] drm/rockchip: vop2: Fix VOP2_MAX_DCLK_RATE
 overflow on 32-bit
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
	Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_043631_760320_7DE23AAF 
X-CRM114-Status: UNSURE (   7.16  )
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
> On architectures where unsigned long is 32-bit, VOP2_MAX_DCLK_RATE * 8
> is evaluated in 32-bit arithmetic

On architectures where unsigned long is 32-bit, we will never run VOP2
code. I guess Sashiko doesn't realise it's just asked you for a
functionally-correct but completely useless commit.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
