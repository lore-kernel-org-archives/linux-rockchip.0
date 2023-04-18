Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C23DBC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 09:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MgJ8fe2vF+nzg1R2C+d6hR3pnXRIPyLmhnaQrqDMY0=; b=q3dk0wEuxFH3vf
	9NH6l/rXP2E8eSYLvY8G3AX688raX986bbZFyBTxK1g2jhoMG9YXZfXwNgw35WLzOcJnp0eCI4EIh
	hwQrbYuepzBInDaOsUcxQUnX4vGl2St5PoOGFopUJCZEdDbwsFnm6JgE2fPo0aArVTK53KqXbzKp/
	kukWkCGZ2GEFmmO5/YP2zFAwNZu4HSmYNrsXNcqpv8GvUGZ31/1ZRS9KGdUU29LvMyRFXI4IoRKUm
	cQUDmAy7p9gCCnclrmtKAmNFxvE8PfzQmw8TmYeV2N3Lyr46ZFhu+lnaqZIyny02hScgOiejQpB65
	wdvElSBQobcYEBvtfZQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poi2F-001XjV-2J;
	Tue, 18 Apr 2023 09:54:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poi26-001Xe9-1k;
	Tue, 18 Apr 2023 09:53:55 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F332C6603241;
	Tue, 18 Apr 2023 10:53:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681811633;
	bh=OTHboIIVMiE40O35GcCnXwb3kSF6mCIQcyBQmGLk9M0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ekx5antfdIzaGKk2d7+FyS+jYl5tCnhm9wjv7h9qe9ZlQI9WKit2edBg7UcIvJWyQ
	 Y/4I7Gp3DwMPxsHeYh9rBWBiNFI4J9asUCoP85JD/NZN7QcsGkZ8zWDZIpsKVyy3aG
	 iIhJIYJpfclRwexcEt74KEAPrOIt2L+lB/QB9R6HGS2LeowIxmbdya6HKviiRHl3oJ
	 uVTLBzMtd5nKXgNaZddzbcxrVxE9xAieqogYCMgkm/G+zrxRUl+ovENWiV+XQdQjMx
	 DcDM0Wns+6iyik3DsUWuk4abJsrkHD9bPY6lCEH/eoF2OEOijmF2en7FMj8+d7xMgZ
	 RI1anX5lOtt8Q==
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
Subject: [PATCH 1/3] dt-bindings: timer: rockchip: Drop superfluous rk3288 compatible
Date: Tue, 18 Apr 2023 12:53:42 +0300
Message-Id: <20230418095344.274025-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
References: <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_025354_707428_18D041D1 
X-CRM114-Status: GOOD (  11.10  )
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

The compatible string for Rockchip RK3288 is provided in both the 'enum'
and the subsequent 'const' item. Drop the unnecessary entry from the
enum.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index 65e59836a660..2bdb6e6bdb21 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -23,7 +23,6 @@ properties:
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
-              - rockchip,rk3288-timer
               - rockchip,rk3368-timer
               - rockchip,px30-timer
           - const: rockchip,rk3288-timer
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
