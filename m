Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE38FFA373D
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 17:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kc+9l7KqXuIdRXQ0fLiAHaxh4nj7z7uwVGchjW1AyQc=; b=jz6sGyXbc/rL/b
	++9dbWKoHQhs1DcnErkGMB8svJa3T+sL1eDD+pK8ooK66er6yp//FhLR5sJN88w1mciQW8GY455IN
	S7oIOxRwpVpIMUj3bmMZGUKHaSyda2BguD+vBYHkzep9BKmtA4feq2kn39zSEzeR7H35P459MCgAs
	xydPBLah9nZx3aqtq61wudV7I9iuzdOcziEHLRM/x6tqiFfxlxW5Lg4TEcaYIx7CYljARgNtw8spY
	NRavKHfgrOfN12qwi7exxCuWqQgJDtsZxdDAcgCQ4YsHMcHRvfta7oGa6YxmQkJ8IK4V21zs5ygAV
	Hk8uvVUhFQ4yGCKkkyQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olw7H-009Hhn-Jv; Fri, 21 Oct 2022 17:47:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olw7D-009HdT-RT
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 17:47:29 +0000
Received: from jupiter.universe (dyndsl-037-138-189-087.ewe-ip-backbone.de [37.138.189.87])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 08AD466023A6;
	Fri, 21 Oct 2022 18:47:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666374446;
	bh=PKGZEuVKdr8FZFRurU1u3YBH/F6npr8imjXbNUKUFVg=;
	h=From:To:Cc:Subject:Date:From;
	b=HcYRp6bN1ZwuXMGPYqs95Dz6lGi46cgGCfDcHD/t2c+k8BktNNq1eLnKgDmlK211/
	 2HjQAZmy9FKz6ogeFBjUYt5v7HslF45OLknYj+kj/XvWfnQyDbKwKbCB8jKgAkftPp
	 KmyNeWLcrZ7MpyQhn9jKoynYItlT8XyU1Pb4t/eONxRY9nJSxU2b9W5x8MEVCHY83O
	 Xb7Iea7Y8Q++WURv1wH+U0QNs3AQ7ihZrvAVufEEc+hWPkjZFZnHGvQkTQV3JxcrEp
	 IPi5piblYPjfKKy4dH9y/10rketl/9n0YJtjOUtLMI8gG40Jyw05zkl+9r0J6eqnpD
	 35VvVyVkRXhEw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 60FF548082E; Fri, 21 Oct 2022 19:47:23 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/2] RK3588 Thermal Support
Date: Fri, 21 Oct 2022 19:47:19 +0200
Message-Id: <20221021174721.92468-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_104728_051258_BD2B13E6 
X-CRM114-Status: UNSURE (   8.86  )
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

This adds thermal support for the new RK3588(s) SoC
series. The series has been tested on the RK3588
EVB1 board.

-- Sebastian

Finley Xiao (1):
  thermal: rockchip: Support RK3588 SoC in the thermal driver

Sebastian Reichel (1):
  dt-bindings: rockchip-thermal: Support the RK3588 SoC compatible

 .../bindings/thermal/rockchip-thermal.yaml    |   1 +
 drivers/thermal/rockchip_thermal.c            | 182 +++++++++++++++++-
 2 files changed, 180 insertions(+), 3 deletions(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
