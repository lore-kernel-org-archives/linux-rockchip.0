Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3D8FC25B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 22:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ow3z66kQ6loNqKHZknSu1XouG9xy7pRMryJBfexHNt4=; b=ti9BBhCaa4XTOG
	Xu6uqV6jZEH6Rlr01q4VBdklmuiI+rv9jQEigny/nH6JDzjBeSr8Os3t/P0ncNzpXcykPmHfYiYx2
	EL+G/PU5yTb4o+BBCXKNfYIa7QTJKu8Lih+n7uROp+i6KQxNzoHkkTUQ/3+onMuwJiyeaQDLMTPXu
	YWlQlW5g7oW1wQlTAghOVheobSNWCoXPX23Wx2pUr+knZBl1NXs2GBFbWtBWutjoqZftRKaQdfC0E
	4jIIDG6Vn8f80E8r9S/kUIR/06fqID8grscGf26t0jiG8ygOhDwMHeHBexqZ1TspdmyNrc5kxqNHB
	u8NgKIiop1OizeOr087g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBjCV-0000000GXBs-45Yx;
	Mon, 27 May 2024 22:52:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBjCS-0000000GXBM-2zIe;
	Mon, 27 May 2024 22:52:18 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBjC4-0005YB-Ez; Tue, 28 May 2024 00:51:52 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Val Packett <val@packett.cool>
Cc: stable@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/rockchip: vop: clear DMA stop bit upon vblank on
 RK3066
Date: Tue, 28 May 2024 00:51:51 +0200
Message-ID: <2972856.VdNmn5OnKV@diego>
In-Reply-To: <BF06ES.TD22854ZPLB92@packett.cool>
References: <2024051930-canteen-produce-1ba7@gregkh> <1817371.3VsfAaAtOV@diego>
 <BF06ES.TD22854ZPLB92@packett.cool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_155216_779740_9BC8AF9D 
X-CRM114-Status: GOOD (  33.52  )
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

Hey,

Am Dienstag, 28. Mai 2024, 00:13:59 CEST schrieb Val Packett:
> On Mon, May 27 2024 at 22:43:18 +02:00:00, Heiko St=FCbner =

> <heiko@sntech.de> wrote:
> > Am Montag, 27. Mai 2024, 09:16:33 CEST schrieb Val Packett:
> >>  On the RK3066, there is a bit that must be cleared, otherwise
> >>  the picture does not show up
> >> on the display (at least for RGB).
> >> =

> >>  Fixes: f4a6de8 ("drm: rockchip: vop: add rk3066 vop definitions")
> >>  Cc: stable@vger.kernel.org
> >>  Signed-off-by: Val Packett <val@packett.cool>
> >>  ---
> >>  v2: doing this on vblank makes more sense; added fixes tag
> > =

> > can you give a rationale for this please?
> > =

> > I.e. does this dma-stop bit need to be set on each vblank that happens
> > to push this frame to the display somehow?
> =

> =

> The only things I'm 100% sure about:
> =

> - that bit is called dma_stop in the Android kernel's header;
> - without ever setting that bit to 1, it was getting set to 1 by the =

> chip itself, as logging the register on flush was showing a 1 in that =

> position (it was the only set bit - I guess others aren't readable =

> after cfg_done?);
> - without clearing it "between" frames, the whole screen is always =

> filled with noise, the picture is not visible.
> =

> The rest is at least a bit (ha) speculative:
> =

> As I understand from what the name implies, the hardware sets it to =

> indicate that it has scanned out the frame and is waiting for =

> acknowledgment (clearing) to be able to scan out the next frame. I =

> guess it's a redundant synchronization mechanism that was removed in =

> later iterations of the VOP hardware block.
> =

> I've been trying to see if moving where I clear the bit affects the =

> sort-of-tearing-but-vertical glitches that sometimes happen, especially =

> early on after the system has just booted, but that seems to be =

> completely unrelated pixel clock craziness (the Android kernel runs the =

> screen at 66 fps, interestingly).
> =

> I'm fairly confident that both places are "correct". The reason I'm =

> more on the side of vblank now is that it made logical sense to me when =

> I thought about it more: acknowledging that the frame has been scanned =

> out is a reaction to the frame having been scanned out. It's a =

> consequence of *that* that the acknowledgment is required for the next =

> frame to be drawn.
> =

> Unless we can get the opinion of someone closely familiar with this =

> decade-old hardware, we only have this reasoning to go off of :)

Actually that reasoning was exactly what I was hoping for :-) .
And it actually also makes perfect sense.

I was somehow thinking this needs to be set only when starting output
and not as sort of an Ack.

Could you do a v3 with:
- the findings from above slightly condensed in the commit message
  It's really helpful when someone stumbles onto that commit 10 years
  from now and can get this really helpful explanation from the commit
  message.
- sending it as a _new_ thread
  Having v2 as reply to v1 patches confuses tooling that then can't
  distinguish what is actually part of this v2


Thanks a lot
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
