Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 690D9C76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 08:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7/5tC3v7+rbODdYB/OYVGs26JTzNH/M8QD/3K8ENUIk=; b=WDng4iunp6Q/Us
	uSE0k2mVqtZ6CtZ5MVlX9L8uU2zlT2osXZ694cNMIZGVVzGB04DSJJ/VLo4Nv8QW5JhI1tIeHYfdC
	6pNBjj/fVh9XpMbl3VsC9Kkd7l7mk0Qhj8Ee46H18vIRoQPFSC6gzaV6KFGsb8EY4FhSAH5WUjpUN
	D2g00Z/8nnjDcKGe3btkjcy2vzNhMF0cRUUcCBY2KYtxBiPT0Yusr8HpzohLtFjfbEo3wMVClCmcd
	4yPqzuuOaTn+hrgHKABMuwH/tQ5CpIpWTlYOxMTKnHt+el7A24v4+zJuFJEdt7dDJyU3Xr5eoNvst
	igDfiL52HwWaWmxX4/AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9sS-006Ix0-22;
	Fri, 31 Mar 2023 08:12:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9sB-006Iq1-35;
	Fri, 31 Mar 2023 08:12:37 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 728D66603130;
	Fri, 31 Mar 2023 09:12:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680250351;
	bh=cxm+qr2mYnHLE7Z3z7StpylRHZPB7Js49GZnkR3q4CU=;
	h=From:To:Cc:Subject:Date:From;
	b=THomfaYyiZ0IY81u5EgpAo692E3PgYJ0pweR5hLxSoNFZDX9bFQfRasDDxa4wxXMA
	 Z7hDKBJjKvg2KVWJRRoryL6zYEP1KjL8pk9LUpDh0tYaco1OGjuL65NKgNC9V3xNWN
	 Nfia0pKiECbyTevnWprO+1TokHCytrgkWC4NyIZsByqzu+HQ7nrOCBZtE3o0pYoCxE
	 Jtcr8IzGyDLjT4s2wcAwagpHPgT34QjBKvDO55htbfi79k1IwLP++eZk8B741bPlgu
	 tHwhG83lkWtH1QvTyEkUzGkJSsK1XZV+4pXIXAmeU0lZ3mqFUZ1N3LX9oC1ZiHguUF
	 Xa2T7p4K/D54Q==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v3 0/4] Enable I2S support for RK3588/RK3588S SoCs
Date: Fri, 31 Mar 2023 11:12:22 +0300
Message-Id: <20230331081226.245881-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_011236_142307_08226082 
X-CRM114-Status: GOOD (  10.50  )
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

There are five I2S/PCM/TDM controllers and two I2S/PCM controllers embedded in
the RK3588 and RK3588S SoCs. Furthermore, RK3588 provides four additional
I2S/PCM/TDM controllers.

This patch series adds the required device tree nodes to support all the above.

Additionally, it enables analog audio support for the Rock 5B SBC, which has
been used to test both audio playback and recording.

Changes in v3:
 - Rebased onto next-20230331 and dropped patches v2 01-06/10 already applied by Rob
 - Ensured DT nodes are in alphabetical order in patch v3 4/4
 - v2: https://lore.kernel.org/lkml/20230321215624.78383-1-cristian.ciocaltea@collabora.com/

Changes in v2:
 - Rebased onto next-20230321 and drop patches 03-08/11 already applied by Mark
 - Replaced patch 01/11 with v2 07/10
 - Reworked patch 02/11 to v2 01-06/10
 - v1: https://lore.kernel.org/lkml/20230315114806.3819515-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (4):
  arm64: dts: rockchip: rk3588s: Move
    assigned-clocks/assigned-clock-rates out of scmi
  arm64: dts: rockchip: rk3588s: Add I2S nodes
  arm64: dts: rockchip: rk3588: Add I2S nodes
  arm64: dts: rockchip: rk3588-rock-5b: Add analog audio

 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  62 +++++++
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  68 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 156 +++++++++++++++++-
 3 files changed, 282 insertions(+), 4 deletions(-)

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
