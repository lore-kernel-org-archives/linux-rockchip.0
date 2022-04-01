Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56C3FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 03:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpOVcqd2xqgzgbmJBi0nU+OYe/9PMbyeE7agiMFF1pw=; b=mNpj15Txd9Wq9x
	ZnfCl6qUK+HOG6P6JXPy8KM2prqmTVPjbIGL+MrCclug76RSTfB0F6bPywu7jw0PbeBlvbwsLJWi3
	KymfM8lP13acklI1mhfyABsvo5qdeQvOWSi5babzwJV7YyMp7XT0hBx8v/EwMEbK5Np0d1pRzqvCx
	Ixsp4fy29lmN5RtIx0r6+mGQxM1cH0tiao9By7UmBjWsOpcGbPhz2WENnDPl/9WKjdie1NH4yaYgN
	cbNHqZznsIWW6JCQf7FrUaJRRJAcl9qlZLkVz+42SJaugir4do1HEjRyf3zgkv90ooV0amwxprFwa
	cUWsaacLgOFpxXyKAfoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na82Y-004OVq-0J; Fri, 01 Apr 2022 03:33:34 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na82U-004OUv-U2
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 03:33:32 +0000
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-2eafabbc80aso18860867b3.11
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Mar 2022 20:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q1ZlIMdqwaHcVxl5vxdhmKHFJeu6p9U+TnfY5JmQ5dM=;
 b=cCsLEiaIgCsxr9TWzXMTho+oGCR5boSOsvIae/bdzdTwg7lOuuOdjz3sFy2I6rxLQN
 8gCPt4vkHPMA3zN5dXdcS14XF0dMbM0/MUleoQHqW7DH5ST/f9RLqI1ieI4tu7otfMXD
 wlVW9+NT2AU/WoLZB9jxlgcmJ/BA1zJd+J104=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q1ZlIMdqwaHcVxl5vxdhmKHFJeu6p9U+TnfY5JmQ5dM=;
 b=Mp3n4UFdPXnft9Zrk7htY+LNkPk1T54bhdMqRVuPj+oFluKpGdhpXU5qZRrtuZppXb
 +HXAa9Ruq6U/oEkr4pvbXntkTj6cdiZRU1OiX/3SWxsOP6PTh1MjfXSlwOq6qlIPSvEl
 GSl0IIC9g/UtY6p6wq3yyjboE3smUZxffZOOPEUsiweyaxZ1GosN0K7dHv5UcAHDU3fV
 Fg8Eq5icxp2AQYibUlr9zIjBPvSlMeGGz7ImG7cvGTy8ZAxUeDhrCT5DKd/ectsnTxUu
 6wKBkJ+FNUnGZ6TW3NDGu/213rKbR5WybmyBLdHBsFUz3Gikv7gfVChiJW0RA9FQxW3t
 m0ZQ==
X-Gm-Message-State: AOAM531YVuLbS1hMapdZ0yl+uL4RmoRNebf3dg9SFT7pTTe/5KTkccix
 5U/S+ZpMum/SbVCWvGgq5EWUZLKu0B4yx8eRjV28BBz88v4=
X-Google-Smtp-Source: ABdhPJwgwC705No/2HiCCuHkqrpend2/Epyo4yRvnIvyPJ3Ajg9/yTBw5Ox0LS4mT6R08xeM54qpyiyIa+UXx3wCyTM=
X-Received: by 2002:a05:690c:398:b0:2e6:17c3:44d with SMTP id
 bh24-20020a05690c039800b002e617c3044dmr8410985ywb.286.1648784007571; Thu, 31
 Mar 2022 20:33:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220331091628.641915-1-wenst@chromium.org>
 <YkYMo3cU2lqeDBu1@eze-laptop>
In-Reply-To: <YkYMo3cU2lqeDBu1@eze-laptop>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 1 Apr 2022 11:33:16 +0800
Message-ID: <CAGXv+5HgK2Er5Ks8J-yj16kY-0q3vQyUJRJVcTQORQY4Rh=zzA@mail.gmail.com>
Subject: Re: [PATCH v4] media: hantro: Implement support for encoder commands
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_203331_064237_6FE80A13 
X-CRM114-Status: GOOD (  14.60  )
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

On Fri, Apr 1, 2022 at 4:18 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> On Thu, Mar 31, 2022 at 05:16:28PM +0800, Chen-Yu Tsai wrote:
> > The V4L2 stateful encoder uAPI specification requires that drivers
> > support the ENCODER_CMD ioctl to allow draining of buffers. This
> > however was not implemented, and causes issues for some userspace
> > applications.
> >
> > Implement support for the ENCODER_CMD ioctl using v4l2-mem2mem helpers.
> > This is entirely based on existing code found in the vicodec test
> > driver.
> >
> > Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
>
> I believe Nicolas tested the patch before the splitting,
> so this is probably Tested-by as well.

The code flow changed, so I believe a re-test is warranted.

ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
