Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F900C77B60
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 17:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E8fiTtDlir1tuYbd4AjTK/No7wDZ4xaxvlZaumswboQ=; b=yaEfKhtYiwI7NX
	8J03TmaQ8y2MQTXqmOM6y2k6TQueR6dSETnXFQVc1J7oyHeWuO+niYTXJIPY+z0wgRvfP0EW6SjTt
	/8vom111cvc/BuEe1bZ4B360xFpbE9Xlyhs7DEKrNPssTHBxXFpRsWTF84AhBzy7OQeGcg0Pv7iKC
	I/BD/1glEvrhdGqiRnX6y4nUp3wfIcurj2Fjj/0LDPPmyViePktbnFKMr+dyUNvs8Zc42NpMkARUT
	6a4zw5adFXuw45wxf9sMm3Q4QYwGMylDWw+Sbb8m5a8/K0f4Lmz0Juah9TSV28gX8UG5ezstyB0ra
	bQU1zEb9HEpgqRDhzpyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjkbq-002P7h-2s;
	Tue, 04 Apr 2023 17:38:18 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjkbm-002P6Y-2y;
	Tue, 04 Apr 2023 17:38:16 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D66FF660316F;
	Tue,  4 Apr 2023 18:38:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680629891;
	bh=sZFCIz3WQaocYqGt8p6qjyCRTLYO1hDQ2ldahEwFXv4=;
	h=From:To:Cc:Subject:Date:From;
	b=hFHbiL3TJVhsYMuvzK8o18BLOGxDgwWEH81iBBbqrTyGS4mfzVyAX/3+/01lRfh1I
	 wLGJmgr1PozqCNMvtbzGlH3o3X9pIiNFq6td/A0VE6678oUhNtnXJJ/KmSkfAaFBS3
	 fK04DrX40o8AkUf/mckoZ+Iiq6asgZxEdKmnPD57XSw/ehhi2h1h7aC4exa5tc6zuf
	 NNqjwLnT9PMsPbToEyBQ0OHmPYhPN55dOVV2Ha/dwKSqIOayz5oEiF81hYgxQcocXJ
	 CcJWaV+PuIuoAGaFVjFgF27CVA5KUhok0C1e2rVH6XG8a4ZNSHFv7e1AxAtuTovzKe
	 iLJaptXNdUmUw==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2 0/2] Add PWM fan support to Rock 5B board
Date: Tue,  4 Apr 2023 20:38:05 +0300
Message-Id: <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_103815_185895_D7A534F3 
X-CRM114-Status: GOOD (  10.62  )
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

This patch series enables support for the PWM controlled heat sink fan 
on the Rock 5B SBC and, additionally, converts the hwmon PWM fan bindings 
to DT schema format.

Changes in v2:
 - Updated PATCH 1/2 according to Rob's review
 - Added Reviewed-by from Christopher to PATCH 2/2
 - v1: https://lore.kernel.org/lkml/20230403105052.426135-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (2):
  dt-bindings: hwmon: pwm-fan: Convert to DT schema
  arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan

 .../devicetree/bindings/hwmon/pwm-fan.txt     |  68 +---------
 .../devicetree/bindings/hwmon/pwm-fan.yaml    | 119 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  12 ++
 3 files changed, 132 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/pwm-fan.yaml

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
