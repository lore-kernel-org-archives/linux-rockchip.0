Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3905DC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 13:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDnkdp9zPA2sYNZPSINxWC8rJZI+r41H/wtIxfxAd8M=; b=pRKSnpdJBUPcSE
	5CetIzX2K4mOZ3aLseXsQtsU0CT6hzLdyJqHS1iUqEppWYPQUyhV9kQacTtTpa1BSBquAF3NvIpRS
	uedd2RnCteHvPtkcP3dnlw3b13xHKPcjnN7a33Nwoz1XzY7bof6/rbrFRJ0cJP+dzDpSo6kMmtScw
	kyQo5vFKxHNhV/HAXxwdj8BwEanywl1aFf9C9D28yKAykBiKH2Ahbjn/rjYnZeuFRyaUMl+LK6bsW
	S5sv+TKi2xb/Gvc1lc95N4zpYT7+u8FRIQ4o2hZ1+DN3yg+0cchwjDFHE4PuPN5eFeeLREVRgehey
	W9CkuzH3ODRA3DpR81OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTkuT-005Y8E-G2; Mon, 14 Mar 2022 13:38:53 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTkuQ-005Y6q-Sr
 for linux-rockchip@lists.infradead.org; Mon, 14 Mar 2022 13:38:52 +0000
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-2e57826a10bso5380447b3.7
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Mar 2022 06:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xC+lJiodR+sWpzqzm91V+sLXEyA0MqIpnbN3l1bqwWU=;
 b=OexWQ2h693u4lZOOUvJTKtfnBVn43v7FMeeMk5qC6Frv256FwjHDfU7eMS1+8nFYmb
 i3A7P9HN5ayJTyk/xe33mK8GVleqWqW85fUg5rWNLWZ+xDhV/KwCvpDsQeuLdBQR8+Xo
 czjRV4c3d/fwjqVQ2XYLj8s+A9wfHndMUpwBA/k6f9n+l06tQSRE+rJchhDCTpb9lFqQ
 4znbk3UIOaTqHlj/AP5CvXd4dAKjjvxE6ZsXyF//gBc3BEmA+n79YsjU8RlWUca2oKok
 vlzRCH1tajRmDhoakSGDMBw8avYHd3MLbA6mlM0shYCsLfgTuTfM3MyfwgTVrcMLGkb1
 fIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xC+lJiodR+sWpzqzm91V+sLXEyA0MqIpnbN3l1bqwWU=;
 b=8GjDj9y1DUk9Z9YUaCcKmS2bEFKfrBuzi/MxrxpaYaQTNYr98RPR3I/xgtm+Jc+5I0
 HKDWJ7mDE2hz4rtdlF3k+K5eAwZWzGM/VVNWvUmuC4VWjz7Eme/bGzawhYik9u1UN7h5
 EmlJwpYVOamvvY2PJ6Ua4iCZCAE3+ED8qT82/60Ca8IZcHjfJe8HYtmGTQ5a7VlYRTNO
 hKELQlp7HWl5HthOwv53Pbd2Wrezex6Ji9R+axhaNDjlq88Qd1pYMRWagdLotIytU8iz
 zte2bM0PhrDaxYbN/2l8yCAY0lkV195fJk0j79ihY+154mffDx/OOrg3bQ27OdDdUK85
 Bj3A==
X-Gm-Message-State: AOAM533DZWygFiE2apC/ROtbfpp2duY17emvdwJL490TFtH3WGbLxpgP
 R2QrN2SrcLMkXYkcDHD1y8WtfAvXQZtYwWTzTlYQYQ==
X-Google-Smtp-Source: ABdhPJxR5tRZorPtoK9M8ocNQ9ikdDUGdQA0+NLPUHYqvLKOH7htQyeEib4lFHIQySUWWYAOFtzU3UegfAPAeVz5eBs=
X-Received: by 2002:a81:1182:0:b0:2dc:4e58:da41 with SMTP id
 124-20020a811182000000b002dc4e58da41mr18944386ywr.268.1647265126402; Mon, 14
 Mar 2022 06:38:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
 <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
 <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
 <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
 <f3af0286-fc64-f011-bc90-6797e26e3640@rock-chips.com>
 <30f195d6-e9d7-3da6-89fa-4a064a1f6bf9@rock-chips.com>
 <d98782df-43c8-475b-375d-ad6aff4fae44@rock-chips.com>
In-Reply-To: <d98782df-43c8-475b-375d-ad6aff4fae44@rock-chips.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 14 Mar 2022 13:38:35 +0000
Message-ID: <CAPj87rNXuJ6MQMb7dJHWZcqxaH9cyu1f2_NWidT_zsm44STmaw@mail.gmail.com>
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_063850_941799_7DDA86E2 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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

Hi Andy,

On Mon, 14 Mar 2022 at 11:02, Andy Yan <andy.yan@rock-chips.com> wrote:
>    Remember you said our downstream vop2 driver is very slow on weston.
>
> Would you please share the case you run ? or how can i test frame rate
> on weston?

We were able to observe this by just using either waylandsink (using
dmabuf from the V4L2 rkvdec/rkvpu drivers), or even weston-simple-egl.
I have not been able to do a full review of Sascha's submission, but
from what I've seen of it, it should have fixed those issues. (I don't
have RK3568 hardware to hand anymore.)

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
