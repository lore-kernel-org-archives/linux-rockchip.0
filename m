Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63ED3C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 18:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TC+zqGqUatlxw+0NMCE1Ndyix95SQy0z9uarZQt7L9g=; b=RLxE6MQKmPaL37
	AdZmXblSHA5zdnyw3JcRnoV9tJtRxgqHPlpihorT0BPI3dwULcQ+iW2mfvBYFxBYfonWK7Oqf0rHA
	4OMQsTR740yN0NPhowsgpdrprTdhwFeLdy5l+0dfCkn0SpCIi0bz71Nue6hZIVnUszbrbtyGng+t9
	W+A2ZcvOdEjA3Iidwi/kVafWSBMLSXLTL6p1zwE+5T3sBnyAO2EX/XNE2jVhG/u14VneeZdKQOQfg
	tcy/sc7CkVAQhaAuSAqkPEflWddyc/VJie378OkVIy3HX9QZ6IcAmNOUDUB6+5YFcJAztbDruyQqX
	XCqJou+/Fj1EkbdldxKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2CXo-00000000OBx-3ZjQ;
	Thu, 03 Sep 2026 18:52:16 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2CXl-00000000OBS-3MyL
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 18:52:14 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-49b96433ca3so65035e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 11:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788461531; x=1789066331; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kWGcV+CZXP9CxFvzIcOWKnbKfmDZVF807ifeZedNWGw=;
        b=fQtPRZGMOrhONjE5aWgSb6lDAPWKnIpuXuCcchVO90Q+SZPtTgA1Aj5ckz0ZSnrDQ9
         LVRKlCuig9dlavS22TzWaNE75KUlBbmrnBE62Y3/ggFgmZw3CU0Tl1bcRqaD8Tkww/xH
         kiW0BHEZz18Cp7JhR72EeB4KCIMiVtGEUaiUvkVcb4I+nt4QkfnGq8R76NBaxCMMxZz1
         RK8lUwNOlXd/V1NPUD+EDORZZHIxA+4d0abWt6L1D0itkknBH8d2MzAOaNYqIENP4VDh
         TqAfkO3aHETmGePvP7UU1/uSmZO9v2Hc766+uM4gvG3IGkjXPSBqo5jP/C3SCnt+U1tM
         hM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788461531; x=1789066331;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kWGcV+CZXP9CxFvzIcOWKnbKfmDZVF807ifeZedNWGw=;
        b=gOByI2P9zIT203qys1DZgJsgRf2pbvLiCTToGnwPoYmK6SO3yIPKfxhc8x5wBHNgc4
         bOrUj6dwtQDYxGDjgL+LW8+kk3sezVaXyQisqsThz5+8HsO4nDEVsq8vxgEGR3Kr0FKc
         EGoSFRjMAwMyLMMoJ6A603EFnkikF13CDkUAai3DVpHZorZJi91bYzZWF41lqMxGmr8U
         VTH7wODQzBymmquFZAW3gPpR51gPgErpwgj8aSmHgujIrVDHU4Rvciq2T3nVP1msxv0u
         mxOypDbqjscoazgy6KJM+tHhzGXY1MExlWB+/zHisr3TPPHYZUklCWXI2bCpP5aDTy8y
         XE9g==
X-Forwarded-Encrypted: i=1; AKwUvBwTeQ//zIAtbe6gp0L5gJFk+F3x0l7uxvgmiMi21N5d7HwWGe7SPWegCLmXF6OKBznI7yHw8Vbj6o7LiQdhFg==@lists.infradead.org
X-Gm-Message-State: AFuF++ljlSH+Bi9EFlf444P8P2+mh5CcRwwBxJoQXd0qptUCWRVLF0YY
	ShbAFaT+IZT9e+hx803XN3Pu+u6XrBYWA1y2X26S1SBPSOlgdetJ2j9t
X-Gm-Gg: AYBFou0QGXZ+O7sTpxEst4vQYESgB+8zftJ+ZLxYvt+BIo4caQJ4wAO+HFRVvM3U4gH
	FQqsk5ChpZ2VqcVCopsCZMYsA3bHVxNOIqIgyjRjWmGZDCXZuBLuopGrQGYSxlkLhcAbaNXpm9Z
	WwpJR5JQU741RqCmTpV/rXJROiV81TEVjFhbpaCyWAllpUafHoi+Z5z6nrTQM3TSG+2D/1z6fre
	6DLx3pxK3UVjK4W7plCsr5/rMkMb96NH56CgxbgDWFZQM8IOiUveFea9QnJEh9qh4Ptx8/ZmBdj
	q2RHNcm/rAzp5HW7Bt+BdakFE+GgBQZF2bYxeFCb0WO8UJDOiNAIGnmPcV5yVQgm5pcm8+ZeARr
	9JwrHzYh6R+XuvExK/T81x2TvsWqqez/w0RrdNvuWmMvitzkthD873XV2tmTl8QalW/Pdb2WpEr
	OE5LZ1D0+JQna1f9/SaQT3Q7jIHVnufrOiPYEo4amOhAVCIKLpeMtkb/IKuHEOlFtDpZhh+ErPk
	JzFqYwpFEPP0wJlRlYvsHClMJJHv0XJW1wcAh0+BrceHe4Y6EOfaRHi9gwbQNYSp+xH
X-Received: by 2002:a05:600c:138a:b0:49c:f45f:b09f with SMTP id 5b1f17b1804b1-49cf45fb368mr43232445e9.2.1788461531325;
        Thu, 03 Sep 2026 11:52:11 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8962003434AB95A407E573.dsl.pool.telekom.hu. [2001:4c4e:1b89:6200:3434:ab95:a407:e573])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cf772692dsm6604945e9.10.2026.09.03.11.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 11:52:10 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Huseyin BIYIK <boogiepop@gmx.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Thu,  3 Sep 2026 20:51:41 +0200
Message-ID: <20260903185147.49411-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <2f88072c-6aa3-4294-a35d-722d1c7a405c@email.android.com>
References: <20260801131656.58450-1-royalnet026@gmail.com> <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se> <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se> <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se> <20260819125932.5853-1-royalnet026@gmail.com> <82c8b17e-7215-45ea-84d1-9991ba6fb541@kwiboo.se> <20260819184807.6665-1-royalnet026@gmail.com> <f5241666-9657-4f49-958f-476fd366e408@gmx.com> <20260902110432.22069-1-royalnet026@gmail.com> <20260903091646.7183-1-royalnet026@gmail.com> <2f88072c-6aa3-4294-a35d-722d1c7a405c@email.android.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_115213_855817_4F800234 
X-CRM114-Status: GOOD (  15.16  )
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

Hi Huseyin,

> if the ccf is really giving locked 1ghz it is most likely reporting
> back what it is set, since scmi is probably returning 0, and ccf is
> ignoring that.

That was worth testing, so I did, this evening: 104 samples at 1 Hz
under sustained MobileNet load, reading in the same instant
CRU_CLKSEL_CON(74) from the kernel and scmi_clk_npu from clk_summary.

  CON74 = 0x00001011, bit0 = 1, in all 104 samples
  scmi_clk_npu = 1000000000, in all 104 samples

With bit0 set, clk_scmi_npu_get_rate() in your commit takes the
PVTPLL branch, which has no fallback: it returns whatever
NPUGRF+0x24 holds, so a zero there would have come back as 0 Hz, not
as 1 GHz. The "return the set rate" path is the GPLL branch, and it
was not taken. So the readback is the counter, not the request.

> If you read the clock in each 1 sec, you should almost always see a
> different value with several hertz of difference.

Agreed, and the register cannot show that: it reports whole MHz.
What I can say is that the NPU value was constant to the MHz over
104 samples, while the GPU on the same BL31 moved between 1047 and
1054. I withdraw the word "locks" from my last mail; "constant to
the MHz" is what was measured, and whether that is a tighter loop or
sub-MHz jitter is beyond this register.

> So it was a theory and probably a weak one.

Fair. What is measured is only this: the same register, read in the
same instant, gives a value from EL3 and zero from EL1. I will stop
calling the cause a firewall until someone knows what it is.

One more correction, to my mail of 18 Aug in this thread: "the 2.58x
I measured here with simple_ondemand against the 200 MHz pin" was a
projection from my harness, not a measurement. Measured today on one
boot, rail at 850 mV, bit-exact oracle in every run:

  userspace @ 200 MHz    89 inf/s   (NPU-side 9.65 ms)
  userspace @ 1000 MHz  222 inf/s   (NPU-side 3.02 ms)
  simple_ondemand       221 inf/s   -> 2.47x, 0.7 % below the pin

The magnitude held; the provenance was wrong, and I am sorry for it.

Enjoy the vacation, there is no hurry on any of this.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
