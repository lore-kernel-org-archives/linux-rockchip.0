Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA222C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 13:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bV0txB0acoaBFNfcqa15GC9U07mgJ70KuuCKLJCAGQg=; b=fNdLpFaTC6WGBC
	6yutFbe2jDVojpa23z2YEZU9DTSSJVDzETlHHbFTShAjwgtyudI/AQ/4POhG9IM2uFII6qf+qCfHY
	O5g/SSGXD+4sE2jlQIOI5DkzJcoHb5Z3M5dwn5ocjYQz04mdF7CAUNEkvmdTX1wRnXs2a9SdC1s1x
	S3ZnEC7f26bs0bSxBC55q9bn64bMxywZLVpC3LtEe1xi3VN0MMyeJvcDosjC14EkYZNXvxqdKfoR3
	bl09JdFig3S2VDoXG/4At9WvNIN0rNsjej5jMYnx2XgwHKMzSUy2rqyA17pobXWrf2ZreZrBAXezw
	YZR6o8tyk4KK7rxTXD8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRD7l-000E66-3U; Mon, 07 Mar 2022 13:10:05 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRD7T-000Dzk-0p
 for linux-rockchip@lists.infradead.org; Mon, 07 Mar 2022 13:09:48 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id b35so30735156ybi.13
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 05:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yepItlJ9qbYQk7lxa3ZiJXu15xaq36AuyzFPOK3vAVY=;
 b=AeUDdq/AWNd2nmTFTAWaAJ2SF2Vbyvv/+rKo46RmbS5jRVcFwjQ6vFH+O7bo/bjKe5
 pC6cp64tslJfdYfAUTd11w9i4XiJTUMRq97HJvLdXTY+EPvG9SEdthY6UZ2xKsBUEMBB
 gyDKihc4SgMxyZHwQVVs8qsMRewQwhiE6ZvjNB1ekCxcMCzJ2BIcUIdNfzfeE+lb7kFJ
 7ZUE5uusKonMkMdus5SXpoMl2koYoSUEDiw3fbc1rXKNqqovWetKdQgEd5N7dPiGaYCd
 MF9d+0HNsWyxtEfnEk7KS522ZgZ7dXgWSneMYVdPVApAweOFpWo6iEr4DXEsLnVTZrg7
 R7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yepItlJ9qbYQk7lxa3ZiJXu15xaq36AuyzFPOK3vAVY=;
 b=p61qZXfkoW1xLk5/d69TK8TbT/8Lp7ABt/bjRBgcvDWaLM0/GeuuGC6AjutG7v2edc
 mRUbXTPzfS/jbjR8s9jS7SfO04fCGoun2PNkV1kUv7J6jQTxBx5MU9Bep++0sH2odILn
 bvqvliy4C7Ltg3S2oQWAwQwN9unlwAyFrUFg/VXk1qgx2eezQpU39utYleRefQmYxUBQ
 ib41Qe2KV/D1+fqbeJ7qjAERwqOtwRyoVQ7c0VOqr+s5HVhUqtLjRAigJGL+03kW6KK+
 OY7L5vDjRHTTThp7dVmFaua7NaEGXwP3CMYPLwyly6v3PbXnIBnQ27nDDQIYkz31PqFo
 4eZw==
X-Gm-Message-State: AOAM533m25QYAeYYIc4NbzpW+MUFRFCZla9FGkpoU9xZEEqcq19N6w/q
 OROnxiijlVL0vw3zLwoZ+SoHTv1S1kSi5S09tieCtg==
X-Google-Smtp-Source: ABdhPJy19ZfRbc1jCqoWnTYWtbGO16Ywu+DUbMK4m78jIaXZssJbqdhjy3kb9cJjfLA+Obyy/2vWB4gu/RRxGIBBSts=
X-Received: by 2002:a25:2bc5:0:b0:628:71cf:99c with SMTP id
 r188-20020a252bc5000000b0062871cf099cmr7771635ybr.553.1646658584984; Mon, 07
 Mar 2022 05:09:44 -0800 (PST)
MIME-Version: 1.0
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
 <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
In-Reply-To: <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 7 Mar 2022 13:09:33 +0000
Message-ID: <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_050947_094467_4EE9163C 
X-CRM114-Status: GOOD (  17.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, 7 Mar 2022 at 12:18, Andy Yan <andy.yan@rock-chips.com> wrote:
> On 2/25/22 15:51, Sascha Hauer wrote:
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> >
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> >
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >    functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> >
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
>
> When run a weston 10.0.0:
>
>   # export XDG_RUNTIME_DIR=/tmp
>   # weston --backend=drm-backend.so --use-pixma --tty=2
> --continue=without-input
>
> I got the following error:
>
> drm_atomic_check_only [PLANE:31:Smart0-win0] CRTC set but no FB

Can you please start Weston with --logger-scopes=log,drm-backend and
attach the output?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
