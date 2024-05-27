Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E76D4C25B79
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 22:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dti141VCFcUNCqVVVRnxowQtDkALspJAPDU0l4sGJ6U=; b=WSAI3z6qtwUj335+0xn3UBD7cN
	yAbVLggNfIfW1tfs/+pa1ns7bRK9C73Ez0ZmjDUHCqvJT4xXXxGhrkSeVKCvXoJKSbL0sGkDkQk9y
	DQdcSu+16NiYKgaEUDIXnW3qMJvaTZxHipVlEd1wGyLRmxMlhwNSzYZ2dbyK9L8dy1Wks8BjmT92B
	8GU5IrzuHW4iw84/kV6q3ZU4renwkSoOCx2ggb2qrHWQUhLv88fq93Yl/vuSc7dTsubf88K6jJPgd
	RM2kzMwS4zAr/XPmJ917KKqCHYqyNk1c/Y14n5tcvNXKNuWvvJDAeIhKq+h+LzzxioD0pM1R0BvHj
	q4Xg3wAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBibz-0000000GSWL-3tqe;
	Mon, 27 May 2024 22:14:35 +0000
Received: from out-181.mta0.migadu.com ([91.218.175.181])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBibu-0000000GSUM-2LEg
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 22:14:32 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1716848065;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YnZ/NUIKzPnirf4nzS8FsKuGvYh2MR991UL4fFHPwO0=;
	b=IGHQr9iszj6g7WZYaa2WxnCqObS9wjX+wmrILoqd0qwIfKD7ZV1Gy9wcIX0s3yRYOUw9g7
	spQvOraVGUghBymnz2UaYZZQa1Qh0T86Cd5SIYEb5lsQTuMQxsKPiZsAMz0PR8dsXNb6u4
	saUafCkEbA+yf0Ftk/AYo1iPgdym15rTqitQNvFfUXMANtcUR9UquykghQKNfFUuzJ0XqS
	tC0j1hpFWd1P82j3ZKHHH1kMDiR+26hAgjlFdTV4ATw4Yb6Ebpe/Iv2f3GX+gVIG5/AuPJ
	tK/B/po651uYGQ8hw3R0zls/uBmcy17wC6qxD8tZUf+sWgGMp9RTi/uL9BITpA==
X-Envelope-To: stable@vger.kernel.org
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
Date: Mon, 27 May 2024 19:13:59 -0300
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
Subject: Re: [PATCH v2 1/2] drm/rockchip: vop: clear DMA stop bit upon vblank
 on RK3066
To: Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: stable@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Andy Yan
	<andy.yan@rock-chips.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Message-Id: <BF06ES.TD22854ZPLB92@packett.cool>
In-Reply-To: <1817371.3VsfAaAtOV@diego>
References: <2024051930-canteen-produce-1ba7@gregkh>
	<20240527071736.21784-1-val@packett.cool> <1817371.3VsfAaAtOV@diego>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_151430_984469_810A868D 
X-CRM114-Status: GOOD (  16.57  )
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On Mon, May 27 2024 at 22:43:18 +02:00:00, Heiko St=FCbner =

<heiko@sntech.de> wrote:
> Hi Val,
> =

> Am Montag, 27. Mai 2024, 09:16:33 CEST schrieb Val Packett:
>>  On the RK3066, there is a bit that must be cleared, otherwise
>>  the picture does not show up
>> on the display (at least for RGB).
>> =

>>  Fixes: f4a6de8 ("drm: rockchip: vop: add rk3066 vop definitions")
>>  Cc: stable@vger.kernel.org
>>  Signed-off-by: Val Packett <val@packett.cool>
>>  ---
>>  v2: doing this on vblank makes more sense; added fixes tag
> =

> can you give a rationale for this please?
> =

> I.e. does this dma-stop bit need to be set on each vblank that happens
> to push this frame to the display somehow?


The only things I'm 100% sure about:

- that bit is called dma_stop in the Android kernel's header;
- without ever setting that bit to 1, it was getting set to 1 by the =

chip itself, as logging the register on flush was showing a 1 in that =

position (it was the only set bit - I guess others aren't readable =

after cfg_done?);
- without clearing it "between" frames, the whole screen is always =

filled with noise, the picture is not visible.

The rest is at least a bit (ha) speculative:

As I understand from what the name implies, the hardware sets it to =

indicate that it has scanned out the frame and is waiting for =

acknowledgment (clearing) to be able to scan out the next frame. I =

guess it's a redundant synchronization mechanism that was removed in =

later iterations of the VOP hardware block.

I've been trying to see if moving where I clear the bit affects the =

sort-of-tearing-but-vertical glitches that sometimes happen, especially =

early on after the system has just booted, but that seems to be =

completely unrelated pixel clock craziness (the Android kernel runs the =

screen at 66 fps, interestingly).

I'm fairly confident that both places are "correct". The reason I'm =

more on the side of vblank now is that it made logical sense to me when =

I thought about it more: acknowledging that the frame has been scanned =

out is a reaction to the frame having been scanned out. It's a =

consequence of *that* that the acknowledgment is required for the next =

frame to be drawn.

Unless we can get the opinion of someone closely familiar with this =

decade-old hardware, we only have this reasoning to go off of :)

~val
> =




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
