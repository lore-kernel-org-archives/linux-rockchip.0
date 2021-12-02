Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A07C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 12:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMHAFv5Icb0+OsBBNdzWRCZCsSegrojl6AgTC/EpXvA=; b=dYxsAjJqOEZjjb
	ITMqjm3cy5YwllXttFfHA5nkWfSIQ1nO+CvGzfrq9h2nOhqzxH4WrzR5AAjoc3lOtGwLAPTxq8Ere
	/MbDFn3lfoicsilbkTHWjM8VvOjakKtvRy/ZahAkvOZefna9hTHvIhiGzTuu1vOSCxPNHve7ZihX7
	EnKWmaElLas9m/u7grMX0R6k1J4/ZY2JXcaRMwt3O3CTG1DrjXVV74nFHNQbtT045tAwF9wNxAHJC
	oj4mykGF6kxaIORYhE2bYYpn4brjeU/T81NjZJ1TbcW/HO3OrI2yZ7kMGUvWe59l+6bzkqosSaHkB
	2vjhv2T/emyYF2lutTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mslKN-00CKRq-Jo; Thu, 02 Dec 2021 12:36:43 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mslDV-00CI6p-9i; Thu, 02 Dec 2021 12:29:38 +0000
Received: by mail-ed1-x536.google.com with SMTP id t5so115498202edd.0;
 Thu, 02 Dec 2021 04:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YCcTTm4Maa5TXcDLbYXLbRt75Jjc8zsc+pqvwVk93Go=;
 b=p3a5v+dmRty+NzGaTklO7c3S7cmkU6iNa7PdqxChmAB0V5xj1hN63Ofj/42kXmCxiF
 Xdyhex7gLrRinMTJsh7H5RpTa8qc1goG1rYQZI4YNG+AvphUrBJa4iNNNmr+tZwAqGVN
 i/jsZL6UH1XBJ1Sb5gxCfyjDr91HyvwxNjJHRtbdUmqq4DkWiVVjvLJMFQNuH6JIGR9p
 9AfSfuFPZnCvS8LOvMEScb8kioqB6npoyAuAeKdKIg7V+BO8CoLj8Li8lLVLXy8ZssUe
 5CFxHL4dWNDb5S49AhVLVW2vCQSwBuKyyVBRE65vitv3Y7mSLj0EDYN8SFa8HcTbt+TP
 Eu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YCcTTm4Maa5TXcDLbYXLbRt75Jjc8zsc+pqvwVk93Go=;
 b=kSZj+uKHyeKQE9DYJ53RA7KXS0OjEIdk54AlRwbFSAub430dmccy7+C2TwyVMrw6iJ
 EKGFIc4CLGVGy1nCqHQ/aKSAdPq0b+qr7HXOwPGnnMMXFHegMS1wHL520w3JKg7yqisB
 UC9Q//UyCLZFIi278CEcL8tXAesovCiNv9a1JIJTcqENx5xHF4bYA2Ot/zPOMG/iDV5y
 Q8+/5EmFK9c/CM7PiLZO3tr+Rv0XWVxFPtdKIWHAMCFooy4VtZ0iF1wofdPceYscKzEE
 8Uln9rTPoGPQHY0u4HfnlXuYFcvAVVNHuUXmpR2/MMKjvqvMdJKJ8oa6KRNSRIKEDZz7
 stkg==
X-Gm-Message-State: AOAM533/vKEFWLSoJv9Ix8IFKYq6CRkSkdexEqj+xVhp+TSuOa3Tgdfe
 ngxbR1z3TQQN5v4WNigaGWLyuBTVUGXI9TbGpqg=
X-Google-Smtp-Source: ABdhPJxZShngoNPXgDS47UOI6ZLXwYKwCSeA5fm1NU+vtEE5ZuL/ae0cWNshOkPvmA9ECfEdUoS5U3VQpTZ7DznM8f8=
X-Received: by 2002:a05:6402:3488:: with SMTP id
 v8mr17723394edc.398.1638448175027; 
 Thu, 02 Dec 2021 04:29:35 -0800 (PST)
MIME-Version: 1.0
References: <20211202041627.291625-1-aford173@gmail.com>
In-Reply-To: <20211202041627.291625-1-aford173@gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 2 Dec 2021 06:29:23 -0600
Message-ID: <CAHCN7xJHuOFTQBQWk1yKsk3M0iDB7aKc0=L2DisUoSXVeO3xXQ@mail.gmail.com>
Subject: Re: [RFC V3 0/2] arm64: imx8mm: Enable Hantro VPUs
To: linux-media <linux-media@vger.kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Tim Harvey <tharvey@gateworks.com>, 
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Adam Ford-BE <aford@beaconembedded.com>, 
 hverkuil-cisco@xs4all.nl, Rob Herring <robh+dt@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, 
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_042937_393278_0686C985 
X-CRM114-Status: GOOD (  20.47  )
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

On Wed, Dec 1, 2021 at 10:17 PM Adam Ford <aford173@gmail.com> wrote:
>
> The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
> to be related to the video decoders used on the i.MX8MQ, but because of
> how the Mini handles the power domains, the VPU driver does not need to
> handle all the functions, so a new compatible flag is required.
>
> V3 is rebased from git://linuxtv.org/hverkuil/media_tree.git for-v5.17c
> This branch has support for VP9.
>
> I set cma=512M, but this may not be enough memory as some tests appeard to run out of memory
>
> V3 of this series has several changes:
>
> Update imx8m_vpu_hw to add missing 'reg' reference names for G2 and include references to VP9
> Update device tree to remove IMX8MQ_VPU_RESET, remove some duplicate vpu clock parenting
> Fix missing reg-names from vpu_g2 node.
> Apply patch [1] to manage the power domains powering down.
> [1] - https://lore.kernel.org/linux-arm-kernel/20211016210547.171717-1-marex@denx.de/t/
>
> With the above, the following Fluster scores are produced:
>
> G1:
> ./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
> Ran 90/135 tests successfully               in 74.406 secs
>
> ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
> Ran 55/61 tests successfully               in 8.080 secs
>
> G2:
> ./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
> Ran 127/303 tests successfully               in 203.873 secs
>
> Fluster and G-Streamer were both built from their respective git repos using their respective master/main branches.
>

I should note, that both interrupts appear to be triggering.

# cat /proc/interrupts |grep codec
 57:      13442          0          0          0     GICv3  39 Level
  38300000.video-codec
 58:       7815          0          0          0     GICv3  40 Level
  38310000.video-codec




>
> Adam Ford (2):
>   media: hantro: Add support for i.MX8M Mini
>   arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2
>
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi   | 41 +++++++++++++
>  drivers/staging/media/hantro/hantro_drv.c   |  2 +
>  drivers/staging/media/hantro/hantro_hw.h    |  2 +
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 65 +++++++++++++++++++++
>  4 files changed, 110 insertions(+)
>
> --
> 2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
