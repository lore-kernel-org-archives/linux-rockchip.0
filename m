Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 315E1C5AD2B
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Aug 2026 10:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dRn7RGriHesogKfbS60Zhv2GgFBOnHnmwR/ekq1CG0Q=; b=MpxoxtTR9vmTuP
	F2hXI+o+yrpNyOg11Du1mxn4fW8KzVVAF72TrD+UoZiWjiJVWPHe1fkOu1X/VzEjPSYG9AGHMyo5f
	FS/Qj0uissaV+60fr5FlX6AmrU5twVj2r+/9bWJ9cKmGdwxBH2EPWJOgycL1J/nNY1WHyEKolnt0Z
	HDJMkmXUuvHh7DS9Hh2mm13/IdDEWvT5//guDcEEyrCqbwDLRGdxFJWM0bYJ2UNUGR1TpWr6BTipF
	TbcBeZUZv+gNgaAMjaL+CE9tN8JbZVCKaNG0CyyQkP8BOVlElxCjmUd6ZmPoQ43VZE/8Eq+6Thlej
	BZ4do1M7vWTOY5Y6BvfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wseW9-00000009HqB-2dz7;
	Sat, 08 Aug 2026 10:43:05 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wseW6-00000009HpB-3G31
	for linux-rockchip@lists.infradead.org;
	Sat, 08 Aug 2026 10:43:04 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4957799b92fso360605e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 08 Aug 2026 03:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786185781; x=1786790581; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2qu55O0ynnLqL5BTIsWmcyB62JZff9IWE/mdM9/Md6o=;
        b=Xtf6RFqlrD5vMMtTXmIrkviLcKbsUXYKIbLEclzaez/dcEiLBW59pVlwkIlX2Au5ft
         ln84WAcCiYSCcswSCzIS7xBnL8Wdj0urzFqvxZII6qRH3wLQj9eWXN2wF2UqzxidUaXn
         ZZoLlRh9zhyshsYdaQDmf64n5sYtzGCDUNNoW+14HvUy0w8qYgXBHLwQg432ZpdlGGu4
         5+Y6tRiaQ2aoua0X9pNL43oY7UWJetSh5Z8Yc/dMVEHjb3wAXcIXbap4EQIPXfxlOeXz
         tSlcpISD2qAUyfkP/OcEPM+ZkUlvn7nRyD2nse46QiV6teGW0poOWuMfXc4TghjYCVuK
         n7cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786185781; x=1786790581;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2qu55O0ynnLqL5BTIsWmcyB62JZff9IWE/mdM9/Md6o=;
        b=FW381i96uXr7XEBHf2PCuDWxXqK5t4XYjjQjCzNRCZT8AlnQ08VcTlcJEZibEL66C1
         b1AAcjGiUG3lOMn1H7FGwqLudbIdNsZpVK1nJMyc1uTIEcv8xCXCGoMF6ogb6Rv9pLbX
         ntwU7QwF7/+a6S/aJR8OdH1L6HfmTm/Tp/rOHj36pNAoqubPPAJzABtRPYMY0ye84eQT
         jGhWn3+I/193pnrmXi8CsMZsRVIe9wFyucvdkaRoi7inc4Ujox8Q+ktj1HU6uu6612Kd
         ZxehSqSOtdIFHztKi6htNZOUgcILIPGWp/KEeRdI1fxM763T8eKG+uaBZKD+/Vjm6ipL
         iowg==
X-Forwarded-Encrypted: i=1; AHgh+RrsAMYeIAUXx9FpDnpA8ndFf/mMeZVWkIdECzhO5TNcmC9Bw50n/hmtuEEgum9hTZ1Knc2SUwKBi/OO/rcg2A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbeIt/4UNSY3dlTO152WBRs+XT+vT+mfHhe2buhxeInvPTlsNJ
	+kdAIJDfFAhrQke5VUG/0bBELJLzV6qM+lLk8e+PZEsFR/1ye66T/Hb0Y+Vfuue6
X-Gm-Gg: AR+sD1342tX5AaQ81mmZL80FIOkECV/GVKxB31Rri5CvbRlMIspr5DIpGAnOCpGczN3
	SdnegwXAZdZhrCp4NBLxTOncuYMfAeQ640kVuEcf+Sk8ma/l9UtWdD+f3/ddP0E0EMaBMWAKsn0
	SyQI1iuSXnl1ziVRTq+ppB/bHB9ZpjtHkIZs1TFIZ+4PXIhRLXpQWVBWL5HBiy/ZQmOi/XS3JVV
	DRasmZ9qteNravPLcN2M0kboM1U5p4Ssqh96N7em6AqmcyEgUqWaTlttjct2s4R+HcxTKCp+7uY
	Y43y5NM9gbJpftC6JMLgB4SrySLXaQdcrLFdTZM8USR3o1gQEu+G9SMWSNnSkX5/GbNuMVpR3r3
	En6vy+pEYym41m8izOne/ckF0N0mXRtB1PMFzipyS+EhaoTEFwh5KbL9D9+I0yjm8v/M7NUm9Dc
	5iOEYl0evAQ3lsrxa+US9nmUXaIFB/qbvwvXfvVCW7txoL7heBAKOZE0Po9TmG+g3e2aUJMgmc4
	OmHwrsZWh+f4Ht7zNDTM2gq3Qq1ojdU1/iLf2i+nOSPmj5zbQmVJFu+sEPMD0+EkdwsfQ==
X-Received: by 2002:a05:600c:3b9e:b0:496:bbce:ef with SMTP id 5b1f17b1804b1-4994e7c3321mr217494125e9.3.1786185780722;
        Sat, 08 Aug 2026 03:43:00 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4800215078asm13324152f8f.12.2026.08.08.03.42.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 03:43:00 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: drm/rockchip: vop2: ACLK_VOP pinned at 500 MHz starves DP 4K120 on RK3588
Date: Sat,  8 Aug 2026 12:42:29 +0200
Message-ID: <20260808104240.13776-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_034302_839659_086418FA 
X-CRM114-Status: GOOD (  19.86  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

On RK3588 the VOP2 AXI clock is pinned to 500 MHz by device tree and
nothing in mainline ever raises it.  For DisplayPort at 3840x2160@120
that is not enough bandwidth, and the failure is not graceful: the
video port floods POST_BUF_EMPTY interrupts and the picture is
corrupted.

I mentioned this in passing when I sent a Tested-by for the dw-dp v11
series:
https://lore.kernel.org/all/20260808094138.7205-1-royalnet026@gmail.com/

The pin is explicit.  In arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
the cru node lists <&cru ACLK_VOP> in assigned-clocks with 500000000 in
the matching position of assigned-clock-rates.  It is a deliberate
assignment rather than a boot default, and it is identical in mainline
and in the Collabora rockchip-devel branch.

The rate request does propagate.  ACLK_VOP is registered as a gate with
flags 0 in clk-rk3588.c, but drivers/clk/rockchip/clk.c adds
CLK_SET_RATE_PARENT for every branch_gate, so a request on aclk_vop
travels up through aclk_vop_sub_src (a mux carrying the same flag) to
aclk_vop_root, which is a settable composite.

What I measured, on an Orange Pi 5 Plus driving a DP monitor over USB-C
Alt Mode at 3840x2160@120 (YCbCr 4:2:0, so dclk sits at 594 MHz), on
drm-misc-next of 2026-08-07 (dc2f9f7fed1a) plus the dw-dp v11 and usbdp
v13 series.  I built with CLOCK_ALLOW_WRITE_DEBUGFS and changed the
rate by writing aclk_vop_root's clk_rate in clock debugfs, one level
up, which has the same effect.  The mode was unchanged across all three
phases, so dclk stayed at 594 MHz and the AXI rate was the only thing
that moved:

  500 MHz:  vop2_isr reported ~594000 suppressed callbacks per 5 s,
            roughly 119k interrupts per second, all POST_BUF_EMPTY on
            the DP video port; picture unusable
  750 MHz:  no POST_BUF_EMPTY logged at all for 42 s, the whole phase;
            the picture became correct the moment the write landed
  500 MHz:  ~607000 suppressed callbacks per 5 s; broken again

Both transitions are immediate, and the timestamps line up with the
phases of my test script.

Everything I can drive up to 2560x1440@144 (about 586 MHz pixel clock)
stays clean at 500 MHz; 3840x2160@120 (1188 MHz) does not.  That
comparison comes from a mode sweep on my rockchip-devel based daily
kernel rather than from the run above, and my monitor offers nothing in
between, so I cannot bisect the threshold.

In mainline rockchip_drm_vop2.c there is no clk_set_rate() on the VOP
aclk at all; the only clk_set_rate() in the file is on vp->dclk.  To
reproduce: enable dp0 on an RK3588 board - it is disabled in the
mainline DTS, so this needs a board DT change - drive a DP monitor at
3840x2160@120, and watch dmesg or the vop interrupt count in
/proc/interrupts.

The only code I know of that raises the rate is a commit in the
Collabora rockchip-devel branch, "drm/rockchip: vop2: Scale ACLK rate
up for RK3588 FRL display modes" by Cristian Ciocaltea.  It defines a
750 MHz rate and calls clk_set_rate() from vop2_crtc_atomic_enable()
and _disable(), gated on vcstate->frl_enabled with a refcount over the
video ports.  I could not find it on lore, but I may well have missed
it.

If that is the intended shape of the fix, DisplayPort still would not
benefit: frl_enabled is set only by dw_hdmi_qp-rockchip.c, and neither
dw-dp.c nor dw_dp-rockchip.c mentions FRL at all, so the condition is
HDMI specific while the bandwidth problem is not.  It also explains
what I had been seeing since I enabled dp0 on this board last week:
4K120 over USB-C only worked while an HDMI output happened to be
running in FRL mode.

Raising the DT rate to 750 MHz unconditionally would be simpler, but it
would cost power on boards that never drive such a mode, which is
presumably the reason for making it dynamic.

Cristian, Heiko - hence my question: should the ACLK rate be derived
from the bandwidth the enabled video ports actually need, rather than
from an HDMI-specific link flag?  A per-video-port requirement combined
with max() across the active ports would cover DP and HDMI under one
rule and would not need a refcount.

I am happy to prepare a patch along those lines if that is the right
direction.

Igor Paunovic

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
