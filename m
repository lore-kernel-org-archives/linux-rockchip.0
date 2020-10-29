Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34AD1C55178
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 12:39:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ABF542076B
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 12:39:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="B0NyOT9b"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ABF542076B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2sPvF4WG/Xb9pWI8CTJWOKOBQ9seuPG7pg0sLgy8QWk=; b=B0NyOT9bSW5lJtlsof2ZmqOo5
	GcFojeEw9wYqX71FZq6F/bzEjtgHvrk9ovQZKQ4dh50M3mUZiITu+enryIX8ghRA0BiRuCLpCM0Of
	++WUM4vGeBtderx8OYYT9JhWMKs+PCAgVoRPNK2zEb6kfWwLEwjVrwlhdfasTsPfs4AvNqElfyGLq
	tNLNIovo0eLZkowNePFtCkBqQRc6cjq6lXHDDRAWVsqf/yc4MhQOBx2cqMv+los9k397gqoVDE9li
	3vV488bD7/9EWBdeR19gGNzkdvv7WgA0zXfZCBB/gCvjfw329EUGQg9BwBqzePpt3TMcnrnw946wV
	4yukSEMrg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY7Cz-0005hF-7P; Thu, 29 Oct 2020 12:39:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY7Cw-0005fT-6o
 for linux-rockchip@lists.infradead.org; Thu, 29 Oct 2020 12:39:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 35C7D1F459F9
Message-ID: <abc0321a81a3ada8eb66d227b56249024e549021.camel@collabora.com>
Subject: Re: [PATCH 00/18] Add Hantro regmap and VC8000 h264 decode support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Adrian Ratiu
 <adrian.ratiu@collabora.com>,  Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu, 29 Oct 2020 09:38:56 -0300
In-Reply-To: <97e84bb5-972a-091d-a159-6ab1151f17ab@kwiboo.se>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
 <97e84bb5-972a-091d-a159-6ab1151f17ab@kwiboo.se>
Organization: Collabora
User-Agent: Evolution 3.36.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_083910_468443_23D0492F 
X-CRM114-Status: GOOD (  32.64  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>, kernel@collabora.com,
 Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 2020-10-12 at 23:39 +0000, Jonas Karlman wrote:
> Hi,
> 
> On 2020-10-12 22:59, Adrian Ratiu wrote:
> > Dear all,
> > 
> > This series introduces a regmap infrastructure for the Hantro driver
> > which is used to compensate for different HW-revision register layouts.
> > To justify it h264 decoding capability is added for newer VC8000 chips.
> > 
> > This is a gradual conversion to the new infra - a complete conversion
> > would have been very big and I do not have all the HW yet to test (I'm
> > expecting a RK3399 shipment next week though ;). I think converting the
> > h264 decoder provides a nice blueprint for how the other codecs can be
> > converted and enabled for different HW revisions.
> > 
> > The end goal of this is to make the driver more generic and eliminate
> > entirely custom boilerplate like `struct hantro_reg` or headers with
> > core-specific bit manipulations like `hantro_g1_regs.h` and instead rely
> > on the well-tested albeit more verbose regmap subsytem.
> > 
> > To give just two examples of bugs which are easily discovered by using
> > more verbose regmap fields (very easy to compare with the datasheets)
> > instead of relying on bit-magic tricks: G1_REG_DEC_CTRL3_INIT_QP(x) was
> > off-by-1 and the wrong .clk_gate bit was set in hantro_postproc.c.
> > 
> > Anyway, this series also extends the MMIO regmap API to allow relaxed
> > writes for the theoretical reason that avoiding unnecessary membarriers
> > leads to less CPU usage and small improvements to battery life. However,
> > in practice I could not measure differences between relaxed/non-relaxed
> > IO, so I'm on the fence whether to keep or remove the relaxed calls.
> > 
> > What I could masure is the performance impact of adding more sub-reg
> > field acesses: a constant ~ 20 microsecond bump per G1 h264 frame. This
> > is acceptable considering the total time to decode a frame takes three
> > orders of magnitude longer, i.e. miliseconds ranges, depending on the
> > frame size and bitstream params, so it is an acceptable trade-off to
> > have a more generic driver.
> 
> In the RK3399 variant all fields use completely different positions so
> in order to make the driver fully generic all around 145 sub-reg fields
> used for h264 needs to be converted, see [1] for a quick generation of
> field mappings used for h264 decoding.
> 

Currently, we've only decided to support H.264 decoding via he RKVDEC
core on RK3399.

What your thoughts here Jonas, have you tested H.264 on RK3399 with
the G1 core? If it works, what benefits do we get from enabling both
cores?

Thanks!
Ezequiel

> Any indication on how the performance will be impacted with 145 fields
> compared to around 20 fields used in this series?
> 
> Another issue with RK3399 variant is that some fields use different
> position depending on the codec used, e.g. two dec_ref_frames in [2].
> Should we use codec specific field maps? or any other suggestion on
> how we can handle such case?
> 
> [1] https://github.com/Kwiboo/rockchip-vpu-regtool/commit/8b88d94d2ed966c7d88d9a735c0c97368eb6c92d
> [2] https://github.com/Kwiboo/rockchip-vpu-regtool/blob/master/rk3399_dec_regs.c#L1065
> [3] https://github.com/Kwiboo/rockchip-vpu-regtool/commit/9498326296445a9ce153b585cc48e0cea05d3c93
> 
> Best regards,
> Jonas
> 
> > This has been tested on next-20201009 with imx8mq for G1 and an SoC with
> > VC8000 which has not yet been added (hopefuly support lands soon).
> > 
> > Kind regards,
> > Adrian
> > 
> > Adrian Ratiu (18):
> >   media: hantro: document all int reg bits up to vc8000
> >   media: hantro: make consistent use of decimal register notation
> >   media: hantro: make G1_REG_SOFT_RESET Rockchip specific
> >   media: hantro: add reset controller support
> >   media: hantro: prepare clocks before variant inits are run
> >   media: hantro: imx8mq: simplify ctrlblk reset logic
> >   regmap: mmio: add config option to allow relaxed MMIO accesses
> >   media: hantro: add initial MMIO regmap infrastructure
> >   media: hantro: default regmap to relaxed MMIO
> >   media: hantro: convert G1 h264 decoder to regmap fields
> >   media: hantro: convert G1 postproc to regmap
> >   media: hantro: add VC8000D h264 decoding
> >   media: hantro: add VC8000D postproc support
> >   media: hantro: make PP enablement logic a bit smarter
> >   media: hantro: add user-selectable, platform-selectable H264 High10
> >   media: hantro: rename h264_dec as it's not G1 specific anymore
> >   media: hantro: add dump registers debug option before decode start
> >   media: hantro: document encoder reg fields
> > 
> >  drivers/base/regmap/regmap-mmio.c             |   34 +-
> >  drivers/staging/media/hantro/Makefile         |    3 +-
> >  drivers/staging/media/hantro/hantro.h         |   79 +-
> >  drivers/staging/media/hantro/hantro_drv.c     |   41 +-
> >  drivers/staging/media/hantro/hantro_g1_regs.h |   92 +-
> >  ...hantro_g1_h264_dec.c => hantro_h264_dec.c} |  237 +++-
> >  drivers/staging/media/hantro/hantro_hw.h      |   23 +-
> >  .../staging/media/hantro/hantro_postproc.c    |  144 ++-
> >  drivers/staging/media/hantro/hantro_regmap.c  | 1015 +++++++++++++++++
> >  drivers/staging/media/hantro/hantro_regmap.h  |  295 +++++
> >  drivers/staging/media/hantro/hantro_v4l2.c    |    3 +-
> >  drivers/staging/media/hantro/imx8m_vpu_hw.c   |   75 +-
> >  drivers/staging/media/hantro/rk3288_vpu_hw.c  |    5 +-
> >  include/linux/regmap.h                        |    5 +
> >  14 files changed, 1795 insertions(+), 256 deletions(-)
> >  rename drivers/staging/media/hantro/{hantro_g1_h264_dec.c => hantro_h264_dec.c} (58%)
> >  create mode 100644 drivers/staging/media/hantro/hantro_regmap.c
> >  create mode 100644 drivers/staging/media/hantro/hantro_regmap.h
> > 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
