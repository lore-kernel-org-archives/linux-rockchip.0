Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BAEBC77B7A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 May 2023 11:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xThxFpke7S3S5LBip2Tf79AYbo+wP5/lrFv7jnaWbQM=; b=RAyCBbFTljl5gH
	0+msgVyqLkfEkcQD4s/K1HZFkc/lnG7fe6z9XwN1LeXvc3FuPnM0QH3qVByPW9DHdpW87JyY96tzX
	7arS2CbojHG4xLMFrAPLon4YBLygDG5tdCdtXNLDRsGSoDu3xOjGa7g2on6swnrjSxoJcHvGKDSEM
	Hg6eu+3KxCk/KitCoB0GQuD/XED0iU568fYQXIRDG8LtMZNPo4hjAfgfVuIk/CRthxpwIjiNNK8Oz
	4Vw69TEGqPpWec0WPMRXExmyOAopBLpRDHd3gOFO2Tvpkvp0KcPYufqZOJwGEU8vSFWlZ5F7Cw6Ok
	cZPnhSweQWXYnzk6ir2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzxqu-00G2D8-0O;
	Fri, 19 May 2023 11:00:52 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzwuZ-00FopZ-0n
	for linux-rockchip@lists.infradead.org;
	Fri, 19 May 2023 10:00:37 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1ae4c5e1388so31186995ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 19 May 2023 03:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684490432; x=1687082432;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bxFT/eH6fI01yzQTav7apbXJs4Zkvkdbiyhdl2n33zI=;
        b=cvDpCNTPA3iJ2kdFkRCSMFHRtdReYV2KXQhy8iT3L9ZJ57nbIqLq8LmQb7Z118jA9Z
         SeD9I7cI3Y8OG8enSiToTsSgDB8PDXjPB4UZO1pcKN7MMHybvVarhYsNfDvDhCTgFGvb
         ZFPdyRXJ9FO6OyoWmqeWJD7xnpT4bdCerCbZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684490432; x=1687082432;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bxFT/eH6fI01yzQTav7apbXJs4Zkvkdbiyhdl2n33zI=;
        b=JrtO76GBef1y7Epc6qkD/5Lt2LeSvsZa0FrvFJ2t+tYvD4qs9B1N/+ndh7lgNl/rs9
         /CJzzjCGnOIt3pJt4L/h7S7ZzfzxPjApy4LFtGL6w4j2kKZOy85nVhQxt/EUgN8bd7kd
         s5aqAy9iz/maq1JefmgyYX3MtusdvZtAIgeTkLpOQ2K945T1qGDDCpu6HooBSzWVPx7H
         Pb6qkOcWHZWlR+KLLBm0Pn7Pj/x7JbjlXfhrKHhOwyApbDgBhygW7zQxIuFS9O7/Wsfk
         HzoSfCihUIEyFmXKYgzHy6Cw+3K9ez45+x8Mff4XUYtGcWD02Ulqh3NGy4+1yFZY9J6A
         7jrA==
X-Gm-Message-State: AC+VfDzAwAq0EX+kY1x3Za3A4B+qq13AGxmxYY3hMofiD1GEWfrzWp6I
	xd6nnbLx6a9/GAAwgP8LDas0Ag==
X-Google-Smtp-Source: ACHHUZ65Vmg+CYxf6B2/ULrLmerlLS1jMd3W4m8M1xENFlfJroRC/2WxG/uzsCpP0fQnBk7vlkPoRQ==
X-Received: by 2002:a17:902:ef84:b0:1ad:bb42:7672 with SMTP id iz4-20020a170902ef8400b001adbb427672mr2227133plb.29.1684490430693;
        Fri, 19 May 2023 03:00:30 -0700 (PDT)
Received: from chromium.org (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id a4-20020a1709027d8400b001ab12545508sm3043029plm.67.2023.05.19.03.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 03:00:30 -0700 (PDT)
Date: Fri, 19 May 2023 10:00:24 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dan Carpenter <error27@gmail.com>, oe-kbuild@lists.linux.dev,
	m.szyprowski@samsung.com, mchehab@kernel.org, ming.qian@nxp.com,
	shijie.qin@nxp.com, eagle.zhou@nxp.com, bin.liu@mediatek.com,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	tiffany.lin@mediatek.com, andrew-ct.chen@mediatek.com,
	yunfei.dong@mediatek.com, stanimir.k.varbanov@gmail.com,
	quic_vgarodia@quicinc.com, agross@kernel.org, andersson@kernel.org,
	konrad.dybcio@linaro.org, ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de, daniel.almeida@collabora.com, lkp@intel.com,
	oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/8] media: videobuf2: Make bufs array dynamic
 allocated
Message-ID: <20230519100024.en7immda3jdj2wwq@chromium.org>
References: <4e2cb832-de83-4ba6-bd8a-119a19038cfe@kili.mountain>
 <a88b93cc-a81f-6186-09fc-02223867e677@collabora.com>
 <b0018f7b-0556-0ac1-d2fa-89787a27fba1@xs4all.nl>
 <20230324084830.GA18895@pendragon.ideasonboard.com>
 <d4b6ad10-1889-0a63-5a14-cb1320e2dc09@xs4all.nl>
 <7ad524a1-c54f-a01c-3453-2cf1f0f82a13@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ad524a1-c54f-a01c-3453-2cf1f0f82a13@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_030035_289367_719416F4 
X-CRM114-Status: GOOD (  24.07  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Mar 24, 2023 at 09:56:34AM +0100, Benjamin Gaignard wrote:
> =

> Le 24/03/2023 =E0 09:52, Hans Verkuil a =E9crit=A0:
> > On 24/03/2023 09:48, Laurent Pinchart wrote:
> > > On Fri, Mar 24, 2023 at 09:31:35AM +0100, Hans Verkuil wrote:
> > > > On 24/03/2023 09:11, Benjamin Gaignard wrote:
> > > > > Le 24/03/2023 =E0 06:01, Dan Carpenter a =E9crit=A0:
> > > > > > Hi Benjamin,
> > > > > > =

> > > > > > https://git-scm.com/docs/git-format-patch#_base_tree_informatio=
n]
> > > > > > =

> > > > > > url:=A0=A0=A0 https://github.com/intel-lab-lkp/linux/commits/Be=
njamin-Gaignard/media-videobuf2-Access-vb2_queue-bufs-array-through-helper-=
functions/20230321-183154
> > > > > > base:=A0=A0 git://linuxtv.org/media_tree.git master
> > > > > > patch link:=A0=A0=A0 https://lore.kernel.org/r/20230321102855.3=
46732-3-benjamin.gaignard%40collabora.com
> > > > > > patch subject: [PATCH v2 2/8] media: videobuf2: Make bufs array=
 dynamic allocated
> > > > > > config: arm64-randconfig-m041-20230319 (https://download.01.org=
/0day-ci/archive/20230324/202303240148.lKRnUqW9-lkp@intel.com/config)
> > > > > > compiler: aarch64-linux-gcc (GCC) 12.1.0
> > > > > > =

> > > > > > If you fix the issue, kindly add following tag where applicable
> > > > > > | Reported-by: kernel test robot <lkp@intel.com>
> > > > > > | Reported-by: Dan Carpenter <error27@gmail.com>
> > > > > > | Link: https://lore.kernel.org/r/202303240148.lKRnUqW9-lkp@int=
el.com/
> > > > > > =

> > > > > > smatch warnings:
> > > > > > include/media/videobuf2-core.h:1272 vb2_queue_add_buffer() warn=
: sleeping in atomic context
> > > > > > drivers/media/common/videobuf2/videobuf2-core.c:2456 vb2_core_q=
ueue_init() warn: Please consider using kcalloc instead of kmalloc_array
> > > > > > =

> > > > > > vim +1272 include/media/videobuf2-core.h
> > > > > > =

> > > > > > 625d46c1c1fe8e Benjamin Gaignard 2023-03-21=A0 1263=A0 static i=
nline bool vb2_queue_add_buffer(struct vb2_queue *q, struct vb2_buffer *vb)
> > > > > > 625d46c1c1fe8e Benjamin Gaignard 2023-03-21=A0 1264=A0 {
> > > > > > 487d3f14d12ecf Benjamin Gaignard 2023-03-21=A0 1265=A0=A0=A0=A0=
=A0 bool ret =3D false;
> > > > > > 487d3f14d12ecf Benjamin Gaignard 2023-03-21=A0 1266
> > > > > > 487d3f14d12ecf Benjamin Gaignard 2023-03-21=A0 1267=A0=A0=A0=A0=
=A0 spin_lock(&q->bufs_lock);
> > > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ^^^^^^^^^^^^^^^^^^^^^^^
> > > > > > Holding a spin lock.
> > > > > > =

> > > > > > 487d3f14d12ecf Benjamin Gaignard 2023-03-21=A0 1268
> > > > > > 487d3f14d12ecf Benjamin Gaignard 2023-03-21=A0 1269=A0=A0=A0=A0=
=A0 if (vb->index >=3D q->max_num_bufs) {
> > > > > > 487d3f14d12ecf Benjamin Gaignard 2023-03-21=A0 1270=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 struct vb2_buffer **tmp;
> > > > > > 487d3f14d12ecf Benjamin Gaignard 2023-03-21=A0 1271
> > > > > > 487d3f14d12ecf Benjamin Gaignard 2023-03-21 @1272=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 tmp =3D krealloc_array(q->bufs, q->max_num_bufs * 2, sizeof=
(*q->bufs), GFP_KERNEL);
> > > > > >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ^^^^^^^^^^
> > > > > > Sleeping allocation.=A0 GFP_ATOMIC?=A0 Or is there a way to mov=
e the
> > > > > > allocation outside the lock?
> > > > > I will add GFP_ATOMIC flag in next version.
> > > > No need. Instead, don't use realloc here, just allocate a new array=
, copy over all
> > > > the data from the old, and then switch q->bufs with the spinlock he=
ld. Then you
> > > > can free the old one.
> > > > =

> > > > It's only when you update q->bufs that you need the lock.
> > > The copy also needs to be protected by the lock.
> > I suspect that that is not needed, since you shouldn't be able to add b=
uffers here
> > since a mutex should be held at this time.
> > =

> > That said, it's something that Benjamin needs to analyze.

I spent some time looking through the call sites of vb2_get_buffer() and
how those can be called and it turned out to be a massive list of code
paths, including a lot of calls originating from codec drivers calling
vb2_find_buffer() in random contexts (possibly even interrupt). So a
spinlock protecting the array pointer makes sense indeed.

> =

> Does using GFP_ATOMIC is problematic ?
> =


Yes, because the ability to reclaim memory is drastically limited and
the allocation is more likely to fail (as in: it's actually possible).
(And generally the time with interrupts disabled should be minimized to
keep system latency reasonable.)

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
