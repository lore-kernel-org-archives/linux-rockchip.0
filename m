Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D222606A321
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=fgngMC0W;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=oQ5w372D
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UYlWfvoGW5ASAMbvOhIaVwEbUvrRWlFz8q8DJi5LF7Y=; b=fgngMC0Wa+hlYP+j3fEO/V5YVq
	VlL/nJA3TKSA7MDIYLY90rJehIGgdYBSNxbxdJ4zgrVtRedm2BgiTfmavFGdCROgTNPw0WEG1T15g
	ZjqxLe5lv0gL551R4EoclNmO1DK4iZ0SSO4RKU/zriK2YZubBmvEUjc37SjO5xGSOLdE4DEVe7qZM
	tbsq50c9Am+X5zub6aAx814VpDBdfdxr4MyB/gRWD3ks71rqCbnR1WMLCy/0tm/U/xhjlQ9uB3UOF
	HkoC0Om9JLL1eP2ynq0jftdspHa7usqgW/EixRT8E4W56m5/XB54ft0rUEuWFrMEbbFSqUbMlHV6i
	vQl/WUZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkg7-0000000BXih-2eQJ;
	Fri, 30 Oct 2026 11:21:47 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkg5-0000000BXh8-1Ce1
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:21:46 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-8a0880a46e7so302841b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:21:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793359303; cv=none;
        d=google.com; s=arc-20260327;
        b=b746Kg3PIwbHL1j2ViT/N+75th4G/cHK+1emTz/BxStKgqJ0hg6B9MTGw6sQ7C3YhC
         pkTJMiflDwZVyCia5tR0heF+ANEk8NETAy2WBBM0NQvqceu/YYL+nf1R/lbm2rR0Ghb0
         BNuYjKTnfpK7NHhaNQBvRNHlWRAOXDuZOJYBo+b+o/n4ck7oS4v97Cl7KQbPUmNrzFl0
         Ps2zxlcfHGHsT7hVhxQOxkMj2PuquoCsOn5uYbWVxlLQ7MuRo+2ZlyAsTN4sxtf54ZIf
         1umszY+PKiYo9wHzdKzOBNthNRaMbzMYUu9UggmncaSkjB0tYWqNylKVOLcL7ql7DgxJ
         fVGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IhotsZMujGgxWB8wogYX7M/QNYLtJDwXry3FOoC6GuE=;
        fh=KgJ0Aj/7gyJEwN9WrUthWYzyiQ/G8e8lN4CSkJTMO4Y=;
        b=X9WEk11F5mMG3qhFKSKje7Az9wfaK5b7z5s4BhUIfotEng0mjcwfVC4Q5tFG0gz5+T
         L+A4+gwHi3ydei0iQPe4YZaQPVdt5v0iLOE1vOVUDxNnb2i/AKLq2UEf9yCcpWdEjz5X
         qTEzTQ8alLvEZuY26IThrsyQ0GGrBR0s/toXzVJeH/yL6vUY3EDtlwpHtPGH27dZWrjv
         RgO0XT3RDIut+EoTGzY6qxpQgqlTNj/4MQ/00RREK0Zc9muufQMLZaph68PqcvHWH/0z
         FXYcg8ZR95sDhNvlja6CrMWc1btNUim8AIRY63LHYSlxGJHTMj5I4AXy4oRxm6dNlZ/1
         hOzA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793359303; x=1793964103; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IhotsZMujGgxWB8wogYX7M/QNYLtJDwXry3FOoC6GuE=;
        b=oQ5w372DwLpKKyBUglzmgODmaoYNYVffCMU6JNA4jXMn8iwr5XmYbHtwfYPPh652//
         5vsQ8+yXn4yjfWifVqf9B8nuSilDVHjR3ToT9TiQsCP+OFEY6/Z3d9pOMBB4aci1aEVN
         W+Pk4PROdbYthFN7H6PFpUB8Azr/HRLFfFBav0MvxDSHLAa94Hy5ysAeJsWKaNBMyxxd
         iXkZFDr/trA0IkqNjLJffPOyeAaSix0nSM3VEW88KbX2rZSG2b0dkQ7yv9iYmTYhFswi
         qToROoquWlB+5UXVxePnYNgIkSOLYrJi91yOoac4Cje+Y14WkXWu8SyH0XUD/IJY1+OU
         lCzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793359303; x=1793964103;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=IhotsZMujGgxWB8wogYX7M/QNYLtJDwXry3FOoC6GuE=;
        b=MzZtUVRKnJi/3QmEPTLESIynem8CQ9x+OEJTjacESHlQcjVQgdgrpVUAqaLha+WQ8U
         EA5B0ORTUQlDt/+g+nZksXcGXgswSZ7EJXSk8eVus7dUOQsbwfyt6zDqJ9HSp1eTxO+h
         sPoohb2A0q+RIiQnCtlcSUSYsYCXJPbmJ8Vtn3JOfBhu3J29jDQ99jrQoTNU3/TyKDKM
         zVC01VCa4VlGAty+igKZEM43XuIyULCCpPk2zdMwcZFDxb9lWVnhOuCMTMT8rxZOAHV8
         YWYVC9F2mT3xlULMLBD88EXihjfwtEaMTUUtinJRP2KWEaJ47d14Aded8hjOMqr/a/ia
         d/0Q==
X-Forwarded-Encrypted: i=1; AKwUvBwcxMT+yetA5M4Yk9Kg2O1X9qTmeOAmx2csP1q8nurCGbuLyBe2dZSGX4jgRurBmLfAJCz+xDgW2OTni0NdbA==@lists.infradead.org
X-Gm-Message-State: AFq9FYI5n7oLyRMMbNvz3MPXFjGEfwxJY9NmYYZz6Cu+tHBUH5K/LHim
	sA7SlnY1gn0nsKLQ5hdso/XbMtPPmMj2JvWuvY8w3IUq8HGXlCw7uVhnjYYliSsoihqAmxf5GMt
	IFv/RS+3VEFZQjSJDudJ8M7q9g/9PhG1rbaqXuS3Enw==
X-Gm-Gg: AYBFou3lzza+LIPHiJMx53qQmCsJuDsQvw1YwrhrHVv7fEuXk5nPEIwkuKiDL8lNThw
	H3XU6+b90CHH5LhOI4cOTJAcVV4t2H2r1S5JGMEMiVUNkD8pl5sWrQ5P75IucYId76+22Ja88Yh
	6uzz/Whf+Y+G3M4JhConxSXIeEB9TX5t6mPgKbpIH1UK76Y5IIVogeOshwoflSlNHwf/Zf/EXTh
	2+4Ng4Xhf6d4vzPN3l9CuKgj2cDFxkR/q04/3o3m/dcH1RqVf1SR7+ZYpl0QTT/7JqW/DCh3Oni
	l85cxQBRVBurRPUWCe/8ABgiPt6ycsINSOBLo5AJhIU1r+VuUzPZw0GUvAqNI727HIBFn6ebuCy
	OTjLzdzJFhhGVpymu1QsLavtiQDHSS0BouaLB
X-Received: by 2002:a05:6a00:12dc:b0:8a0:18bd:ddb0 with SMTP id
 d2e1a72fcca58-8a9bf71b34fmr1264612b3a.26.1793359302995; Fri, 30 Oct 2026
 04:21:42 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-4-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-4-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:21:32 +0000
X-Gm-Features: AclHuK_sZpu_OHKEsqb49igvHOjsFenvWY6XU2UJTZwHMq2AAjoVYXumXoLt9p0
Message-ID: <CAPj87rN1rzjDMPvVJytwmvHGipCCuYOyX3abTRqYp4Vq5PyrYQ@mail.gmail.com>
Subject: Re: [PATCH v5 04/15] drm/rockchip: vop2: Send pending event when
 atomic_enable() fails
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
X-CRM114-CacheID: sfid-20261030_042145_432342_611B9C13 
X-CRM114-Status: GOOD (  17.55  )
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

On Tue, 13 Oct 2026 at 23:51, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> vop2_crtc_atomic_flush() stashes the CRTC completion event in vp->event
> and relies on the frame start interrupt (VP_INT_FS_FIELD) to deliver it
> later via drm_crtc_send_vblank_event().  Since atomic_enable() runs
> before atomic_flush(), bailing on an error path makes it skip
> drm_crtc_vblank_on() and leave the video port disabled.  atomic_flush()
> still traps the event in vp->event, but since the port never scans out,
> the frame start interrupt does not fire and the event is not delivered.
> Userspace waiting for the flip completion then blocks indefinitely.
>
> Note the event cannot be flushed from atomic_disable(), as userspace
> waits for the completion before committing the next state, so the
> disable does not arrive and draining it there would deadlock.
>
> Use the newly added vp->enabled flag to detect this in atomic_flush()
> and send the event immediately when the port did not come up, rather
> than deferring it to an interrupt that will never occur.  This also
> avoids the spurious drm_crtc_vblank_get() WARN previously hit on the
> failed enable path, where the vblank is not on.

I really don't know how I feel about this one.

atomic_enable() is not supposed to fail at all, hence returning void.
(Obviously, there are scenarios where it will fail, which Sashiko
keeps 'helpfully' pointing out ...)

I don't like how this just papers over the issue. It turns an eventual
WARN on vblank timeout - which surfaces the issue - into a silent
false-success. Userspace just sees commit completion requests arrive
as soon as it's posted the commit, so it keeps on going on and
everyone's happy. Having the flips time out is a messy splat of WARNs,
but at least that messy splat points at the exact issues, rather than
the screen just going black and userspace blithely trying to continue
on.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
