Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EFB5C5B56A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 12:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+EYhXzp07Yy1n3iL71VaAUzT75smQ45ApEYitYz+Iw=; b=osbE+uMdN/QBzR
	xAzVwG9P3RSQHdlU/64wUnSvw62S1aJnRSk22SGozlGpJtJbDY+8MQueYZuGRX+rjf4cr3palT5Fz
	dYCAd4l6VSUa3zokL8kmTq0VkyKXyk66lvVYz/+wEAj3S23tLi+7kkp776GQOttYpyOzIVYGt/b5a
	BmVKv3/+bCKdOcEsPv6fKOPt99aKfPOAeD+wDZ/KrurlaDsX5zoaxzcco6C4hoctOZPXm7sKFVbPR
	q2VN8pa2Bdy68jasficbGRMlwbKLNsnUQ5AsCIsicPO+D7oLE1gnGfcMFiQmvrl1cHrv4+ZcyH783
	PR3W44pqs+KxbsxBJ0Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu8Na-0000000GDUu-1ByY;
	Wed, 12 Aug 2026 12:48:22 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu8NX-0000000GDU9-0P8k
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 12:48:20 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4995df974b3so481275e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Aug 2026 05:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786538897; x=1787143697; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=eTo9zPlaH3flPDssEgbhBqafK8pdC58gZr52aUiEgTc=;
        b=KcfYlOK0muPxBSxck2d4EuRmab2mo4avg6hEwnaDAD3M5cNR9opfD7P9dO/dj3C4YW
         S7tCsysDqh32dlYhKh7ixIu2ma9UVuTqd2S13PKw2uPT7IUlwUUMX8azdrJ4ntnR0rox
         Ns1Urnl7uv7xnOtI2TOQ5eDz+O8chtxJ7NBIQfWJbe3rwtN885LIYK4kBqxlYdk7th3j
         aEV3cXYxZRMmXwq2XGMtfs83NuSxLyI04M1xbqDUZAOYWcbNNcljI+ERhj2CQnKxFZR6
         C/d32BiEpWasl/dHtqVlFHTFN5Se32Jnawwj15TomAKNZejqbt63wAID6TZhnoEMfse9
         TkEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786538897; x=1787143697;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eTo9zPlaH3flPDssEgbhBqafK8pdC58gZr52aUiEgTc=;
        b=ID0JUAEWv4xbbIyhkamhk3Xn5XZyVxZzH6ekqwpcki7z0510CX9X7YgTceNZZ759Hq
         UFguEh17mXPfVAZbclxgzPdYfLItpf8did7cAS5qBcZBlLjcbB1HuZdLsuCK5+jWLg2N
         znbnpb7pDMC8TpjkdRBM3FfYlWRtZRXw4Jf0nQl1OTMQPkadwDgJoZ16n2B+gf+hMrlN
         wwAeAix+cbUyC3CiOdtzuGeHaBEpaxoVnhBQ/5bAXmBDenaIcTqhYf56oalm/Utghe6P
         jz5A9YbbBFYIUuP78fOafdfnNzHZnFiu91hqDxSIQncHE+eLVhiMpDp2L53TwgoB26TP
         Kbew==
X-Forwarded-Encrypted: i=1; AHgh+RqAF3YpmPBGwf8T00YplaXkBNDRvMdlEhDz2UiUId/u6zO8ZsDj3nRH4h/AGzZH96P3qPWWrWStkfj9Af3kKw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyQLsUwC3nUvYsbAhAz6cLmQfWeIfTrveeZPKVHU+vlD0FFK5f9
	TXNYMwZIA51zO85mjKnmVVdLSNe8qyfESkndQ7qTGL+JhrLciDAApb4O
X-Gm-Gg: AR+sD11csiJxwANh6/ebdZ0jozNc89KiQGKZn6JJDdQqPhflGxNaxqH6jnxDWqAFUzL
	HlgMJEGVW7n0W0Oy3E85kfYOt1biJ/QSaCFOutgl11B38mtnAw01PWqDFVDAWXMeD7YZR8eXR7t
	ZqU02ip7B4hJVHgLtyFCygztsQQ0w5Su6jefO5N2AmuqhREQ7sqgH/xhvRqIUso6DdyIe816m/l
	M5j70wWj8XMdMCiTEDv/MxgPUCCPaVmUjvOP/WH9WoMnOBkMuij+LDLcPBTcvuBbMkYsDG1fxyp
	RS3RQpbrDGO44AfofPX+HUr2obS+1Iw0JrI40SgCBIn/Iwga28X7fZAtPmt1rlAjK391NgBAPFj
	W/N7PZgxnEPu8Zv06nxs49k+5xsfnGuyjAIA7JuQUu6CniaEroNLzByOmjzJ0ca9wGV/3bnItgZ
	rsOXfNExkJy6folP1atj16VDlg93Juo7udY/6KEsYW9QHg0LaoQfaRl5pS6+xJPZ6flFkcwie/G
	/y2PP5ahDB0BB0DjLujVtUrElKCNSeARiLLaxSFKhPrl7nP/cV/SmaOoIeY+PBkztZj
X-Received: by 2002:a05:600c:4688:b0:498:8e6:d463 with SMTP id 5b1f17b1804b1-4997c0ddd6amr30132445e9.1.1786538897096;
        Wed, 12 Aug 2026 05:48:17 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B84A6001A34C2DD5D9E0419.dsl.pool.telekom.hu. [2001:4c4e:1b84:a600:1a34:c2dd:5d9e:419])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4997c98ce0bsm47612095e9.11.2026.08.12.05.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 05:48:16 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>,
	tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: Igor Paunovic <royalnet026@gmail.com>,
	alchark@flipper.net,
	chaoyi.chen@rock-chips.com,
	diederik@cknow-tech.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 01/10] accel/rocket: take the completion register writes under job_lock
Date: Wed, 12 Aug 2026 14:47:52 +0200
Message-ID: <20260812124755.6507-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260812094106.1391698-2-gahing@gahingwoo.com>
References: <20260812094106.1391698-1-gahing@gahingwoo.com> <20260812094106.1391698-2-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_054819_155866_41B85287 
X-CRM114-Status: GOOD (  16.49  )
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

Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588, three cores

I ran this on an Orange Pi 5 Plus across all three NPU cores, against a
base without the series. Both modules were built the same way and
neither carried any local DVFS work.

  base:  v7.2 rocket
         + Guangshuo Li's "clear rdev on device init failure"
         + my "request the core clocks by name" v2
         + my lifecycle v2 1/2 and 2/2
  test:  the same, plus 1/10, 7/10 and 8/10 from this series

Six phases per module: all three cores bound; core 2 unbound and
rebound; core 0 unbound and rebound; all three unbound and all three
rebound. One MobileNet V1 run per phase through the Teflon delegate.
The oracle is the sha256 of the tensors that both change between
different inputs and stay stable across repeats, so a stale output
buffer cannot pass as a recomputation.

                          base    this series
    three cores           89.3       90.0   inf/s
    core 2 unbound        87.6       88.8
    core 2 rebound        88.9       88.2
    core 0 unbound        75.3       75.0
    core 0 rebound        88.6       88.4
    all three cycled      88.7       88.3

All twelve runs produce identical oracle hashes and the same
classification. Interrupts per inference are 42.75 in both, and the
distribution matches phase for phase: with core 0 bound it takes 41.7
of them and core 1 takes 1.02; with core 0 unbound the same work moves
to core 1. Neither round logged anything beyond the probe messages.

That comes to 2596 inferences and 111048 completion interrupts through
rocket_job_handle_irq() with the two writes moved under job_lock, with
no difference in result from the same count without them.

On the change itself: I could not construct the race on the normal
path. The scheduler runs one job at a time and the fence is signalled
under the same lock after the writes, so a submit cannot overlap the
completion it follows.

Where I think it is reachable is the reset path. rocket_reset() calls
drm_sched_stop() and then says "Remaining interrupts have been
handled", but drm_sched_stop() stops the scheduler, not the threaded
IRQ handler. A handler already in flight can therefore run alongside
rocket_reset(), and after drm_sched_start() alongside a fresh job.
Making the write and the decision one step is the right shape for
that. It does not stop a late handler from writing the zero into a job
that is not the one whose interrupt it is handling, though - would a
synchronize_irq(core->irq) before the guard in rocket_reset() be worth
having as well?

One note on the base, since it matters to anyone repeating this. The
core-0 rebind step needs my lifecycle series underneath. Without it,
that rebind hands the returning core the index of a core that is still
live: the driver prints "core 2" for fdab0000.npu, inference starts
returning a different answer, and the teardown that follows dies in
destroy_workqueue() under drm_sched_fini() with a poisoned list
pointer, leaving an unkillable D state. None of that is your series
doing - it reproduces with 1/10, 7/10 and 8/10 absent - but it does
mean the three-core test cannot run to completion on a tree without it.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
