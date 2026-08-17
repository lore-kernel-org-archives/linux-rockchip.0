Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 524D0C5DF70
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2026 10:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhaobgkr3cm8u5I4A7fUsWFvuh7JaO2mItEiLXaobm0=; b=BSSlCE1qYKnRbO
	Mvk8g47Id9Y2eWg3k3Jz+5ct2u8Bin5t1QW2RpvgE9V1FmdRTKmsINWROQPPItjXjDlrHoWJdSs69
	vmwB6c2QQ44ysUVdDHRbk3Q4oQQ8Y9rGfMqKu7glvfT0HopHw5I9dqKUjmdJL5ly+/7oVs5Frc7ps
	jiAmq4rcb2MLjPthT8ufXPSzPRiJ6yKHdwhFEyT8pCIr3IwGr0b1qenC3DGwasaftNkeUlygnPyHd
	2T2pjkO+CJ5Zzwm4FNFLGj6H5UPIQLTPXCgbsB7lfkGipIrFbUXmJOcMR36V69lbPfxz8zJN5TIAE
	TSuwAvxpZBMWpmdOhgyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvu9O-00000005rnx-1z8I;
	Mon, 17 Aug 2026 10:01:02 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvu9M-00000005rm9-20nK
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Aug 2026 10:01:01 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-47df6a5655aso363422f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Aug 2026 03:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786960859; x=1787565659; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C5xJAp5EsJh4mtoVRdetKKnVuOabsV+/QbXlIN6U2H4=;
        b=SGG021xnhIu/AsTAhlR0Of0rICMm6m0dBc3KgZO3WoNwjCGtd3qCwSoy3u5tolOF57
         h+x6bGcEI9ArSv6avLYbC7GiWW1APC7ic/M3ihiWvObzHKipN31Hb39ke1V7HQZl+gfM
         XuAnZ3MQGknXPbvbXo3hkbODEGRyY2w0hdKqELvZg/8KklJCEQCJW9STZ//fAO7jP7S5
         MfR/BVqI6y6CCyybY00mckZy9JpuXfknQP5XeD33eBl/1aSHN3kL42aV6KFj8eWmAqaS
         uKCxstphEVTa3+iot9ruRWWSV41gR8UaKG1jjuBBMPlkh5nVoSRLP0e+hcOVFvpLdHKR
         XjHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786960859; x=1787565659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=C5xJAp5EsJh4mtoVRdetKKnVuOabsV+/QbXlIN6U2H4=;
        b=Bu8Y057aR10Fm1dkHdHubB2CIRD5fvJ+JaHF8uzneLHYbeVrQfUfDshCufqu9/fUJb
         CGqMaN31UulXuK1p879pnoV13G9PiFtmOHinXTB1glCLcHRUcZpKwp9ezEEjss4zzwnc
         xIhD5uRBVhFd4n1tAddZigE2ymzcPMPAtYXOr5ndK+Hm2V8IVop3Uz7nZNAf7fI+jhqT
         Lyrjx0jpSfEa5kG36Cy6Ijpq8QuIUQIDWQvHa8FUSoMvENsg6/HY0wAMVWER+hxKHQs5
         EaQb8mhS1Ozx0KzZihwMWdVKXG0Yl8nI6cHwKpEUa/QMKKPIgbmQhAj2HOLdRCMHsT8a
         i9kA==
X-Forwarded-Encrypted: i=1; AHgh+Rq2c1o+AHWGZbJzx4uVo4S4Qxuw4YqknJI6pIGUeG7dl+3VBu4jVX+ybEvqgmDKS3wn9D3GHWF6K15Qe99LyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyelXVzm4Yjj3ZxRXkxMQ8dPmINQkkGcAYsNZq/F1UnyHFYX/cv
	uGeM3oGqA7yXmSGxaouAFcrm8WZ4BqD28euHYsCb2Kxd/PAUrc/hHpSa
X-Gm-Gg: AR+sD12owiwD/qeh03KVINPV3H5xjPhOpVzRdaTfjZ32ElGLNWvDzYvyqHTRPWsMP60
	WldDg0BSoqBB5MU1ZCml01BqoS1Z4HreGe17kN4hQWLPw//XdtNE8+z+UlbEgRe9Tb5ei877usU
	Deh0zNpiUkpFT4FfAi53tOQ/F9Y491hsEOGSrSDelRKAmTYF4Bm7PZ+tjDr5xJgTDEre3wXdMcc
	wu6JfDv6K1Ls4uTy7NsU12j9drRsTRcD475GhW7+Ca9ieytJk7N/OWEFsP9p9hla93pXwk50LQ2
	6xq3E1WbKRe4Su56WUzmqm2EV1aW895BxEhZF9IkwLLSQbTdAS9aD6JcS9G9wGIrjKBXsfZVycD
	ul66Dfa/mkNQ+t6NFaTfhOIE750V8xTO7ZOapUHcIF4SJoYTudWinX2n3Pc+vz3Rejw6HNWk1Fu
	FJ8weGl78fpNERvMaD2+8YnT/j7uXjwYpO5ECvgM+THgkawJEI6JZmIygMboCEXBoessqldUGaf
	b2/frLOVDuIg7tsdTfFhR8vhVO3fif2RSCKmCQsmhv/SDUOC41mP2AMg4cVApFwMVem7A==
X-Received: by 2002:a05:600c:a0d:b0:498:1371:660c with SMTP id 5b1f17b1804b1-499878d5e0dmr175209465e9.0.1786960858323;
        Mon, 17 Aug 2026 03:00:58 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8FC50027494B64639367E4.dsl.pool.telekom.hu. [2001:4c4e:1b8f:c500:2749:4b64:6393:67e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49996109652sm167889155e9.4.2026.08.17.03.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 03:00:57 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 08/10] accel/rocket: add RK3576 NPU (RKNN) support
Date: Mon, 17 Aug 2026 12:00:43 +0200
Message-ID: <20260817100046.24872-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260817094544.1159366-1-gahing@gahingwoo.com>
References: <CAEWPSH7ETfw2TDjUfOvcVtDm19FC43x2vP=Lh7m+XPOGptnPWA@mail.gmail.com> <20260817094544.1159366-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_030100_550642_8466B94C 
X-CRM114-Status: GOOD (  16.20  )
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

Hi Jiaxing,

You asked for a count that is not 24 modulo 32, so here are five, on
RK3588 with upstream Mesa. Same generator and same scoring as the 56, 88
and 120 rows earlier in this thread: 1x1 conv, 64 input channels,
uint8, output zero point 0, scored against the raw CPU reference with a
channel counting as matching at maxdiff 1 or less.

  oc    oc mod 32   matching      bit exact
   33       1        33 of 33        31
   40       8        40 of 40        34
   48      16        48 of 48        40
   56      24        56 of 56        47     (16 Aug)
   72       8        72 of 72        62
   88      24        88 of 88        81     (16 Aug)
  100       4       100 of 100       86
  120      24       120 of 120      106     (16 Aug)

Eight counts across five distinct remainders. The upstream constant
computes the whole output at every one of them, and the global maxdiff
is 1 in all eight runs. So on this SoC BS_OW_CFG needs no term in the
output channel count at any remainder, not just at 24.

Controls, same as before. No channel of the reference is constant in any
of the eight models - the generator refuses to emit a model where one
is, since a constant reference makes a trivial match. No NPU channel is
pinned at the output zero point. The NPU interrupt counters went from
zero to five across the three cores over the five new models, one job per
model, so each of them reached the hardware. And the counts that are not
bit exact are off by exactly 1, which as you noted is not something a
delegate falling back to the CPU produces.

What this does not say: it measures the upstream form only. It is not a
statement about how the modulo form would behave on RK3588, and it does
not touch your timeout observation.

Which brings me to your last line. I cannot run
ROCKET_DPU4050_MOD32=1 against my build, because the knob is not there.
Upstream Mesa has no occurrence of it anywhere in the tree, and
src/gallium/drivers/rocket/rkt_regcmd.c emits BS_OW_CFG from the
depthwise flag alone:

	if (operation->depthwise) {
	   EMIT(REG_DPU_BS_OW_CFG, DPU_BS_OW_CFG_SIZE_E_2(3) |
	                              DPU_BS_OW_CFG_SIZE_E_1(3) |
	                              DPU_BS_OW_CFG_SIZE_E_0(3));
	} else {
	   EMIT(REG_DPU_BS_OW_CFG, DPU_BS_OW_CFG_SIZE_E_2(1) |
	                              DPU_BS_OW_CFG_SIZE_E_1(1) |
	                              DPU_BS_OW_CFG_SIZE_E_0(1));
	}

which is 0x36c and 0x124, with no output channel term in either. Setting
the variable on my build would be silently ignored, and I would have
reported a null result as if it meant something.

So: send me the value expression your knob selects at 0x4050 and I will
patch it into my tree locally and run the RK3588 side of the comparison.
I would want to run your oc=64 control at the same time, both ways, since
that is the one where the two forms emit the same value by construction
and it is the cleanest discriminator you have. You got one side of it and
the other hung. I can run both here, and I can also give you 40 and 72
under the modulo form, where the remainder is 8 rather than 24.

Two things I want to acknowledge rather than skip past. You flagged the
mod-32 confound yourself before anyone asked, and you were right to,
the twenty four lost channels at 56, 88 and 120 really are forced by the
arithmetic and are not three independent confirmations. And you disclosed
that the 120 modulo row is a different boot with an unrelated power
domain change and a different NPU rail state. Reading that row as two
points rather than one is the correct call, and saying so in the mail
rather than after being asked is worth more than the row.

If it is useful to anyone, I can send the generator and the scorer. The
generator builds the flatbuffer by hand and self-checks against the CPU
interpreter before emitting a model, and the scorer is your perch.py
logic reduced to this one case.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
