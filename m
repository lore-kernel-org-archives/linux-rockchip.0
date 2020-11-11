Return-Path: <SRS0=RWH0=ER=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CFA9C5517A
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2020 00:10:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C0BC205CA
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2020 00:10:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="nHl5VJ+7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6C0BC205CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pkJnYpznOV17vQjSidx+m6RKYmlmzVQ5xqMydcbfn7Y=; b=nHl5VJ+77ZvLuakH8zx59b36w
	HzrjK+5yRE8uJODdvi92Faj3+G2/clGLkshkCbnj+T6/Q3SSXqAZilHn3zfzighN1tM5aTZ0FH3Lk
	rpL71uEhAYe7klUnnJ4j1ue0fLr/0A4OJLeLQ3g8lzV9HuHmb05ThtmCf1MmBq7sEBcJGBeVwTabl
	v7TWF2vc8htwErNaeTABLzD5Iu8OyWeCq8b1w0M9BBI7ife5qEI0L/DfpBhKRVB6RKIwI0xbzBPP4
	DTsEjX2CXOHbSNrIS0ykxbKtRcwNjkcjdp4lr5GuCnOHF0DRsveQNMdC2xRhYMv5enAn1KscBtlIx
	ive4JgKDA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcdi1-00050w-5t; Wed, 11 Nov 2020 00:09:57 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcdhy-00050a-He
 for linux-rockchip@lists.infradead.org; Wed, 11 Nov 2020 00:09:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 8B8EE1F455B5
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v5 0/3] media: rkvdec: Add a VP9 backend
In-Reply-To: <ee12e70c92bacf1080ceae82feafa736c0719a2e.camel@collabora.com>
References: <20201102190551.1223389-1-adrian.ratiu@collabora.com>
 <CAAEAJfA1N1k9Vho4weZ9VnM_v6K4RXdmERyrWcWPCj64NMzDoQ@mail.gmail.com>
 <87y2j8hmoc.fsf@collabora.com>
 <ee12e70c92bacf1080ceae82feafa736c0719a2e.camel@collabora.com>
Date: Wed, 11 Nov 2020 02:11:30 +0200
Message-ID: <87pn4khhvx.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201110_190954_782948_15729B08 
X-CRM114-Status: GOOD (  42.15  )
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
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 10 Nov 2020, Ezequiel Garcia <ezequiel@collabora.com> 
wrote:
> On Wed, 2020-11-11 at 00:28 +0200, Adrian Ratiu wrote: 
>> Hi Ezequiel, 
>>   
>> On Tue, 10 Nov 2020, Ezequiel Garcia 
>> <ezequiel@vanguardiasur.com.ar> wrote: 
>> > On Mon, 2 Nov 2020 at 16:04, Adrian Ratiu 
>> > <adrian.ratiu@collabora.com> wrote:  
>> > > Dear all,   This is v5 of the series adding VP9 profile 0 
>> > > decoding to  rkvdec.    All feedback from v4 should be 
>> > > addressed, there's just one  thing I did not address: 
>> > > ref_frame_sign_biases in the uAPI. The  userspace tool I'm  
>> >  I believe that Hantro G2 VP9 needs ref_frame_sign_biases. 
>> > I think that it's also needed for the MTK decoder.  Might be 
>> > worth checking that as well, if the code is publicly 
>> > available  somewhere. 
>>  I consulted the imx8m app ref manual for the Hantro G2 core 
>> and  indeed there's not one, but three fields at SWREG11 and 13 
>> (last,  gold, alt) to signify sign biases for ref 
>> frames. Thanks for the  hint! 
>>   
>> > Coming to think about it, I think we are really close to 
>> > having  this uAPI directly upstream.    Let's take a step 
>> > back on why we have these uAPIs in the staging  area. Couple 
>> > years ago, there were some doubts in the media  community 
>> > about these uAPIs, and we wanted to wait a bit for  more 
>> > users before moving to public land.    The uAPIs were meant 
>> > to be in staging until enough users  appeared and we were 
>> > confident enough to move to stable.    For VP9, given the 
>> > feedback received through the year was  already addressed, I 
>> > think all that's left is to check the  interface and make 
>> > sure it can support Rockchip (RK3399, RK3326,  etc), Hantro 
>> > G2 and Mediatek,   We will be very close to having a public 
>> > API, and we could even  merge it directly there. 
>>  Thank you very much for this background. I understand that the 
>> uAPI is independent from the driver implementations, so having 
>> a  good stable uAPI is beneficial when (for example) adding 
>> support  for VP9 on G2 in  hantro or for upstream adoption of 
>> these  drivers.   Given this rkvdec driver implementation is 
>> also adding the VP9  uAPI and it's very close to stability 
>> (maybe only missing ref  frame sign bias, but who knows?) would 
>> you like to block its  submission until the uAPI is finalized 
>> or would it make sense to  treat the uAPI de-staging process 
>> separately because the uAPI is  independent from the driver?   
> 
> I don't mean to block it, quite the opposite, to make sure we 
> take this opportunity to go through Rockchip, Hantro and 
> Mediatek, double-check the uAPI is covering all the VP9 syntax, 
> and then target for public API.

That makes sense. I'm just cautious to not directly botch the 
public API, but that's what reviews are for, right? :) Thanks 
again for helping with background & direction.

>
> Cheers,
> Ezequiel
>
>> Thanks,
>> Adrian
>> 
>> > Thanks,
>> > Ezequiel
>> > 
>> > > using [1] apparently doesn't need it or the default hwreg value for it
>> > > is capable of decoding the bitstreams I used on the driver, so I don't
>> > > really have a use-case to change and test that. :)
>> > > 
>> > > Considering the uAPI is a work in progress and expected to be modified,
>> > > ref_frame_sign_biases can be added later with others which might be
>> > > required to enable more functionality (for eg profiles >= 1).
>> > > 
>> > > Series tested on rk3399 and applies on next-20201030.
>> > > 
>> > > [1] https://github.com/Kwiboo/FFmpeg/tree/v4l2-request-hwaccel-4.2.2-rkvdec
>> > > 
>> > > Changelog
>> > > ---------
>> > > 
>> > > v5:
>> > > 
>> > > * Drop unnecessary OUTPUT buffer payload set in .buf_prepare.
>> > > * Drop obsolete .per_request ctrl flag
>> > > * Added new vp9 ctrls to v4l2_ctrl_ptr
>> > > * Fix pahole detected padding issues
>> > > * Send userspace an error if it tries to reconfigure decode resolution
>> > >   as v4l2 or rkvdec-vp9 backend do not support dynamic res changes yet
>> > > * Allow frame ctx probability tables to be non-mandatory so users can
>> > >   set them directly during frame decoding in cases where no defaults
>> > >   have been set previously (eg. ffmpeg vp9 backend)
>> > > * Some comments and documentation clarifications
>> > > * Minor checkpatch fixes
>> > > 
>> > > v4:
>> > > 
>> > > * Drop color_space field from the VP9 interface.
>> > >   V4L2 API should be used for it.
>> > > * Clarified Segment-ID comments.
>> > > * Moved motion vector probabilities to a separate
>> > >   struct.
>> > > 
>> > > v3:
>> > > 
>> > > * Fix documentation issues found by Hans.
>> > > * Fix smatch detected issues as pointed out by Hans.
>> > > * Added patch to fix wrong bytesused set on .buf_prepare.
>> > > 
>> > > v2:
>> > > 
>> > > * Documentation style issues pointed out by Nicolas internally.
>> > > * s/VP9_PROFILE_MAX/V4L2_VP9_PROFILE_MAX/
>> > > * Fix wrong kfree(ctx).
>> > > * constify a couple structs on rkvdec-vp9.c
>> > > 
>> > > 
>> > > Boris Brezillon (2):
>> > >   media: uapi: Add VP9 stateless decoder controls
>> > >   media: rkvdec: Add the VP9 backend
>> > > 
>> > > Ezequiel Garcia (1):
>> > >   media: rkvdec: Fix .buf_prepare
>> > > 
>> > >  .../userspace-api/media/v4l/biblio.rst        |   10 +
>> > >  .../media/v4l/ext-ctrls-codec.rst             |  550 ++++++
>> > >  drivers/media/v4l2-core/v4l2-ctrls.c          |  239 +++
>> > >  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>> > >  drivers/staging/media/rkvdec/Makefile         |    2 +-
>> > >  drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1577 +++++++++++++++++
>> > >  drivers/staging/media/rkvdec/rkvdec.c         |   72 +-
>> > >  drivers/staging/media/rkvdec/rkvdec.h         |    6 +
>> > >  include/media/v4l2-ctrls.h                    |    5 +
>> > >  include/media/vp9-ctrls.h                     |  486 +++++
>> > >  10 files changed, 2942 insertions(+), 6 deletions(-)
>> > >  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
>> > >  create mode 100644 include/media/vp9-ctrls.h
>> > > 
>> > > --
>> > > 2.29.0
>> > > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
