Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3BCECCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 08:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0U8GxFDCNkQZTtgwjfot4F7SzotexCBditFhB3mK5cM=; b=4kKkBWOk7cVHl5
	vEZXgi8mY1VYQjsftAUgKQI53dI4OPNe2KjXQUUwiFrZLoST0gr0rdain7a6joG+2o9LFo0y4byVH
	T+147rDewDAgqD1nswaAcocvT7pJF+uykkHg4VKQYePXe8zBjizS359fZsFRbBDY2eUc6sgd2z6Pn
	S3neCmdu+7PR67/Mb0gT6d7amwd8NXgMIlyvG5LdJm0mYNtNXPaUtfdofWlozyxznDBjls0qWZlBV
	fefQC4cDFzvVJx9AUEDDWviPIjqeAbRZhIQem80hEMiwvHd1cyqtXbQIqRfi3VfmGgmnyCKUeuW7G
	jGibtD98ZiVlwv832HUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlDV-0000000CNDY-1JBv;
	Mon, 20 Oct 2025 08:26:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlDH-0000000CMqc-3WNV;
	Mon, 20 Oct 2025 08:25:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=CSwYSi0Xsz6tuPWeN+n3HczJ/oB9p6CTq0FVpTz/uaI=; b=rDUON071VRbe/08gmHCk5RdYAL
	xRLUZXgv4qI3q0MXbZaqLw0BDKEq35NvtlrTQPtKZIOhDFr2tsQ4DGIoPim3KWPIy2n/2QUJkblGA
	ZwYWKGFjcpTIt0gk4TAXd7vmPxOGdztVOH+5fxFjl8RS8oRrEOLMEBjLlbtloxGotqXlevqEQUzKI
	mM3Hnn4lCdtV5iDEaJEcixDmmeCHOJXZeHN6RZXUH/s5VKOa+NtoTE5JrNhZ2yd4i6maSYYVK7H6Q
	Bg/wiwNNONUN1IB74uWCGHV1Xo/N8QPvbVST/IGKwqJCQpO9w9eUcw01sML9idmV4brpV9KxG8VBg
	tpGXMCyQ==;
Received: from [141.76.253.240] (helo=phil.eduroam.local)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAlCy-00078O-U0; Mon, 20 Oct 2025 10:25:36 +0200
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
Subject: [PATCH 3/9] soc: rockchip: grf: Add select correct PWM implementation on RK3368
Date: Mon, 20 Oct 2025 10:25:02 +0200
Message-ID: <20251020082508.3636511-4-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251020082508.3636511-1-heiko@sntech.de>
References: <20251020082508.3636511-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_012555_904693_6DF6BCE3 
X-CRM114-Status: GOOD (  14.31  )
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
the PWM block inside the soc - the newer one that we have a driver for
and that is used on every soc and a previous variant that was likely
left as a fallback if the new one creates problems.

The devicetree already is set up for the new variant, so make sure
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
