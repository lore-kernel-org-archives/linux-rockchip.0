Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B843BCD5BA3
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOc5k/Hpq8Qz9RBHImpBoDk3wLE7tZnK0zwuORbyo5A=; b=bzU8tV8NbEmazA
	3UiILDSdUIt88e3EDgN5TKbS6trZhS/Dfury4QWA6w/R+AEZxP/LXTLWvTWr8IF4Db1QotSkvZpnI
	KQlWDByVAiBYmgghfoxbd4nVmCJqsIkDqg7LxLabdJYu43okutCR2sWH5AzI/3XbhQXK5PQD3ub5b
	xusGR8C4rWYuHJ/AjVsXcs/DnSVacfu8MyYPe0/ltJzyfLZq7AsE6CcZ4ZpPIdOeIIvfE4mepk+DT
	29OmyrP7fMgX3dezGwgHufZocrJZfz+oziGUF0ZnVUD5/FTYIqzcOMbw08UWOBflynpCloRjJ8rnB
	q2wjNyQYQdW1RCdFRsDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm9Xi-00000007uiY-3zen;
	Thu, 05 Sep 2024 10:16:46 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm9XZ-00000007ug7-114T
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Sep 2024 10:16:44 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-e1d0e1bffc8so699989276.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Sep 2024 03:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1725531395; x=1726136195; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xd6tRDcBI6nT0vpG0+47dCoixHmT48y9ZIC4bv5qVFY=;
        b=EJ9SEMg9clSRO1Fo/N2fGGtaxql7c1gP8U5IbbYXW4iCCpxThVyu/bAgTke6pu8Ods
         g6RmJmqah15ZK4LvUItQRqslZGujjmMec1ukv0yf0C6jfIHRZd6ZW3JyWefTk6KYjvaK
         1MwmNBjFZXZ2Qb7VxPGG0nobfEW/YpWa3dGzYZbeFOFX0fL7K0jaVTDNP0C0/mnkzbWW
         JH23Tpqi2vGaNEBneDZ0A6rK4kn4KT8fmEASJGnp6lPHIJlRUJGjYq097IgYrBONhr8+
         u0SzcoYccb/6Qt46Jl3d82DYMk+exBBExPQLBHTZCUs+RGPeuqqLSpw0zRJiExPDvGN2
         FN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725531395; x=1726136195;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xd6tRDcBI6nT0vpG0+47dCoixHmT48y9ZIC4bv5qVFY=;
        b=FI6MvbSifMsF1H3R9Kfz0UUHC8RGM1AmnrGZYogc/qaQouSvlt7eSPYBPnUnOBU9LI
         dlHI22VeZMZeKhMRSgHvFSESNEHCQIhwkUHb3D/KCCKSNInq/Af5H0MBvW176a3WKrQR
         NYOEunyHbzbArI40e2A3kSCpvbDKxOBVyTI/JgcrRI8k+32sUD4icajEyZ8QE4Tkd8qE
         gw30lTH/TkZakRG6c0I3vxdD185Ia07r1Uozv/HO53/DWnT4QcPVrJGZrsxz64gswN7Q
         fIL58L/4+1usfLRqP0CtzZZW+kikR86CyQc/l49RVZzNPo2EdoBPVbu/Us4KQqElLxJR
         FFMg==
X-Forwarded-Encrypted: i=1; AJvYcCU/WYR826VbeGJL4T2nu6oHEpM8AQpVmyEDVpIxvWxjg6LIaO3u9dxZqLP3fml+sdENLLaD9F96MjbtbABKbg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYDNK8Ck9NXBTmL31eZ6pfsbqHU+BN2jXD3vxI3e4xrLZUHfjq
	3ozGKEx/k8S7lS025IQHNP1A5Otnmkll4q9Q0hbQfwNKX9NRde6otEn9l0Q9GmNUf7NoRBadekS
	e9DTMXultNfezBArEYdzT/nCgbdmiMs12xyAGdg==
X-Google-Smtp-Source: AGHT+IHOAa2WnFWM0m3QmtHGwmSzixacJsCBpWRBvguStq1YD37bVLj0/P6F5Iapvjw7xs8jP/X43ydPbq380G1rQQ4=
X-Received: by 2002:a05:6902:1547:b0:e1d:1b8a:ac4 with SMTP id
 3f1490d57ef6-e1d1b8a0cbemr3960625276.11.1725531395247; Thu, 05 Sep 2024
 03:16:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240905093935.2780632-1-vignesh.raman@collabora.com>
In-Reply-To: <20240905093935.2780632-1-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Sep 2024 11:16:23 +0100
Message-ID: <CAPj87rPCctE=iJKfQXR-PJdUHR+5f-t2bRA5Daq2fzUTNekzcg@mail.gmail.com>
Subject: Re: [PATCH v1] drm/ci: uprev IGT and deqp-runner
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
	robdclark@gmail.com, guilherme.gallo@collabora.com, 
	sergi.blanch.torne@collabora.com, deborah.brouwer@collabora.com, 
	linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_031637_779397_3E5D52F4 
X-CRM114-Status: UNSURE (   6.07  )
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

Hi Vignesh,

On Thu, 5 Sept 2024 at 10:41, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> Uprev IGT to the latest version and deqp-runner
> to v0.20.0. Also update expectation files.

Thanks! This is:
Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
