Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B01DBC77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 18:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXy5z1wHckIxTpfBISH2PxydGqbs2qN0LbecPgtPA/E=; b=rHB/zz8LIs7/7P
	gfzwWb9l8cFjijim5QqQKQuu1jcpY1rgPTCjy/GN1wKSeiwD4kfpUYQzARQXINarhaGtLcedFHO5b
	Lg2Nj1gssgLpYXdRRL0EJylhJDIJ4mX1eGMsDH8lJqZ88APCP/PEsBh+Jt+Wbc+qeJNDTMX5lbKss
	/jUsB0gGZ67Og21/oR/67OtOjOnK+iOHTp9SlDvuuLDvc6viyCl0zh0GTVvhWqGaAIr9vLjEGJ8rP
	buigBPWExYKEBiv3Lh712QMD7mRqFJwteENMyGUE8Gto4ZpUnyobXQXMtncgiifMTFsPOpRkW2W2E
	DQsVwhTHJ1hoM5oc0NTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pv0RY-00BXjV-0z;
	Fri, 05 May 2023 18:46:12 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pv0RV-00BXiY-11
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 18:46:10 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-3ef5bea20caso9646681cf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 05 May 2023 11:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google; t=1683312366; x=1685904366;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EhmbhDCRzak/t11wXpwMu2NOC9pgAHH93PKpbCf1qtA=;
        b=G4QDfdGTzO4rSstvF9JULH2agg39wZYGm0nZVPkuB63FSC18U3tIHgh/MgE122WMBH
         p/twjplPNfl+1E0E9Z1UrteFrIythH94J7d/AWSuxJLPTHdli5pkwaMD/wXE7UdE+Q1Q
         FyT1xfPSDRgD7KkOR2w802JXOiQ5nSwAJiRS45fHgz+GyOap8dVYLryiN2EE+zTNsRIR
         CIrD9UQljXXNAqfHwziSmDhh7++2JjQzEsexVdaeS9WoZhSCE+HfHEaANeIIKYv75fFz
         jfHGxvzY3fnhKhdycwH/5pNZHbyPZkutgwzSDevR80rIETpfhoeIdtjwzgD9sagW7LSp
         s9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683312366; x=1685904366;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EhmbhDCRzak/t11wXpwMu2NOC9pgAHH93PKpbCf1qtA=;
        b=glaG61w0LdTZwc3TnTSf22HSRvMSyCCt3QbTg1cUHBe2o44hbCOpnAdvKFm/JrOnKN
         LBIW1+tygFfMjqqhyzqRUqPrAX/y6y9KzyCxAXsoflXKmJ6pUsHbQl+IS0lc4+4dPu1J
         aFEplMifCsmtsJ587jXhRcLWTMqOhjFVfPcvBPlLo5qmfLQO7Uk4X1dMeJwsHM0aiSJ7
         Cg63P+RdLd5fXT7/vVOE8+M3VqxuqohDLRlXnLxVcgmrGUNrVJ3LfPixe9F4B8FworDr
         XQAs2fQT5U74felEI8VgIINhigvsa2BGeEI8Zoi2IgTlBTaPogePtQtx3lC3aSoCkaJx
         Amfw==
X-Gm-Message-State: AC+VfDxkpGq+7ayr2/iAA8sXKR5XlK3/kbZ/9VoDCu3YS6iYQrXyOLd9
	Ep21GOxVmk5F/irxZQPkBjwbCw==
X-Google-Smtp-Source: ACHHUZ6vlZe98aEMf6s3/JGq7Iyk2iDwsx/lw9OyEks9Uh1D/pOw8Gb/P9wzyi0pSNjwmIgQGhKOKg==
X-Received: by 2002:a05:622a:1999:b0:3e6:4fab:478e with SMTP id u25-20020a05622a199900b003e64fab478emr4806484qtc.33.1683312365928;
        Fri, 05 May 2023 11:46:05 -0700 (PDT)
Received: from localhost (164.146.150.34.bc.googleusercontent.com. [34.150.146.164])
        by smtp.gmail.com with ESMTPSA id i2-20020ac80042000000b003ef28a76a11sm59598qtg.68.2023.05.05.11.46.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 11:46:04 -0700 (PDT)
Date: Fri, 5 May 2023 18:46:04 +0000
From: Sean Paul <sean@poorly.run>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Daniel Vetter <daniel@ffwll.ch>, Sean Paul <seanpaul@chromium.org>,
	Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH v3 1/2] drm/atomic: Allow vblank-enabled + self-refresh
 "disable"
Message-ID: <ZFVO7LAroGNZuCxu@art_vandelay>
References: <20230109171809.v3.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230109171809.v3.1.I3904f697863649eb1be540ecca147a66e42bfad7@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_114609_484250_88182B33 
X-CRM114-Status: GOOD (  29.34  )
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

On Mon, Jan 09, 2023 at 05:18:16PM -0800, Brian Norris wrote:
> The self-refresh helper framework overloads "disable" to sometimes mean
> "go into self-refresh mode," and this mode activates automatically
> (e.g., after some period of unchanging display output). In such cases,
> the display pipe is still considered "on", and user-space is not aware
> that we went into self-refresh mode. Thus, users may expect that
> vblank-related features (such as DRM_IOCTL_WAIT_VBLANK) still work
> properly.
> 
> However, we trigger the WARN_ONCE() here if a CRTC driver tries to leave
> vblank enabled.
> 
> Add a different expectation: that CRTCs *should* leave vblank enabled
> when going into self-refresh.
> 
> This patch is preparation for another patch -- "drm/rockchip: vop: Leave
> vblank enabled in self-refresh" -- which resolves conflicts between the
> above self-refresh behavior and the API tests in IGT's kms_vblank test
> module.
> 
> == Some alternatives discussed: ==
> 
> It's likely that on many display controllers, vblank interrupts will
> turn off when the CRTC is disabled, and so in some cases, self-refresh
> may not support vblank. To support such cases, we might consider
> additions to the generic helpers such that we fire vblank events based
> on a timer.
> 
> However, there is currently only one driver using the common
> self-refresh helpers (i.e., rockchip), and at least as of commit
> bed030a49f3e ("drm/rockchip: Don't fully disable vop on self refresh"),
> the CRTC hardware is powered enough to continue to generate vblank
> interrupts.
> 
> So we chose the simpler option of leaving vblank interrupts enabled. We
> can reevaluate this decision and perhaps augment the helpers if/when we
> gain a second driver that has different requirements.
> 
> v3:
>  * include discussion summary
> 
> v2:
>  * add 'ret != 0' warning case for self-refresh
>  * describe failing test case and relation to drm/rockchip patch better
> 
> Cc: <stable@vger.kernel.org> # dependency for "drm/rockchip: vop: Leave
>                              # vblank enabled in self-refresh"
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Pushed both patches to drm-misc-next, thanks Brian

> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index d579fd8f7cb8..a22485e3e924 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -1209,7 +1209,16 @@ disable_outputs(struct drm_device *dev, struct drm_atomic_state *old_state)
>  			continue;
>  
>  		ret = drm_crtc_vblank_get(crtc);
> -		WARN_ONCE(ret != -EINVAL, "driver forgot to call drm_crtc_vblank_off()\n");
> +		/*
> +		 * Self-refresh is not a true "disable"; ensure vblank remains
> +		 * enabled.
> +		 */
> +		if (new_crtc_state->self_refresh_active)
> +			WARN_ONCE(ret != 0,
> +				  "driver disabled vblank in self-refresh\n");
> +		else
> +			WARN_ONCE(ret != -EINVAL,
> +				  "driver forgot to call drm_crtc_vblank_off()\n");
>  		if (ret == 0)
>  			drm_crtc_vblank_put(crtc);
>  	}
> -- 
> 2.39.0.314.g84b9a713c41-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
