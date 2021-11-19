Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA899C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 23:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xL7wW+w1Ba1uGa8XENYdLoq/Aw0A6judQHpvqHTkG4=; b=dY7WmzoN/bEj4x
	lbasC2SSFC7wJf8RL2jeZPRIcMyRw8Gv1oYN6XFyX0we23/868lV6ZeJYHPhXfQDrhdm7ifJZ5XGa
	DvcT14LRJLGjXwnzbz9JFzO0oM5sEQxbBQ7jezTp+fhYg9FfWQbZcL8pTFtRAtZzYYi0SOsqlBtqd
	RwuA3IGW69V0nmW6MTIvJRiQPZoqiVrcOHgXt+UWYS59WUZGm2uA+0j2BZ2y9LblKb24xng6UZrOG
	QW0xPEn3jRe+UcNN0uaR1hPZ5/4LzQdVabWgcxSGn4M+0ObcNx0Hd+AjU6LBt0E4d43XRo4UdyhgR
	whxUAr0PPdolQ9xErDKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moDRo-00BnK9-52; Fri, 19 Nov 2021 23:37:36 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moDRk-00BnIx-Ss; Fri, 19 Nov 2021 23:37:34 +0000
Received: by mail-ed1-x52d.google.com with SMTP id e3so49045209edu.4;
 Fri, 19 Nov 2021 15:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YElH7fDjQntk4O6oWmKV9CpChk3+XDAXIgAyTvCwk/o=;
 b=MlsqkbYesK3dxd/H4c0ua70hxauFyFyOCcRN5R8BahVc9rkz7EKCbkgh9DoHnzX6f3
 4Rq90CarVs+RHB3Qjju2KTkWd8uC/K2+dYVRUbrYu5hWfKUsZXOVFtRHtRNqUUHnSA1M
 6EqTn0Ss0QP644yqbYejA0R0XYFbp6rNvgoQLYfHf1R8EIkrHdYeeuS60u6PuEpQFrCo
 875VZ6fxaf4K8ORy5gKLTjj1AGeG4ItoIG0jdfSkm43YAwfpfWbN5h3fXd5ghLI0mFuv
 KK9yltBMGW5yyQ0q3ULUM6L48L/1YrR4kKSwQliD2EBf293zd84Uw6h56rm/7S4NyAwo
 KpbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YElH7fDjQntk4O6oWmKV9CpChk3+XDAXIgAyTvCwk/o=;
 b=MFgK+ZI9e2y+rVlofW48zvJnCsj9ePHHgjvLinhg6y4vz46fi7b2lsBGTkDHwPrDsT
 vvwK1q+UUKaK8mzwoS4nv1GkRWIXGD+2hQc1oDIJvsTe7LMKpffydWcf8zmmU6FHNJ0x
 2qLNvAxTco0roOXz1bhqTtQQkikELzi0dIm5cy+NsuPOm6BJrVoCZ9xvdRDe+jieABMT
 GbQyBBjAq0Br25T13X+Ul3iYAABnGGx8b14SQOld7wh+DYnORSgQ39v5+NOSYOxrbwkz
 iI+nAXsJnDmXdQqfiKj0GMUjYdaJkzxwRvRMU5Q4imstKFD1gJ+ez4783RJaI3+bEMtn
 C6zQ==
X-Gm-Message-State: AOAM533Cm5+tuPd5ZXAgSJ5exaZWA3ka08b5s+Ndg851Ue+DfTaVpZVf
 gY7j1H3bAFyOXpFbFAI8uWgzG05BaS9UqDH5gtg=
X-Google-Smtp-Source: ABdhPJxJ4ZWYivE0w4Q4WW7YZS7F/iJXk9r+NIHyQvxAUA774a966nD2JYYjEnuNp/44x3wmF0FV7AD6YohoamlMQzg=
X-Received: by 2002:a17:907:94c2:: with SMTP id
 dn2mr717004ejc.325.1637365049993; 
 Fri, 19 Nov 2021 15:37:29 -0800 (PST)
MIME-Version: 1.0
References: <20211106183802.893285-1-aford173@gmail.com>
 <718f7f6d6cd564d031c1963f1590c62d549ae725.camel@ndufresne.ca>
 <CAHCN7xKM9RUE7z-+ug1on+D=nDoEm589R4m03ofys92Aq75ZVQ@mail.gmail.com>
 <8db00a4b6faa99c940d9bc86e17161eb0db5efe3.camel@ndufresne.ca>
 <CAJ+vNU28UJffFv9jQ2KryJMudqYxvCaoVOVcU5dPqRA209iN6A@mail.gmail.com>
 <d91532c2c0772f9aa708ead36b2a97203727a7ea.camel@ndufresne.ca>
 <CAJ+vNU3H-V+bPoZ3qKead45h=W7AhQK6Lhjrx5ssdF4c_qfe=A@mail.gmail.com>
 <CAHCN7x+0LwwU_rEST+TZxGquswGKL19gnTy9WLofsXtGAtWqdw@mail.gmail.com>
 <7f94eaacfddb8c5434c17f1e069ea87a17657ce9.camel@ndufresne.ca>
In-Reply-To: <7f94eaacfddb8c5434c17f1e069ea87a17657ce9.camel@ndufresne.ca>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 19 Nov 2021 17:37:18 -0600
Message-ID: <CAHCN7xKRzxMBmPbDobWTuvNNSpTXk5XENvfBnfkhRY3eZKhn6w@mail.gmail.com>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Tim Harvey <tharvey@gateworks.com>,
 linux-media <linux-media@vger.kernel.org>, 
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, 
 Jagan Teki <jagan@amarulasolutions.com>,
 Adam Ford-BE <aford@beaconembedded.com>, 
 cstevens@beaconembedded.com, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Lucas Stach <l.stach@pengutronix.de>, Joakim Zhang <qiangqing.zhang@nxp.com>, 
 Alice Guo <alice.guo@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_153732_980027_72A94ADF 
X-CRM114-Status: GOOD (  41.46  )
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

On Fri, Nov 19, 2021 at 10:29 AM Nicolas Dufresne <nicolas@ndufresne.ca> wrote:
>
> Hi Adam, Tim,
>
> [...]
> > > > > Nicolas and Adam,
> > > > >
> > > > > For the H1 patches in this series: I've been able to test the IMX8MM
> > > > > H1 JPEG encode using GStreamer 1.18.5:
> > > > > $ gst-inspect-1.0 | grep -e "v4l2.*enc"
> > > > > video4linux2:  v4l2jpegenc: V4L2 JPEG Encoder
> > > > > $ gst-launch-1.0 videotestsrc ! jpegenc ! rtpjpegpay ! udpsink
> > > >                                   ^ v4l2jpegenc
> > > >
> > > > This is just a transcript error ?
> > >
> > > Nicolas,
> > >
> > > No! Thanks for catching my mistake. I was testing with software encode... ooops!
> > >
> > > 'gst-launch-1.0 videotestsrc ! v4l2jpegenc ! fakesink' actually hangs
> > > the board so likely a power-domain issue there?
> >
> > The v4l2-compliance tests fail on the h1 decoder with a hang, but I
> > think we're writing to registers which are not documented in the Mini
> > TRM.  The Mini TRM doesn't explicitly show the JPEG encoding as a
> > feature, but some of the registers state JPEG, but because some of the
> > registers written for the H1 are not documented in the TRM.  If those
> > registers are restricted or not in this SoC, I am concerned that it
> > might be related.  I'll try to run some more tests this weekend to
> > check on the status of the power-domain stuff.
>
> To verify if the HW support JPEG encoding you can read SWREG63 bit 25. This is
> in the TRM, just not labelled properly. To mimic the decoding side, would be "HW
> synthesis config register X" with the bit labelled SW_ENC_JPEG_PROF (but
> PROF/profile is on or off). If your board hang while reading this, you likely
> didn't get the power bit right.
>
> IMX8 has an undocumented control block thing that we have been fighting with in
> imx8q,  perhaps that's your issue. Few driver was proposed, we are still pending
> on NXP solution to be submitted (they asked us to wait, still waiting =)).

Nicolas,

Thanks for the suggestion to read offset FC.  There was an attempt
made by Lucas Stach to develop a VPU blk-ctrl driver to coordinate the
power-domains with the GPC driver. Unfortunately, it does appear to
hang, so it might not be operating correctly.

Lucas,

Do you have any idea of stuff I can try to see if the power domain is
coming online correctly?

[   10.434727] imx-pgc imx-pgc-domain.6: request the vpumix domain to power up
[   10.463647] imx-pgc imx-pgc-domain.6: request the vpumix ADB400 to power up
[   10.517155] imx-pgc imx-pgc-domain.6: genpd vpumix success
[   10.728927] vpu: set fuse bits to enable
[   10.825500] imx8m-blk-ctrl 38330000.blk-ctrl: power vpublk-g1 GPC domain
[   10.878986] imx-pgc imx-pgc-domain.7: request the vpu-g1 domain to power up
[   10.932429] imx-pgc imx-pgc-domain.7: genpd vpu-g1 success
[   10.971988] imx8m-blk-ctrl 38330000.blk-ctrl: genpd vpublk-g1 success
[   11.004726] hantro-vpu 38300000.video-codec: registered
nxp,imx8mm-vpu-dec as /dev/video0
[   11.040760] imx8m-blk-ctrl 38330000.blk-ctrl: power vpublk-g2 GPC domain
[   11.066181] imx-pgc imx-pgc-domain.8: request the vpu-g2 domain to power up
[   11.087887] imx-pgc imx-pgc-domain.8: genpd vpu-g2 success
[   11.113808] imx8m-blk-ctrl 38330000.blk-ctrl: genpd vpublk-g2 success
[   11.139634] hantro-vpu 38310000.video-codec: registered
nxp,imx8mm-vpu-g2-dec as /dev/video1
[   11.156463] imx8m-blk-ctrl 38330000.blk-ctrl: power vpublk-h1 GPC domain
[   11.170817] imx-pgc imx-pgc-domain.9: request the vpu-h1 domain to power up
[   11.232990] imx-pgc imx-pgc-domain.9: genpd vpu-h1 success
[   11.252546] imx8m-blk-ctrl 38330000.blk-ctrl: genpd vpublk-h1 success
[   11.266152] hantro-vpu 38320000.video-codec: Checking vpu->enc_base + 0xfc

<hang>

adam

>
> > >
> > > >
> > > > > host=192.168.1.146 port=5000
> > > > > viewed on client@192.168.1.146 via:
> > > > > $ gst-launch-1.0 udpsrc port=5000 ! application/x-rtp,payload=96 !
> > > > > rtpjpegdepay ! jpegdec ! autovideosink
> > > > >
> > > > > For the G1/G2 patches in the series I don't see any Gstreamer
> > > > > 'v4l2.*dec' elements. Perhaps I need a newer version of Gstreamer.
> > > >
> > > > Most likely yes, I suggest building gstreamer/ branch "main", GStreamer has now
> > > > a single repository. We are very close to 1.20, which will include stable API
> > > > support of H264, MPEG2 and VP8 decoding.
> > > >
> > >
> > > Ok, let me see if I can navigate through the build process and I'll
> > > get back to you.
> > >
> > > Thanks,
> > >
> > > Tim
> > >
> > > > >
> > > > > I have CSI capture and DSI display currently working on
> > > > > imx8mm-venice-gw73xx-0x that I can play with. The CSI sensor only
> > > > > supports RAW8/RAW10 (and gstreamer currently only supports RAW8) and I
> > > > > can't efficiently convert to something the JPEG encoder likes without
> > > > > bayer2rgbneon (a libneon version).
> > > > >
> > > > > I see from the IMX8MMRM that the 2D GPU supports scaling etc with a
> > > > > wide range of data formats but I'm not sure how to tap into this as
> > > > > that hardware is managed by the vivante driver. On the IMX6QDL there
> > > > > is a separate IPU block that Philipp Zabel wrote a nice mem2mem
> > > > > csc/scaler driver for but I don't see any equivalent currently for
> > > > > IMX8MM.
> > > > >
> > > > > Best regards,
> > > > >
> > > > > Tim
> > > >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
