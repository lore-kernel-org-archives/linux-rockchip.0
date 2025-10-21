Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F5D8CCD1BC
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 07:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5/K8CByfcJA74/TboHGYSt4DpHYBPCsc53rCWxRubs=; b=wZvDFX1sfqyrxp
	oAhBIPEab9ozMnEk9hO2GOdj20vhPAgt4lBMRFJusbfFNSw3SaOb8FjyBW/jqkl9jz/p+bMqmI2Zs
	qlYuvIcl3YTAav8dPdm99zbZiX+jSLhJwp4W7LONFH7P4NHjW2MrKhEjaSvqmnPfHmnDkiJfZUyOr
	PSZakmYj7/Qa/3iE7hkmrc8YC/y/f7iFxqvbLnAXjHolejyGk+rstVu65feKa2XFu0jL3WjorP+B+
	mCC3qmuav8PSyJnT3YXt1bdYMffkMkxFJbala6S3h4MNi00giJ6or86xOv00uJx9tXiO97p5BaFoM
	J9XCEj/96409Y0Mgq4fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB71r-0000000G71y-0OwL;
	Tue, 21 Oct 2025 07:43:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB71i-0000000G6nh-1OQ0;
	Tue, 21 Oct 2025 07:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=oU5xEPT8aEVLQudNuyzuo82/ZEcqDr2Z0zwtb+h3Wiw=; b=GjKO6I/QtwVjj13ledu/xMmPUe
	ZV6r46SGUe+AyFZb1Vv+LsGdd54kxGePylhi8/PAUCAXHYYr0JnYXQOcFAlt3BZI2rDYxVwYTpVL2
	MZsCyiaYbPRbghR5YnbrEEJ6jRulARZZyjEa2TK2uLgQ/6OWKYIv+qMyCjnJSRFvuROnItkj7nDRk
	O8nYDAOGe1MbTlD90KH37JZjOqWG7vI4kL3XGVq4ld4IEHgfWTjyItBz3NjiFHqHIStJ2wsoSGeTf
	rd3WlKeWoZlz54wClaKPlxoseWUdGzlk+/gYnia8zEJEfCSz60AP34kIWVAYi3YOyiCdMkb36c7Zj
	GHfIdC8A==;
Received: from [212.111.240.218] (helo=phil.guestnet.ukdd.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vB71N-0000uy-OF; Tue, 21 Oct 2025 09:43:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 3/9] soc: rockchip: grf: Add select correct PWM implementation on RK3368
Date: Tue, 21 Oct 2025 09:42:48 +0200
Message-ID: <20251021074254.87065-4-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251021074254.87065-1-heiko@sntech.de>
References: <20251021074254.87065-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_004326_403909_4CFEBF99 
X-CRM114-Status: GOOD (  15.13  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

Similar to the RK3288, the RK3368 has two different implementations of
the PWM block inside the SoC - the newer ones that we have a driver for
and that is used on every SoC and a previous variant that was likely
left as a fallback if the new one creates problems.

The devicetree is already set up for the new variant, so make sure
we actually use it - similar to the RK3288.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/soc/rockchip/grf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 344870da7675..963cdea01ce7 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -91,6 +91,7 @@ static const struct rockchip_grf_info rk3328_grf __initconst = {
 
 static const struct rockchip_grf_value rk3368_defaults[] __initconst = {
 	{ "jtag switching", RK3368_GRF_SOC_CON15, FIELD_PREP_WM16_CONST(BIT(13), 0) },
+	{ "pwm select", RK3368_GRF_SOC_CON15, FIELD_PREP_WM16_CONST(BIT(12), 1) },
 };
 
 static const struct rockchip_grf_info rk3368_grf __initconst = {
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
