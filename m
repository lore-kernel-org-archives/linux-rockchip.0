Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73222C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 10:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpmGfrvZp5C4+/ORDvWToAwOfIQUfrXPf7+kzv3neT8=; b=IijGGc+agA8ZF+
	kQZpZnzrrIyOsXWCSsZ4Pto2MGtpEKLW6A5FSBx9dAsy7afrwpmVp8osRgIocEs7pCZrrjVDxaCHj
	8sDsKzQO6/uTXYf9MIG1a1R3+DX5ruGSskRP/mdhgp0A13luv99OuGa8TN+YUu12wAZbvZCBEtFjF
	sMw69n74u9d/Y5dChbIZdz3FukWToj0HJeg7NIqYXhUwtBKC4sgDXxltt5lihv50o6HoxJc1MvwVj
	o1qQylR9omeAh/zQwc6idRd8NC2+Ia9EcA1ITwKrj0XHuBVHY4aoFbWWoSHaqG8OATvjTE+mflUP2
	vUVV+/SRy/+DJlhd7/HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWvj7-00000000cN8-1pyh;
	Thu, 25 Jul 2024 10:29:37 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWvii-00000000cHy-17KW
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jul 2024 10:29:13 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-6b7a4668f07so3845466d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2024 03:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1721903350; x=1722508150; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lqNON2XzzicgPcrb/MJYjLlf4KFN0gRBiFSG0lWMClg=;
        b=ppSAAUhQ19qq3U1vf90vB3fI5PLH+csMbt0yYzyS0WKF1kMvEnrGQuHJ5y4Hvn7HdU
         CQlkM4yNB8N+i+8zrJzSIzQGQkXrS5DoELp4lxf5s4nF91Vdjx3sKSnabb7YGq+BkJqO
         leDVXUgcZJHNItU818Bkfh1K7dQiB6LS8P7tr4Ri1uJsxVSl61g0ZvSxniwbKvJM36CM
         atKU2wQpTHrXe6/i1PPqX1OPDG2Xaa4Qqrepn1QZzs3PMYA7aFWSdM5gmI1SgKM8ZdvE
         TTmZRD8rF/PPE5enNz5VYFbU/gk9bx4Vjd2AYFdxrYikDmFpO4EjQO1UeqsShsSy+bR7
         8NSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721903350; x=1722508150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lqNON2XzzicgPcrb/MJYjLlf4KFN0gRBiFSG0lWMClg=;
        b=RdBRIOzebHz8UKtsL2h9v7kozJGz1AJoCmyxmuiYfLvascnheJmtuZITTAe5nqXMzP
         Kyz94nUPFzgnvYThTZ3MK+f7rxlaYn171rgujy7Nv084AI1sw2W/VJllnuK3ZnvdqGOr
         8QaX5I9Zt/9ANoxgBZUiYkuQEYYfHBoAu+Oqzv0y9Aoy6aj2exZmQXSCvsylACuYFFE9
         hCGhKORvOcRIEuX/D0PUO9LeiEBui3R3REi5lqlW+m2bfIFvqbkP12MVxnr9IpPyyzk2
         1ujciYirT5TMHotq7GJDOo1bSfoqJtNRi/6Ek944S7Y2Gse7cQgsBL/zRL210pMhcT4c
         mb3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU8QaNwxkM1dKOp3lcWEimFB/6YV+yXNqrWJFIlRIBTtjq02ISTokTuHyMmNfN4yj1Q9JbcR33kSVij6/3WvQmJFfP/BCwVuuX4jgRqOwwd2/Nd
X-Gm-Message-State: AOJu0YyJijHA7O3iNinyyriAXcAla3TtHvYRQLEvr2OrIFo8Icb04mjD
	x0SWzEPVp7BLJ7d1fPymlgkojL7cgK9ynrU9I5GOn2p2Zh5yGkdn+BfWlD9X/37BDijCTYScl80
	EaKGl6l3LqPdjaQCkop4wWTw3ZsvGBcZF4K3iCw==
X-Google-Smtp-Source: AGHT+IH58fYzPz2za1A4wbM/RxniQBXqyWW1aq5VxWvoCjFUwdMxzQTEFxAC6/D8edl0M5w58o3zWa9AamOI0NUg0xw=
X-Received: by 2002:a05:6214:230c:b0:6b5:a4f6:daa2 with SMTP id
 6a1803df08f44-6bb406fcd47mr14595366d6.17.1721903350287; Thu, 25 Jul 2024
 03:29:10 -0700 (PDT)
MIME-Version: 1.0
References: <TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DALDeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me>
In-Reply-To: <TkgKVivuaLFLILPY-n3iZo_8KF-daKdqdu-0_e0HP-5Ar_8DALDeNWog2suwWKjX7eomcbGET0KZe7DlzdhK2YM6CbLbeKeFZr-MJzJMtw0=@proton.me>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 25 Jul 2024 11:28:58 +0100
Message-ID: <CAPj87rPwJ-vRTsjM1rWRj1gyjbJM_ryrkTiPRBF3ZF1D7TVDYw@mail.gmail.com>
Subject: Re: [PATCH v3] rockchip/drm: vop2: add support for gamma LUT
To: Piotr Zalewski <pZ010001011111@proton.me>
Cc: "airlied@gmail.com" <airlied@gmail.com>, "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "heiko@sntech.de" <heiko@sntech.de>, 
	"hjc@rock-chips.com" <hjc@rock-chips.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, 
	"mripard@kernel.org" <mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_032912_471099_EBA1BCCF 
X-CRM114-Status: GOOD (  15.91  )
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

Hi Piotr,

On Wed, 24 Jul 2024 at 23:06, Piotr Zalewski <pZ010001011111@proton.me> wrote:
> Add support for gamma LUT in VOP2 driver. The implementation is based on
> the one found in VOP driver and modified to be compatible with VOP2. Blue
> and red channels in gamma LUT register write were swapped with respect to
> how gamma LUT values are written in VOP. Write of the current video port id
> to VOP2_SYS_LUT_PORT_SEL register was added before the write of DSP_LUT_EN
> bit. Gamma size is set and drm color management is enabled for each video
> port's CRTC except ones which have no associated device. Tested on RK3566
> (Pinetab2).

Thanks a lot for doing this!

> +static void vop2_crtc_gamma_set(struct vop2 *vop2, struct drm_crtc *crtc,
> +                               struct drm_crtc_state *old_state)
> +{
> +       [...]
> +
> +       vop2_lock(vop2);
> +       vop2_crtc_write_gamma_lut(vop2, crtc);
> +       vop2_writel(vp->vop2, RK3568_LUT_PORT_SEL, vp->id);
> +
> +       vop2_vp_dsp_lut_enable(vp);
> +
> +       vop2_cfg_done(vp);
> +       vop2_unlock(vop2);
> +}
>
> @@ -2060,6 +2159,9 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>         drm_crtc_vblank_on(crtc);
>
>         vop2_unlock(vop2);
> +
> +       if (crtc->state->gamma_lut)
> +               vop2_crtc_gamma_set(vop2, crtc, old_state);
>  }

In the atomic_enable callback, we are already holding the VOP lock,
and waiting to set cfg_done etc - we then do it all over again here.
This should all be atomic, so that we configure the LUT whilst doing
the setup, and then only call cfg_done once, to avoid showing the user
intermediate states which only later converge on the desired final
state.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
