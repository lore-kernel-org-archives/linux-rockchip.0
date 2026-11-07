Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB60606A33D
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZjDQEaR6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=flQax6z3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2OFj7juBNoybc6yQqw/BvmQUscTZWyvqx4GHpS4EL3k=; b=ZjDQEaR67yBT1+NohPaZEZRk7b
	xh1P5vDJhi6FaLh3Q99iNUGDeJOrKiMwkAbOvuqgZt+S2F+T+Bie4j0g9Vb49DTtTSn2zV+Zc39Fp
	B2OtF2JQP3Lr5KWok2Uyp2vkHJSoED4kh67rGs4kNx0iHb48REvNziG5V8mXSd37dZSf+nX0GgAtq
	zJNsLGRs9K53AfLmMMLmkH8aiVcdjEHqkZN2qmjxFBfSDgaEaLsHuyApRJktULM+6ldV0C+qCxa/d
	FOd/byRQG3zR50ZEbUiLIsjOCi0hatIzGPueNRZJ4+YijDgzWj/2//cwcE998dPiHz7lqu7kOMbEO
	+CmdeNfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPdTF-0000000ESZ2-3tCN;
	Sat, 07 Nov 2026 10:16:25 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPdTB-0000000ESXt-1WgM
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Nov 2026 10:16:23 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-8b0dba37a7fso12879387b3.0
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Nov 2026 02:16:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794046580; cv=none;
        d=google.com; s=arc-20260327;
        b=HHrax0YVjW7nqqS48JSXFo/j0uVnNb0X3Q1C8uhzd75mRR1ZWcJntHx7PSX19oZAti
         99utMmCQBW2TLzs5seUJFURgdNR8t3h/5E7wYeygDfYuSVSkdCYVpCT8tvg2a/DCwHgR
         DN4AgaBxf+E2nbSoSKo8ggEEFzTx/fNYIXemNTxHfy3wmd24Vu0orYIEl8MPrq7+8AQf
         wMSG+02FgSe6WsqDjNxb/ZVEdC56Rn9O0kWLxlYX82GzUmlPYlxa9ZiiJ4C14biFr63j
         Q9R9713ACHyDz99WaLeJ4vTT6umfRI0umRjrqd5IA8UiT7YjhZJJ7kCBE3sd8qaQLoP1
         9dpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Txc3E1PcXQlFNp7c7FiKp/5yHJpupSAoBNaMzkRlDf0=;
        fh=ecz2SPfy5MiqBOq267ZF564mUS6HNiKyJUD4VDsAi2g=;
        b=j9rH1p2LgVcl7P5dBIuljoOYpnOglxM6O79ZAAfAP8m1e4eqSKI0xHzD2ynyX2cSz/
         +lcigMCYmeV048QmXqQwL7IY59iJQAGQN18aDK2Z0oPlpfaOlGlx5V8bbDVlipvLCIj9
         C8YFVZ6J33RupqWcvYDOcAgePgb6jJIvcLCyqcw0W82HHuk5IIKGGS6Ea2RWyh57Nt7h
         j/MU2sfppROK6Z2amWzt442G4cAZbLMmYuoSuxzsYzFpXKjJop8qAOLZgnXoatUUdq6V
         5LHNYX/Jf+VN8RZs0JcyHgadOuJjnDAAT/kA+bImsbVXe50tqJ2iZpJ3nPus0+r5C8gV
         feEw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794046580; x=1794651380; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Txc3E1PcXQlFNp7c7FiKp/5yHJpupSAoBNaMzkRlDf0=;
        b=flQax6z3TDX1JgQ2/8B708xhMwvqMWYAawUOR1gj01LJGZG0xdsWBK7eaETrgAKwuu
         VALY3GBi4iofBUV/iblXGFaSFB06iUbEPiOzpA0GrNpCj2A1Cc0O/ATHGT5n9qbEXCWl
         bdoUVdan+8EfJGvOpDocSxXrpQ0AswMthw81S2fKtyOApZJVM4PLZeV5E4Vu/6j06OfB
         n+L6DkGCqn3RtewyIaYJTdPgJah4CRaQo6MLZFJR0GFKSUb+fv6lLtDVo7y3xtTEIzib
         1NXjuA8YgKTODGurBqy6ZKIWN+GnTn7qsxFICkpAnptSWY9pGgHIbg9bP6crtHBL9409
         CEJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794046580; x=1794651380;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Txc3E1PcXQlFNp7c7FiKp/5yHJpupSAoBNaMzkRlDf0=;
        b=ae1DspGgHLUoH9V5ORAlpTphmmh6njkDYgHD5apZ4yjVkH6a0dnN+HBMLKFdyV6qlM
         Hj3eg37XdRZOnSIVwLfmF/SSmiUEmdG+53KyNp6cwIlb/lM3Qb12Il75nHIjUSJL3FgP
         9j4LWOsgmxrgoPxzbYpmORt2nBODTVNgyY00r0WcxprQsAzu9y0jes3I2PnLY/QLzIZV
         3G6bG57CVarF3uxFOtzBa4x2Q1Ynt9AUsY2u1plac3zVvXrbyRErApPEeMLu+qRzJMXL
         CG4L8kfSCS1OcHRqB+o0b607UX4G1n5ZuHLBCw5ScX+sbVfyMAPPtvwxkd76FeH68BU6
         c8Vg==
X-Forwarded-Encrypted: i=1; AL+hErFxnUH4F0sou6izTQMDR2BsUE3k6mkL5Vdk32vHe+0eFm4MyVEqGvI8OBGKg1wyw6MXvpn4NDnPJ0oGChM/PQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+TPtSmv6i1sOM2E3i/DsQEkqGck3g+UEcruPKMwYWQ7Sg4JOW1
	OjUwOeu5mmI8eZ3kXnxrJGoXCbJH3D40EK95qkG0ldaP1nxQqKI9UCSc52y06trFbwTv+MTtDVx
	DOxo0pWOlQZIEr476i8aRxZNndGrZXII=
X-Gm-Gg: AYBFou0JLORbytra8yHcsO4YspduBM2/qPbJPpwArjR/EQPLk8NLLeS5fohjl1+disR
	V1PhmkhHTMUdV1DGZgMzIlWVl2GZOKF5CGCbGfn+J9MGmhdjOVLFbJKRiyE6EPLa+HWK2bJ4xI+
	qBkpSpghQljK3HNnoNbTPp8AnFLm671nKTiwsjdzhK1CiLPQoQLND/RU8whBi0v4o7irBxW/84E
	8zj6geK/bPT5d3YK16hvYodVnx3bTGXUr10o7XentnGiUEV0vSVnL7A0JesZgTN6SKopKO5s2zi
	TjZJucmUcd/iAJ9GnJDoi1wZEv94dfY6WLUeBrl/WTNhzdcOugbQjV1BJ4fwnpXZQ9InjWykQzs
	/K2QE21yIpeZSTjkzdwl7GtLReJjqeu+qbZ00zYnHgwfs+T/iA4hEg95KnUk=
X-Received: by 2002:a05:690c:289:b0:8b0:a252:77c6 with SMTP id
 00721157ae682-8b3418dfee1mr22332297b3.19.1794046579785; Sat, 07 Nov 2026
 02:16:19 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261106-hantro-remove-v1-1-d0a4678886d7@gmail.com> <0597b71f39fd945d531d3e996d982d5d3a3b9a28.camel@collabora.com>
In-Reply-To: <0597b71f39fd945d531d3e996d982d5d3a3b9a28.camel@collabora.com>
From: Sergei Khomenkov <shomenkow@gmail.com>
Date: Sat, 7 Nov 2026 12:16:08 +0200
X-Gm-Features: AclHuK8U4hp329_sClLRJdwqt0M9udYoGIyX3Gq2TqxXtvVHZa2zNAR132StXO0
Message-ID: <CADxDoMSrwDQfFD-VejUvh3shpo6BKjFWMzXUtsoK=t7=AhPATg@mail.gmail.com>
Subject: Re: [PATCH] media: verisilicon: suspend the device before
 unregistering it on remove
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil+cisco@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Frank Li <Frank.Li@nxp.com>, 
	Tharit Tangkijwanichakul <tharitt97@gmail.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_021621_413744_1001F9E6 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Nicolas,

> To be verified, but its not entirely logical here. My impression was that you
> want to unregister the dev entry sooner, so that it prevent newly open, and turn
> existing fh into a mode where all ioctl will fail.

That part stays first. media_device_unregister() and
hantro_remove_{dec,enc}_func() still run at the top of hantro_remove().
The patch only moves v4l2_device_unregister() and clk_bulk_unprepare()
below the runtime PM calls. v4l2_device_unregister() touches no node
here: it clears the driver data, which equals &vpu->v4l2_dev (the first
member of struct hantro_dev), and drops the device reference.

> Can you do some extra code inspection and report why you strictly need to modify
> the clock states before you unregister the device?

hantro_runtime_suspend() reads the driver data, and with power/control
at "auto" and the default 100 ms autosuspend delay remove() calls it.
The driver core resumes the device before remove(), and its put only
arms the autosuspend timer. So pm_runtime_dont_use_autosuspend()
suspends the device synchronously, the path in the 8e26d4c20ed2 trace.
With the current order the driver data is NULL by then: an unbind or
module unload oopses, after clk_bulk_unprepare() has warned
"Unpreparing enabled". (My reading of the code: with autosuspend_delay_ms
at 0 the device is already suspended when remove() runs; I did not test
that case.)

So two things are strict: runtime PM stopped before
v4l2_device_unregister(), and the clocks disabled before
clk_bulk_unprepare(). The new clk_bulk_disable() does not use the driver
data, so it only has to come before the unprepare.

I suspend through the PM core, not by hand, so that the runtime suspend,
with any genpd power-off, still runs before reset_control_assert(), as
8e26d4c20ed2 wants. I could only test on RK3026, whose VPU has no power
domain, resets or IOMMU. A run on RK3588 or i.MX8M would help.

> p.s. are you sure outside of test build, that PM can be disabled on any of the
> platform hantro driver runs ?

If you mean CONFIG_PM=n: not on Rockchip or i.MX8M, which select PM. On
sunxi, AT91 and STM32 PM is only a default (SUSPEND=y selects PM_SLEEP),
so it can be turned off, but then the driver never enables its clocks:
only hantro_runtime_resume() does. The IS_ENABLED(CONFIG_PM) test is for
such builds and COMPILE_TEST. There pm_runtime_status_suspended()
returns false, so unbind would disable clocks that were never enabled
and hit the "already disabled" WARN. I can drop it if you prefer.

The block itself is for runtime PM forbidden through sysfs
(power/control set to "on"), which root or a udev rule can do on any
platform. Then nothing suspends the device, and it is still active after
pm_runtime_disable(). I tested that case on the board. cedrus and
mali-c55 (2c9b9bcc2569) power off by hand in remove() the same way.

Thanks,
Sergei

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
