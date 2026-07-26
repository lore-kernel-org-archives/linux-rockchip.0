Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22D75C531D0
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jul 2026 01:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ug0TvjsJgeN7uGRET5IDxyO97gWgbNFNCLCQLzf7re8=; b=3HRQZx4y9BxNrO
	YlwQ5BCurZtQRp5hdJwoPI6HDmhpbJjC0soigJPZh2frwlX7e/DwI5SceJsB+oY0MnMga8Qr8hFfz
	WrUVubutBsZ38Z1sTHfmVOV59evg5vhw2knKW/lnfm4BzSrHVaCpLBhw283M+f1fphFk32omCgYE0
	4oF4E8oX0g3Ff7yNIXeLyrB0jNFUU5mExjnjRMZuNrMcibuEtPul7zWV+6bx7p56IEIafhFdW3dN/
	zzitf6T/2GCgsLt8KyCDmIQ7tG6mjVTUeY5teWrS2U/9x87AYgxKobKGOXB5hS/WB8yf8TAZLaM8j
	OaLcSntow/q7Lhlqzp/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnntY-00000000ogg-2Fo2;
	Sun, 26 Jul 2026 01:43:12 +0000
Received: from flow-a7-smtp.messagingengine.com ([103.168.172.142])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnntV-00000000ogM-41Q6
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Jul 2026 01:43:11 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailflow.phl.internal (Postfix) with ESMTP id 8656A1380125;
	Sat, 25 Jul 2026 21:43:08 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Sat, 25 Jul 2026 21:43:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1785030188; x=
	1785033788; bh=tH4nlR6FXXewKFWl8uUYtRXQRmtWcj41vnoVTius/+o=; b=D
	ZIeAaefGbJN97nhQ2zYuuHZ+AFGyQGa4yLjNQClYRc0Uk60ZAo9tejYxMi8da+fU
	yOuCY3OD3o65oRZ9Ar5rFjfPsiyWvzZV0RtClFt254B9ZfCUREXKa2pzJ1+tYyYM
	RJik1OgLfA468PZTYsLRinm3k9OfkRNw4MoE7r0rbtbMibgM3QLINun+cZygw7Aa
	qC+nEuUqUMoPKQGVXp/74pQ7GDzXOiHEfCiiKx2S2wqT0uWNe2LEdA3p9MaOpTfp
	y1LsKZMerPlbGIEWg6Kz6Zat8kRQlyTCb0qNim4Loh+ZL0sfmFsSkTGNfv5eSjfo
	4shkDGMn7+0Dv34UgISqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1785030188; x=1785033788; bh=t
	H4nlR6FXXewKFWl8uUYtRXQRmtWcj41vnoVTius/+o=; b=DvJQhqLkLedu/0p1Q
	Yg8B4UuWxPV9vOe2B36JiBZwhARJeoSEbjBVJCMEEN6I5Jp9wWAODY1gh1JSJ3qE
	N9yKFCe9YjW4TDyJ7/o3LW2THfinF7kAVm5HADbDvfSf3c8TTFJoqZc5ZbSflvBR
	Trb8On7xO+E+rF6tmWtZPkbMc4VC5tQ7VXYypAc9Hba+uKXFVCX9msnVqC3J2E61
	h3JFF405956LHHJ7j+72wcC1EYfPxjXvNIVlrfE7kogLmUq8H0ow6h2ihLeg8Zeq
	ql2wBeFpDXcn1Cn1gr8rUuvg5oYN9qaB0j3E1/djRHyq5QZiWYOBjSX1Sbxt7ojY
	tlKiQ==
X-ME-Sender: <xms:K2ZlajtJNjr520CYGnBbH6eCjk42nuSZVwrAfwGXlU_p9ErXw8GjUw>
    <xme:K2ZlagcuBBysjfij2HUk473ne8D8fC8hAZeMIkLeNkZquW__BJrx3g3kVKTK6Hbjt
    RH1fpLKcBHXP8q2Z04_Ih6FPO3zqZ8AWrmbJ7_uHhEPwETVq4OR5-Q>
X-ME-Received: <xmr:K2Zlao8zWbLDhT8KOqJ3rrpkGgJ3ja3EpgB_r-lGuCIJPeBzFP1Kkb0wyLxxjxfNrYBGKpaBAw>
X-ME-Proxy-Cause: dmFkZTGxD8IZGQeknlTKF1p90BOwH0Ou/1rEEe6X/5savyxo+hsDi+1ZDlDZOdLkVsuS5A
    wQRcNSB9jwVijlFzJd6bDUBkz+Yrm7WeDffE3HDYzig6SonjA2p7DdKmOzuGbdBLT5oDti
    1UH+gn6qmBtn0WEnft74WZ5dyFBmLv4hYKu4hfK5Dc4dD/h5Y/+sH6L/u+AsE1aCT5yTAo
    3554/tL3I2xIANEBwhVukuvstkmK00uXFfTTWiHE4BOGHE3miWeF/b8h4R6/+d96Nf66ve
    zEy9xa/ybjiuuqcjUQlBJYDj6U7pLSDdW8mjJcfXxORZuBt21aF6jCh7PN39SbycRjusjl
    Km0lT02hwu5WS2C2VAt4WjOUbBU6716K++q1Eazh85LVfSkpaiLsAwAkx1XjmCZRG/OsU7
    9y31pMhLhZZvII0zEhG1ruvK2MLsMumUMfMkkiyqUwQSyTnlbFF7XryxEO2anYbc/zaRU8
    kFl1Sj7QKeidP4turtvu6YwCj6/eIEwVGQUBw4jf20VOmdgdVvI1vWrMG4xMS33Hry4XRR
    QidoPE8DcpiFDut7WXDKptIbgsp08Zd1AMH5jtYNtHJhvqkt5gPQRSbieZXD7YQIqtrut7
    y/dNqfFTPaGzHSZv5g3UiJ7RGCPkJ+OG8nZxCCVvjImyqHqIDGYtk7XKt7xQ
X-ME-Proxy: <xmx:K2ZlajRO1dBa3i12S12oitgngIfT9LmXubrq1pywJH-wrntgSYDzng>
    <xmx:K2ZlahrZIkadHkaBvIbZRLWjMsgfWghrfujXJzJiqUMpUhL0yOP2UQ>
    <xmx:K2ZlaomBaOm2meBO65NBR0lu3AE9ChcUVsFuI8Z8rJSpHS1Up1Ix3w>
    <xmx:K2ZlaidtrP-1yQjZqT9nhgT719sBRWe7E_SrCt5E_E_l_ReeyFY-lw>
    <xmx:LGZlavW6LTmdonWPTMOGuOmw2L-9MR0FnDLrNXuNeo86ZJwIVse-m1ub>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 25 Jul 2026 21:43:04 -0400 (EDT)
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
Date: Sun, 26 Jul 2026 13:43:01 +1200
Message-ID: <20260726014301.411518-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260725121601.2970185-1-gahing@gahingwoo.com>
References: <CAKTNdwHL2Z3h-FN7LLPshz5B0duiMw_pyfe=VG4UDhfm8igZ6Q@mail.gmail.com> <20260725121601.2970185-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260725_184310_365151_B18118D9 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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

Correcting myself before anyone builds on it.

I wrote yesterday:

> The per-op reset is not a workaround, to be clear -- after 90 of them the
> NPU power domain can't reach idle at power-off and that times out the
> shared regulator path (-110) and takes the box down.

That mechanism is wrong. There is no power-domain problem. What I was
looking at was a serial console printk flood: my test script ran
'dmesg -n 8', the debug kernel emits several hundred register-dump lines
per op, and at 115200 baud that blocks interrupts long enough to time out
the PMIC I2C. The symptoms I misread --

  dwmmc_rockchip: Unexpected interrupt latency
  cpu4: _set_opp_voltage: failed to set voltage: -110
  rcu: INFO: rcu_preempt detected stalls on CPUs/tasks
  rockchip-pm-domain: failed to set idle on domain 'nputop', val=0

-- are that signature, not the NPU's. It reproduces with zero resets, a
single-op model and the whole probe disabled, and 'dmesg -n 4' makes it
go away entirely. So please disregard that paragraph; if you were about
to look at RK3576 genpd on account of it, don't.

The conclusion it was attached to still stands, for a different and duller
reason: the per-op reset is not a workaround because it does not make the
MAC produce anything, not because it breaks power-down.

Two other numbers from that mail need tightening, both re-measured on a
quiet console:

- The wall itself is unchanged and is not a console artifact. op0 fetches
  and computes (top dt_rd=9408 wt_rd=96, core dt_wr=25088, output
  distinct=238); every later op reads exactly nothing and writes a
  degenerate surface.

- "90 resets, 87 interrupts" was one run and I implied a 1:1. It isn't:
  90 resets now give 63 interrupts. What holds is the qualitative part --
  dozens of completion interrupts in a single power session against
  exactly one without resets, and the per-layer input and weight fetch
  returning in full.

The part of that mail I'd still stand behind is the first half: the vendor
is interrupt-driven on the same GIC lines, INTERRUPT_MASK 0x300 is writable
and the line does fire, bit 31 is hardware-set and no register write clears
it, and the v3 fixes I listed.

Sorry for the noise.

Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
