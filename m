Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46B0EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 16:05:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 114C361A89
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 16:05:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 114C361A89
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=emersion.fr
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:From:To:Date:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpOLbk/1N2QxsNzoxwXxn4z4y+Sehm4w8ynmIrvKlYc=; b=jFZ2DSaURKufUR
	9OdUoNnFjvkL8h5qW9xZpJVDJJ/68z38E14b7cZzUpFx8XAY9Yo9KsBrzd9eUvr3w+s5qLg3fSkfv
	ZaLuHvE0BfbkGaN6k3satra//WyZfvMUaFA+sKbnsdrh6DMP6b50es1c4galdafU4t2zll7RCyPhB
	X7HnMp8SYkt4YjhoQmFzEeNr53uAq6OQIQil4bY8fPDigDHSYoQY4cGCTxPqvyBWRMqOK3jEoDvIM
	DjtCHVbLPH0m6dahKLzDI0qnikqaf3TDrw9yamt4IgFUXv1i5U5us5CG1vNoC9/Lz0N7JNg962NLx
	+KMSLxDILzOQcXl3dFNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo6O6-00Ax17-3k; Fri, 19 Nov 2021 16:05:18 +0000
Received: from mail-4323.proton.ch ([185.70.43.23])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo6O3-00Aww7-0n
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 16:05:16 +0000
Date: Fri, 19 Nov 2021 16:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1637337869;
 bh=QojxD/0YrTv2uaylvR47nM7Wd+++N7DJSh0Pn4+2mjY=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=k8XFjbLgPsp72FXpR19qilma7MsWiYt10a+YiC0yIFIAWB2BK7oE2NNBh7Jd9+ao4
 EulU3u+WZE7ashHIae7cHaufgfPpe6SjbW1AsBeTRAvCNE9AvpNO4C5cFQoOlQZ9G/
 iRnnQTSfqtJo7Gp9OP90Q8o0w4tLhMnSllvojTJBYmTib1mXZFZhgkrZytBlr0zUiz
 S1fQIl2QpBMNEHC6BqRzn1ynZuN3WJ+rSViGmiGu9Y/rMkEPNz9zqe4C76bEGYy2gT
 eDW3ny8mlUUJN8/XrCvl86L3UGUFK56NS4qTwEjbFw7Fn6fpg2Xk20Hxz1Ec3VRobm
 dqutuLHsdUGbg==
To: Daniel Vetter <daniel@ffwll.ch>
From: Simon Ser <contact@emersion.fr>
Cc: Pekka Paalanen <ppaalanen@gmail.com>, Rob Clark <robdclark@chromium.org>,
 Brian Norris <briannorris@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@linux.ie>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-input@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <98236dpcx39iOz8xAYrwGLfiLdwgUlljrbBgHL3wd8A0Wz4KzRk3PR8s_tb5Rxu4eScKI4483kB6Vhv-T64CJYOeQqwXlqo2c-64HvoS5cg=@emersion.fr>
In-Reply-To: <YZfIgd8s7uGXAD2X@phenom.ffwll.local>
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
 <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
 <20211119115419.505155b5@eldfell> <YZfIgd8s7uGXAD2X@phenom.ffwll.local>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_080515_247586_E3C511B5 
X-CRM114-Status: UNSURE (   7.32  )
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
Reply-To: Simon Ser <contact@emersion.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Friday, November 19th, 2021 at 16:53, Daniel Vetter <daniel@ffwll.ch> wrote:

> Random idea ... should we perhaps let userspace connect the boosting? I.e.
> we do a bunch of standardized boost targets (render clocks, display sr
> exit), and userspace can then connect it to whichever input device it
> wants to?

On IRC we discussed having user-space hand over a FD to the kernel. When the FD
becomes readable, the kernel triggers the boost.

This would let user-space use e.g. an input device, an eventfd, or an epoll FD
with any combination of these as the boost signal.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
