Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D9F6C021B6
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 17:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZiG2ztYbCzL5RZ9Nb4A/6WFvkV4WR48oMcoOY2QBos=; b=Z3r66nx83QCVAk
	N/91lrmO0o+j9FXWbiv0smn5QBmJySN3ZgmMkK4OY3+VtnhtYIsekCLjMvrBXQbayKM0hubH6PzJd
	LzgcMBIboXxn3m0bmeZQRVvucjjtakhlOKLzDaIxNYoJg4W7DpHi3a2COQDBJLGhlQPLF4jTtis9O
	FGaDKTB4wWgbLMtRUJkte58br0tfVu6d2ZQcgzAe8z3LcufPlapnK0AVkHTYgtZTBLAA/J1PJQprA
	Z2QPbi87ywFhj+v7Fp8rgk6SDf6dwDApd1WmQu7BH3MX58IM9ipoo+gOl7KoN5+iPYyU1f+uT8euO
	P4/2v5gH/x0PFiW03uGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmFqh-0000000BVji-329v;
	Sun, 23 Feb 2025 17:33:03 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmFqf-0000000BVj5-0g8a
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Feb 2025 17:33:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740331969; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=T9rWQhq4pOc3cOvsHa8dBE03CcGE4KzFGBfq7DxuwtcDucdk2TKD/h0xAD+YVHVPrqVb87cJT6vbH+7yf+07IhU+lPWbZXrAP91o+fLM5oGVmop0/sXoPqlpuRiEySzhTKHAoL8bVDf8TEI3wkfq4wAT0lDq41BgQzfN2E7xQaA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740331969; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ksDagsXbRnqXqY/SM85Of5WqOjgwoOYDeKarCY0Qk/4=; 
	b=EGwsMKLiD6pBmFCMdVNrNnK0yE703AnHB3Cxq1VdISIfAaUgacdL7mzIaTuDJcsIl8l+QGBQqjuMVJpSxdTzzQgGH1x9aSAPwTHt2OQaz0sA3XCmMLA3rwog0ckNmr0+hkIM+qeaQctTQyZNWfNmiI3PrthTuUVi8wdfAA3Qjj4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740331969;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ksDagsXbRnqXqY/SM85Of5WqOjgwoOYDeKarCY0Qk/4=;
	b=fWBE9ylNW6noQ0TZq7GkHvNN6ocTY46SB1tJcmSyliSfH618uIY8I8JJKMs/O2nU
	u7kqHIWClcTZ4EiNr3DKVSrLr7z6PKrxxQkz8MgJZBH7OILw8llf40bZknaJ9fA78ui
	3zLJ4SKlqIg//oId26n1DyhTeBedX6/pYQFuU8Jk=
Received: by mx.zohomail.com with SMTPS id 1740331967674656.6122354976713;
	Sun, 23 Feb 2025 09:32:47 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>
Subject: [PATCH v8 1/6] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Sun, 23 Feb 2025 20:30:14 +0300
Message-ID: <20250223173019.303518-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250223173019.303518-1-dmitry.osipenko@collabora.com>
References: <20250223173019.303518-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_093301_264968_FD6D132B 
X-CRM114-Status: UNSURE (   7.69  )
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

From: Shreeya Patel <shreeya.patel@collabora.com>

Add an entry for Synopsys DesignWare HDMI Receiver Controller
Driver.

Reviewed-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2286200b355b..1bb6a54e41c6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22952,6 +22952,14 @@ F:	drivers/net/pcs/pcs-xpcs.c
 F:	drivers/net/pcs/pcs-xpcs.h
 F:	include/linux/pcs/pcs-xpcs.h
 
+SYNOPSYS DESIGNWARE HDMI RX CONTROLLER DRIVER
+M:	Shreeya Patel <shreeya.patel@collabora.com>
+L:	linux-media@vger.kernel.org
+L:	kernel@collabora.com
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
+F:	drivers/media/platform/synopsys/hdmirx/*
+
 SYNOPSYS DESIGNWARE I2C DRIVER
 M:	Jarkko Nikula <jarkko.nikula@linux.intel.com>
 R:	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
