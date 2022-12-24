Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2FA8C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Dec 2022 18:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGU0hUyn4LsMpS2T8Zo5ymAmj72lxFGQvyreYwcn1b8=; b=rgume9iY8d59lh
	Z4C0YshSxWu+D3QhTXbF5lLrHIewipvx4SPSWak/GgLdwEF1spWOUm3IDdSJs4Y2WFCb5pSWqElRH
	4ADUy19bhGHIe4zQrUXdrTCEkdu2OQ7kO65sxPbUeeZWme6XJuszKAhkg2yVa0HFHDeSRNvJRCCEw
	ZOu/0yjA5emzN75OrRvCxqffkaElrPuiUE2htfJurwUXzQ2xcKBcczlZfcqYrcY/bvmn5issvnaGh
	ByirgTAKmt7zvI1tbCC0HB89cfTjzl1HC+ve0RoLjZE40xZEiLXQeodMyIwAu5xXRJvJlWnYSh7Xp
	myKnGsmznEA6+oW91SFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p99Db-002MfC-Jy; Sat, 24 Dec 2022 18:25:59 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p97vr-001qNj-Vt
	for linux-rockchip@lists.infradead.org; Sat, 24 Dec 2022 17:03:38 +0000
Received: by mail-ot1-x331.google.com with SMTP id m6-20020a9d7e86000000b0066ec505ae93so4485896otp.9
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Dec 2022 09:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xDlIxtzFcin724wRP1TAXrvd23TGKko3POM23PcIaBI=;
        b=z1KWdGBZC89gZpYSCRr1oZkEt8jV+HfKDyk8FypwZ5NTFMIln9Yl9nv4DhkuxSIJZx
         sMclWkPGni/eoSbKlLt/uUPM/MQDF1t6ahZs91Xi8vSA+q2dTjUHOTDvt5Fm25gGzwt1
         sA2vjgwIUYYrgMLa7d6b8BAN5iHM8CEvv3D4Ss5Tr0LVr9ZUSeFL/CPV9ssg3B7f3B5J
         5Jxqw4gyk08cyx84CBEaLgfUjY9UuPOnSgpiVyQnRU0jPPxGvkYhcgnHoIAu06fOB05R
         7xeXCSH8ja56+FbkBVJF/wDI/lIs8pkttD2Hy5UM6/0CxYpL6YhTyzgueJevhEvhEcZ8
         aFLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xDlIxtzFcin724wRP1TAXrvd23TGKko3POM23PcIaBI=;
        b=LHyDZgd8ZJgQtujObWO0uMK0TdFJ4ZRmNZ64UYCJjGkq1wcGzrd/ikRYdTmux0UXGX
         8OsKZYeaqF4dnTL5TjvIR0TnWLzOdGNLzD/Flbx9q0JmL09WyYvRkO7mMcF0RTd1m99i
         gz1q7iU5AAsDfbIEXDF97Y76Hoef/ctWzzi634umH9k+IU+SD39j6RBS+UN5Nh/9X9vv
         84MTq2s8T12I9e3UTtLRTzZnob3zWZctYXuMgi+01j9gZrmcgkjqI/hL8yJRUJXq2Ttr
         d7/uuBWm6KxeAIlAJBGiOfNztn54CPoh2waLkiR9jMsXSL/2VOGo3PqJzfOORKJ0bXy7
         QnVA==
X-Gm-Message-State: AFqh2koux1mIMeqVxuHJ5Su+Awm4gX8Mll8A85pSVas9SaQ29Y1UmG/h
	ASoIL+PLG4RKZFCzZXfWNRQFXw==
X-Google-Smtp-Source: AMrXdXvR9oTlcOMyZG0PSyHKf68zvuLkUYdRRGXmxCKna6gl2HjlGFAb/VNsEKBf/P6+4dUZANgRnw==
X-Received: by 2002:a9d:6004:0:b0:66e:ab28:cced with SMTP id h4-20020a9d6004000000b0066eab28ccedmr11631750otj.13.1671901413027;
        Sat, 24 Dec 2022 09:03:33 -0800 (PST)
Received: from eze-laptop ([190.11.62.130])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d6382000000b00670679748f9sm3221172otk.49.2022.12.24.09.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Dec 2022 09:03:31 -0800 (PST)
Date: Sat, 24 Dec 2022 14:03:25 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, kernel@collabora.com,
	Robert Mader <robert.mader@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] hantro: Fix JPEG encoder ENUM_FRMSIZE on RK3399
Message-ID: <Y6cw3dU8Ku2+aL9y@eze-laptop>
References: <20221223181647.720918-1-nicolas.dufresne@collabora.com>
 <8d13ffb9-74cb-00f9-072a-0614e341e1ef@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d13ffb9-74cb-00f9-072a-0614e341e1ef@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221224_090336_662664_72E28931 
X-CRM114-Status: GOOD (  22.28  )
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

On Sat, Dec 24, 2022 at 09:03:59AM +0100, Benjamin Gaignard wrote:
> =

> Le 23/12/2022 =E0 19:16, Nicolas Dufresne a =E9crit=A0:
> > Since 79c987de8b354, enumerating framesize on format set with "MODE_NON=
E"
> > (any raw formats) is reporting an invalid frmsize.
> > =

> >    Size: Stepwise 0x0 - 0x0 with step 0/0
> > =

> > Before this change, the driver would return EINVAL, which is also inval=
id but
> > worked in GStreamer. The original intent was not to implement it, hence=
 the
> > -ENOTTY return in this change. While drivers should implement ENUM_FRMS=
IZE for
> > all formats and queues, this change is limited in scope to fix the regr=
ession.
> > =

> > This fixes taking picture in Gnome Cheese software, or any software usi=
ng
> > GSteamer to encode JPEG with hardware acceleration.
> > =

> > Fixes: 79c987de8b354 ("media: hantro: Use post processor scaling capaci=
ties")
> > Reported-by: Robert Mader <robert.mader@collabora.com>
> > Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> =

> Reviewed-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> =


Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> > ---
> >   drivers/media/platform/verisilicon/hantro_v4l2.c | 7 +++++--
> >   1 file changed, 5 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers=
/media/platform/verisilicon/hantro_v4l2.c
> > index 2c7a805289e7b..30e650edaea8a 100644
> > --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> > +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> > @@ -161,8 +161,11 @@ static int vidioc_enum_framesizes(struct file *fil=
e, void *priv,
> >   	}
> >   	/* For non-coded formats check if postprocessing scaling is possible=
 */
> > -	if (fmt->codec_mode =3D=3D HANTRO_MODE_NONE && hantro_needs_postproc(=
ctx, fmt)) {
> > -		return hanto_postproc_enum_framesizes(ctx, fsize);
> > +	if (fmt->codec_mode =3D=3D HANTRO_MODE_NONE) {
> > +		if (hantro_needs_postproc(ctx, fmt))
> > +			return hanto_postproc_enum_framesizes(ctx, fsize);
> > +		else
> > +			return -ENOTTY;
> >   	} else if (fsize->index !=3D 0) {
> >   		vpu_debug(0, "invalid frame size index (expected 0, got %d)\n",
> >   			  fsize->index);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
