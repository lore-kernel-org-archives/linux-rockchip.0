Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B02CD2ED1E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 11:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypDO2xVz7Zco8c9KvcD8EVvEi10DRsjx7SopuM2YrUU=; b=bQsQ4BRkDxBlDF
	2pdqUT/1N3P9vHcbi8kr7QQqZwlpZ07gCEEy17MdennS16E8wKFeyBOOcrDyQq8ww5Fmknnwuq4KA
	wkgsOiAtoi7n/7gffC8b+s4rRSTTOi7bKmpOi6AXkmp0AQftzaZBj8Tw7muV8RVKK7Ie6/OAJDzvD
	o+PuMKmo4kv17ZxxSwbCFYL3G2G1k2Nvm/iuDrzYgHQ6k15gcoFX//E7KUmfsWiZeCj9YYyzr0Tb3
	fElagc8PTV3ABnv/46weY1rbzx7oWtNDoNS9Nlk+Nwt76VoZkTumN4lTPzFU9CUWID+W0492H01WI
	s87gR9yV+qVrFKh0AkTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9qU-00000003hzM-00sw;
	Tue, 20 Jan 2026 11:24:26 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9qP-00000003hyP-3i4J
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 11:24:24 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-501502318b1so42696161cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jan 2026 03:24:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768908261; cv=none;
        d=google.com; s=arc-20240605;
        b=VqrcMeFqtQHy8RNKL8BAJ9k6xuRfQYE0gSqRU425WaH3EcBYYZecHIFg5iD1Z0kTTJ
         rJL1dkDk9Cu3kRK1jJXCRtnmvUtkbOYzKnXrnKndRq3j9of+qeqUM2zn3VnWHTrrENSq
         OQMURP/p+kpuEH//1ns7/TWKSU5ix/hBPhl9hx8vZZ8Z2T1iv8wfjLCwhlXJpSaeFXqn
         38M0zT7N9Y1lLya+Qi9/zsOvJR5Z+m1EerTIYmJ0hIzjiV+OueWLxNdYv8saRerRR7tO
         /z1XZPSPf+Bdw0H4PTBUahL79HtaqRU+L0HmxyyDaxRN4OIeAdnvneDoouPileHp+RMl
         j6gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Yc+Ead3PO+unG4M7qBQi+SYoKoovz03bDLJ6rIoKTZI=;
        fh=C60ZSjg6PyvUyWokbso4fXZ8rG2bVGiMCKvfIRTQ0sk=;
        b=SAK8TwXSJGwhJ5a+YgmIUse6PoI8P0iTrvicrC/8BiqBVJy9NAfKFqQ3sTGKASE70D
         b2JScDXxehyxmZa7EAC2TTo8Mqyv7ZU+jBSSm1euIuheFvUhgglwc2K0kHSCYIpL+hD5
         oC5B+64bOYl9maCJZGPNYnJfIuywUEVStEAPs2kwNYNIGLE4sn2mOjvyC1mYmnTFYNjZ
         otUW7a1aky3Z7xcfJ+8prcZ1zECQhFuoUHqjm/z4FS07jbCUB8dK4FfOAur1tTDZoCsb
         RvhdOJvIp4Cu9/xIpgKwXYsvEtiVCUrCNSKNkKPwwN5R0DVvfQdux8t35Shr4zeEBxrv
         75iQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1768908261; x=1769513061; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Yc+Ead3PO+unG4M7qBQi+SYoKoovz03bDLJ6rIoKTZI=;
        b=XywhDFiK47AdV++d68I9ptTapShizLkQPOxQYqm0LSvZGhvAU36POfiZ1kQYA9vG/B
         +1Gn056EMqqXAKFn0D0fryie1vlGPUbTtfI1ZWp/625w97KdgsD139eiftBHBY0ytN+n
         5nOmitbxZ97tuXr45Z4QLZ2YHxG6veBkJlzzsSrP6hHSia1t4NnWHYqmVfm1zPSTYdBf
         +rDXSRS7C9KBlKdVJgeXSlb8tGJb9xwCmCwxZhIri/SuKfolpBSpunGPrQ6VDTkU8w/k
         +K3aQQdFfqEKTbQ1PbrxUlOMLYCBQ4hq0k+3H1Fna4msFcTM3HtpIsE5DT8fYk0ywdAu
         S6fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768908261; x=1769513061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yc+Ead3PO+unG4M7qBQi+SYoKoovz03bDLJ6rIoKTZI=;
        b=irIBQ7qDplLyQDjL0PO6LP7oA2yXIcKdQxgIdrBev7ViI7h3R0vWOsYmUmX4r/5cIH
         gI49ghmxGtY1J2w86zcQ9yUw3fHX1B22bgmheb5j8tgn7C/OqeD3HScS1XGMU4wjcu5p
         84NNzL5fKBFdYmW32E10cvInxER9aOXiq1dOnU7AGUZT9tXUSQ7yV3taI00fF6BpZ6vW
         E+5AyBp5m8SGhTmXKUdeklD6MOoRJfsExo8x7zqVOoBLRQ3q2E+O2LmX3GyIGbsO4vV8
         hX7nLM+UqlpHKYuWJsJDCFD0dFwsSpGjCWP2BDQFa78e8ryPBnA5/Z5lxfuL7HqEGZOW
         1u5g==
X-Forwarded-Encrypted: i=1; AJvYcCVcjNaHCgAEQK7AXX2pXVZ3vdPD/L0I3kMQyXpUQgc13nMNwzbMjdr5gag2Fxn4A527Lwo5xXtY6b5BPCrL6A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyvDxLPaZ9Nlr970lOf2q9TcguOTq9YWHqLHVC5qjFjFCCquO76
	twOGNLBLsnHYtDk6TH7qawbp885HM6aEfap7EP97xMN4dSvLF/faHmql7b7UykSP9MTPKRmEDtY
	heBG2svUx0ni1ao7Z5TSXFP5e7kvBrdFTgw4zSH1gXA==
X-Gm-Gg: AY/fxX60lJ+PTdKZdp22W+IAlxdy1PZIqD++RWxi+nX7aq/5Cy8b0eMsYUMb0nLmgtq
	/ZwdRcstBoWNyaIupG1Y3xTi/M4s4dAME7Ip7mo0PXz5bVz22m+pejT5iKcIvcGz1C6GF8nQDOH
	nyxphnZH6iZF8+dO1ihCPOGJiITCCMWzyj3eQuRWsX8s/2Tkx0qudURjqQY3xx/lYJBZ4Q4L6gL
	a2tLeBEuzu7w6kAC91dyP3AyF289BpGRB1jOyWKuZONylTPndJBe2YI9ge/wt0PBLeG
X-Received: by 2002:a05:622a:293:b0:4ed:b012:9706 with SMTP id
 d75a77b69052e-502d8560e22mr15738471cf.43.1768908260643; Tue, 20 Jan 2026
 03:24:20 -0800 (PST)
MIME-Version: 1.0
References: <20260109005821.225235-1-andyshrk@163.com> <CAPj87rPYsD9bp7Ep=fBb2ViOzSnWCgWNJ7Hj=WZuDR+OTNpnSQ@mail.gmail.com>
In-Reply-To: <CAPj87rPYsD9bp7Ep=fBb2ViOzSnWCgWNJ7Hj=WZuDR+OTNpnSQ@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 20 Jan 2026 11:24:09 +0000
X-Gm-Features: AZwV_QhTX82cJ3r5JB05_RUf2GPXL2PjFD8R51i19MJ8Z0EQM7Kp4Hhb5yTq2q0
Message-ID: <CAPj87rNJ_ELo0C7u5Qqqhg5br8kar+f7DjcKd6Oxkr1uETsVAQ@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Add mode valid callback for crtc
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, airlied@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, simona@ffwll.ch, 
	Andy Yan <andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_032423_661916_05F707CC 
X-CRM114-Status: GOOD (  10.29  )
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

On Tue, 20 Jan 2026 at 11:03, Daniel Stone <daniel@fooishbar.org> wrote:
> On Fri, 9 Jan 2026 at 00:59, Andy Yan <andyshrk@163.com> wrote:
> > Filter the mode that can't output by the crtc.
> >
> > [...]
> >
> > +static enum drm_mode_status vop2_crtc_mode_valid(struct drm_crtc *crtc,
> > +                                                const struct drm_display_mode *mode)
> > +{
> > +       struct vop2_video_port *vp = to_vop2_video_port(crtc);
> > +
> > +       if (mode->hdisplay > vp->data->max_output.width)
> > +               return MODE_BAD_HVALUE;
>
> Why not test height as well?

I see the question was answered about 45 minutes ago ... anyway, why
not as a follow-up, change struct vop_rect max_output to just a single
max_width value?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
