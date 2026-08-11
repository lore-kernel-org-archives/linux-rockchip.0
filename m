Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CAE9C5B56A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boErgnJsrWJOwtXMDOVMkVACxmWqgeMYL8liyVMrVOg=; b=LIiMkZjYgoDqYC
	7/NVrEVyv6Nzf2phm6CB0N33lzcb721iQGKlMSPINIodJJB/aVeWz/k/5GprHBlDlk6JC1uHwMqsh
	R7vI8RMUYVKl7s3t81MXmmyqdmiRJl1vmG9SWPpfOojOlBSAMvhTIPbJonjlcmibFv6rcux8yE8Bw
	1/2ZsjXuNzDB9HnFWJe7Z7/KjGYHaSmNlPhnb1VS0jCFG201o2gBJleBNohkzrsEAL13gIxJp4+GD
	P+dGJEhl/Nxh4FF8lmrgyW+K3cNIwUBK35b/e6MMv+2RlldsGEEbpKLLnumpMErmqq8kRINweiQ88
	51AxfrfeOsuxRzH+/Wzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wttxV-0000000Ez35-1zJ2;
	Tue, 11 Aug 2026 21:24:29 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wttxS-0000000Ez2B-2oTE
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 21:24:28 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-47f706438c3so27152f8f.3
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Aug 2026 14:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786483464; x=1787088264; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WvCeOL9JP58AfB/MRzhZ0CTB3RYi+jJQ1QyJ9ty4SVE=;
        b=oJQUBMhpvM99ZWXuHGto1Bp7ykVWmNX4Ze2O/EA9vp+ordAnUZ7NZkbz07Q3ttCo1N
         7J626cJRWnO8phPxODD48Fq6JewYYd2arMyo94ACyOyu6bbV45nhPg8JPcxT0mQg3x8s
         r56IpTaUbXIW5wUcz91F2kKKOEQIJ2A7OzI9yPKea5S1v+nc5T5dO628tyyuJ1XC9wdY
         UJd4nr+7KIQAc2R7taX2O7tz02DLkEtTt7kHXiKv8yUoKf0ZUy0TIbRiOxe8EDv2jWY/
         xTDLSjQTUrYUukSF1+e3m/h34ZSrfgK2PHJPilIiRCD8YtnscX7u52S067q8BV+IPJDM
         EfOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786483464; x=1787088264;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WvCeOL9JP58AfB/MRzhZ0CTB3RYi+jJQ1QyJ9ty4SVE=;
        b=crTghmiY9JS3Na/JMr+/B6b4Mfbl4fjaZS1mhHm5O3ZgE8TD+1M4RRoj62FurQ8Tsm
         cDbrm+Jw6ENXloJ/UPXzMxkvVZwO2rVvLLIUJOuRNoSz/cC+v35X+gr2mQE+qMEn0wtZ
         ck/aD19YXBfCG2tB0kzQyo6NoEjlyrzITEdEZSmp5RELVh2J9m7HKW2KRl73JI2Cib04
         14+wAEtfImCX6CnaqKQRWu6MY1POjO1bqQzRu8RtO6T/OyPRETRey5QCbu7H0R2wg/Dx
         B24ccoSpXuR3yMOsRn0WSWzuxaUZ4sAgLHGPKDQykLrKNyJs4cwts06h3mx6dEwiVw0X
         1v6A==
X-Forwarded-Encrypted: i=1; AHgh+Ro3mhPhfNUMB7r74M8qrH/sj2/SYPxJuiKDVbNdVySZ+L3cKUMluUqLKhUZSQNvetIhCDfOh6LGmIgji3njXA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQndI4ijQps6UdixQF6jyIoTchIhofTs7U7r+91iQDWPglQRij
	mZlvSQqzctLGmuZfU6Puqc/h4qvr2JmJGylLg0HKS2FxZi/+yD4vqtrlxFks1FiS
X-Gm-Gg: AR+sD115mJWFpEQ3MaB3omk14vAa9ojjbBtaQKPDZ/g6wgkYRu6Oh1bLYc2Wxub0kxn
	nBA0O9yHK64HpTgMTXVaN7N/c5bijq4y4AGM818vatM96shmiJZv0gFT8rqjos7t+Yl5q1+jvge
	suc7/PTQphjhbOaos0b2QDglfosIQFlzJ5GSfxugwLQ9UCCIiqe/NwLeOmcMkgzaEpBujLddo5I
	NKxBPcilkkqMkQ8UtHe06lGH3nPazNMgJcO3PuQ6CwYkY9JvpwkGNp5BXyrqlZfmDdzdu3xVdK4
	w0p/t4ypIQfv9fV6lOskgoE99L/htSzQOJ/FsW2WAy0BgJ+xd/3nH8lWzNtWd+2ixdBc/zLahGQ
	A1gspQN+oywt9I28eG1jd17cmVRQbSJHbfTqe3Y7K/mAUezB+aFhlyoyV/5gWQIZRX/Qf9TZQA+
	IOXB6g6VipGU7+lP3SaThBBE6uCMQcuqnISm9Am+8TqpfYW4spNeBljNOHGWImly/kh/oqcMF7X
	ifxbCx/kT/xeDazSoxHq7GPkwYR+0Uzuu/D/6D3yuwTSzI6yajXqBHw3EAWsutunexzdw==
X-Received: by 2002:a05:600c:1f82:b0:496:bbce:ef with SMTP id 5b1f17b1804b1-4997c15bc31mr801435e9.3.1786483464434;
        Tue, 11 Aug 2026 14:24:24 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B94ED005B06BF1B5A09FFE4.dsl.pool.telekom.hu. [2001:4c4e:1b94:ed00:5b06:bf1b:5a09:ffe4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4997aac6e85sm20674225e9.14.2026.08.11.14.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Aug 2026 14:24:23 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: drm/rockchip: vop2: ACLK_VOP pinned at 500 MHz starves DP 4K120 on RK3588
Date: Tue, 11 Aug 2026 23:23:50 +0200
Message-ID: <20260811212358.9980-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <c0a7521d-9c19-4197-802b-2b64a6ddea28@rock-chips.com>
References: <20260808104240.13776-1-royalnet026@gmail.com> <33bd4a94-11af-4cf3-ae44-b7f8944250f6@collabora.com> <c0a7521d-9c19-4197-802b-2b64a6ddea28@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_142427_407310_4D12E80B 
X-CRM114-Status: GOOD (  22.84  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chaoyi, Cristian,

Chaoyi, your reading fits my own measurements better than mine did.

The link in that test was running YCbCr 4:2:0, so dclk sat at 594 MHz
for a 3840x2160@120 mode - the interface rate was the cheap part. What
was not cheap was what the video port had to compose: a single
full-screen 3840x2160 ARGB plane at 120 Hz. So the case I reported is
one where the interface was modest and the composition was not, which
is the direction you are pointing in. I framed it as a DisplayPort
problem because DisplayPort was the only thing I changed; that was the
wrong axis.

I should say what this bears on directly, because it is not
hypothetical for me. I have a patch here that I have not sent, which
replaces the frl_enabled condition with a threshold on the pixel clock:

  static bool vop2_needs_aclk_boost(struct drm_crtc_state *crtc_state)
  {
      return vcstate->frl_enabled ||
             crtc_state->adjusted_mode.crtc_clock > VOP2_HIGH_BW_PIXCLK_KHZ;
  }

with VOP2_HIGH_BW_PIXCLK_KHZ at 1000000, so that any video port needing
the bandwidth can ask for the higher rate. It also guards the refcount
on the way, since atomic_disable() runs for ports that were never
enabled and the counter is unsigned. It is written against the
rockchip-devel branch, on top of the commit Cristian mentions, and I
was holding it back until I had a threshold I could defend.

Your reply says the quantity I keyed it on is the wrong one, and I
cannot argue against that from my own data. The measurement the
threshold came from is that at 500 MHz a 2560x1440@144 mode stays clean
while 3840x2160@120 does not. But in both cases the port was composing
a single full-screen plane at the mode's own resolution, so mode and
composition moved together and the comparison cannot separate them. If
the rule belongs in terms of what the port composes, then the pixel
clock is at best a proxy that happens to fit the two points I have.

I would rather learn that before sending the patch than after. Two
things I can run here:

  - your first case: hold 3840x2160@120 on DP, leave ACLK at 500 MHz,
    and scan out a 1080p plane instead of the full-screen one. If that
    comes up clean, the pixel clock is not the variable and the patch
    as written is keyed on the wrong thing.

  - your second case: a modest mode with several 4K ARGB planes
    composed at once. I can drive that over HDMI, without the USB-C
    adapter in the path, so it is a cleaner test than the first.

Is there a form of the condition you would consider correct? What your
description suggests to me is something derived from the composed pixel
rate summed over a video port's enabled planes, with max() across the
active ports rather than a refcount - but you know what the hardware
actually stalls on, and I am inferring it from an interrupt counter.

Cristian, understood on HDMI. If FRL and TMDS can serve the same mode
at different fixed rates, the mode cannot determine the rate on its own
and a bandwidth rule cannot be the whole story there. That answers what
I asked. Whatever shape this ends up taking should keep working for the
FRL case you already handle rather than replace it.

One thing worth carrying across from the dw-dp v11 thread, since not
everyone on this Cc list is on that one. Heiko reported that on his 4K
display he gets no output at all at the stock rate, and some output
after raising ACLK_VOP to 750 MHz, although that output is garbled:

  https://lore.kernel.org/all/20767137.geO5KgaWL5@diego/

So the starvation reproduces on hardware other than mine, which until
now I could not tell apart from a fault in my adapter. The garbling at
750 MHz is not something I see here - the picture was correct the
moment the write landed and stayed correct - so that looks like a
separate problem, and I have replied to him on that thread rather than
fold it into this one.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
