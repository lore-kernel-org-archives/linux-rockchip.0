Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97376C5DF85
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 05:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=92CbbqHYN2FyCSAW0zJlwHCZ96TbZAUv42HhMUMWrMw=; b=hkqhmZyaFo2hNL
	UIe33MA2g33GzAkI86LAOwUciyLE6M+Yh1U6uHC+ZVKCGa0s9UQclZOx5Fwv6w8lhgJhkKWHD4W5c
	vdOI5igw+3WUZB99vK6l7GN2syoprWcHd4ftijIrLR6hKFcTnVYNKVKRZj3VsFpl9VCdDb34rshSp
	DxsgrWy/KK46iUZBrDLwrlI3xLurRJu+T+yoEhDq1g5dX4UZpb4B52XxYQ5hkb3rlmKJGkHGqfxg3
	VPogAMfqav2HZTtNLVSWZ4IKXLT/seoINPLyj9QwJ6/x/Y6z5G17ScOAOs/fNS5XhLop3PhINwKuk
	SpaSJ9W5z230933C3pRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwZFL-0000000932K-0P3E;
	Wed, 19 Aug 2026 05:53:55 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwZFI-0000000931n-1K5n
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 05:53:53 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4994d41ceb9so677555e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Aug 2026 22:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787118830; x=1787723630; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=drx7lxhpvX/m1kQ32psHACDf5vz1LZ8ZaWYCSVJWSkU=;
        b=PLM7WYjWxNS9wzV3bgUMn6yPx3LQ5S596XHvMMNTtGQxxtO3eTqm9EOfLpHwIAswrc
         5eBW88hCDXV56UfScwqf7cxdY15YfJB09RaIY4shCeeBipKYmedn3YAeA509wnVEhLDh
         Sh+PbXW4prMVLlPbIRmN0kUsR93ngb1g403EAUm50SwchNPhlucs2SehDtYf71si1hnT
         b7erlPYt9lYnXTmVDM368HxVCJo27e61Efm5Zd0aVm0QsVQ5y4UsKHuDfzSGn8KHkNxp
         E2rhjKSuvgDxa3ICcfnz79MbyniJc8BklAbWAuQTPtLaj1+3833ch3d3AjM3dZpu9zz1
         +g/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787118830; x=1787723630;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=drx7lxhpvX/m1kQ32psHACDf5vz1LZ8ZaWYCSVJWSkU=;
        b=dqG2IhzT99nAcFYusME8ySf0UHfc5U+DhxMT1AHsD0A/x406nRuXItI76Ej7CsXjbI
         75izucLTPayl59YiCdi8Cf3ABtscqN7ZKCQ8zDBiADRjIquJHQPhuDfbjAuj+i5awMFB
         4qkTYUkCYpL8k0w+KEu8AaR0fV2CK6DM+pcP7OjKRo48W2cBAGW7iEpumGk289JCWVAL
         IR7uiUHIera9rHSpYna1UbuGgnNIx876FOp/kMm8m8roKv+fgpnJm9+wWApjwxKp73ic
         sQvqYd2ZthVOFnhqcEw+GGkCvBHWaZHDvyL9QtAfRrFJJI2C9rY9yaiL0QMX4/5rP4rm
         Caug==
X-Forwarded-Encrypted: i=1; AHgh+RrOb+D0DwLhADfLgoM12XZ9vQhP0w8kghG4DGXKeUGWTc6ZZY2bifSvZIsg3MfRKNx37CakfsTT0oy5fzdcZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwHYvAVGUfGTrgxORBEDGAHlYHJ/D0m3kLblgWtCSDkOtkiY8Hy
	oQfXAvL7GklKj2ictBiXSrg2RtScke6RIzxAMR/q6QpFw9AHdZ6F1rOk
X-Gm-Gg: AR+sD129W2PzCktWbkfPOphOsAxTCSjcEWwC0gxeDXzlrjXbvy7C7kefMThTe2AR4Oj
	Fevqw7OF7no/SDOi2U/C9zHqvT39v0vqMTaTffAbN+jWd/r1CsQTo+l5nkk/z9clyrglQuD8ZkA
	q+rtt2mQzVvshVfFNavEYF11fNWVtD+lIPT74kzlQv19239960Btuz3QDQVjYeK7AoY+j4QEQQb
	pYlwuB7ch7V4VMyWBZBuP3r1uH1gbxbrx66XsZ8NFtEfwiMXQXto1fkAWj8+/ONNt+GI349uyoZ
	Hj0K/hV/EwfyU4qJuNrUL/4d2VEZD1kWjVVZPey6FM11aTzZcRmHdaIpl1z2lvs/2gWa/ctrHzb
	ncOjEgUBHDbeWyFvXTvNW/o+VAdXx01Dl5CdvH3tsPZsHq3XHdnu5zWhkrv0I9Zz4WRaAq8KeQ+
	qsDduh5+lo+XMJmG+cyzww6GoscIVNcwQ0B+naK36nSXSxwWNmEvKDHlhVAvj+5lEb1lSLpuLhO
	YD31cedFfBGz0VkRUV1+K2cydh/hJkKNftYmo/NuJwpsMtVmirzvhk3va12MxAQX48Ldw==
X-Received: by 2002:a05:600c:3f12:b0:499:8411:9e8d with SMTP id 5b1f17b1804b1-499aa0de240mr16981515e9.0.1787118830280;
        Tue, 18 Aug 2026 22:53:50 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B9296004F3635366E4473DE.dsl.pool.telekom.hu. [2001:4c4e:1b92:9600:4f36:3536:6e44:73de])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa17e241sm28172945e9.12.2026.08.18.22.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 22:53:49 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Wed, 19 Aug 2026 07:52:23 +0200
Message-ID: <20260819055324.33669-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se>
References: <20260801131656.58450-1-royalnet026@gmail.com> <c495dae1976dab842d77f4a4a142217eb77b6fb7.camel@ndufresne.ca> <20260818072936.41844-1-royalnet026@gmail.com> <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se> <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_225352_385326_64E2BEBA 
X-CRM114-Status: GOOD (  18.15  )
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

Hi Jonas,

On 8/18/2026 2:30 PM, Jonas Karlman wrote:
> Looking closer at my old commits, it was the PCLK_GPU_ROOT that was
> needed for e.g. RK3576 and RK3528. This clock is not described in RK3588
> clock tree so it never gets disabled by Linux clock framework.
>
> I suspect similarly one of the NPU root clocks is what drives the NPU
> PVTPLL and thus always must be kept enabled when PVTPLL mode is used.

Thank you - the PCLK_GPU_ROOT observation was the missing piece. I went
through the firmware my board actually runs and can now name the clock
for the NPU case.

First a correction to what I told Nicolas earlier: my BL31 is not the
vendor blob. The boot banner reports v2.12.0-9-gd5c68fd92, which is the
edk2-rk3588 project's TF-A branch: upstream v2.12.0 plus nine feature
commits (SCMI voltage domain, eMMC clock, TRNG, ...). The only one of
those touching rk3588_clk.c adds an eMMC clock; the NPU set_rate/PVTPLL
path is unmodified mainline v2.12. So Nicolas and I are effectively
running the same clock code, and the firmware-difference caveat from my
earlier mail mostly evaporates.

What clk_npu_set_rate() in plat/rockchip/rk3588/drivers/scmi/rk3588_clk.c
does:

- The rate table gives every OPP from 300 MHz up a ring length > 0, so
  they all take the PVTPLL path; 200 MHz has length 0 and takes the
  normal GPLL divider path. The 200 MHz suspend rate we both converged
  on is therefore safe by construction on this SoC.

- For a PVTPLL rate the firmware programs ring_sel/length/calibration
  (cal cnt = 24, T = 1 us, i.e. a 24 MHz reference) into NPU GRF at
  0xfd5a2000 (NPU_PVTPLL_CON0..2), and only then flips the mux in CRU
  CLKSEL_CON(74) to the PVTPLL path.

The Linux side is where the NPU differs from your GPU case: the NPU
root clocks are fully described in clk-rk3588.c. pclk_npu_root is a
gateable composite (CLKGATE_CON(29) bit 4) and NPU GRF hangs off it
(pclk_npu_grf, CLK_IGNORE_UNUSED). In the mainline DT only core 0
(fdab0000) requests PCLK_NPU_ROOT as its "pclk"; cores 1/2 only hold
their aclk/hclk. So whenever core 0 is runtime-suspended, pclk_npu_root
has no user left and gets gated.

An SCMI set_rate to a PVTPLL rate issued in that state programs a GRF
whose bus clock is off, while the mux write still lands because the CRU
is always clocked - leaving clk_npu_dsu0 parked on a ring that was
never configured. That matches the empirical failure in my RFC exactly:
the sysfs min_freq write while suspended, followed by the power-domain
power-on ack timeout. (I have not put a scope on the APB bus, so "the
GRF write cannot land" is inferred from the failure signature plus the
gate state, not observed directly.)

For the series this reinforces the hold-all guard: resuming all cores -
core 0 in particular - around every rate change keeps pclk_npu_root
enabled for the duration of the SCMI call, closing the window for the
sysfs, governor and cooling paths alike. Your .config_clks() +
pm_runtime_suspended() check covers the OPP-initiated paths; I will
reference it and your branch in the cover letter.

One open point where your GPU experience may help: besides the GRF
programming interface, do you know whether the ring/monitor logic also
depends on hclk_npu_root, or is the 24 MHz calibration reference
(xin24m, always on) the only other input? If you never had to find out,
I will determine it empirically by holding only pclk and cycling rates.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
