Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB8D9C77B76
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 15:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i4t+W8C0w7i914eN/6rvBAqeffCvOsRWYR1iQPZScyI=; b=ugY8/fBh7fd7op
	Br5EpW8R6hOqU6xtYR7GJMM4KDRSZLRRgCxvdqUbNdr1TS+X9JIPB6iPUcQISo7DW+lWsimW+ty0Q
	szGhyU9bUJEGo6tUt6JD/tmf/JaSZArzdEAEAeJRe8DzMsZyntufPVsVYRR/pJqAGJvxTQQlsz8CM
	vOnbX6ySmyL8YFzx7Fs5q3S6f7VILNmTksQMX/xGeuJyTJ8sHM7+TULcfD7PQMiVOPt48aXZ632Qj
	bVEAMC23/6BOiB+X97ZlwCjEW1TpS54g3l4fYzbKAYcDhBbJlvSjelo3RLXrofYP7+6+erkQPWGdx
	EFsNcU5reiIZsRMAixGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poQLa-00GkTd-0w;
	Mon, 17 Apr 2023 15:00:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poQLV-00GkRE-2J
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 15:00:48 +0000
Received: from jupiter.universe (dyndsl-091-248-191-155.ewe-ip-backbone.de [91.248.191.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 97CE566031F9;
	Mon, 17 Apr 2023 16:00:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681743641;
	bh=LnwQ/90N7oiIQMOpIlGj+WTHvxq19y4J7oSF8At74eY=;
	h=From:To:Cc:Subject:Date:From;
	b=fZXRMKTW1byrUO3FKVHAiPUFO6ZaTTJN1Qsjoz+zKYXm6LfSfvADoM+z+pYNmcjL4
	 QC+hwjCMod7vhdr8g+akj8X/Fp2fw0+yPsdP8QegsdiCTbXiysyiyy+giiSwxrdgKb
	 YhJvqBs4l3c2YqsX/vIBnmcAwnwNS++KULhLtqG3l7fH3nxrkDuo13/FMjM3a5nayj
	 +5ecCtEQTzDZZS2x37nD9SyVrDa62J3RWUKDoaJDhgpGQZPcjSIWH0oMZKXpWtzOJK
	 l3kcWLjmUGl+uiztmG4o4TI5tFNKVEJEYt0UFaZ2UxH9Rd9kC01LiRBEAWCQ4+kJQb
	 vn5JjI52RzHtg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id D7BB04807E2; Mon, 17 Apr 2023 17:00:38 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Marc Zyngier <maz@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peng Fan <peng.fan@nxp.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Peter Geis <pgwipeout@gmail.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 0/2] Add Rockchip RK3588 GIC ITS support
Date: Mon, 17 Apr 2023 17:00:36 +0200
Message-Id: <20230417150038.51698-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_080045_899935_918951E8 
X-CRM114-Status: UNSURE (   9.98  )
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

Hi,

We got an Errata # from Rockchip for the GIC600 integration issue in
RK3588, so here is another try adding upstream ITS support for that
platform. I noticed
https://lore.kernel.org/lkml/DU0PR04MB9417388F9BDD73080294FA8E88889@DU0PR04MB9417.eurprd04.prod.outlook.com/
so I kept the flag name itself generic.

P.S.: I'm taking over from Lucas Tanure, who no longer works for
Collabora.

List of previous attempts / changelog:
 * PATCHv1
  - https://lore.kernel.org/lkml/20230227151847.207922-1-lucas.tanure@collabora.com/
  - uses of_dma_is_coherent() instead of providing errata info from kernel
 * RFCv1
  - https://lore.kernel.org/lkml/20230310080518.78054-1-lucas.tanure@collabora.com/
  - uses 0x0201743b IIDR for quirk detection and misses errata #

Greetings,

-- Sebastian

Sebastian Reichel (2):
  irqchip/gic-v3: Add Rockchip 3588001 errata workaround
  arm64: dts: rockchip: rk3588: add MSI support

 Documentation/arm64/silicon-errata.rst    |  3 +++
 arch/arm64/Kconfig                        | 10 +++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 17 +++++++++++++++
 drivers/irqchip/irq-gic-v3-its.c          | 25 +++++++++++++++++++++++
 4 files changed, 55 insertions(+)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
