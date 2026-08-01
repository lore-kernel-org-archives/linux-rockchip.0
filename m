Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04A26C55172
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=daviaxGWw+GN0F0I0K6Fger5IH5qKM6bXK/ASQp/eNk=; b=4ZrPbSZ/KylXfa
	1tAtbqcO69cdFAyUhho5rlsbfWCWzmOvTLLceGSrlphOoQtosSQybWrse3EcfUcEdzVAfE/Wds47T
	DtHs6hLgcW0gieokUOoAtYKCB8k40Y/OUCAiw+9HWuxdQTaj5eSrfuoYCNKPTHfQUU8C/klrzILVc
	BfTIS4i3b6HaAPesMNIxWVokJJPUVlTLjH1IepPOtC4hOI3RleoO2hLc8jvEvQ79P1ffSV0J5kUU4
	bqNouMu/QtCZM0nGGYUn0sSE+X1pu//y4pvvzJIUeZsJZ+r3hNZIyifaLmuZ7/aSBzsMHL/jxLUBk
	dpJ8yzJc74GfjaKYvTKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq9ae-0000000EgNZ-3jnf;
	Sat, 01 Aug 2026 13:17:24 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq9ab-0000000EgNB-3kOW
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 13:17:23 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-4731f5ffa74so179837f8f.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 06:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785590240; x=1786195040; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1s2LQ7bIi+O1AtHBDgwoi4wpOF24m44GqVYWMvJpv0E=;
        b=ZKxIZw6ekHRymRGQcojkVsDfQw1fNNNjH3qc34/0Vx0Bio5n9Yeyfw8bY42UDmNvab
         l1TtredW26h7/IKGYW4BSr/G0frhJw0J99i/UEhZoqJGmkCH4vVJ7LMhuTnk5DXNcoQd
         3flc4wu3U/NfuRlxGhq/2dLfQxN9RR6cli2qa8aLdVbWLEIe4MB/jwfxXHRW4W1gPO2d
         S33BN8uX541ynD0Kx+KBi0GUMJjG+tza0v9G8zqlv8WdyRKM9qYxBr523LUiPw8mpiwg
         ADzaapVLfMU8yjdqqPgGcwHRklxP12e4m2ViIbtUyZz09YCf9Z/U61+SF8w/Qi03bYCY
         tjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785590240; x=1786195040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1s2LQ7bIi+O1AtHBDgwoi4wpOF24m44GqVYWMvJpv0E=;
        b=UKLwiFtHO3piQLmRzAEbKRdDkUHnueLtd766XBzH3QSAvpqVZCrrhBImYYxo3bW8CZ
         p8LD0TFl7RXO91F+PYZ9X8acIosy7siLtlsnQMp6HNufKCcT2H25vuctyvLBMTdj8v3s
         1vC9yJHaUEhXz9ObLNvyShF8CEfW8fywBtt1/AJVqO29hB0bVRkRkiHbSULKJOPhH+Ts
         TenyW7YG1OVikp2YjXXqRXh7xSddE+XjlljR60j50K5/cAzmXHARzbXFKkgP4QNG+OhT
         UtkcAdXTM4c1Iupf6vvHY137yToLnAA21UAbQHjuNQ7eHD3/K6ORzsgw2TvWTyGfxJRE
         XZIw==
X-Forwarded-Encrypted: i=1; AHgh+RofrTbsG80so+oQbZvavwvekfCyUTzqGq9lGmNsdcfAtU8m39m1uQ1Yh1XSnQpWaM/qDGOgEL4cc7s9KDJNbA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGwgfjDsA3WiAgsakEhzvzHpAd7RFZO6EHqEqYsGVUtSeq9GxL
	3Y8vacKRCpHHx1/IvgiXV3gviEfv9e6Vy5UEluIzDjI1EpA3mvmymZuS
X-Gm-Gg: AR+sD12vx3v9BJqmrFND9apP0jG2Xun03riyhxJY3gGk9cLm+zGqNmDM81GwwdPaRkG
	PeiAijP8JmV+SoZvVePSII55BwcYUhlJYKJ05MJCVI9JG3ZG5zVLBwSEITnRyRH0+rB9qrWDJ5O
	1B0KDbKS7HN9ZxkY7l4ryLIOfgzS2Sly4XhllSFLpxjSI8ZQrKTCVgRFDg1AjJwo6EH/ozYHFFm
	SxApvnxQU4hvU8VVjMs8vn/RBxd36W5qTFQQCKP4IOj03lHlAV/dO9Jf7PD0ne0DQOlphaNg3Tr
	w7JBhdKir64XNSVgZfu+IsdulC+c/I9ER3mBKZTVW+0Nm7l7ZfDENg7muIMXdysDxKjtgP1qvDW
	BvNYUSBc3QMxW9leXQkDRALDic0dUDvZzPHAlUwidOGFE9DzAW4Hgv3wE2i2qP7ZBmUbq83oh4H
	AlhuOH0ojX7hNILuJmNRPRKk9Nky7NYBF9VgDOaHzzV4nRCqCoS5vZrnadSwUJw3cfqAs2wnY8M
	+/XdhZzD5+e1KqlSy4aJcf2w6gkkRNIE2gaTyvcU2SzrerP4NS2CEMeokYkvFHm67x2
X-Received: by 2002:a05:600c:4686:b0:493:ec89:db4a with SMTP id 5b1f17b1804b1-4980c6066b5mr28150325e9.0.1785590239488;
        Sat, 01 Aug 2026 06:17:19 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B870700E64B9F218DE76E46.dsl.pool.telekom.hu. [2001:4c4e:1b87:700:e64b:9f21:8de7:6e46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49807b2a61asm40341835e9.0.2026.08.01.06.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 06:17:18 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Sat,  1 Aug 2026 15:16:56 +0200
Message-ID: <20260801131656.58450-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_061721_994322_246336D4 
X-CRM114-Status: GOOD (  30.58  )
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

Hi Tomeu,

Since you asked for fixes to be sent upfront I have kept poking at the
RK3588 NPU, and I ended up implementing devfreq for rocket locally.  It
works, but on the way there I hit a crash class that I could not find
documented anywhere, and I also measured something about the vendor OPP
table that I did not expect.  Both seem worth sharing before I clean any
of it up for posting, so I would rather ask first than send a series you
may not want in this shape.

Cc'ing Jiaxing since he is working on the clocks and on RK3576.


1. The hardware constraint
==========================

An NPU power domain cannot be switched on or off while the NPU compute
clock is above its DT assigned-clock-rate of 200 MHz.

Changing the rate while a domain is already on is fine - I have taken it
to 1 GHz and back many times without a single error.  It is the domain
transition that breaks.

What happens when a domain is moved at a high rate:

  rockchip-pm-domain ...: failed to get ack on domain 'nputop', val=0xa9ffe
  rocket fdab0000.npu: devfreq: cannot power up for rate change: -110

The domain is then wedged: genpd still believes it is on, but the first
MMIO into it raises an asynchronous SError and the box panics.  Captured
over the serial console:

  Kernel panic - not syncing: Asynchronous SError Interrupt
  Comm: rmmod
   _regmap_read
   regmap_read
   rockchip_pd_power
   rockchip_pd_power_off
   _genpd_power_off        <- rollback
   genpd_power_off
   genpd_power_on          <- failed
   genpd_runtime_resume
   device_release_driver

This is not specific to nputop.  I have the same message for 'npu2'
(val=0xa9fff), which matches the DT: all three NPU domains list the NPU
clock among their handshake clocks - rk3588-base.dtsi lines 864, 877 and
885, for RK3588_PD_NPUTOP, RK3588_PD_NPU1 and RK3588_PD_NPU2.

So the clock the domains need for their idle/ack handshake is the same
clock we would be scaling.  My best explanation is that the PLL that
produces it lives inside the domain, so once the domain drops, the clock
state goes with it and the handshake can never complete.  I cannot
confirm that part - reading the PVTPLL registers is documented as
hanging the machine, so I have not tried.  The behaviour itself is
reproducible and cost me four hard hangs before I understood it.

I mention it because it is a trap for anyone adding DVFS here, including
the RK3576 work, and because it is invisible until the first time you
let the NPU idle at a raised clock.


2. What ended up working
========================

Runtime PM callbacks are not enough.  The domains are powered on by the
driver core before probe, powered off from a workqueue after detach, and
system sleep bypasses runtime PM references entirely - so the driver
never sees all the transitions.

What does work is hooking the transitions themselves:
dev_pm_genpd_add_notifier() on all three cores, and on GENPD_NOTIFY_PRE_ON
and GENPD_NOTIFY_PRE_OFF force the clock back to the DT rate, vetoing the
transition with notifier_from_errno() if that fails.  Every path -
runtime PM, system sleep, attach at probe, detach after unbind - goes
through _genpd_power_on()/_genpd_power_off(), so nothing can slip past.
If a transition does happen, the boost cancels itself and says so,
rather than leaving the driver claiming a rate the hardware is not
running.

This has now survived everything that used to kill the box, including
repeated sleep/wake cycles at a raised clock and rmmod while boosted.


3. The numbers, which are the surprising part
=============================================

Measured with MobileNetV1 through Teflon, one inference thread pinned to
one A76, and a bit-exact oracle: sha256 over intermediate tensors on
every iteration, zero tolerance.  The 600, 900 and 1000 MHz rows are
30-minute runs of 275k-280k inferences each and the oracle passed
bit-exact in all three, so none of this is instability; the 200 MHz row
is a shorter control from the same session.

  nominal    supply    throughput
  200 MHz    800 mV     68.5 inf/s      (the current fixed rate)
  600 MHz    800 mV    155.4 inf/s
  900 MHz    850 mV    152.4 inf/s
  1000 MHz   850 mV    152.9 inf/s

600 MHz is the optimum.  900 and 1000 are indistinguishable from each
other and both land about 4% below 600, on a quieter and cooler machine.
The vendor OPP table decoded from the downstream DTB asks for 700 mV up
to 700 MHz, 750 mV at 800, 800 mV at 900 and 850 mV at 1000, and I ran
the top of that range at the voltage it asks for - it does not help.

Backing out an effective clock from the per-chunk time, nominal 600
appears to deliver more than nominal 900 or 1000 do.  I would not lean
on that decode, but the throughput ordering does not depend on it.

Thermals were never a factor: the highest I saw all day was 50.8 degC,
against a critical trip at 115.  This is one board and one model, and
MobileNetV1 is memory-heavy, so a compute-dense network may well behave
differently - but for this workload the top half of the vendor table
buys nothing.

If that holds up elsewhere, an OPP table for rocket probably should not
simply mirror the vendor one.


4. Thermal, separately
======================

While looking at this I noticed npu-thermal has only a critical trip at
115 degC - no passive trip, no cooling map, polling-delay-passive is 0 -
while gpu-thermal, a few lines above in the same file and on the same
tsadc, has both.  That was harmless while the NPU was pinned at 200 MHz
because it could not be slowed down anyway; with DVFS it stops being
harmless.

I have two small patches for that (a #cooling-cells binding update and
the thermal zone itself), but they only make sense once something
registers a cooling device, so they would belong with the driver work
rather than on their own.


5. What I am asking
===================

- Is DVFS for rocket something you want upstream at all, or is it better
  left alone for now?

- Does the genpd-notifier approach look right to you, or is there a
  cleaner hook I have missed?

- Given the measurements, would you want the OPP table to stop at
  600 MHz rather than follow the vendor range?

- If you do want a series, I will need to clean the code up first - it
  still keeps its state file-static rather than in rocket_device, and it
  bypasses the OPP layer for the rate change because our own direct
  writes leave the OPP cache stale.  Both are fixable; I would rather
  know the shape you want before rewriting.

Happy to send the current code as-is off-list if that is easier to
comment on than prose.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
