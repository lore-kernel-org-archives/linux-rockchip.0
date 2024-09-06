Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 075C9CE7AEB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 08:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LV6RzHdrnAKgSiBIasAZdEPUOmIZ6DiKKMR9z1MBBQI=; b=4XMZfLey1ePreh
	+Q7hdUw2sv8wzzSSjzXDiXwtuJDPNi/BrN+39kOEYCgWr1IQbDaIR2XNFWF/HDqBgIv/VwSZ3m/oj
	YpemftNgF/8omn7cqypxb/uuIW+WYkN6H1icSdyz2gQtxNOjLS0W+QpVQ67ZXkSWYkYTwzNc/Jkyx
	NN2cYb6/P3V8HkwAkzQ+mq0aY4IzOocjk+CxnBNbWyLUgKpBjv6WzKVnMI6vQIm/81jLthk/uufrR
	T2MJMP6JgQMsfSw4fo6aEnMLiVbPP9kCw8UeTDZUME0ODycqklX4Trd1bxdfmAFGjrtmqlo1p3d/U
	QLc2JrOq2XNefoIn6zxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUUu-0000000BMsb-3SYp;
	Fri, 06 Sep 2024 08:39:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUHU-0000000BIrj-20k2;
	Fri, 06 Sep 2024 08:25:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SMWPR0ffevZU4QK7TroW0Y57HczgmsnN8JBHEkqCR00=; b=Rs4+nzZuZgai96tBrFYnaQUHm+
	QEAfCB7oyRDM5UnJr7n/54ieR+1A0JEJHG/CRU71VtPuI9d7p0NNqzrPC+XUsHoeOVjGJkdwV4AgD
	VboucS9wfUQZlBKMyLObCh5vzSKyDxEQP45fhv19NgEVSIGSTruG5UfXt4tBvn8DzLUAwGfr8hFZp
	PGq4y9PupEmtUCqARILf0IERQzAWWQob9Q5JJ9R6v3/t7Qqz7GJJ1NhCIOwSDBKm0QrsmnFLRj6u9
	10XgbasRwClRBv88bz8VYAmRtLelKj1bla0kMG7XjDBlz4RlTxtKG2XoaosKFsm/YcnDqCUTw1JYn
	OmLEnVbQ==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1smUHO-0000jF-87; Fri, 06 Sep 2024 10:25:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 0/5] Binding and driver for gated-fixed-clocks
Date: Fri,  6 Sep 2024 10:25:06 +0200
Message-ID: <20240906082511.2963890-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_012524_723988_EE594CCE 
X-CRM114-Status: GOOD (  18.96  )
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

Rockchip boards with PCIe3 controllers inside the soc (rk3568, rk3588) have
external oscillators on the board to generate the needed 100MHz reference
clock the PCIe3 controller needs.

Often these clock generators need supplies to be enabled to run.

Modelling this clock has taken a number of shapes:
- The rk3568 Rock-3a modelled the generator-regulator as "phy-supply" [0]
  &pcie30phy {
  	phy-supply = <&vcc3v3_pi6c_03>;
  	status = "okay";
  };
  which is of course not part of the binding

- On the Rock-5-ITX the supply of the clock generator is controlled by
  the same gpio as the regulator supplying the the port connected to the
  pcie30x4 controller, so if this controller probes first, both
  controllers will just run. But if the pcie30x2 controller probes first
  (which has a different supply), the controller will stall at the first
  dbi read.

There are other types too, where an 25MHz oscillator supplies a PLL
chip like the diodes,pi6c557 used on Theobroma Jaguar and Tiger boards.

As we established in v1 [1], these are essentially different types, so
this series attempts to solve the first case of "voltage controlled
oscillators" as Stephen called them.


With the discussion in v2, gated-fixed-clock was deemed one possible
nice naming, so I did go with that.
Stephen also suggested reusing more of clk-gpio to not re-implement the
gpio handling wrt. sleeping and non-sleeping gpios.

Though instead of exporting masses of structs and ops, gated-fixed-clock
is quite close to the other gpio-clocks, so I've put it into the clk-gpio
file.

changes in v4:
- fix example node-name in binding (Rob)
- add Rob's and Conor's Reviewed-by
- which -> with in patch 2 message (Diederik)
- store rate as unsigned long (with a temporary u32 to make
  of_property_read_u32 happy) (Stephen)
- add static to struct clk_ops (Stephen)
- match table sentinel (Stephen)
- some formatting (Stephen)

changes in v3:
- rename to gated-fixed-clock (Conor)
- move into clk-gpio
- some tiny cleanups to the existing clk-gpio drivers

changes in v2:
- drop the Diodes PLLs for now, to get the first variant right
- rename stuff to voltage-oscillator / clk_vco as suggested by Stephen
- require vdd-supply in the binding
- enable-gpios stays optional, as they often are tied to vdd-supply
- drop deprecated elements that were left in from the fixed clock binding


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts#n605
[1] https://lore.kernel.org/linux-clk/b3c450a94bcb4ad0bc5b3c7ee8712cb8.sboyd@kernel.org/

Heiko Stuebner (5):
  dt-bindings: clocks: add binding for gated-fixed-clocks
  clk: clk-gpio: update documentation for gpio-gate clock
  clk: clk-gpio: use dev_err_probe for gpio-get failure
  clk: clk-gpio: add driver for gated-fixed-clocks
  arm64: dts: rockchip: fix the pcie refclock oscillator on Rock 5 ITX

 .../bindings/clock/gated-fixed-clock.yaml     |  49 +++++
 .../boot/dts/rockchip/rk3588-rock-5-itx.dts   |  38 +++-
 drivers/clk/clk-gpio.c                        | 206 ++++++++++++++++--
 3 files changed, 277 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/gated-fixed-clock.yaml

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
