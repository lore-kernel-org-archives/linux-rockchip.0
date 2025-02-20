Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2AFFC021B3
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 18:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMyPkw5Q3pcAaaqkV6KnUUq9ZDinZMDmeysCnicMlDk=; b=2nTgnWgrWtxb3g
	yZymMQcjr7SKjogVPTm17XRFi2YBpi2dDp7+jlmlU/OYdVej57fYj0qavPzON0Lf9EuIQasRJ5XEA
	g1XBit3KNz6srgr1i8dw3g/LMLK8C1ADKbx3fgg6zp1X3jgo/vO9gS06b1FRsqcZKqDX0SJjG471U
	W/ivn9iwZaZ4q5BrwteXC1J7Qh48b4GXGir6UJe2G29md+SosHYBq8sLKhdKAatMShxsPoiuJxF4o
	/WW/P6o5j8auLw7nF7UUeZ4PXRXME2mr0sE1vBGGvWz/NBYQnIKMlzqy9lMk8ULhz2iVLgULZaMWF
	xkZB14dWvQuUuuGbSjCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBlc-00000002UqA-0ipc;
	Thu, 20 Feb 2025 18:59:24 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBks-00000002Uct-2c5H
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 18:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740077914;
	bh=7o+OpRxIZPgyQla3O1ppJeGi5Iy50Gs9yFdJjgvgUAs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IVp9EtEK1EDQrXxaycMMOyjcbpc0kzZZ0nRjIu+Ws1l3EEloNNPlCMyptzdC0UIWN
	 NJI/GHuw9E6dJFdTT4hgYBNisc8yTRAYvsbLBci+y8jSlqm/caEA9TX8GbEGY/CzcU
	 OXuRQxpTA8ft7U30tLCDW4XUZhPK/8FNaLkDWmsaiSnnXnMj/BumJJ38Bqcb/69ggB
	 0FFQjGZNvCxN153tPUVbcxwMlvr6SafMmUpIZD1tnZBBQtwKH0YVF9vpjm1zz/YWe1
	 +sIfDh6poI049lGCy8jW4hP9+j7ISuWbq0eBjW231dkAQLKxXHxyM5J+ijgwM09ELy
	 Xh6p3WUKP6tBg==
Received: from jupiter.universe (dyndsl-091-248-085-196.ewe-ip-backbone.de [91.248.85.196])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C0C9417E1575;
	Thu, 20 Feb 2025 19:58:33 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0FFA948003C; Thu, 20 Feb 2025 19:58:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 20 Feb 2025 19:58:08 +0100
Subject: [PATCH v6 5/8] pmdomain: rockchip: fix rockchip_pd_power error
 handling
MIME-Version: 1.0
Message-Id: <20250220-rk3588-gpu-pwr-domain-regulator-v6-5-a4f9c24e5b81@kernel.org>
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
To: Mark Brown <broonie@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 =?utf-8?q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Peter Geis <pgwipeout@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Vignesh Raman <vignesh.raman@collabora.com>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2291; i=sre@kernel.org;
 h=from:subject:message-id; bh=7NJATNPXUxCHC9s2+sZNOuBbjuSPKWLeZvtfpT8pW1U=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGe3e1hL4X+nbgMp1JEPrMdG3lhEIY/+KdiFv
 wG1olm2UyDAvYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJnt3tYAAoJENju1/PI
 O/qaPoIP/0vjHTdhyezJwSEonLFUCkVFZgCpLgjI8o90JxV3bW2KdmwrYoKyTQpvvZfynFvor3a
 2ImPkFp0do6BIzTwZAIMmrrJTDRfAHwP5xCeA5Gc50l364C529mm16ejKsHI8S49zvjeLK9WITP
 vtvWeTCNIGG4YOqhYot+WYPXUAAZjBr+viSuFCLYlX7AVoPihACO+CsaBj4MPpdXoAjwlQfoMtz
 nIAczI/0f2HcLG1+/hHG53bjjf2DdAxuZ752q+viB+G6ZCYN2NR5T5ZsqAcNbwHtrz49hu//cjP
 3jsYpIFialmO+5OAgF6ITGmiIcY3+JntAz35ZSKcr5yTVRVLHy+yXOvBc1YPluEicgv52onY3H0
 PIQhEZy/PClqFlx4MOgvfKQ1mam2rzrCz+wKJhMMy0xG/xzjHvqx3uzXhzbYrZZ4w/qNtYBsiZD
 Nqww0GOtlV8AORBzmZCpv9YgGbPMZ+Z2tQAlHiG/8zg93ErLLzcdn+bXHHO3BnfwSpzLjCXkw1W
 dmwCCpUkJ9nXET2sjGZjRWUVM+ENNI9wsI2dVbI4Ixgcj6QdEhz28dCwMDZexZC8quY9ysuiLFa
 Gm0bStUfGK7Gi+x6J9hZyUZLp+LMwwrsWLiUJU+gY4hNwN57hnsKh9MnHPX5zYICecPbMu6Z9ud
 ervUTdkkKIoCeMbERLRQq5g==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_105838_871649_50700C2C 
X-CRM114-Status: GOOD (  13.65  )
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

From: Peter Geis <pgwipeout@gmail.com>

The calls rockchip_pd_power makes to rockchip_pmu_set_idle_request lack
any return error handling, causing device drivers to incorrectly believe
the hardware idle requests succeed when they may have failed. This leads
to software possibly accessing hardware that is powered off and the
subsequent SError panic that follows.

Add error checking and return errors to the calling function to prevent
such crashes.

gst-launch-1.0 videotestsrc num-buffers=2000 ! v4l2jpegenc ! fakesink
Setting pipeline to PAUSED ...er-x64
Pipeline is PREROLLING ...
Redistribute latency...
rockchip-pm-domain ff100000.syscon:power-controller: failed to get ack on domain 'hevc', val=0x98260
SError Interrupt on CPU2, code 0x00000000bf000002 -- SError

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Link: https://lore.kernel.org/r/20241214215802.23989-1-pgwipeout@gmail.com
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index f4e555dac20a32978d71092dbe66cdd1226b8ac1..ac3f6e2080d1c3aa3d0b6fa60949c22a7d256bde 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -597,26 +597,29 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 		rockchip_pmu_save_qos(pd);
 
 		/* if powering down, idle request to NIU first */
-		rockchip_pmu_set_idle_request(pd, true);
+		ret = rockchip_pmu_set_idle_request(pd, true);
+		if (ret < 0)
+			goto out;
 	}
 
 	ret = rockchip_do_pmu_set_power_domain(pd, power_on);
-	if (ret < 0) {
-		clk_bulk_disable(pd->num_clks, pd->clks);
-		return ret;
-	}
+	if (ret < 0)
+		goto out;
 
 	if (power_on) {
 		/* if powering up, leave idle mode */
-		rockchip_pmu_set_idle_request(pd, false);
+		ret = rockchip_pmu_set_idle_request(pd, false);
+		if (ret < 0)
+			goto out;
 
 		rockchip_pmu_restore_qos(pd);
 	}
 
+out:
 	rockchip_pmu_ungate_clk(pd, false);
 	clk_bulk_disable(pd->num_clks, pd->clks);
 
-	return 0;
+	return ret;
 }
 
 static int rockchip_pd_power_on(struct generic_pm_domain *domain)

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
