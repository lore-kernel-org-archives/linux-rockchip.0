Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B80C83F34
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 09:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tZUdqye0j9fTtjLhIu5skFlFG42gX4kPi7jP0fqM4/4=; b=sTQqDxEaA+issQ
	PrGzye0ABnXmL0scRtlBCGadS5v9Z75FlFbXTg2VWbGrsEEq8ozarT7zr2d/t9b7m8xkvUs8vk0xq
	FbSjPaNx4ayFxw0ZBKKL8+NjK5nX9/lGagikXJCSsGXvxj+s3KPzVFhrItRfrmSeGMJxbWxI4xi2o
	6FV+X4TBewhoTgPaBrWkzsjeNxqFRYJrMF+hiba+9uO/X1OSMtR3t3pHGI/DAsRR/WdO3R8VQdcAx
	uPfLWBrdrQpAZxhg28iSyBnno4vYsn3y5wfqhJZ9av+CWxiLjFznMH20YPwzGoK1uPmJql+p/3IGT
	v/4TURV2EHTIyWzzIL8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVay-00000004TqY-0jOJ;
	Wed, 23 Jul 2025 09:17:04 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVHj-00000004Qlf-41bV
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 08:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1753261030;
 bh=QS4I3+me3Jqc+8KXuQkWvNUcvS5LmPT5tRhG2NxNXzU=;
 b=PskPsK5M2v8b/s3vvbBUvcu3DeCPeJc2IozfHpCh2OHSVIPqoQB/o9JA8AwvuSCV18FT7TTMo
 jxgnLKIxfPfgRg9F6XEpecNuAAve/h+tXUO5rqzs5j43HuBNMUPcWkTa8gI2UGlnsiEjNXfK5cF
 0eQb/bY00fpibPiqonGLxSgDvhKolXxjezFo+WBU3TXkn2ePRMOvPjDOAcrXoWcQVDOzMh2tfYy
 OeRXNqVc3wv+Yv68Pcu7X41kHqNLB4Kdn19iWhqWWZBLlhJuonw+zO0kzTw95aDZvDK+3EIqlry
 FopYri8EOIgbXpV92KSsuM7eBspUplzgPcMuRhhRxadg==
X-Forward-Email-ID: 6880a3dc144dc4a5e5baedef
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/5] rockchip: Add power controller support for RK3528
Date: Wed, 23 Jul 2025 08:56:42 +0000
Message-ID: <20250723085654.2273324-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_015712_287310_297DE5E3 
X-CRM114-Status: UNSURE (   9.73  )
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

The Rockchip RK3528 support multiple power domains, one PD_GPU that can
fully be powered down, and other that can be idle requested.

Vendor kernel flag all power domains on RK3528 as always-on, this takes
a different route and instead tries to describe all devices power-domain
in the device tree, even for controllers with unsupported runtime status.

The PD_RKVDEC is used by RKVDEC and DDRPHY CRU, and is kept disabled to
prevent a full system reset when trying to read current rate of the
SCMI_CLK_DDR clock.

pm_genpd_summary on a Radxa E20C after this:

  domain                          status          children        performance
      /device                         runtime status                  managed by
  ------------------------------------------------------------------------------
  vpu                             on                              0
      ffaf0000.gpio                   unsupported                 0           SW
      ffb10000.gpio                   unsupported                 0           SW
      ffbe0000.ethernet               active                      0           SW
      ffae0000.adc                    unsupported                 0           SW
      ffbf0000.mmc                    suspended                   0           SW
  vo                              on                              0
      ffb00000.gpio                   unsupported                 0           SW
      ffc30000.mmc                    suspended                   0           SW
  venc                            on                              0
      ffb20000.gpio                   unsupported                 0           SW
      ffa58000.i2c                    unsupported                 0           SW
  gpu                             off-0                           0
      ff700000.gpu                    suspended                   0           SW

Changes in v2:
- Drop already applied patches
- Add snps-dw-apb-uart dt-bindings patch
- Update commit messages

This series depend on the patch "arm64: dts: rockchip: convert rk3528
power-domains to dt-binding constants" [1] for a clean apply.

[1] https://lore.kernel.org/r/20250620201715.1572609-1-heiko@sntech.de

Jonas Karlman (5):
  dt-bindings: gpio: rockchip: Allow use of a power-domain
  dt-bindings: i2c: i2c-rk3x: Allow use of a power-domain
  dt-bindings: iio: adc: rockchip-saradc: Allow use of a power-domain
  dt-bindings: serial: snps-dw-apb-uart: Allow use of a power-domain
  arm64: dts: rockchip: Enable more power domains for RK3528

 .../bindings/gpio/rockchip,gpio-bank.yaml     |  3 ++
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |  3 ++
 .../bindings/iio/adc/rockchip-saradc.yaml     |  3 ++
 .../bindings/serial/snps-dw-apb-uart.yaml     |  3 ++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 30 +++++++++++++++++--
 5 files changed, 39 insertions(+), 3 deletions(-)

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
