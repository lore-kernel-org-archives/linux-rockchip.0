Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7336C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 12:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVq5C53lFf1jrwd6ooavfOX1A2Yi2IkfXfvhXPpAbN4=; b=V45VHOKimRUXue
	Q7NfLLFYaDGA9k9brSwgZ7YLEZ/uuD/tuED5y8AvPwncBDA2mmGecfgIK+um3sk9+314zkMZ6aRje
	MrTfaQqhhtieI/8ImJnnwXiD4ABjXCWWxZKyqGkw82/9UYGMD0IDAzknfyU+ZVpzzlmnQypvOG2nd
	GHOIaGV9fbxc7CVUVBbGpqPhnaTBgWMnHzJ3sm7dVjUIAkHb5jasvCw8zPuBWRu+PuM6+nc8Ww5u5
	Vjjf0SfyenTbpuh6AL15Q+JpuTrTYzrcK9/XgUuDFS6mCEARAVox6ZVf5gtYQYPChKDspvinv93q4
	vHs5hfs0WkRqZ+plXbXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU6WU-009321-1S; Tue, 15 Mar 2022 12:43:34 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU6WR-00930z-0O
 for linux-rockchip@lists.infradead.org; Tue, 15 Mar 2022 12:43:32 +0000
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-2e57826a10bso41650957b3.7
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Mar 2022 05:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zM7PG/RdRHw9f6iBibZ0hDNw+hF+S/2aL5rwx9V5Hc4=;
 b=nR1qrXaPmooiwTywf1pOo2XV8jI1aj+ALhV1WYrZn8Bzit9fW9AkhOG0+z7MOxAjh1
 iqTMLE8f8HzEoR35CgDLZzU0x1YPDlaLtonEqs9Iy91kn52Z/+eCH6IkbFQPKpsL45/t
 ihJl/3hcliojHC4Bba1/Y7IsjIJX9NCsJ/zUG5GKDT/Wcn7YD0Uwgq2a0kK4ye807Bc5
 78oVtw5/voG4BakSHOOLW+RH2YpWTZMd21BFkVgioDCwuQq/aj2Wu9gsTzuO67FFaNIu
 VT9DNke3Hl0zWtAQr554hmchGXyzYveuj+5IJd0+2DUzQ8gqm4qCnQ4KtLqSAJuenwaI
 eFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zM7PG/RdRHw9f6iBibZ0hDNw+hF+S/2aL5rwx9V5Hc4=;
 b=waENW9SzEYnDv09ZViZKAwrK948CRyEKSHjuyTyYwpsvwWWMFwUo5SzzLVMP6jupMf
 T1c6JFpJkxntFHyZ2ldXRqUk9GcYLmfsErWDXPQ+HjG3byfUxcUE/WPgfphhywoblt1E
 wJkqsoigKNsSyhT5IRE7t8/1bhR3HXwh9SWT2/8LPcW3I/Qc/LvESBb1LeJQay7zS53X
 seVpQIxNy2ct86unsBIKN7r/Mazi8MEM2PHUDl0eVU7mwNC693NVqTnLBaFddcr0dRDE
 Rk72TdRogtTqhwVJ6nyPl06lzc8F1urFHNSnWh6OzlDY62LWYHY/c8hj2n4mBwJjrBas
 xdRw==
X-Gm-Message-State: AOAM531BUPZ/s+kld25UZZmZY++x4eOtQiU/QTKp3P8/WP4c8m1ghTqI
 tRywW8pf0qeTtFhyo8+cWTaNSTBu4FKnUrGPt3FcUQ==
X-Google-Smtp-Source: ABdhPJyazqAxW0/G7WqBT80tfyS+1LBtCC3BjhRKfI/GlPsN1UNW//Fy3MNB2ipKA2wpPQtmC2JXOlJLZOMZ75di+uk=
X-Received: by 2002:a81:1182:0:b0:2dc:4e58:da41 with SMTP id
 124-20020a811182000000b002dc4e58da41mr24091863ywr.268.1647348209540; Tue, 15
 Mar 2022 05:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-23-s.hauer@pengutronix.de>
 <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
In-Reply-To: <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 15 Mar 2022 12:43:18 +0000
Message-ID: <CAPj87rM4StzGMqPfK=j5p0-mY2=ENZnZWx9QDL_jo8SzNTXWTQ@mail.gmail.com>
Subject: Re: [PATCH v8 22/24] drm: rockchip: Add VOP2 driver
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_054331_120603_2623D25C 
X-CRM114-Status: GOOD (  19.61  )
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

On Tue, 15 Mar 2022 at 06:46, Andy Yan <andy.yan@rock-chips.com> wrote:
> On 3/11/22 16:33, Sascha Hauer wrote:
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
>
> Do we need some modification to test AFBC by weston-simple-dma-egl ?
>
> I have a buildroot system with weston-10.0.9 and mesa 21.3.5.
>
> After launch weston, I run weston-simple-dmabuf-egl, but from the output
>
> of sys/kernel/debug/dri/0/state, the weston is still use Smart0-win0,
> which is
>
> a non-AFBC window.
>
> Do i need to modify the vop2 driver to set one Cluster window as primary
> plane?

Are you using the open-source Panfrost driver, or the proprietary Arm
DDK? The DDK was previously using some non-standard modifier tokens
which have since been corrected upstream.

You can see from running `weston-debug drm-backend` (if you start
Weston with `--debug`) the output as it tries to put client surfaces
on to overlay planes, and why it can or cannot.

For Weston's own composited output (used when it cannot place client
surfaces on to planes), it will just use whatever the KMS driver
declares as the primary plane. Weston does not have any logic to say
'oh, this plane is AFBC and AFBC is better, so I will use this as my
primary plane': we just follow what the kernel tells us.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
