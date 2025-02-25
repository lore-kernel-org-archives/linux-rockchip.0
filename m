Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95784C021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 13:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DFX5qZuk6pxKyMrQtPV30Ihv/P+UKSiOu21wDKawdGw=; b=sRjx9xePNB0uKuU+yCYBBs0uN5
	7sFgBBhzFpPM+oaa/33HLNVioCpnH5oehrdyirHJd+a3tB4cW/uMkbqOLvBwSEfGjrmqSNEN9dD1z
	YXaTdv7xqoD7b6+tKMxtY7z0ACn6M8aqPqLB8umzCLENuNXlCfIuHWrMckgrmC87OdUMSHbDqO5g3
	x74EYKufzQnX4ngTtaON3fITVm5l3NgOSfSMz31pdgWwwaLFAbfobvQViQj0o+Vq5AVbe0PX8gwZ1
	F4BYUuWg2hNNdZz6jkxY0a0LsW+EGf2fYv6YrrGJRWL7vQkvdNEL47YtUY4Fks9Tq5E4E2NFAeyqd
	LlIk+A4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmueJ-0000000HIyu-2cYq;
	Tue, 25 Feb 2025 13:06:59 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuKB-0000000HFcC-15Mw
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 12:46:12 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740487566; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Kmp+aW4phAtAnXQshyMG1VGv9VxQ3kDl8jRvEdv2NUJz7PkLTy6xsztn8DyLvcN58tNaCtSVQnxP39h7zRt9MjTma+wZD0HXvB5Cul5sfxL+qqm5IWabtjJ2v9v4J5tulEMzxTaOurIIwDI3P/RGdfXTyqn6mEqaoAWTv1Kiz+o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740487566; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=A5TQD7QobQ3Dhbbj5VbcHbkmPAOZf39Q9xSHqjBs79I=; 
	b=cZAowJ0KPDYQ8WnBxNkujmaQ9mAmLjm/YJ4B65Rn8jQEkO2nvxtSHbUFz+pDS6GFhfyi5KPiwK0QB0UEOEW/3BVBOGMW2RVD2rlOpFpEOC303/4CvxSMdMifbzdPe7kMp5eG2KSGniA1/gifRVi4U2j56o5HBkOyGEP7OpEJfzs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.fricke@collabora.com;
	dmarc=pass header.from=<sebastian.fricke@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740487566;
	s=zohomail; d=collabora.com; i=sebastian.fricke@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=A5TQD7QobQ3Dhbbj5VbcHbkmPAOZf39Q9xSHqjBs79I=;
	b=cHtd0TlZ9uwKJuZBaiquiOgaD7ugIirgpBCMdEsQudHqb70lMvRppKHPL+CZ/2vw
	ZZkMKKoQHc7wmSpHmGhppNDRcjLToqdiJ606yf+IzRj/wn/fSYo/6RDpaCrERuAg308
	z2nD37oahp2gu8SmyW9zPbq5CQh4qKSJ2PymxXn8=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1740487564371275.2248105795393; Tue, 25 Feb 2025 04:46:04 -0800 (PST)
Date: Tue, 25 Feb 2025 13:46:04 +0100
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: "Sebastian Fricke" <sebastian.fricke@collabora.com>
Cc: "Mauro Carvalho Chehab" <mchehab@kernel.org>,
	"Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
	"Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
	"Hans Verkuil" <hverkuil@xs4all.nl>,
	"Boris Brezillon" <boris.brezillon@collabora.com>,
	"linux-media" <linux-media@vger.kernel.org>,
	"linux-kernel" <linux-kernel@vger.kernel.org>,
	"linux-rockchip" <linux-rockchip@lists.infradead.org>,
	"linux-staging" <linux-staging@lists.linux.dev>,
	"Mauro Carvalho Chehab" <mchehab+huawei@kernel.org>,
	"Alex Bee" <knaerzche@gmail.com>,
	"Nicolas Dufresne" <nicolas.dufresne@collabora.com>,
	"Benjamin Gaignard" <benjamin.gaignard@collabora.com>,
	"Detlev Casanova" <detlev.casanova@collabora.com>,
	"Dan Carpenter" <dan.carpenter@linaro.org>,
	"Jonas Karlman" <jonas@kwiboo.se>
Message-ID: <1953d249c3c.d1d6678f34821.5333341344528638254@collabora.com>
In-Reply-To: <20250225124008.195405-1-sebastian.fricke@collabora.com>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com> <20250225124008.195405-1-sebastian.fricke@collabora.com>
Subject: Re: [PATCH] fixup! media: v4l2-common: Add helpers to calculate
 bytesperline and sizeimage
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_044611_368488_32FA775F 
X-CRM114-Status: GOOD (  17.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey,

sorry about missing this in the patch series, if you don't like the fixup path, then I can send a new patch series as well.
I just thought the change was minor enough and addressed the final comments.

Regards,
Sebastian

 ---- On Tue, 25 Feb 2025 13:40:08 +0100  Sebastian Fricke <sebastian.fricke@collabora.com> wrote --- 
 > ---
 >  drivers/media/v4l2-core/v4l2-common.c | 2 +-
 >  1 file changed, 1 insertion(+), 1 deletion(-)
 > 
 > diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
 > index 07a999f75755..aa86b8c6aa75 100644
 > --- a/drivers/media/v4l2-core/v4l2-common.c
 > +++ b/drivers/media/v4l2-core/v4l2-common.c
 > @@ -360,7 +360,7 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
 >  }
 >  
 >  static inline unsigned int v4l2_format_plane_stride(const struct v4l2_format_info *info, int plane,
 > -                           unsigned int width)
 > +                            unsigned int width)
 >  {
 >      unsigned int hdiv = plane ? info->hdiv : 1;
 >      unsigned int aligned_width =
 > -- 
 > 2.25.1
 > 
 > 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
