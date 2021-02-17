Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 851AAC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 09:24:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A5C764E42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 09:24:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A5C764E42
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pz+lEd4KCdPY/98CSl5k0TN0HWVuu+M40ZydS5nTCTw=; b=U9mSVS3k/O4NnCuk2eWo2eYm7
	yptEfywZzBaQVts2sphmd0k+xte7sB9DTWY4yV223+PnBHBPZjzny8k7iUAyiaw/xZqtcXRq1PtH8
	JVz+NHjGRzjj3bHgEsvJVuwVGQrVXxlai+TzM2agdhBR0IIkTSTAKcBci7Zgsorukoo7YhKFrLnVZ
	jna6V8mCqVnylQ5q7IzsSjMG7zAuQBbiN3Rz4yEuy5fUsfMP1WQkg0uOaRBMO2AJs/jlMQbMa0zaA
	7fIGX3XcmyaCJkKV5H8OvcefzfEDneLK6/XQ0p6VhK3IRktak4dkQGncV6f+B4PRBxMIbxVBQ4pM0
	xHa0WkgMg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCJ41-0000CK-Se; Wed, 17 Feb 2021 09:24:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCJ3x-0000AR-6M; Wed, 17 Feb 2021 09:24:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CD2664E33;
 Wed, 17 Feb 2021 09:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613553839;
 bh=FD7WhxzDm+JDUfR6hgpEBF+USlSpiOrjLGWZu2X98cI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jF0NlVSCU9pO4orJwFctgDl16Qz2q2xtNLtJz1DaP0buysksSPJFRfQZaeyvNHuJC
 bWg6BJByx2Um/j+t1QKHcL4nCqILFeEcl0KBWCZ0NTtWvCyVZbQCHShrxjkS/D1663
 kEFHpQqChcLhQHnuNstCKZ+Z5w5oZm7MHbJhrH2I=
Date: Wed, 17 Feb 2021 10:23:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
Message-ID: <YCzgrGr8JpUYcQ+L@kroah.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <YCzO7SRmBKzGeMUS@kroah.com>
 <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
 <YCzVmRVL79KMkxXQ@kroah.com>
 <63b62e9e-b95f-59a4-b830-c56d2cb9e4f8@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63b62e9e-b95f-59a4-b830-c56d2cb9e4f8@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_042401_547782_8133625A 
X-CRM114-Status: GOOD (  33.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: peng.fan@nxp.com, kernel@collabora.com, devel@driverdev.osuosl.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, Anson.Huang@nxp.com,
 krzk@kernel.org, linux-rockchip@lists.infradead.org, wens@csie.org,
 linux-imx@nxp.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 jernej.skrabec@siol.net, adrian.ratiu@collabora.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 17, 2021 at 10:10:35AM +0100, Hans Verkuil wrote:
> On 17/02/2021 09:36, Greg KH wrote:
> > On Wed, Feb 17, 2021 at 09:28:09AM +0100, Benjamin Gaignard wrote:
> >>
> >> Le 17/02/2021 =E0 09:08, Greg KH a =E9crit=A0:
> >>> On Wed, Feb 17, 2021 at 09:02:48AM +0100, Benjamin Gaignard wrote:
> >>>> The IMX8MQ got two VPUs but until now only G1 has been enabled.
> >>>> This series aim to add the second VPU (aka G2) and provide basic
> >>>> HEVC decoding support.
> >>> Why are you adding this directly to drivers/staging/media/ and not
> >>> drivers/media/?  Why can't this just go to the main location and not
> >>> live in staging?
> >>
> >> G2/HEVC is added inside the already exiting Hantro driver, it is "just"
> >> an other codec from Hantro driver point of view.
> >> In addition of that v4l2-hevc uAPI is still unstable.
> >> One goal of this series is to have one more consumer of this v4l2-hevc
> >> uAPI so maybe we can claim it to be stable enough to move away from st=
aging
> >> and then do the same for Hantro driver. That would be a great achievem=
ent !
> > =

> > I know I do not like seeing new additions/features/whatever being added
> > to staging drivers as that encourages people to do new stuff on them
> > without doing the real work needed to get them out of staging.
> =

> In order to support a specific codec (MPEG-2, H.264, HEVC, VP8, etc.) for
> stateless codec hardware like the hantro, V4L2 controls need to be define=
d.
> The contents of these controls is derived directly from the underlying co=
dec
> standards, but it is quite difficult to get this right with the first att=
empt,
> since these standards are very complex.
> =

> So we went for the strategy of keeping these drivers in staging to make it
> easy to work on, while keeping the APIs for each codec private (i.e., the=
y are
> not exposed in include/uapi/linux).
> =

> Once we have sufficient confidence in the API for a specific codec we move
> it to uapi and thus fix the API. We also renumber the control IDs at that
> time to avoid any confusion between the staging version and the final ver=
sion.
> =

> We did that for H.264 and I hope we can soon do the same for MPEG-2 and V=
P8.
> =

> HEVC is definitely not ready for that yet.
> =

> The key phrase is 'sufficient confidence': one requirement is that it is =
supported
> by at least two drivers to be reasonably certain the API doesn't contain =
any HW
> specific stuff, and it passes test suites and review by codec experts.
> =

> All this is actively being worked on, so this is very much alive, but it =
is
> complex and time consuming.
> =

> > So what is preventing the existing driver from getting out of staging
> > now?
> =

> Once MPEG-2 and VP8 are finalized it is probably time to move these drive=
rs
> out of staging, while still keeping the HEVC API part private.
> =

> > =

> > And how are you all creating new userspace apis for staging drivers to
> > the v4l layer?  What happens when you export something new and then
> > userspace starts to rely on it and then you change it?
> =

> Nothing is exported. So if userspace want to use it they have to manually
> copy headers from include/media to their application.
> =

> > =

> > Anyway, the media staging drivers are on their own, I don't touch them,
> > it just feels odd to me...
> =

> It's an unusual situation. But putting the drivers in staging and keeping
> the codec API headers private turns out to be the most effective way to
> develop this.

Ah, ok, thanks for the explaination, makes sense.

good luck!

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
