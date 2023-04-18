Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC4B8C77B71
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 09:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=otD1VYpNZLt6LygDlCZ9bTAnCtTNNZhlJFKQf2G1KbQ=; b=Z8nrXQ5jg8sIRw
	1pBPe1Uv0e2HIlQsItp0o9Ifq4pXvhVjB0Qrt2zIjTHMLfghn5l29973z9/+HrHQLgb6+KVlQpC+p
	qiwWDcYSV7WwQz9jCOBOaIKkpe5iXBJwIi4dpFZXh9hY7PwLqwjpKBTphAR7DZFX/vdWrv17ete8F
	6UtRZmtdkQKeAgEtywbGOH1dgWXwhZ1+ZH3QMtuXr5TAgCOAOGFrb+MaQhw56NdA5XsUXEh0oCodO
	NeiZQdf/uRxN/VdzuM6tF8kt+WrKJuC8fb2N4sl4qV923OUTx6N2tx8QqDNauAszgbOo1Ro5b0UP+
	XAVZ6wjai0dLHzIYuvig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poi29-001Xg5-1F;
	Tue, 18 Apr 2023 09:53:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poi25-001Xd9-0q;
	Tue, 18 Apr 2023 09:53:54 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 16EC7660323B;
	Tue, 18 Apr 2023 10:53:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681811630;
	bh=/NJxn0jj07PRnWQuDhRCLKMSDEpUWnx1vXPAvpNIRiY=;
	h=From:To:Cc:Subject:Date:From;
	b=ctSgWBJBvh81NE3Wh3VBdnpbh5bi/H+OYBZWgbCfxQs03f5HYw/mLzREjYxX7T8rf
	 55b+FyEnL1yo1PEFP9jqPFc3YC/A7ZzhiVd8Utfk3pdwjCHRiHXurzgLf6zOuUKeR5
	 xCj2QxTBBgYoVx3yvcqdGeq7e6tsehOjatqxbXIoW6PvOws1Qb5FYfH23bbmP8lVg/
	 OTX6iYAy9TNvNiT+shN4ZLu0yVznOkKOEoJNYc+v8HHZrU2qmxlpzuBB4TmhL5HNyI
	 TD/wkqKx2UZ6z8B3Sj+FEvl7iJHjVZgEsgVSpkxw7W0mpeXRzcEK+r6eGPAy/+J8ff
	 1NQC5s0MBMp7g==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 0/3] Enable rk3588 timer support
Date: Tue, 18 Apr 2023 12:53:41 +0300
Message-Id: <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_025353_445187_03264B17 
X-CRM114-Status: UNSURE (   8.80  )
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

This patchset enables Rockchip RK3588/RK3588S SoC timer support.
While here, it also handles a minor DT binding issue related to RK3288.

Cristian Ciocaltea (3):
  dt-bindings: timer: rockchip: Drop superfluous rk3288 compatible
  dt-bindings: timer: rockchip: Add rk3588 compatible
  arm64: dts: rockchip: Add rk3588 timer

 .../devicetree/bindings/timer/rockchip,rk-timer.yaml      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi                 | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
