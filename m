Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86DADC5DF86
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 13:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdlBuIeNlM7Bwr1gNCVuSf3N+8efYKxn1ToNBnHjh4g=; b=SWxfDY35R7IziH
	hoYi+Gb5VpxdP+BTgYPx0h2GT86LxH5eV2q+R8KY2l/h98CgiDg3vZr3BonPNrgMZy4cEEdc3hjHA
	Whk83BY8U6G6NCXqzR5Hc9IWK9VIfhc3RxaTGTVGMUPdr6Jv5AJVku3EmgHjdDYbJ47alq9FhH4x8
	Z7pPXpN1o94rQRB3uFGbCNrWGW0YlSj/L5cLlpPHzZ3GyTgNev3+LgoPNMYfubnakRzh3g6KngLSS
	mBg8CDtq69iXJ16hzgl5e7LgblGsbR6Iq9o5qqlPGISDdsXdpwpQ78tgW8sX0CRuZTke87Cn2HkIG
	P7xVEXgRBq0K2H6LuL+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwftc-00000009ogd-484h;
	Wed, 19 Aug 2026 12:59:56 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwfta-00000009og1-0I1k
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 12:59:55 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4954c08a7c8so738545e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 05:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787144392; x=1787749192; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=dA5rU+vuRqS0Z+LPWRZHCw6d9diJLksBuXxk6FmF4tw=;
        b=QgxDQMBef28nvAYgwTE71HPutEFlO5y78gx/fq4ptI92DiH6Ldr2l/ON9uDYv4MwJa
         egN0o/BvP6ylYGyKxI9zCBaVkVxVm1wFdg52+4qvpCCZZsh6AFqEeyAW++FSmBExwHsX
         /lDZ5z6QpknNcYRHNHOOi0dhGfOQ5Trtr+3SH5T4/A+Z1cnZ138moJx2a+6PzouXIGXI
         oBZxSclHRm1Hr5YACJeW1olkpfy/zlUbGuHdbxqw473EFufnRDOaF1rAfpADnTMQSkLx
         yHfaEz4MNE7JQZ8q0hvVbz6sDLEkn/etNqkYsz3Zz8bFBIdzu5EuQhAhqmC669dPxhyG
         3rGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787144392; x=1787749192;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dA5rU+vuRqS0Z+LPWRZHCw6d9diJLksBuXxk6FmF4tw=;
        b=gqmaTVeJyV9k28V0wGQt3aFSnXub95zt5heNFGH0vX77h5KCDS5ZsmjViey4FPv+2P
         yL8DRreLjejzubXP1LgglCPbZbgEyy5Db+0CCJiqDhmpz8Jqv9xpvQdwhqing0BTw9bT
         sjgBV2cNOoOUr73xkPVUz4q3FnRvi3z9HywnShbEwzXZBlpY9XqKwwSQvCkHjYe+rRBl
         egq/UNqymJQGee3lIG+bQL5JaHeCcoayWlxJ7TYa/7YDbToVPpllZNGL9/XtYDLE3k09
         w5NajuzFGIenb5cEUSydRw08WZq6Yy6Gbgd5Zw0hrn3WD34onl4vi4uC3KUsi21wgA41
         QXhA==
X-Forwarded-Encrypted: i=1; AHgh+RoOG5Q3ofaOaVkQbPHOBkzfcdAPNtplg0KcMKbO6gpEB5opEmo+CL0ugFPsvccYUPk6fsLthlPiP7MZJ9v3Wg==@lists.infradead.org
X-Gm-Message-State: AFuF++l0i2X6MYo8fSCIyrCD4r8NvbGKFWTikrF/vktqklvIBq8DVrha
	pt8idbYrAG9MLUxpVOj6eKMbBxJcDSkLYIYGmdxsUjvnLcIsTte31GZh
X-Gm-Gg: AR+sD122pbTKItaAhQIXkOmxQT9A2zoZAYDiWP+TQZKzrWrdSaINmZJKMvCq/W7o32X
	keYtReZ5ADb+Q3UrSCQqR0Brff0oPP3zG3io/ays+oLSUci+mTwTgJOx4ehwF2u/QMy9vBlZkm8
	URgslu9oAnt99kAHPNvTMb5/5Qk4v5Wjt0Oan6cLflMHe1Q0ZbvaMIQhhmHjSs1E388Lu34HZbH
	qcgh3uCTS1ZXKQX0ub8g3rrsVnVDRPtL4cScTzUNYFW1+oXmLWZKLghhb6GsONuDNaHKecvlS9V
	UQSJVRLQ3ZpqvImzjVwoFA1fgFqo2LZd5tKLvJbYrhHVCZxCKjRw6v5KhpFS2y/sR0p1+NwYx7w
	TzZxGYxs01MSKG5Zaaf990skFM7P8L7hRWMtD/X+/bAGOkn8t0O3uIGaVYNY8MbloGWA9TavY2a
	tLUkI4sX3EaNKYQ/qh/aGiOc15S2XMQdw/qGacQ5vANcr1DktYdifev1Uz4qzdMr0sZJquZaadp
	IdZRL1reZXpR3FKSuOmqxLfYYYsK5kqWrVrXwS1HAPUydqEEwpmJGNtM9xpk5Wc0h67RA==
X-Received: by 2002:a05:6000:701:b0:47f:dfc1:6907 with SMTP id ffacd0b85a97d-482b1fc4e0dmr4045866f8f.3.1787144392065;
        Wed, 19 Aug 2026 05:59:52 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B929600FBC58E6E51BF6D72.dsl.pool.telekom.hu. [2001:4c4e:1b92:9600:fbc5:8e6e:51bf:6d72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482b14d059bsm5128441f8f.36.2026.08.19.05.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 05:59:50 -0700 (PDT)
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
Date: Wed, 19 Aug 2026 14:59:30 +0200
Message-ID: <20260819125932.5853-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se>
References: <20260801131656.58450-1-royalnet026@gmail.com> <c495dae1976dab842d77f4a4a142217eb77b6fb7.camel@ndufresne.ca> <20260818072936.41844-1-royalnet026@gmail.com> <ad1e526e-a4cf-4c34-88ff-1884ef2f3dfe@kwiboo.se> <286e8418-fae6-4979-96d1-e13abb04b3a1@kwiboo.se> <3204a0d0-969d-4ac6-adfd-29c57f1c3e0a@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_055954_144357_2C576DC1 
X-CRM114-Status: GOOD (  17.59  )
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

I promised to determine empirically which clock the NPU PVTPLL needs.
I ran that today. The answer is not what either of us expected, and it
comes with two corrections to my previous mail, so those first.

Correction 1: I wrote that only core 0 requests PCLK_NPU_ROOT in the
mainline DT. That is wrong - all three rknn-core nodes request it as
their "pclk" (my grep had truncated the clocks list; verified since in
the tree and in the live FDT). The hazard window is unchanged in
practice - the gate still closes whenever all three cores are
runtime-suspended, which is the normal idle state - but the sentence
as I wrote it was false.

Correction 2: my inferred failure mechanism ("the GRF write cannot
land, the mux still switches, the ring is left unconfigured and the
failure appears later as a power-on ack timeout") understated reality
considerably. Measured today:

Test module, on the same v2.12 firmware discussed earlier: acquire the
clocks via the core DT node, verify all three cores runtime-suspended,
then issue one clk_set_rate(scmi npu clk, 600 MHz - a PVTPLL-path
rate). Serial console at loglevel 8, captured by a recorder on a
second machine, so the last lines survive whatever happens. Three
arms, one variable:

  held during set_rate          outcome
  pclk_npu_root                 SoC resets, U-Boot 0.58 s after the call
  pclk + hclk (the PD pair)     identical, 0.58 s
  nothing (control)             identical, 0.58 s

No oops, no SError trace, nothing on the console after the set_rate
marker in any arm - the SoC dies at firmware level and the reset
latency is constant to the millisecond across all three. Bus clocks
are simply irrelevant to this failure: my open question ("does the
ring also need hclk_npu_root?") turns out to be the wrong question.
No root clock makes a domain-off set_rate safe.

The explanation most consistent with the data is that the NPU GRF (or
the PVTPLL block behind it) sits inside the NPU power island, so the
EL3 write to 0xfd5a2000 with the island off is fatal regardless of any
bus clock state. I cannot rule out that the firmware dies elsewhere in
that path, but the clock-independence is measured, not inferred.

The counterpart run closes the loop: same module, same set_rate to a
PVTPLL rate (1 GHz), with the cores resumed first - completes cleanly,
and the GRF readback then matches the firmware table exactly (ring
length 12 for 1 GHz in CON0_H, cal_cnt 0x18 in CON1, 0x40000 gating
interval in CON2). So the sequence we discussed is confirmed live in
the registers, and the domain state is the single discriminating
variable.

For the series the consequence is now sharp: every path that can issue
an SCMI set_rate - governor, sysfs, cooling, OPP init - must guarantee
the domain is powered first. The hold-all guard stays ordered before
the devfreq patch, and your pm_runtime_suspended() check in
config_clks() guards the OPP-initiated paths for exactly the same
reason. On mainline as-is the NPU exposure is theoretical only because
nothing scales the clock yet.

One small ask: we tried to read a ring frequency counter in the NPU
GRF (candidate offset +0x24) to publish measured ring frequency vs
voltage; it reads zero with the ring demonstrably running, so the
candidate is wrong. If you happen to know the OSC counter offset in
the GPU GRF from your experiments, the pointer would save a TRM dig -
if not, no matter.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
