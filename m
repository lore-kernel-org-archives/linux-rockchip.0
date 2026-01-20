Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75266D2ECF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 11:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3foI8epC/08tla/ulHZYctjpXR7FA4EwNpeZNx2Zj1o=; b=E5srer2AQRls/b
	9pcGtdtYRTLNkB/ZsYo99tHDPyyVnvPihhWLtYISFwdUbfLz+B2OirBGdGIXtFQfCYKKHwxR1qCQg
	53QaLX9PSsnvj/qrXIGrUYys8B7NaTWAekNl9dwk3wQXrQ0HHLY2DdWllBZRmdTj4jLUEUNYMFC8M
	clXpLBJk735I34n2wt/fTVmaXVgIgx0r6ryVKKwTh/opu9tQYW7Ofg7i/HQ9EjXFQ3iT7uEzbiv0h
	PQkrvlfrgBQ+nBolGZrTVLgsLHehjp6IIpK+pPz6CMNMrL6IVJcdGhWz/ZILaOjBDgK/wnrhbAb/7
	XCVcCnvIOXLs9piEDRgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9Ww-00000003fh0-1xyS;
	Tue, 20 Jan 2026 11:04:14 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9Ws-00000003ffw-2bDB
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 11:04:13 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-88a2fe9e200so48882316d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jan 2026 03:04:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768907049; cv=none;
        d=google.com; s=arc-20240605;
        b=IqM3DPcTlgA7Av/tSQrJ+hJsLRBiaygaj71OfxNNOSUaVaAlu7R8YhgtAZ0rH2ShQH
         GxMLycCYYEFYCWv/n4oA1h2Ri8xfiJXXiWFe34yVrAHOHIg5Ik/cVJA3ySetbdzJjZ80
         a0UmkL0Vd6AQQNpWl59H5JgFgPXYECYX4i3eZd74YdZfl4ilpFnUr9NoO52ynRuwzNZ6
         JWi4qp3j7/NFuYxFI1l7lw+ezdDjX1Ua0IMAcMSUejX4dASF5jy0giEK5j28utWIJQG2
         SSXJhajt06k6P07U4eiml9HJfSdYS4FIpPRmoT1fRaFq7MADqmLGGpFhjji15fkPGS2j
         QxZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1WFMJIykjeDUwTLAnV/91H11zpuB8UJJKa8bgoRktHs=;
        fh=3c1Lp1eup63zR12FJN3ep6kgTbiR2KT9PHqQWd2j48c=;
        b=NeSX+CyR3n7rnyOtN4lWi8HJgKDma+nO//XO+xFkiSYmustfybJzbdrPWkAqWRzoOz
         WGiAvU9hZZ0veaEVsI+9im/0zByxphdsegMp3bYHRzMOffzQ4BEr12fThc9ik/ZvJ7Wg
         aFgPEzDXLdQ3/ClqOBgATfs2SVSXs0pJWyzHGDO0MWvvjR4GV2anCu1U88jeuki8gXUX
         KjxciA0I+s+aLV51TeRo8hNomLMVuCso1wz+OL9dqCtsuP9GnvnMzGJ91cICUbWdgsfQ
         gNx9EPlvI+nGsY/gOkWJRoDwgGfZfYkuuthmdrO8CLpucw1/ggv7MiJ5cy4lrB7XUZrN
         Ikqw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1768907049; x=1769511849; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1WFMJIykjeDUwTLAnV/91H11zpuB8UJJKa8bgoRktHs=;
        b=Sx29TOpVWgl02lkR9Ekuz1G4yyl1VGJjM3Hs3UVMwkQyYd++QtYuHvW688w6TLIMw+
         vClxpLyetEJSYRc40xL1OI2fSet4NMpsYwFQqQq43Hg7PzLLSufDqAt/7ebLOsvCj7Rn
         yXrE5p7lXklkB0ID1s71wh4B39OM0x7QVWegqMdFrlQGc27XRcbc7aFYUM+c5KTHymxB
         5g448rJm4UONTjSAZU9b3fBWbFPguEfDuk5WA58tz6Xx0cbYukMscWowgTbyJvmwChPW
         P6SWE0XbIUHkkSFmScTldedNpcx1a8RCplXRz/e7eSPCT9xXy8u02JAM1sCmuhvvHAB6
         hITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768907049; x=1769511849;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1WFMJIykjeDUwTLAnV/91H11zpuB8UJJKa8bgoRktHs=;
        b=TCl47t+xK1jr5qJpKHjs0vS03OUXFQ0aqsOONvsN5PCVqQkcb4UVlcnpQsDi7r3KA/
         b2XEntMWmjq21uqGl7Ca4om6j5cYdtm/kp+Bkx4a9cK+vgN66Y8+3VD2JIwWy01XDPAf
         CrGu+EDXJxpB6JLNRspnT/8vRcdUEF1ut+giQ4jTB1QkOLv9uRoOsZmPlABZeeafV1wS
         aicgPPnl0StYrC9f8qNNr6vZGvaC0D1qmP+JdMEcsjVqJJXm+eRrNGFScTlbzJj6wlY9
         mneB04VxF3UZPFgodvUa642g1uT2cjyPWO9MIGR4l26J2h0CQqlmuUgNfoPEiawIM9qA
         N2Fw==
X-Forwarded-Encrypted: i=1; AJvYcCXGuxN+TV0IBHOEYFsJfoyPZsvbUMb0E6STI4+aEwwwe8kgSAfpijDD3Dgm9HXggb10NrKBqSVeFthoJgbQ8g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2iTtWOU5w9/faQmdKKYwk1YxvozY4/T5qsgPLWj/Im0chcgc+
	uDwz2l4W3NXug9OD6aSaArzYZK21HRT9o3vyqp2RAGnGheceX3pr07Bx3THrjEuQrRqAIbIv9BO
	KuJ36FcbOPpD+PvaD4PE14uxFyP0sGCvW0cJdTnhs7A==
X-Gm-Gg: AZuq6aIkFwVeCpUcsTf9ayazyH04HdX2fgCBv0JiCsUopc0urpFTl5IjmxiAzXp1InD
	2x8wHi3x0howwXhiZGPqibMAeTD5gPs/WbF7D7zRx0tS9piqVXHD6YleslgMgml8rsBKe2eLRZF
	ws7LmnhEH/Mh6kCfRpBgbwRlz1hl8qKiMoEYkb/b1YImRqxW9O4XsRQZ8NDNBEx3uwnjflTxEpP
	lcZIrQxv38ACOf9ARlBA/CfgjbXEXVmQBm3X8wODl22wWcjhltebr4AURH9a80/lxb6
X-Received: by 2002:ad4:4eef:0:b0:88a:4694:5921 with SMTP id
 6a1803df08f44-8942ddad70fmr192050966d6.37.1768907049157; Tue, 20 Jan 2026
 03:04:09 -0800 (PST)
MIME-Version: 1.0
References: <20260109005821.225235-1-andyshrk@163.com>
In-Reply-To: <20260109005821.225235-1-andyshrk@163.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 20 Jan 2026 11:03:57 +0000
X-Gm-Features: AZwV_Qj6ykO3irdHAAivo3zJ7fPUY3sXls4LuuJI-exbLYOzFgw_HME4X3eA2Z4
Message-ID: <CAPj87rPYsD9bp7Ep=fBb2ViOzSnWCgWNJ7Hj=WZuDR+OTNpnSQ@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Add mode valid callback for crtc
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, airlied@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch, 
	Andy Yan <andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_030410_687780_AB0DFB12 
X-CRM114-Status: UNSURE (   8.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andy,

On Fri, 9 Jan 2026 at 00:59, Andy Yan <andyshrk@163.com> wrote:
> Filter the mode that can't output by the crtc.
>
> [...]
>
> +static enum drm_mode_status vop2_crtc_mode_valid(struct drm_crtc *crtc,
> +                                                const struct drm_display_mode *mode)
> +{
> +       struct vop2_video_port *vp = to_vop2_video_port(crtc);
> +
> +       if (mode->hdisplay > vp->data->max_output.width)
> +               return MODE_BAD_HVALUE;

Why not test height as well?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
