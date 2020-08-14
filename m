Return-Path: <SRS0=1QUD=BY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49C0EC433DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2020 11:23:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1832720768
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2020 11:23:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="gHvyORQZ";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LrvYFQLG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1832720768
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UZAaKKXSKTfsjNhdxIBLXc/GFfN6zog4QqLF/7b21EA=; b=gHvyORQZjH1XDl9e0+Hr1wD4X
	rJU68XOej9wBOLhkgmkByCznv4hb4bRrXPs/VlOfQzgJ9cIYbi7t5zvqTFIWXyrgul6zCxtX/2qK0
	timWSQIaFi8nXIJc7wzMPR+GRo5i5wKdkCgbrou1oE7sRdjpJEjVN3MyLRRBwJ8yPGsdA1CzUOUOh
	ptSGMWhHxTMKbUzVVd/4iWGFG3uoscHaawAuDFbcLpy92IKUiT3VT58VV/xIDKsWA3Ogr96E2LeFK
	t7+sp6CRg3fjnMSsfuoWsqzKlNeqUQSASxIgG1rIrG2qPih4P+VrE4EV+6CFkuqftwYQZ4xvDeIx5
	DUBQ8ouvg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6Xnv-0002IO-Rv; Fri, 14 Aug 2020 11:23:23 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6Xnt-0002Hz-LX
 for linux-rockchip@lists.infradead.org; Fri, 14 Aug 2020 11:23:22 +0000
Received: by mail-ed1-x544.google.com with SMTP id i26so6553674edv.4
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Aug 2020 04:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=74lu3NYAV8oBCYayMvYbkB5XS2Pza4gP8vK5pg4J9AE=;
 b=LrvYFQLGEJrCWdb8YMpX6eqJnwTbSPjytjmRASdYQS5SHPuCM1+knFujt158Vx1+yO
 VypVeCLPtu+4fmJnxFhyHAUM1jX5cXS94cvQ4gg3L+1gwgyHdgWDNk54M8B4JwYIH2t9
 QGNruDCRxzvpe3k6Fgiftd+MsGaATfK/ykF0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=74lu3NYAV8oBCYayMvYbkB5XS2Pza4gP8vK5pg4J9AE=;
 b=JdPatM9yNp6ly6FMny010ssr1+I5WkvAn2CNPHjf+OcWVVpNCB4VgvXh5rBNo42D2/
 V2Q/TyeIL0zr+oRJxAvio6O6IbawxgE6Q5tXTnQp95qYq5+1R5d7TILXYwa6VwJxb/K0
 sO3vcbe4N9oY8VMLTuISF0Npf+/uWGTlS2jbrnt1lqOkUpm77Sv1UWiAcHp+6Hvbx8JE
 KrU7CGNRDAk2M1Gehzo38LqhvhED5ZQTanIupY2xHl349EXKIf7eGEWlZeYskdfLkV5e
 ZwEZ0wWs6uCi5dQ3aNhzvSTcidfZptfYOVHrJRdhNhSqlQ8AyxSmPJlKBgxspnrxZg/G
 IUpw==
X-Gm-Message-State: AOAM533I0RA+li+lNoPmqRdU9K4HaY9vlz5K6PeePfFwDw8ajkA3nQ0W
 UdCl/QxPAiBXjIatZZTrZ8lr/xr+Xx0sBw==
X-Google-Smtp-Source: ABdhPJzhskppyUUIMTQyGVjBOCyL5sfsRET/55CU13noiUOy3kPhBfXbMduaIw8JJ0LMMsEto4qDrQ==
X-Received: by 2002:a05:6402:1386:: with SMTP id
 b6mr1715088edv.296.1597404199981; 
 Fri, 14 Aug 2020 04:23:19 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id s5sm6471017ejv.67.2020.08.14.04.23.18
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Aug 2020 04:23:19 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id g8so7182717wmk.3
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Aug 2020 04:23:18 -0700 (PDT)
X-Received: by 2002:a1c:9a81:: with SMTP id c123mr2108679wme.46.1597404198270; 
 Fri, 14 Aug 2020 04:23:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
 <20200625174257.22216-4-dafna.hirschfeld@collabora.com>
 <e269f2f5-c24c-7009-e624-3545af206709@arm.com>
 <CAAFQd5AsJG=YJC4eG6+qdt_dPyr-dwcXrmujxLaHfoe9==Es1g@mail.gmail.com>
 <1e9097b9-ce61-448d-c00b-24f4eadb96a6@collabora.com>
In-Reply-To: <1e9097b9-ce61-448d-c00b-24f4eadb96a6@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 14 Aug 2020 13:23:05 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BuzS8X7kMbEj17e49N51060M8X_PGMYvr=FOb0wBKXgA@mail.gmail.com>
Message-ID: <CAAFQd5BuzS8X7kMbEj17e49N51060M8X_PGMYvr=FOb0wBKXgA@mail.gmail.com>
Subject: Re: [PATCH 3/3] media: staging: rkisp1: params: in 'stop_streaming'
 don't release the lock while returning buffers
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200814_072322_013185_CD3067B7 
X-CRM114-Status: GOOD (  29.69  )
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
Cc: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Aug 14, 2020 at 1:04 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
>
>
> Am 26.06.20 um 16:03 schrieb Tomasz Figa:
> > On Fri, Jun 26, 2020 at 3:32 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> Hi Dafna,
> >>
> >> On 2020-06-25 18:42, Dafna Hirschfeld wrote:
> >>> In the stop_streaming callback 'rkisp1_params_vb2_stop_streaming'
> >>> there is no need to release the lock 'config_lock' and then acquire
> >>> it again at each iteration when returning all buffers.
> >>> This is because the stream is about to end and there is no need
> >>> to let the isr access a buffer.
> >>>
> >>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >>> ---
> >>>    drivers/staging/media/rkisp1/rkisp1-params.c | 7 +------
> >>>    1 file changed, 1 insertion(+), 6 deletions(-)
> >>>
> >>> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> >>> index bf006dbeee2d..5169b02731f1 100644
> >>> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> >>> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> >>> @@ -1488,19 +1488,13 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
> >>>        /* stop params input firstly */
> >>>        spin_lock_irqsave(&params->config_lock, flags);
> >>>        params->is_streaming = false;
> >>> -     spin_unlock_irqrestore(&params->config_lock, flags);
> >>>
> >>>        for (i = 0; i < RKISP1_ISP_PARAMS_REQ_BUFS_MAX; i++) {
> >>> -             spin_lock_irqsave(&params->config_lock, flags);
> >>>                if (!list_empty(&params->params)) {
> >>>                        buf = list_first_entry(&params->params,
> >>>                                               struct rkisp1_buffer, queue);
> >>>                        list_del(&buf->queue);
> >>> -                     spin_unlock_irqrestore(&params->config_lock,
> >>> -                                            flags);
> >>>                } else {
> >>> -                     spin_unlock_irqrestore(&params->config_lock,
> >>> -                                            flags);
> >>>                        break;
> >>>                }
> >>
> >> Just skimming through out of idle curiosity I was going to comment that
> >> if you end up with this pattern:
> >>
> >>          if (!x) {
> >>                  //do stuff
> >>          } else {
> >>                  break;
> >>          }
> >>
> >> it would be better as:
> >>
> >>          if (x)
> >>                  break;
> >>          //do stuff
> >>
> >> However I then went and looked at the whole function and frankly it's a
> >> bit of a WTF. As best I could decipher, this whole crazy loop appears to
> >> be a baroque reinvention of:
> >>
> >>          list_for_each_entry_safe(&params->params, ..., buf) {
> >>                  list_del(&buf->queue);
> >>                  vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
> >>          }
> >>
> >> (assuming from context that the list should never contain more than
> >> RKISP1_ISP_PARAMS_REQ_BUFS_MAX entries in the first place)
> >
> > Or if we want to avoid disabling the interrupts for the whole
> > iteration, we could use list_splice() to move all the entries of
>
> Hi, list_splice combines two lists together, I guess you meant list_cut_position
> which cut a list into two

No, I meant list_splice() and it does the expected thing here. It adds
all the elements from one list (the list argument) to another list
(the head argument). Since an element can't be on two lists at the
same time, the first list is rendered invalid.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
