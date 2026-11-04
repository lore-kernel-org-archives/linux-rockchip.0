Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79979606A31B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 12:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EJgfMkV8;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=tomeuvizoso-net.20260707.gappssmtp.com header.i=@tomeuvizoso-net.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=odW2mi6m
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bRbkDefA+TATqnrl1B0eo8fk2NhVFQohHfov7HvSXZw=; b=EJgfMkV8mROBA28On9u6C3c5Gw
	W4pm4Ke+K1LU0jX42r+6QQBY+EYNMDIMH8BaxD/1kQDE91/UGt1KCuRv6h7npAAqA5f6Vq2rsr982
	IR3rX8Gc4VzmjTgUgp4iMixrWQL2mj9acAYvsy+VtgyXzsy+xgEPYQmqqUXCaaFFJAOoUDKC4vT/v
	pDtGU6nC0MI7SxGhJDEN7BVUFpYOhCscltCyvyN6wGzqqAQpBTxWAN672zeHBedj+SSJGVAfcwVO3
	ilXFoMpQCF+AMZ9uI99ARlYrCNNk2g6Qzmxh884Abqz0GZPeqISG53/0mGS0gxuSTGaKxAwHRg7RT
	RrZsYT0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOaXc-00000005Pgb-1THY;
	Wed, 04 Nov 2026 12:56:36 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOaXT-00000005Pfi-1lBI
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 12:56:31 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4a1b07c3c5fso5975445e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2026 04:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20260707.gappssmtp.com; s=20260707; t=1793796984; x=1794401784; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a3viuefWVHlkOcjcyLognlTI0g9S7LK7g5mw2hwAeX8=;
        b=odW2mi6mDCgC6bHiDrvGGkTMYMLytuW3BROMrw8LMBqN8rVXbYwvuch+xiXQ6yciW0
         NqxMhRm226ZkPblwcvhskPl7tiDkPwuZGlOB7r9SMvOku/cKGbiLcm9dFA6m7B+8MsiU
         g8LuJSx0p0axbRcWddyzoySKw/XiximaPspTxDVPSY9SEI5HqG2npktOM4Br7npt6M9W
         bUVfrcfKSpmIxxuMJg52Pk+wzvk+3QsRBKGTFg3oaxuJfX/73dzTBhXvxXv8jZwkHges
         EJ2ogTP2CI4rHCIYGJD0Eb998bZWDJShd8kartzoCimHxZqJQ2MCRD+/iptUpf53h9qS
         LBqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793796984; x=1794401784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a3viuefWVHlkOcjcyLognlTI0g9S7LK7g5mw2hwAeX8=;
        b=cWF2fVdIMCqhtv5E9zD7CoLyxAhQoBbJWRUcGOjIvpECfRuwjcKpJzrT2E3YwGMZ+O
         xRKSA6rBpD+KoKnXJOoJQhbWy8MX2Oea2lv52Y+Jvqkpa/Fn9IIMshMV2xqelIOZ2Bpv
         BIIPWYGy3eiDCmmmAD6hQRertBl56OurDUp0S83wqbwegD4ycwWPSevwRQMzCWMzxp5m
         ez18Gm7VOYm7R5r3346mGOUNwD2cxfMYSO1yt3Y5CvDGjdtn62ZxjWr0AtfK7/sTud2m
         s+2+lctZOFjpAj5qRDZq7pR3JDGyJCF93zDailWvfteLh0PbbE2Uqz7Rj7/IkejpVPfg
         1vtw==
X-Forwarded-Encrypted: i=1; AKwUvBx5leE/jFNGwdj5TfJ7JcZqQOilMOfwmmirqhcnbibE2rv22oX3UMY63ZVclCtevH0qxOpJ7HvnGC71gdLnEA==@lists.infradead.org
X-Gm-Message-State: APuU4Z++7hAMtdsDPtyGPF/wGVA+puiOgVSGX9MFB8XyFU+eqD2dIQ9r
	YwmO5WEzZJC4msDZukaVBGeSBUEXpKBlHWwTmLGy2XnPyIDIsu77PHx56Xjk7rZW8ZE=
X-Gm-Gg: AYBFou23JZ/L8GxHufTCQfQOQ7QPG8xHQ3KsqXU4Sejv2MzOvqwe5iJ8Dt3LGPdWyhI
	9NspAHnT6Duvm3cRUHG3EOWHPsiKy4Dv7Xe6822GcMcoyHn4b+a9KzKvw+PwpcIZpSSTJok8LKr
	PqMjRzTyt1OhmeujzHrb5bJnRvCOugzGWrwISJLIePWJaM85ZkkoxRyoAv0Io/Ovf1VbQvaIdDB
	5OTmcaIABRb7eauqBzc98QWlkLnDeUE3YW1Lt2mgSsVQhs0838RJk0/TcmySbYUT1YKcDLL1Rzk
	Kw1zOs7erwpQNwA/kXRw/EtqRjHeXpqmXVjk045DdD6o0CB5VeVlasrS+BqBe6YQ/px3LguqKOB
	n8Kcn9F5xlNpQSNBx5q8xKzp4YlxJuhMcChFLbPQgoGNXmM9qAUxxk4AtD+ogw1a201gW7orTCO
	2rhIld1gptWvg7jWdEgoW9tUOX5JtRjp2gE3FMZKCOIM/BSTFN5Yfmk4LPVLgDaVgMnwmwFWznA
	SKvpMd71rvU1AKikk39WUGOjrcfiM9AJdHiEpTQytzDJnvVl1e30nmUfXqRXGVGo5FkN5rcUIIO
	xs1YNJeyQu/xlxiyGEF5R7nYv5BzbCN5j/BjNerytWPeg2WjnI3bMU+D7Hjf/Bu1f93ZkL4acXh
	pDk5oSnHoZ6r1ojytCmmertkyUrVQCeF8wE+hPi/gdUzHSsqOPCRRXJyPCzjVDjXjubd5F3U=
X-Received: by 2002:a05:600c:1d28:b0:4a2:1612:637a with SMTP id 5b1f17b1804b1-4ac1793fb6bmr425311395e9.16.1793796983815;
        Wed, 04 Nov 2026 04:56:23 -0800 (PST)
Received: from alcachofa.home (cst-prg-36-190.cust.vodafone.cz. [46.135.36.190])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48feda20935sm3705844f8f.54.2026.11.04.04.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 04:56:23 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
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
	zhangqing@rock-chips.com,
	royalnet026@gmail.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	sidong.yang@furiosa.ai,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	jeff.hugo@oss.qualcomm.com,
	rfoss@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v15 03/15] accel/rocket: wait for a running IRQ handler before resetting a core
Date: Wed,  4 Nov 2026 13:55:18 +0100
Message-ID: <20261104125529.3229301-1-tomeu@tomeuvizoso.net>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20261101082307.151957-4-gahing@gahingwoo.com>
References: <20261101082307.151957-4-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_045629_414252_ED187F25 
X-CRM114-Status: GOOD (  37.53  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sun, Nov 01, 2026 at 09:22 PM, Jiaxing Hu <gahing@gahingwoo.com> wrote:
> drm_sched_stop() does not wait for a threaded handler that is already
> running. Call synchronize_irq() after it, outside job_lock, which the
> handler takes.
>
> Before the sync, mask the block's interrupt and clear its raw status, so
> that an active core cannot signal a completion after it. Do that under
> job_lock, since rocket_job_hw_submit() arms the same mask under that lock,
> and only when pm_runtime_get_if_active() returns a positive count: the
> reset holds no runtime PM reference, and with the domain down a register
> access takes an async SError.

The above I understand.

> Igor Paunovic's induced-reset runs on RK3588, including a two-task job that
> puts hw_submit() on the IRQ thread, found no fault; as he put it, "this
> does not show the race is closed".

This is completely out of context for a commit message. How is somebody who is
reading git log know who Igor is, and what his "induced-reset" is?

> Link: https://lore.kernel.org/all/20260819073530.6087-1-royalnet026@gmail.com/
> Link: https://lore.kernel.org/all/CAEWPSH5mxTbUkNouxm6yecMZYvDowquhvYvhaXQ8HoMtHD5U1g@mail.gmail.com/
> Link: https://lore.kernel.org/all/20260912113717.6819-1-royalnet026@gmail.com/
> Link: https://lore.kernel.org/all/20260916132824.13527-1-royalnet026@gmail.com/
> Link: https://lore.kernel.org/all/20260919103422.148834-1-royalnet026@gmail.com/
> Suggested-by: Igor Paunovic <royalnet026@gmail.com>
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
> Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588, three cores, induced reset, JOB_TIMEOUT_MS=2
> ---
>  drivers/accel/rocket/rocket_job.c | 71 +++++++++++++++++++++++++++++--
>  1 file changed, 68 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
> index 03e5f094f60b..5b2abf40b618 100644
> --- a/drivers/accel/rocket/rocket_job.c
> +++ b/drivers/accel/rocket/rocket_job.c
> @@ -401,9 +401,74 @@ rocket_reset(struct rocket_core *core, struct drm_sched_job *bad)
>  	drm_sched_stop(&core->sched, bad);
>  
>  	/*
> -	 * Remaining interrupts have been handled, but we might still have
> -	 * stuck jobs. Let's make sure the PM counters stay balanced by
> -	 * manually calling pm_runtime_put_noidle().
> +	 * Mask the block before waiting. hw_submit() arms INTERRUPT_MASK on
> +	 * every submit and only the hardirq clears it, so on an ordinary
> +	 * timeout it is still live and a completion can arrive after the sync
> +	 * returns. The next submit re-arms it, so nothing is lost here.
> +	 *
> +	 * Only when the device is already awake, though. This function holds no
> +	 * runtime PM reference of its own: the only one in the window belongs to
> +	 * in_flight_job, and the completion path may have put it and cleared the
> +	 * pointer before the timeout worker got here. drm_sched_stop() above can
> +	 * block for a long time, and it drops every pending job's credits, so
> +	 * rocket_job_is_idle() is true and nothing keeps the core resumed. On
> +	 * this hardware a register access with the domain down takes an async
> +	 * SError, so a reset must not be the thing that causes one.
> +	 *
> +	 * Only a positive answer will do. pm_runtime_get_if_active() tests
> +	 * power.disable_depth before power.runtime_status, so -EINVAL MASKS a
> +	 * suspended device rather than excluding one: pm_runtime_force_suspend(),
> +	 * which is this driver's own system suspend callback, disables runtime PM
> +	 * first and turns the clocks off second, and rocket_core_fini() suspends
> +	 * the core and disables before it cancels the timeout worker. Both leave
> +	 * the domain down with -EINVAL on offer.
> +	 *
> +	 * The cost is the other half of that ambiguity. A core that is still up
> +	 * with runtime PM disabled (pm_runtime_force_suspend() before its
> +	 * callback has run, or CONFIG_PM=n under COMPILE_TEST) is left unmasked,
> +	 * because writing to it would mean writing to the half that is down as
> +	 * well.
> +	 *
> +	 * Clear the raw status along with the mask, the way the completion path
> +	 * does. Masking alone leaves the DPU bit latched until
> +	 * rocket_core_reset(), and the hardirq decides on raw status alone, so a
> +	 * fault from the IOMMU that shares this line would wake the thread again
> +	 * and what the comment below asserts would stop being true.
> +	 *
> +	 * UNDER job_lock, because rocket_job_hw_submit() arms this same
> +	 * register and always runs under that lock. reset.pending is set here
> +	 * without the lock and read there with it, so a submit that has already
> +	 * passed its check can re-arm the mask after this clears it, and then
> +	 * the synchronize_irq() below fences a handler that is no longer the
> +	 * one that matters: the block is left running a task with its
> +	 * interrupt live. rocket_job_handle_irq() avoids the same race on
> +	 * OPERATION_ENABLE by making its completion writes under this lock.
> +	 *
> +	 * pm_runtime_get_if_active() does not invoke a callback -- it only
> +	 * takes a reference on an already-active device -- and
> +	 * pm_runtime_put_autosuspend() is asynchronous, so neither can re-enter
> +	 * this driver's runtime PM callbacks while the lock is held.
> +	 */

This is just absurd. The driver will quickly become unmaintainable if we merge
this kind of comments. 

Please remove all LLM-generated text (cover letter, commit messages, and code
comments) from the accel/rocket patches in this series, and replace it with
your own.  I don't mind if you write it first in your native language and use a
LLM to translate it to english, but I need for you to understand the code you
submit and write yourself any communication with humans.

If you don't understand anything in the code well enough to write the commit
messages, cover letter and comments, then I suggest you use the LLM to assist
you in acquiring the knowledge that you are missing.

Also, please read:

Documentation/process/coding-assistants.rst
Documentation/process/generated-content.rst

Thanks,

Tomeu


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
