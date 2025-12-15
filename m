Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C6C3D5B85E
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 17:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ODXIZJQiGyXsz/a01Bsgq0qr03FzAefsr/XZKvvUDo=; b=bgnkTtcu6qP7Ge
	S2lc/oJEvYvfShwEOh6e6EJwbPijQwMBRuG0jy3wc6DmkBRPKvysv2WG6Evf5JosXOn/58AtR2/6f
	QUVTIoOYv/E/QWx1fO4jGlglRqx9bK61tQONIS1lORd3PsyT3WcVuborkeEpSN0t/zHUrbsj5Lb71
	3lYlZAonvebFjM6fmPfrV/JOgMjUEhoBUuGfzGFvpvzFaBXuBUt/9epjgDjNWNdCiKJ/K+kfTykpS
	I5JdrBsGd2p6s9VtVnc67rU84EEVwJ1cL8XlAPmlNqdh3S8bHBDi10Y+UsqDae0mR4yKhupOkhyGA
	t6tsFjZUQ8My9RLXK1Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVCp1-0000000466f-1Ztc;
	Mon, 15 Dec 2025 17:57:23 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVCox-0000000465t-3VzI
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Dec 2025 17:57:20 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-4eda057f3c0so34910591cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Dec 2025 09:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1765821439; x=1766426239; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JrDNYX4hqSI6y4PGIj6+dxdIojaAEYXvHqNt+FhuuhY=;
        b=iubR99S11MXFCXOneKzN1xeZq1cjGsUWI2aC1UqO5nwpZraufEG0uoOkstKeh5Mv88
         LuR3hL4suQ8b6/Ath8NAb1dphefM8PV45sbU04M6Lv7QJK3wtg5O54iiFA3H/mWr6mHx
         w0uiRFjuZZIHCumZ9oWjDjaASD66jclK2PGfCdF6ewBEGXlWBAA1wmTYp0x4fSh4zYlr
         3ZUfqlMkhJfqKyqfiH5di3gcnFcmrYzG+NusZ8hZEQ3ouWHTpByY7hjV7nvPhAUGlMlP
         3nJ4deEqmWERAMQFK5JIApntrqRNRFirVHwNAbYrrF3IkQWnzbeIUuYKnMxobSbU2IkN
         VVtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765821439; x=1766426239;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JrDNYX4hqSI6y4PGIj6+dxdIojaAEYXvHqNt+FhuuhY=;
        b=vkU6UY3LTjrR1FF5MuXytepimy73xcaM3yCkja6kEJdmwDf73jvfaCdo17S/XBW7c5
         n/zpLbOFDweP6AU2ZIGxWV80XZqBIciF+9jbLJC9fIR3+tVhNLYsuQMlJF3UkYbo4kN6
         y5HVoNVTSt19Ccux8j/BlY8aEQhplMRBFxqleAR/6Op4uuHgTaOhRlTNFMRlXGJ+OcPh
         iPklEk/hkbMcLbm2+yborzwOFVh+lWsFdtJYIafx+GD3rzk17cTbwVYnwufHCeRnnPHJ
         8erNosbTl6OAgnDKOccEIwlvHZN3Y6+auTJjFa9AXOS2voxNXXyGMy3ml7tvfePJXjVO
         s/QA==
X-Forwarded-Encrypted: i=1; AJvYcCXDprrci/XgSaxHUyidEctxXlz64R/j3pSrZYz0s7So+QhTgcjHB1K82bi/E8pf5TT6u1Mb/KXVqWynIlcU9w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwsyO+0yEiYj0jBY5A4YoGpL9v4Fxhcq3heUCuvlYzjn4QrMaiv
	sylNVz2WC12KtbsM7j7h61mfZ7T0c6W40OxfgedOErRf07vch3uGwJomE6ZZ6D1xkl3SKv81JzW
	rCBP7U+FF8QTDSkKPkofWSVEG3mpeCYMqDE8dXSzgzw==
X-Gm-Gg: AY/fxX7pNEfaTP/Bl0rmTD11fONzubvE3VJgsONju/x0J/XUPMbtJbX+w4tRxzgz1TZ
	YEAFFq+uJ6Q77hgc5JMv75AwK9fcKeVP+mz/sOf6g6FdLCY6sR29sQ98IAd1PXGZ3R7QQHaB7iX
	f2Q7Aq07Nwf57FHiosHNgmIKMz+KOvOHKlJPLyaxf5LiKA5u4PSxyghwrNF6R10VS7BTmKLWAtW
	8Ou3CJfPgV+yh20dj95EP7Qyw6J+xXmIiKWl4BCDD5C63VPeNukvvUbzGqH555OmuKcgGc=
X-Google-Smtp-Source: AGHT+IGFC2JQ4V1SECaV//h1EmhEsxokdnKGAqKcXjQqd+tP6HAhA9hYS9lkjNvisVQC+6Z2K5Vl/WM78Ka8I+v/P7A=
X-Received: by 2002:a05:622a:481a:b0:4ee:213b:3391 with SMTP id
 d75a77b69052e-4f1d049ff6dmr180679491cf.20.1765821438771; Mon, 15 Dec 2025
 09:57:18 -0800 (PST)
MIME-Version: 1.0
References: <20251211-vop2-atomic-fixups-v4-0-5d50eda26bf8@collabora.com>
 <20251211-vop2-atomic-fixups-v4-2-5d50eda26bf8@collabora.com> <20251211224102.5e079d70@pumpkin>
In-Reply-To: <20251211224102.5e079d70@pumpkin>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 15 Dec 2025 17:57:07 +0000
X-Gm-Features: AQt7F2oFXSBO4SC0UxvNyq3w7s43LPnK4r_t9yQh-dyuuj24u5z5H133-vHKl9M
Message-ID: <CAPj87rO45oAihxRhshwvP=9N6oDtd+yRN-R4M3=TsFYmwjr1cA@mail.gmail.com>
Subject: Re: [PATCH v4 2/8] drm/rockchip: vop2: Switch impossible pos
 conditional to WARN_ON
To: David Laight <david.laight.linux@gmail.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_095719_882064_F168EECC 
X-CRM114-Status: GOOD (  11.70  )
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

Hi,

On Thu, 11 Dec 2025 at 22:41, David Laight <david.laight.linux@gmail.com> wrote:
> On Thu, 11 Dec 2025 21:40:32 +0100
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com> wrote:
> > -     if (dest->y1 + dsp_h > adjusted_mode->vdisplay) {
> > -             drm_dbg_kms(vop2->drm,
> > -                         "vp%d %s dest->y1[%d] + dsp_h[%d] exceed mode vdisplay[%d]\n",
> > -                         vp->id, win->data->name, dest->y1, dsp_h, adjusted_mode->vdisplay);
> > -             dsp_h = adjusted_mode->vdisplay - dest->y1;
> > -             if (dsp_h < 4)
> > -                     dsp_h = 4;
> > -             src_h = dsp_h * src_h / drm_rect_height(dest);
> > -     }
> > +     /* drm_atomic_helper_check_plane_state calls drm_rect_clip_scaled for
> > +      * us, which keeps our planes bounded within the CRTC active area
> > +      */
> > +     WARN_ON(dest->x1 + dsp_w > adjusted_mode->hdisplay);
> > +     WARN_ON(dest->y1 + dsp_h > adjusted_mode->vdisplay);
> > +     WARN_ON(dsp_w < 4);
> > +     WARN_ON(dsp_h < 4);
> > +     WARN_ON(src_w < 4);
> > +     WARN_ON(src_h < 4);
>
> You need to do something when the tests fail.
> Carrying on regardless is never right.

When we arrive at this point, because the load-bearing assumption in
the comment has not been met, our options would be:
* display random incorrect content, and hope that we aren't reading
out of bounds from a buffer that's too small
* turn the display off
* there is no third option

Which are you suggesting?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
