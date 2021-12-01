Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A3C3C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 17:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYjcEexkHxuX5WzbqQF/vxtsbVtliEjtsImYVfXC99A=; b=p03v78pEZ6GaNr
	uu51sOTe/qC0E+Yt3HhMMIpD+JdSHyNkB0X/JFLZ3UmCmK4OjJJ9ekHw9JhxcGsoCgeh5JxzcOxtH
	rNTM03QZprHA46hS6cJhwdkM73sQC/jxXPOfflFOaT3zRbkG69i0FVCOFEGmzj9QLLiV5liWWs/lU
	Z9sY/U14Da5W/yTPn0kRWFo+ZtBKjSHWKvKRA3MMCwLhayG/eGuTyAhg9175b6fSkkQ8azCYkf5K5
	ECV+ciybpFFxfc6dre4zP5/5Fbtz/6DHeDhs5RvsMd77oZLVHVgGFqUAAlJilrYd1bEe68qFIMtBE
	K3+uRa1YALhSm+at7d2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTKc-009ZdS-BG; Wed, 01 Dec 2021 17:23:46 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTKZ-009ZcD-M5
 for linux-rockchip@lists.infradead.org; Wed, 01 Dec 2021 17:23:45 +0000
Received: by mail-pl1-x62d.google.com with SMTP id u17so18223509plg.9
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Dec 2021 09:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ykCOSl1DR1nooY0Igc75aTkUdtgWWtVr7m16LxU2Evo=;
 b=QY/uWasz8CDavm3HQOwoN783a1XibY4AIEjRICoXuDJ3rcT6sX940BzyeEElAZSMKH
 aVzwrCRWWk6s6yElOL/+zaTSWXLJLcOSpriN40a8Ecms3EoHKBrvt44FeFNk8LOPA07R
 xHNMD8O+Dsus7qnBJjp8Gh1M7O9DvFqhQjPvBdsMtygny3z23nTbPWu0DC+BXrZ+t02u
 dEKbme+x2iCOn14x51iomJkKVqdVzww7pF2v7VH4zCGt7XfwvdfWVfBlsyyqFq/i4iA3
 ZFqrU7YrdyN4B6olG90FeZJsR7zVsyHy+mntkq8IGddNBIC83VYeQQK/vsKgXX1ydpUD
 m2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ykCOSl1DR1nooY0Igc75aTkUdtgWWtVr7m16LxU2Evo=;
 b=ELbzkLZix+hIWlWKKMqGyW1kBkrdTa9PC6GnW28WS6wDlw0Qkxl8jnHOJta/hVJ1BG
 /ytvJEYhFzNcBm2e2sZ61Ewl2G1fQc46h8Rck8ud2sf2MtuIPxgHbnBVZk2WfqF2NS8T
 xe6qvl/OkG9vjJYS5/QETxKg9NzRPwKWXk0L+gydhfsN9wKd7o5yiDZ5yNp3SAhp4+N3
 QonpV0Ni/oEvqpxeSCeO6QLqH+k1f3eI993MRMUeyTu4MHwyI5k2SBbYYxhDcm0MR3dc
 kgDTdsSpq2pTaaJPpfvn/XoRp0CKCZ+KFxhAtBUtkqv2mYXKtaOHQb/cgrPK2SYRrMBu
 oRFA==
X-Gm-Message-State: AOAM531CpIV89VWP142kyktZnXERwhtsWA/zVFgrNBnFMO4Dmd5o60VY
 GiOEpWVp720tv8fojWH8v4yUAC8pV3xu3K7Hx6S7qw==
X-Google-Smtp-Source: ABdhPJyzb1DYRJAzXFYCNHh3xxtvOFlxqgyxfdSYfvQhBWij59zsgTe/H6UhPJaD87eZQQzGMhfXZONUPEbRm8yF9Go=
X-Received: by 2002:a17:90b:33d0:: with SMTP id
 lk16mr9151438pjb.66.1638379422917; 
 Wed, 01 Dec 2021 09:23:42 -0800 (PST)
MIME-Version: 1.0
References: <20211201013329.15875-1-aford173@gmail.com>
In-Reply-To: <20211201013329.15875-1-aford173@gmail.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 1 Dec 2021 09:23:31 -0800
Message-ID: <CAJ+vNU1jENmWAR_5E98Vgb53ctxjxSWJewPW0YC4Yp4DuYTn3g@mail.gmail.com>
Subject: Re: [RFC V2 0/2] arm64: imx8mm: Enable Hantro VPUs
To: Adam Ford <aford173@gmail.com>, l.stach@pengutronix.de
Cc: linux-media@vger.kernel.org, ezequiel@vanguardiasur.com.ar, 
 hverkuil@xs4all.nl, nicolas@ndufresne.ca, aford@beaconembedded.com, 
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_092343_799012_39023403 
X-CRM114-Status: GOOD (  25.65  )
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

On Tue, Nov 30, 2021 at 5:33 PM Adam Ford <aford173@gmail.com> wrote:
>
> The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
> to be related to the video decoders used on the i.MX8MQ, but because of
> how the Mini handles the power domains, the VPU driver does not need to
> handle all the functions, nor does it support the post-processor,
> so a new compatible flag is required.
>
> With the suggestion from Hans Verkuil, I was able to get the G2 splat to go away
> with changes to FORCE_MAX_ZONEORDER, but I found I could also set cma=512M, however
> it's unclear to me if that's an acceptable alternative.
>
> At the suggestion of Ezequiel Garcia and Nicolas Dufresne I have some
> results from Fluster. However, the G2 VPU appears to fail most tests.
>
> ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> Ran 90/135 tests successfully               in 76.431 secs
>
>  ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> Ran 55/61 tests successfully               in 21.454 secs
>
> ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> Ran 0/303 tests successfully               in 20.016 secs
>
> Each day seems to show more and more G2 submissions, and gstreamer seems to be
> still working on the VP9, so I am not sure if I should drop G2 as well.
>
>
> Adam Ford (2):
>   media: hantro: Add support for i.MX8M Mini
>   arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2
>
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi   | 41 +++++++++++++++
>  drivers/staging/media/hantro/hantro_drv.c   |  2 +
>  drivers/staging/media/hantro/hantro_hw.h    |  2 +
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 57 +++++++++++++++++++++
>  4 files changed, 102 insertions(+)
>

Adam,

That's for the patches!

I tested just this series on top of v5.16-rc3 on an
imx8mm-venice-gw73xx-0x and found that if I loop fluster I can end up
getting a hang within 10 to 15 mins or so when imx8m_blk_ctrl_power_on
is called for VPUMIX pd :
while [ 1 ]; do uptime; ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0; done
...
[  618.838436] imx-pgc imx-pgc-domain.6: failed to command PGC
[  618.844407] imx8m-blk-ctrl 38330000.blk-ctrl: failed to power up bus domain

I added prints in imx_pgc_power_{up,down} and
imx8m_blk_ctrl_power_{on,off} to get some more context
...
Ran 55/61 tests successfully               in 8.685 secs
 17:16:34 up 17 min,  0 users,  load average: 3.97, 2.11, 0.93
********************************************************************************
********************
Running test suite VP8-TEST-VECTORS with decoder GStreamer-VP8-V4L2SL-Gst1.0
Using 4 parallel job(s)
********************************************************************************
********************

[TEST SUITE      ] (DECODER                    ) TEST VECTOR               ... R
ESULT
----------------------------------------------------------------------
[ 1023.114806] imx8m_blk_ctrl_power_on vpublk-g1
[ 1023.119669] imx_pgc_power_up vpumix
[ 1023.124307] imx-pgc imx-pgc-domain.6: failed to command PGC
[ 1023.130006] imx8m-blk-ctrl 38330000.blk-ctrl: failed to power up bus domain

While this wouldn't be an issue with this series it does indicate we
still have something racy in blk-ctrl. Can you reproduce this (and if
not what kernel are you based on)? Perhaps you or Lucas have some
ideas?

Best regards,

Tim

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
