Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9821ACD98F6
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 06:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paIltiqDEciNOJmrBdZ3rHh8tN6/lvUpb9fX97oMnGo=; b=ag7mM0PnSnJAFB
	gJlM/PF4vcyXa/8xYKUD2tQ2jeT/claGYDY8O9r3xr9HCEjsZm/XvCNV4BZks6zvV7S0f0LryS1lO
	K9ikmtZ+uqXui/q1SbcB7pslMJwrkbsh23FcbarfSxP06skBut6ImH/P8v1sBuF+nZlRBQ9htkh/W
	PWXq0uhOPvB8iaXudWkGvJoKFXyO7gqKO/Vp8dRpvynpoYJfsSJK5ITBKd/CTxF6uULxPaFlhY7yC
	iOXMUFeqf82aR6pZwW5sg+WjcYSqXy7NQUqKgypZ94QiFwyun/om1EyS0oayXWcH1x5JxHj66kChR
	8+b2m6UZ4maeMkhe0ixg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waTBR-000000023uW-1lux;
	Fri, 19 Jun 2026 06:58:33 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waTBP-000000023tG-11su
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Jun 2026 06:58:32 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-c89ab9a9f6cso1052609a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2026 23:58:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781852310; cv=none;
        d=google.com; s=arc-20240605;
        b=Cvu7Uc0e3G61g0zHxuiEo5s2kc1vffYgjLWQ5VRJZP6bmj8X0krpt6HGlX4k3TXwfd
         KNZEACU8UGSo51jzvN3h85ETUsWnSh2AZ/L3diAtLp0L1OrSK88rcaaVFT2i4eVreKCk
         VTzNfWfzJQYPrWNeQVJxgJJ+dkXwXe3DuEolmeQzLZUfSsWgFwGueddj5gDczNi2W2gI
         N7Cb/QJo3mCgpo1Whdhn8MI9x9EEtmMULBkytYSE/73JmlRArwWEop/7FCKwg7WY44/Y
         tcVU9jWXHnkWP3R4wzRrTag/RNjEXYidRA94IyzT/Wtgkc5QW9VgzqGNyKZ2dMQGB7+d
         r1aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=omTwHM+FxqUGDTH6qWfHVXW2MQBW72PZp+8U6Hx+ykg=;
        fh=Ub5AXAFpjZMpiTOKCIURN/Sa0MRnVB9nZQEiISOkwYY=;
        b=GClgtBthuC8SRYqwySIyviGQJqLqlQfEW3fFROB8GqmbKR3vRHgdNOEWat0i0YDdUX
         UHYLWd7/ELXrX5GxZNFdy0MaugbJla+G6RbAI8nHjcCPCnwLiknEhbv+RFcXjvGpRp65
         bMGPMuXwL9pOGDrAOGCtlVl8sgKDPbICoX+IIR5k/ZQoI3HO6kWmd5CoACYTrSY1bMym
         tzAASmPApkrjl0Qc2t6hksEK31fsJXA+OHXsnlTsSwLJthHiU6QBdt0ExzRnVNXQfWaI
         Lm7fGPv2z03Uij0MK/IEUYmD99mjjVOeUvszM0xcreu8WXWE9f44m3h1IFa4GxmIfYiD
         /IPw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781852310; x=1782457110; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=omTwHM+FxqUGDTH6qWfHVXW2MQBW72PZp+8U6Hx+ykg=;
        b=AMdtOvQqU6Eh+nkmbWFtcz5Qe+xhfBiFOew/nXZ2OksV2d+mfiov98AZFw1JFRV/SR
         mkWgoZgXNrSa3OEJ1x2+AncKWwaucTT+lGRWs/4hVmLQgVWUgz3qYwtVRw3J+2cucvmW
         6I1B310ujQkb+yi3uwUgq6byjDEPexUTeDt9cKjRqMAYh2Y7+d/iB2oOATvkUUObSreZ
         haEd/Gwz4tOBhtjf8Nrd/4JiIoKvSbzRddiHjxFuMiE9cAS0OzgqHDv02jL5mMVTO+SQ
         rEo1spGkr2ew4BF5shfz9eLsV6v1KZubBdPC+26bBj4q0bXxOh41GizA86TGBWGM+EEI
         1z+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781852310; x=1782457110;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=omTwHM+FxqUGDTH6qWfHVXW2MQBW72PZp+8U6Hx+ykg=;
        b=lDrjkK/LnMCmO0+A8sh9UgCwT6EsVq/f9J5UGfjg6HLnmmlhuC7yLv9T80LgqO4Io9
         +CSajWulVnmbzhYfTj6+S8s/rEE1kjYe/MAR6EUbZA+Rja1fdbuC+vEafw0zWFwv4X5Q
         YTij0p5SO144UKujmw2tKnbp7ybqudUqGdJvQGkuOFXao0cpA74KD+U4TMMVDTOyF/HN
         NoyXYN39SLaVP2ylCuK5vITtZKaB/T9sN22qSj7MjTFQM8Xt/Ieoh45EFaIuD72zILvl
         uFx04w3w5je0DChdokfeWCsobcr64NkuSpbrTxbfwCrpaD9Pzcw1AOOCrfi1DxJ/5c9T
         Fekg==
X-Forwarded-Encrypted: i=1; AFNElJ//8cmQ6gg8Xp6U2CqBj4GXvpeco3IuRGO7zkWY0+VyXBVJRmnLynFbRwOBUpw4z0pzFrt1ZG71lSuzXhI+CQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqUDYwBJ0cPQkB5lj86C78H8dTWYie5iJB3BPzTXAsbof/sMrj
	hqtHziDchlDU/GxS9mXY5dcUIdoNiggKqs+4JwdqVN08CWHzpU7eoMWLx9y5cevtlYmhUKoKbv5
	3XHXX3Y88M05BoWLbK2NtEEbwmwE+lo8=
X-Gm-Gg: AfdE7ckhKT4Q5TTDXW+I+QPSBNK9LYgMLbTFsLbIL2A1gfPj/023q5riQETWthcUlQm
	oT0LoGNU2XQcVKkREHH8hv9uPzoJ/IrhTz9+c9GzIj7kmoLzTwjWHSiY3h9kfOS+NKZx8QGKPKr
	cxmKDZm7T4qm1egaHuiZxbZuzTBPd8yr5rQkkML/CtxBqg4Rm1i640PzhDbDGhm3NE3E6BYh2BA
	VgHIwppds3XRvOEHVg5eZ8dPhzoWbkP6EMz7WFkRJRzFa529Lv5ncZgP9Jeqazv3IJcUTX90AHb
	7mxWDEyCmigQL5qfKBzunF3UaAU=
X-Received: by 2002:a05:6a21:1493:b0:3b5:6b5a:4f29 with SMTP id
 adf61e73a8af0-3bb33c411fcmr2889534637.30.1781852309935; Thu, 18 Jun 2026
 23:58:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260604033554.96996-1-phucduc.bui@gmail.com> <mPIrpl-QRw6_Q9DZcTQ5xA@collabora.com>
 <CAABR9nGEHmy4YSqFSyh+gqXVwNgpaGOjqBeUZyHBmMibHwvMxA@mail.gmail.com> <D9b19fqJSQK5FO2BflNEKw@collabora.com>
In-Reply-To: <D9b19fqJSQK5FO2BflNEKw@collabora.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Fri, 19 Jun 2026 13:58:18 +0700
X-Gm-Features: AVVi8Cdm4erPWecisaOWEQ1-2N07q0qf6x9N5Gw3YmftzXkgKtw2pGyicktpxkc
Message-ID: <CAABR9nEJg2R9dkGOrn9aZ_b=J7qMU06UKv+HcwdLmzckBoGL3Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] ASoC: rockchip: Use guard() for spin locks
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_235831_296225_837699AA 
X-CRM114-Status: GOOD (  14.31  )
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

Hi Nicolas,

Thanks for the clarification.

> If you want to try again, do so in a way where you don't have to indent
> large parts of a function another level, it's possible and the diff
> will be something I can actually read. Remember that you can place a
> guard for the spinlock in the middle of a function, and it'll only be
> picked up then, which should reduce the need for the scoped_guards in
> this. To avoid having to manually do pm unwind (and therefore require
> that the spinlock is dropped somehow before function exit), use the
> runtime pm guard macros as well. That should simplify this immensely.
>
> Last but not least, please run things through checkpatch. Even at the
> default options, it'll warn about the indentation level. With --strict,
> it'll also tell you about the braces. Personally I just use whatever
> preset `b4 prep --check` uses, which usually is quite reasonable.
>

I do run checkpatch before submitting patches, but I wasn't aware of the
`--strict` option. I also didn't know that runtime PM could be handled
with guard helpers.

I agree that using runtime PM guards would make the code much cleaner
and avoid much of the extra indentation.

These are useful suggestions, and I'll keep them in mind for future
submissions.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
