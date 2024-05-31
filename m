Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B337DC25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 17:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VOtohPhTMbNE4K5p3osCTb1neyrHuQogATaUY0AruE=; b=Om8zYH9I3yUFu8
	lIU10eLkZi6WfmY5s1YnEWkmSP1yMPmFiV06A5o/SxpD2VNPD7wUylXKBJ4fCZWJPwcPgD3eyYvKB
	jp5kLSNQtcQ0C8mcV40hOHwA2GQL9I/dHMcdxoWp9Jo2nDvYjvIR1Q3N/AxmLsdKYfy2V1kUog6ZK
	sRJ4WnXWynLtjVfMt8F0mKTNz9cmvoXl5QU+pHIomwMOaRhW/NeMx1vAZ1Xs6H1+tU5SCy7gkTPmC
	nyA1LXqVAsqMQ18QElURXuklTbdPPd21BIGZsVKfMAKhMW/6ErTTpFFc/GyLkYdtY8gAAnTDQnbu1
	AqpNwTLwvAWyszvkUiSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD6I5-0000000B2Kg-0UQS;
	Fri, 31 May 2024 17:43:45 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD6I2-0000000B2K1-1qqf
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 17:43:44 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52b78c65cadso3083964e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 31 May 2024 10:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717177419; x=1717782219; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=++A9eRTepXKaQlX/n7y1YLYk+bRzmeV2OxSEniWyl9Y=;
        b=NLybMKKT54F9CwxTT4+Z/cD6h5J5hg3WZz7Tqotdw9AcmRAyjkrLjLe5614swY3LHZ
         joNm8D0gHqj702ya8hssdsN1eMl3LR1df5du9YEZOyTwcoekY5lHQ8t8agCL4n1Tgrt8
         wBDyFzQ6PeyxnvMKr4R90l7uoWIhUTtmQFAy72OCIWTpKYofK/6SI0t5kEguNqNpDk9r
         bnkn2Rv5x3JOrOwVUpc9huE/ktHuMVdvttzG/zfiVSM0qcwNXKA3QPgQcQ/9owAV4h99
         RHn8GmmPVEP2dez9ybaP5nPPyAZ9r3fvWfWdEANYUxeosMVdrx/SABt2tOyxGVvTWe6D
         swIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717177419; x=1717782219;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=++A9eRTepXKaQlX/n7y1YLYk+bRzmeV2OxSEniWyl9Y=;
        b=ZKKdzSb/naHOMalfhuhZfFOd17oCZjxF5y/EdYX0vCI/nK45eKtBSLfKCdHPLCosnD
         gjz1Lu2Vu3pgQzQ3Lx20mhi6CkeWZ0rTdqGu23aC/7J9aDzAJQU4TDcprMpyrPbkL34S
         WzdsSiXNhIA5d/YrcQaBDWbOKq2iy58KbhcdQrJOyKx5BfgHDQfJrIqnG+pGES/2jSHd
         xPusCaP5yxHqqerhE/KZxv6gDEnPMN6XVAmieltp0S+I+hCgKVbiq/1lEaLh1KCUGc+B
         5Xb02J9jqHRqjr+izdM3eT5vIAiBGPpvbf8ttBGB21BmrpI1j2c9viKYkOrJysbJiGcZ
         xoBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHXfYO6XoTRA0ZtLoJXh1f6wKwHeaOrFnSC5QEHBl1tqdxm+vEz2rGYCxX5lFJQfEmtFsvHNxoVnxKYA/9+3mYalkBehNnR3RLx3WpLILImgUr
X-Gm-Message-State: AOJu0YyZ4go1Qyh1fDZCLSmJ/msT0ntDjFbnQoFGKqNRwqHvLG1P52NQ
	TlzTLMh55AIFKnWm62USSQSNiv2XlTUjq1nmccmOWE1aAJh6hLGeto6w4pzjgQg=
X-Google-Smtp-Source: AGHT+IFyvYzgg/xDu6GcGjRimu3ZdjRNTdvZZXX3T2C8F9djKPfbZ79k2XyO7ksg7mNcH2hCy7HTxQ==
X-Received: by 2002:ac2:4354:0:b0:52b:404:914f with SMTP id 2adb3069b0e04-52b8958aed8mr1697776e87.34.1717177418909;
        Fri, 31 May 2024 10:43:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b8e43a5e2sm54511e87.298.2024.05.31.10.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 10:43:38 -0700 (PDT)
Date: Fri, 31 May 2024 20:43:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: Douglas Anderson <dianders@chromium.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
Message-ID: <6kmhrxip4xb44bspptwdaoqsod5gm7ccr27fn3jr4ouh4jszi4@fuxht25n5wki>
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
 <7428a2f7-befc-6db8-76f4-3ca8dc12d31c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7428a2f7-befc-6db8-76f4-3ca8dc12d31c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_104342_521363_4975BB8A 
X-CRM114-Status: GOOD (  23.57  )
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

On Fri, May 31, 2024 at 10:18:07AM -0600, Jeffrey Hugo wrote:
> On 5/30/2024 5:12 PM, Dmitry Baryshkov wrote:
> > There are two ways to describe an eDP panel in device tree. The
> > recommended way is to add a device on the AUX bus, ideally using the
> > edp-panel compatible. The legacy way is to define a top-level platform
> > device for the panel.
> > 
> > Document that adding support for eDP panels in a legacy way is strongly
> > discouraged (if not forbidden at all).
> > 
> > While we are at it, also drop legacy compatible strings and bindings for
> > five panels. These compatible strings were never used by a DT file
> > present in Linux kernel and most likely were never used with the
> > upstream Linux kernel.
> > 
> > The following compatibles were never used by the devices supported by
> > the upstream kernel and are a subject to possible removal:
> > 
> > - lg,lp097qx1-spa1
> > - samsung,lsn122dl01-c01
> > - sharp,ld-d5116z01b
> 
> Ok to drop the sharp one I added.  It should be able to be handled by the
> (newish) edp-panel, but I think the TI bridge driver needs some work for the
> specific platform (no I2C connection) to verify.

Thanks. I'm tempted to merge the series as is now and drop
sharp,ld-d5116z01b once you can confirm that it can be handled by
edp-panel on your platform.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
