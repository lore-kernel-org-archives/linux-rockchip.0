Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC207C531D0
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jul 2026 12:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVxcfI55qmPSQKIE/foHK5y9HbxbBchxVUB3KHKBf5Q=; b=SZGnEHimbNwi+9
	X/p9BrNnVAYp7pnHnutPI4d6f6LO088CdsKPZLI1teV+jknFMXRYJ7YV6/42F/PPxQnL97KYraLbW
	i6sT+wYUowGhQTm+sqW6om+CSyBidolVkjvnI9Pey6DteSZT8JKCosOS+tp+xu5qOhYmkzAa72ivP
	jh0HorwCSfdGrx1nkpORF+ZGSAuCGIlAs7a95MgmClsfS0R4D4NvXi1+bbRRY386zHPitWTuWSfFD
	WgVt8AdOscqNEP15UrHL6eXY2aY3gwdnd+gG30I8jwK2t8UqZwm2XwyN86/merJhp5wVWyyl0uFNw
	KanXN3OOcrcITjI2vu4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnbIc-00000000KWc-3Qs3;
	Sat, 25 Jul 2026 12:16:14 +0000
Received: from flow-a7-smtp.messagingengine.com ([103.168.172.142])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnbIZ-00000000KVj-37Az
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Jul 2026 12:16:13 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailflow.phl.internal (Postfix) with ESMTP id 689651380417;
	Sat, 25 Jul 2026 08:16:08 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Sat, 25 Jul 2026 08:16:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1784981768; x=
	1784985368; bh=2QcBH+cc0VMjB+GW0dstKHqz/24lv3mlE1NzpO0Y7yU=; b=o
	Jd5mTuz2Hp+vi9KhBn2575kaMlA2pS9a6qHnvuQKiN0DIqym69KSJDHohDOlUT2F
	0mGrgBYwx1gJo/Jm2MfWClHqrmfF6OJWwZFLF7Shkqt0POW79yg9k0OfQ0QtLi6U
	AFBVtP85I4KX1Pt8wf+KKJKcdQYtbeYQoTAsttLHIFP2eK3MjT3QWKdD0SaRKSaB
	UD5PjU18WIZl33uJIkyEY6IfzEnraxGdzoWrBIAI0Np8qMeFsmUA7nGeVxhDGa26
	xTUKpYIka8sv+Q5p20/LlaeFQ8hXWElO2ohLorSBItDvup+PV6xOzYVW+q8YMB9n
	6AFnhMljXegKOrKqIsx0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1784981768; x=1784985368; bh=2
	QcBH+cc0VMjB+GW0dstKHqz/24lv3mlE1NzpO0Y7yU=; b=kFzjxysHlV0Bcy/Yp
	uagRW1EdYloDXl65tluof039MWuevfjZ7abSp88vlxSnE1h3pmmD+EXVvoX41bwz
	/muQWoP7DH45B71QJFSstK9b00BzOopVY4ysZFRdxEOctnPTzz545bHUv86roXOJ
	7wFVAMM4aD8aD2FftJ3huatLslfvIPoX0ZJMNcZInY9n50f+ct+Cgn9rkOwnwbHu
	nw5XCFThPOcJBP+6MU77nnZE47kG5gHBLRRMznHrGiwpNattX8fyCwYTUB2ybpxg
	xLWebGwWxekqoknbiN0dPDIl/JcfwhlB1Y+yJMBXxHbYcqxN95W/qSdVluNGvbKi
	CNGAw==
X-ME-Sender: <xms:Bqlkal0BtrTTnS5X7l9BMd4amyI9McUEnVCeUo5-_RarEabAgKcGZg>
    <xme:BqlkaoEgLD_h0bjRkfHMavYKVy4xz9OukkoUhyHm_cffIpAExc8FXyxojREcviKJg
    4jdPIWcYZYDokpmiHWWYwrOGMwLL7xZ2TOc39aCF0kZwy6DI6BG8ec>
X-ME-Received: <xmr:BqlkaoENreJrU1Q-3WgQcPVEXfkNx_BYdBG6TVeb5j9sfHlsrrM2NBb_vIczqkZzcNBgACWvvA>
X-ME-Proxy-Cause: dmFkZTFHAokVgneTwpfE5Ky+xRWgHXIPK48Njc60pVVt7NPts4qQX97X/7zJ9gE6qAn0Yq
    w7B+H8L70vHqeTJsgWuLA1sRM0VC+f3NN6LiV6hQ0plokB5ZA710kHNAQjAlS6lT2V5ami
    H3TCufR3+U6LPH5AAZwc60FXoRL5XvP8oTzl3orZbUqvvjNMYGXX5xqZrFccSNAZHmFlvT
    aMXOG7X3Uy7W7qndcMigWYXR2GLXEiiT9k1h0O+DW5+pTIX0tD4IQ6Ce19HQtFTjs1Vjfb
    miHbhivdIf+4DGGNARMVvAP3HFmZEBIfkmXu9H7+jFP87eLY3w49iTJhVBok3Jwdn/ymCj
    xTotICxk7NbdyV0m38LZGy3HxEpNnkCsIZBZnCyYlWCX/mGKp9SapblpdJfSQfQv5+36VD
    6Z4j7z2pQ3BXxLx2K9h2rNn6rh8SVNx8RPd79UDXsQ7OpRZ5YTrcBCegH/F9dqSTJXD4HB
    674e1vO1qayrZEBM/UD9lGsqZiqd0CCq9KcA522Jy05i8GklcijPbdg8rSffgia/qCxXPg
    sY0cJ54tYMakUOcHHmMrEVT8MGL+3PkjcjbM4E0zovmQNNUQS+/j24Ft60pk+pdiSPIk3D
    zopmnebjVR1XjSmSyHR9XYQi1wnWJ0qEamYTtMiU/FSsIQhOa0vg9w0gXMlA
X-ME-Proxy: <xmx:Bqlkaj6GcIG78xHZPlW-4zr5sw1UK4-AgNj1Af92A4xvgFkI5VRJ1Q>
    <xmx:BqlkalyxykGm-fCNQo6NBIrKO7H4AD-2nwpEXMuXUwIIBWk0GJ8ikQ>
    <xmx:BqlkaqPhAnX8BAJGlCnIftPn55ltIafdZJpuHdo0219v23kI9ve_OQ>
    <xmx:Bqlkajm0tkY1FtyU2_V1U53GbB1eaTcjwXAfbmy9Q0Y0qMxHbwnQvg>
    <xmx:CKlkaq9WWHGCPBsXtMVvvqJfWp4Xxg4s6LgTPZVXKk7xUBTjXioXOPTU>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jul 2026 08:16:03 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: alchark@flipper.net
Cc: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	chaoyi.chen@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [RFC PATCH v2 6/8] accel/rocket: add RK3576 NPU (RKNN) support
Date: Sun, 26 Jul 2026 00:16:01 +1200
Message-ID: <20260725121601.2970185-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <CAKTNdwHL2Z3h-FN7LLPshz5B0duiMw_pyfe=VG4UDhfm8igZ6Q@mail.gmail.com>
References: <CAKTNdwHL2Z3h-FN7LLPshz5B0duiMw_pyfe=VG4UDhfm8igZ6Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260725_051612_105411_37736439 
X-CRM114-Status: GOOD (  20.71  )
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

Hi Alexey,

> This whole polled-interrupt part looks very suspicious. Does the
> vendor stack do the same thing?

No, it doesn't, and you were right on both counts. Thanks for pushing
on this -- it turned into the most useful lead we've had in months.

The vendor rknpu driver is fully interrupt-driven on RK3576:

  drivers/rknpu/rknpu_drv.c:
    static const struct rknpu_irqs_data rk3576_npu_irqs[] = {
            { "npu0_irq", rknpu_core0_irq_handler },
            { "npu1_irq", rknpu_core1_irq_handler }
    };

devm_request_irq() + wait_event_timeout(job_done_wq), int_mask 0x300
(DPU_0|DPU_1), on GIC_SPI 247/248 -- the same lines we use. So the
justification in this patch is wrong and I'll fix it in v3.

I added a probe to find out what was actually happening. Per power
session the line fires exactly once:

  IRQ entry #1 raw=0x30000155 active=0x0155 mask=0x80000300

0x155 = DPU_0|CORE_0|CNA_CSC_0|CNA_WEIGHT_0|CNA_FEATURE_0, i.e. the
whole group-0 pipeline reporting done -- exactly the completion the
vendor waits for. INTERRUPT_MASK 0x300 is writable and sticks. So it
is routable; my "read-only, cannot be routed to the GIC" note only
ever applied to bits 28-29 (PC_DONE) and I over-generalised it.

> One theory could be that the interrupt bits are not "read-only" per
> se, but rather gated inactive by some internal hardware state which
> must be cleared before jobs are submitted [...] If so, this same
> hardware state (or something related to it) may well be the cause of
> your observed "first (forced) job completes, others don't".

That is what it is. Bit 31 of INTERRUPT_MASK is set by hardware when
that interrupt asserts (visible before our handler runs, and it
survives the handler writing INTERRUPT_MASK=0). While it is set, the
line never fires again. Nothing in software clears it -- I swept
INTERRUPT_CLEAR 0x1ffff / 0x80000000 / 0xffffffff and INTERRUPT_MASK
0x80000000 / 0 / 0x300, singly and combined, at two points in the
submit path. A full NPU reset does clear it.

So I requested a reset (via the driver's own recovery path, so it
lands on a detached IOMMU) before every op. In one power session,
with no power cycling anywhere:

  90 ops, 90 resets, 87 completion interrupts

against exactly one interrupt per session before. And the data path
comes back with it -- per-layer input and weight fetch at the graph's
real shapes, and DPU write-back:

  wt_rd in {96, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536}
  dt_rd in {1568, 3136, 4704, 6272, 9408, 12544, 25088}
  core dt_wr nonzero on ~56 of the 90 ops

What still doesn't work is the multiply-accumulate: the DPU faithfully
writes out a zero-point surface (output distinct=1..10). So your
gating state is real and it gates compute as well as interrupts, but
clearing it isn't sufficient -- something below it stays dead. That's
a much sharper localisation than we had, and it moved the search off
the dispatch/arm theories we'd been stuck on.

Two more things this turned up, both mine to fix:

- INTERRUPT_RAW_STATUS bits 28-29 are permanently latched (they
  survive INTERRUPT_CLEAR=0xffffffff and are high at every submit,
  including the first). The hrtimer completion poll waits on exactly
  those bits, so its condition is already true before the hardware has
  done anything. Completion detection needs redoing regardless.

- The v2 hw_submit posted here arms a DMA-error-only mask while the
  tree I actually test arms the vendor's 0x300, so anyone reproducing
  from v2 would not see what I see. Sorry about that.

For v3 I'll drop the wrong justification, use the interrupt like the
vendor does, and fix the mask divergence. The per-op reset is not a
workaround, to be clear -- after 90 of them the NPU power domain can't
reach idle at power-off and that times out the shared regulator path
(-110) and takes the box down. It's a diagnostic, not a fix.

Thanks again,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
