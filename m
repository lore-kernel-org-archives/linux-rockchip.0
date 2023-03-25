Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DAAFC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 20:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/mEiDhx3yVJU6hMxRwLjypj58ncV7EiWTofnDm6bqQ=; b=zhInEQW1vG1HMX
	YPmbRFUo8nNEWrsmiocnYnLMsRhMTkcxTHT96e/tP7cr+XszNhQtJjG5nFXw5rb+zh77DT2C5vAxm
	tOlAgaM8hk4WmzupmWmI+6xdJTQxwlN2h6YZTo3RJujaQFuUfmtnCIEN4CVXv+X94YUzjRP/wxB5X
	PiBaGkkKvE9U7AY0Rjb3NxCkYfPbntp2kb8JmitP5FS+UUCGgPclMJsfd74A4n32YTV4cMi+tlsZU
	v6GtPaNIdZuLt0cXkAzXEZxgnwJrv6NMJRwVbCMC2blOzWBZkNGl88bC33PoAQy/SfmpSAyg65MpY
	gSuGCImAJEqpj6z0d5Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgA41-007HiU-1D;
	Sat, 25 Mar 2023 20:00:33 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgA3x-007HhN-14;
	Sat, 25 Mar 2023 20:00:30 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6DECB89F;
	Sat, 25 Mar 2023 21:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1679774426;
	bh=kViOzdjEgaW2tSk5jaBnv+4F4JR/5Lb7E3XGv99PQUc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vOJFUlz2TvUh0UcyixqmEaM54EnjQhP9Sgs88rh+XpGxQsSR41CZy4tBhSyZl8vw/
	 ioXGhUcBliwEkvKNmu1c7YGugis8hsuzcA3/lRWLy4fSMAq38AivJaDUSUvEaVGYh7
	 4ZhYtysbkcKidnMfInWdlii8QQHJGchtyuW+Th8M=
Date: Sat, 25 Mar 2023 22:00:33 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] media: rkisp1: Miscellaneous improvements
Message-ID: <20230325200033.GG9876@pendragon.ideasonboard.com>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
 <20230221135730.zyfg3ainjg7btfzv@uno.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230221135730.zyfg3ainjg7btfzv@uno.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_130029_539901_313F0937 
X-CRM114-Status: GOOD (  20.32  )
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

Hi Jacopo,

On Tue, Feb 21, 2023 at 02:57:30PM +0100, Jacopo Mondi wrote:
> On Thu, Nov 17, 2022 at 05:42:14PM +0900, Paul Elder wrote:
> > This patch series adds small improvements to the rkisp1 driver:
> > - Add NV16M and NV61M output
> > - Implement ENUM_FRAMESIZES
> >
> > As well as a small code cleanup.
> >
> > These patches have been sent before individually, so really this is a
> > resend, which also bunches them together.
> >
> > Laurent Pinchart (1):
> >   media: rkisp1: Make local immutable array variables static const
> >
> > Paul Elder (2):
> >   media: rkisp1: Add NV16M and NV61M to output formats
> >   media: rkisp1: Implement ENUM_FRAMESIZES
> 
> Has this series fell into cracks ? Support for VIDIOC_ENUM_FRAMESIZES
> in particular is a relevant feature and seems not controversial at all...

An alternative version of the first patch has been merged already, and
I've just sent a pull request for the other two.

> >  .../platform/rockchip/rkisp1/rkisp1-capture.c | 64 +++++++++++++++++--
> >  1 file changed, 60 insertions(+), 4 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
