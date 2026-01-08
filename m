Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AB33D148AF
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 06:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rN+l+9jjGtLiVy0x3yL255FiKqPfdT4XliIy1Q1xorE=; b=WOsnfQ4mws1XSy
	X5XgcdvRlvPyTQsYRmBzTUq46reZ+Ciy9v0sWU0QtJ3VWw1+AHWknzZLSJg1AlFe5gj0N0OHcbLPT
	BB6PNCyheg96GHY421V/XKTcMTBnh72hDXz6XRdWrQqkr2nSGWBJKZbFwyaivwFYrS3XOzh7q5AYq
	85Cv5j1+vWda6D11EtOGoF27sH5Of8lqcuqfynGjR5TbaSSzncMHy++6M9fvXovLf39kiO2L+vyt7
	/KqF/ZgzSVL3a+efLkLvO7CGIhB2PRuh6uh7hY71L94jhPPPuiHWAbs1kV01RyXu3jZKrmtJZYhnh
	Kn45SOOo0WBPe749ZI4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjwN-0000000G2aJ-3FQu;
	Thu, 08 Jan 2026 06:56:15 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjwL-0000000G2Ys-02zY
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 06:56:14 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-64d30dc4ed7so5516075a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 22:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855371; x=1768460171; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kz+I3TlvkqdtvqoAnUtxiFGmqULr8gJgkdFek+BL8Ks=;
        b=Hr8CuR+HEjWXE37U2KJWAoBVUMivQmAppYqHSBBjQwDsYr7CV2Lc0v7YxX9Av1IqbW
         APUGGTATvckmsf9jMlidh/OtcK/ogMySMNyyfnmY9ZZ5oe0s2hj67/9BqA5K6fqP4Jwb
         FwSkC3k3Neo/Sm7ynXR4BYIEgOOtxT6RNUfyI16BMatX3+GW3POaJqEuA9BETKME81jB
         pxCTy0/hSRTlj9Kv0fmRn8FCn3tt+zmV5WowRmVXUVbdrVTSU7HPbQPeRHVVOt1GyMiZ
         ehYrlgsvRwlcDXA4vUyiEGwTI7TO2HgNcgZ/dvRGbz8QLNbJ948PUxD3vcEpSKcTNMIy
         R3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855371; x=1768460171;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kz+I3TlvkqdtvqoAnUtxiFGmqULr8gJgkdFek+BL8Ks=;
        b=U7Wcq8fmyzlCzWNv/BIbVI8gEuutdIfDELteS4/N5qA/T34WGvIhg2zVwnc3HZz+n6
         Q+ApntxrZXTTYQDx4u1fnzZY8MeOEfBJMhIHdkSgLmCuH6N/zwUlQs9b807ZF2zXD8HW
         mOTfRse+YIPJ65fG/YEAh9uUZLvvKuaaJHootGsO6nUJlLYoNVcjmXKXN5mPjQrwbrL5
         K5sfojzjG+op2xY+Kivpd5ZP1Lg5L2hA30T4zFp3XE8FkeYR05BhFq52ADoDJnnOh8yI
         Ns42AI7X/SjTSPN/Z0Mko7MDvw7RwtjPCjhyCsKDn1F7OKg1riWZdw3c2H/t8p/FYjky
         v92Q==
X-Forwarded-Encrypted: i=1; AJvYcCUeYMcpHbcFgT8CZdlCUcYvy//RX9NYq8BPz9Sbs8HZ64UvcH1ijcItYYumPMo1uDQZl8oeN63GAqx/nEqePA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgwQvBBm6NENK7wIPbeoz3hKl+OeHH1tlcyJQuwkj7XUwLKhIy
	9cAdv15McOSeBzLcpa09IN7khPdu7/gXDHkAe6sDNBE94vv4fDwAYfw2LHZldSeVV+HIY0SvaHu
	tcTnW8awWTNxUE2G1HIZsP96i1fv0M9w=
X-Gm-Gg: AY/fxX6Mc28ZCCwKaMpMWoNWww07zXvMuYYtPSvk/3TjCAEwlTQUEIs60Eslr8B8d/3
	IKEtjzKrjf/DIcJV8x04i4aFHgurn2Nhw1ipgtqyAmphaZp812Rgl6R4+HPAaufZY+1pjDxfd6V
	KWEvWXFDvWTB46tcuBtVTFRHWpkfxFvCqCA3/Upovf40fGYrQS9ZL4auCpohs/M6FNWS0IFgktx
	aFOdilocM+vFsM9KXX+0k4bCFKARJWqk4azf1gIHY3DFn+5tyo6mUcwP6AEtctx87tds1Hirl5h
	eA==
X-Google-Smtp-Source: AGHT+IF8dpj868EOsGJb+4D50v33yMK/G8PE2Tazbt1MvZq6b0GNtVU+VS/8Jx2HyWsCH96l8MkdkOx+6HRCMqq4N8E=
X-Received: by 2002:a05:6402:1475:b0:64b:6a7b:5996 with SMTP id
 4fb4d7f45d1cf-65097e8b70cmr4694594a12.30.1767855371139; Wed, 07 Jan 2026
 22:56:11 -0800 (PST)
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <20260103083232.9510-4-linux.amoon@gmail.com>
 <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org>
In-Reply-To: <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Jan 2026 12:25:52 +0530
X-Gm-Features: AQt7F2p8dx0bZz2eHy8PaUQEvJMZHRzQalglH2FIV--KXLcHz9v3RkQ98BQ5OF4
Message-ID: <CANAwSgSjCm+mXxdH5jgN==zfHSvFASxOy4dQkhhLs6hrXAtf-w@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] usb: typec: fusb302: Switch to threaded interrupt handler
To: Hans de Goede <hansg@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_225613_087448_432631DE 
X-CRM114-Status: GOOD (  32.13  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, Yongbo Zhang <giraffesnn123@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Hans De,

Thanks for your review comments.

On Sat, 3 Jan 2026 at 17:32, Hans de Goede <hansg@kernel.org> wrote:
>
> Hi,
>
> On 3-Jan-26 09:31, Anand Moon wrote:
> > The fusb302 driver triggers a "BUG: Invalid wait context" lockdep warning
> > under certain configurations (such as when CONFIG_PROVE_RAW_LOCK_NESTING
> > is enabled). This occurs because the interrupt handler, fusb302_irq_intn,
> > attempts to acquire a regular spinlock (&chip->irq_lock) while running
> > in hardirq context can lead to invalid wait context reports if the lock is
> > considered "sleepable" or has incompatible nesting levels with the
> > underlying interrupt controller's locks.
> >
> > lockdep warnings:
> >
> > [   38.935276] [      C0] =============================
> > [   38.935690] [      C0] [ BUG: Invalid wait context ]
> > [   38.936106] [      C0] 6.19.0-rc2-2-ARM64-GCC #2 Tainted: GT
> > [   38.936716] [      C0] -----------------------------
> > [   38.937129] [      C0] kworker/0:0/8 is trying to lock:
> > [   38.937566] [      C0] ffff000112c04190 (&chip->irq_lock){....}-{3:3}, at: fusb302_irq_intn+0x38/0x98 [fusb302]
> > [   38.938450] [      C0] other info that might help us debug this:
> > [   38.938953] [      C0] context-{2:2}
> > [   38.939247] [      C0] 2 locks held by kworker/0:0/8:
> > [   38.939670] [      C0]  #0: ffff000100025148 ((wq_completion)events_freezable){+.+.}-{0:0}, at: process_one_work+0x224/0x4b8
> > [   38.940645] [      C0]  #1: ffff8000800fbd90 ((work_completion)(&(&host->detect)->work)){+.+.}-{0:0}, at: process_one_work+0x24c/0x4b8
> > [   38.941691] [      C0] stack backtrace:
> > [   38.942010] [      C0] CPU: 0 UID: 0 PID: 8 Comm: kworker/0:0 Tainted: GT   6.19.0-rc2-2-ARM64-GCC #2 PREEMPT(full)  bd73c5afc1bd41f04ef9699c14f0381f835f4deb
> > [   38.942017] [      C0] Tainted: [T]=RANDSTRUCT
> > [   38.942019] [      C0] Hardware name: Radxa ROCK 5B (DT)
> > [   38.942022] [      C0] Workqueue: events_freezable mmc_rescan
> > [   38.942031] [      C0] Call trace:
> > [   38.942033] [      C0]  show_stack+0x24/0x40 (C)
> > [   38.942041] [      C0]  dump_stack_lvl+0x90/0xd8
> > [   38.942047] [      C0]  dump_stack+0x1c/0x3c
> > [   38.942051] [      C0]  __lock_acquire+0x5e8/0x9c8
> > [   38.942059] [      C0]  lock_acquire+0x134/0x280
> > [   38.942065] [      C0]  _raw_spin_lock_irqsave+0x80/0xb0
> > [   38.942072] [      C0]  fusb302_irq_intn+0x38/0x98 [fusb302 634bac905a09c450b54f88b96019accd2820228f]
> > [   38.942082] [      C0]  __handle_irq_event_percpu+0x138/0x3f0
> > [   38.942088] [      C0]  handle_irq_event+0x58/0xd8
> > [   38.942093] [      C0]  handle_level_irq+0x108/0x190
> > [   38.942099] [      C0]  handle_irq_desc+0x4c/0x78
> > [   38.942106] [      C0]  generic_handle_domain_irq+0x24/0x40
> > [   38.942113] [      C0]  rockchip_irq_demux+0x128/0x240
> > [   38.942120] [      C0]  handle_irq_desc+0x4c/0x78
> > [   38.942127] [      C0]  generic_handle_domain_irq+0x24/0x40
> > [   38.942133] [      C0]  __gic_handle_irq_from_irqson.isra.0+0x260/0x370
> > [   38.942141] [      C0]  gic_handle_irq+0x68/0xa0
> > [   38.942146] [      C0]  call_on_irq_stack+0x48/0x68
> > [   38.942152] [      C0]  do_interrupt_handler+0x74/0x98
> > [   38.942158] [      C0]  el1_interrupt+0x88/0xb0
> > [   38.942165] [      C0]  el1h_64_irq_handler+0x1c/0x30
> > [   38.942170] [      C0]  el1h_64_irq+0x84/0x88
> > [   38.942175] [      C0]  arch_counter_get_cntpct+0x4/0x20 (P)
> > [   38.942181] [      C0]  __const_udelay+0x30/0x48
> > [   38.942187] [      C0]  mci_send_cmd.constprop.0+0x84/0xc8
> > [   38.942194] [      C0]  dw_mci_setup_bus+0x60/0x210
> > [   38.942200] [      C0]  dw_mci_set_ios+0x1c8/0x260
> > [   38.942206] [      C0]  mmc_set_initial_state+0x110/0x140
> > [   38.942211] [      C0]  mmc_rescan_try_freq+0x154/0x198
> > [   38.942216] [      C0]  mmc_rescan+0x1cc/0x278
> > [   38.942221] [      C0]  process_one_work+0x284/0x4b8
> > [   38.942225] [      C0]  worker_thread+0x264/0x3a0
> > [   38.942230] [      C0]  kthread+0x11c/0x138
> > [   38.942236] [      C0]  ret_from_fork+0x10/0x20
> > [   38.969307] [     T11] rockchip-dw-pcie a41000000.pcie: PCI host bridge to bus 0004:40
> > [   38.969995] [     T11] pci_bus 0004:40: root bus resource [bus 40-4f]
> >
> > Following changes resolves the lockdep warnings and aligns the driver with best
> > practices for I2C-based interrupt handling.
> >
> > Cc: Hans de Goede <hansg@kernel.org>
> > Cc: Yongbo Zhang <giraffesnn123@gmail.com>
> > Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Fixes: 309b6341d557 ("usb: typec: fusb302: Revert incorrect threaded irq fix")
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>
> If you look closer at the code then you will see that
> fusb302_irq_intn() is effectively doing its own threaded
> interrupt handling this is done to be able to delay
> the threaded part till after the i2c-controller is
> resumed when a fusb302 irq wakes up the system.
>
> See commit 207338ec5a27 ("usb: typec: fusb302: Improve
> suspend/resume handling") for details.
>
> And if you look at the fusb302 git history then you'll
> seen an earlier change the switch the interrupt handler
> to a threaded IRQ which was reverted (mostly due to it
> also making other undesirable changes).
>
Yes, I have gone through the change logs
> This change is different though. This is actually quite
> similar to commit cee3dba7b741 ("mei: vsc: Fix "BUG: Invalid
> wait context" lockdep error"). Where I fixed more or less
> the same issue in the same way. So I guess this change also
> is ok.
Yes, ideally, all the CPU cores should handle the IRQ.

alarm@rockpi-5b:~$ cat  /proc/interrupts | grep fsc_interrupt_int_n
 59:         15          0          0          0          0          0
         0          0 rockchip_gpio_irq  12 Level
fsc_interrupt_int_n

>
> Still ideally we would solve this in another way then
> switching to a threaded IRQ handler.
I don't know but this could be related to
>
> As the commit message of the mei-vsc fix mentions
> the root cause of these errors is typically an interrupt
> chip driver which uses IRQF_NO_THREAD disabling the auto
> threading of all interrupt handlers in RT mode.
>
> So the first question here would be to see if that flag is
> used in the interrupt chip and if yes, is that flag really
> necessary ?

No, I did not find this IRQF_NO_THREAD flag being used by Rockchip SoC
i2c
[1] https://github.com/torvalds/linux/blob/master/drivers/i2c/busses/i2c-rk3x.c#L1310-L1325
gpio
[2] https://github.com/torvalds/linux/blob/master/drivers/gpio/gpio-rockchip.c#L520-L582
pinctrl
[3] https://github.com/torvalds/linux/blob/master/drivers/pinctrl/pinctrl-rockchip.c
pinctrl power management IC
[4] https://github.com/torvalds/linux/blob/master/drivers/pinctrl/pinctrl-rk805.c
>
> Regards,
>
> Hans
Thnaks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
