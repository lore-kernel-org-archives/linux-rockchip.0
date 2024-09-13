Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D55C7FA3748
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 12:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUD2GibbM3foZwSAmGtWrdAvvepsTnlJ3jou+8/+pfM=; b=Fxm4uCcQqqnjIy
	EKIYYuVxbQb8w1PTQVLMUx8e4OPkGgTHLB9iGWfoRgQ3QARkwTS9wFxCjSV+GD37cvPJIGR9H5yiF
	kY4TpgrxhnX44CLl+3kO6AJg/fVX4vGPcpNjSaDt+mHpvB0RV9zzVQgFFo/LjXO/yPA05PqovGsTL
	qe7veQP7pqk91bHjogQ6j8/s3mLLu4Uua/6EnDJfpz5rlVgjZnDytmW3PQint2N5GPjleiNmZGz41
	Pllb9a+S9ef2GLe99KYnOgz8s6bQqmmx9ACFIPvBWKf267gKjNdpPvQktl2trRnsbr6Lb32OXOxnZ
	nfW5wThVMQTf16Ibd8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp4yE-0000000FoYa-2IqW;
	Fri, 13 Sep 2024 12:00:14 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp4xn-0000000FoTs-3jx9
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 11:59:49 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e1cf1a4865aso724498276.2
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 04:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726228787; x=1726833587; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mOqSWoVVgxQJOQAhgQdENKJFx3Lm/FQXzowZmdyKWa0=;
        b=O3UWWx/Rubf+LWxA7o4LWGQ5Jjg8zaQRdsaUQQFGJTku1DWZw/ci9RILMenxAezKu+
         DtaWfIwAgZRpDnt8ilKJZ7BC6pRmRNGYwd4H7zDeQ5mSJPWd0imNSriUZSzP72Cnrj/n
         V6YyQuSblsYt/U+AuhEUkTxqFJgFu/P1fFQRzvLLYNIR2i93Hx9/FZZ/le4UQ/+97DPl
         FxclEKleyGugfm0wMEZ9rRF3UBOAruGSqNlWL8dETXN+B+QBiGV8V6qAdLSqbfvGed5j
         3Wc7vFKXHOj/u21OSnW+sx/zzXndoZpg4s7NeadqStSlnmLAjod42r7uJNrPBJbwwtgK
         OSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726228787; x=1726833587;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mOqSWoVVgxQJOQAhgQdENKJFx3Lm/FQXzowZmdyKWa0=;
        b=pMwlXHsrEKQQpiTGmJ2F0WNYAlUSP7gGR70rSlRvX1RhesrjQ/u8CpWHomEOaYgroI
         yIrz85FCnkx6yKgN1Bsycr4mn6rkFHvY3W+sjVFZlwZb9MiLt5lXdPGFQzor4YioZb+a
         /NVIgz1q1gsHcdw2uu2pG1aa6YNx6HMp5UypoDO72S0SKtMH97FJ8r9AZ0oegJlzozCo
         yXfRzJrWlLrcoR4YqfuC+e7NRc6FImGe8+pSRdOfKrL7J/c3cVajt9+LgsJYlhOwVjLO
         us0TgAoWqkR8TNKE4mEwuHTPkLklqhjZbDZxXtOSk/aNYq1JuL9B9aN+EE1tSTl8KTQY
         ch+w==
X-Forwarded-Encrypted: i=1; AJvYcCXw4KwcqDdTSJLhNKirH/SGWBoIlmqlb6dLXQXCfNo2TuPlFBqADwBVVMsR3x2V6rlvci7nofyLociB+1oTpQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzyA3KO2vF74C5iThzus8vcq7ssvwjEvPyYek9d0iibq4n9PMvQ
	v/kcuBw+XiHTwdfKOqm/IUj57v4FmuudGN1bXZ41TDwJigDWB+ROjGcircWdCIrnQzNbnXy9Bwf
	tFEj92xT7Grp41TOpHU/9fF0o2t2uhwB58lMPRA==
X-Google-Smtp-Source: AGHT+IHM1X3EHwXtm6QQqZ678gEGjQCRRGmBLUwhI1ITxw/fftN+ymx5qB1IfKiXnwbBzeeP79whlwcpu4SI+UgVRwo=
X-Received: by 2002:a05:6902:1581:b0:e16:6feb:e615 with SMTP id
 3f1490d57ef6-e1db019494bmr1895157276.48.1726228786700; Fri, 13 Sep 2024
 04:59:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
In-Reply-To: <20240910180530.47194-1-sebastian.reichel@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 13 Sep 2024 13:59:10 +0200
Message-ID: <CAPDyKFoMyGUagDdjdaBJXL_OEgewQjCeJcBBK+2PFk=vd+kjRg@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Fix RK3588 GPU domain
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_045947_952376_2A454F22 
X-CRM114-Status: GOOD (  26.38  )
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

On Tue, 10 Sept 2024 at 20:05, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> I got a report, that the Linux kernel crashes on Rock 5B when the panthor
> driver is loaded late after booting. The crash starts with the following
> shortened error print:
>
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'gpu', val=0
> rockchip-pm-domain fd8d8000.power-management:power-controller: failed to get ack on domain 'gpu', val=0xa9fff
> SError Interrupt on CPU4, code 0x00000000be000411 -- SError
>
> This series first does some cleanups in the Rockchip power domain
> driver and changes the driver, so that it no longer tries to continue
> when it fails to enable a domain. This gets rid of the SError interrupt
> and long backtraces. But the kernel still hangs when it fails to enable
> a power domain. I have not done further analysis to check if that can
> be avoided.
>
> Last but not least this provides a fix for the GPU power domain failing
> to get enabled - after some testing from my side it seems to require the
> GPU voltage supply to be enabled.
>
> I'm not really happy about the hack to get a regulator for a sub-node
> in the 5th patch, which I took over from the Mediatek driver. But to
> get things going and open a discussion around it I thought it would be
> best to send a first version as soon as possible.

That creates a circular dependency from the fw_devlink point of view.

I assume that isn't a problem and fw_devlink takes care of this, so
the  GPU power domain still can probe?

Other than this, I think this looks okay to me.

Kind regards
Uffe

>
> Greetings,
>
> -- Sebastian
> Sebastian Reichel (6):
>   pmdomain: rockchip: forward rockchip_do_pmu_set_power_domain errors
>   pmdomain: rockchip: cleanup mutex handling in rockchip_pd_power
>   pmdomain: rockchip: reduce indention in rockchip_pd_power
>   dt-bindings: power: rockchip: add regulator support
>   pmdomain: rockchip: add regulator support
>   arm64: dts: rockchip: Add GPU power domain regulator dependency for
>     RK3588
>
>  .../power/rockchip,power-controller.yaml      |   3 +
>  .../boot/dts/rockchip/rk3588-armsom-sige7.dts |   4 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   2 +-
>  .../boot/dts/rockchip/rk3588-coolpi-cm5.dtsi  |   4 +
>  .../rockchip/rk3588-friendlyelec-cm3588.dtsi  |   4 +
>  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   4 +
>  .../boot/dts/rockchip/rk3588-ok3588-c.dts     |   4 +
>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   |   4 +
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |   4 +
>  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi |   4 +
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   4 +
>  .../dts/rockchip/rk3588s-khadas-edge2.dts     |   4 +
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |   4 +
>  drivers/pmdomain/rockchip/pm-domains.c        | 130 +++++++++++++-----
>  14 files changed, 144 insertions(+), 35 deletions(-)
>
> --
> 2.45.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
