Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA07C282D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 09:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZiG2ztYbCzL5RZ9Nb4A/6WFvkV4WR48oMcoOY2QBos=; b=KoGgQyOdfu+l1v
	eKPK/2n6zjXFpGQzOAxtH+jb9fAV1e5bASiLafWWtVYKnaeh5lTI90Y4PAAzlESOzgzPcgqUxSimo
	zsDViI9ZEu59SUlrjz12fFZP8jSqus+Q0pTptDvGoASjH/uyfiZSE6jNeYSU/2DWgrLVbH+bY+TsX
	E2zAQb8kLfZV8yuS85Kj0znQBJWm1ikUq2+jFQs90AsAKJIJU8dZNcb/irQJODRJeGNfI2Wnln7KA
	+Uve9DOlet+4G/STQbffoZSmxtoVU4EBTjj/G9orUmIrNRInDKczS5J4PrOXi+N+jFigIqvB49KJ6
	OjRNWG01CnqJAHfMcssA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpO9D-00000003kY6-0ZQk;
	Tue, 04 Mar 2025 09:01:07 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpO9A-00000003kVx-2L38
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Mar 2025 09:01:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741078850; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HCIEzLWj2Y7iSKdpzsbiq0OqPRrrvn0MOyJl1u1Eif+cXTfpiBmQEmcv6Ks3Jbjr0d4cFehnQSoUPy3G0XvTl0l6uWUXWynMkiKS3gwQlCy4jAHp9Wn/mclDGZ5XxFHNlGGkUgR1UMWSQqueQT5ZGKCocME3lWtRj0/3bE2pyMw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741078850; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ksDagsXbRnqXqY/SM85Of5WqOjgwoOYDeKarCY0Qk/4=; 
	b=WjjBLZOo3huDzqEFwPc6SphmAO0f1YDulVu0SRUpSVNqFu0dT4Xg8jQZdTHWVsX9Ck5O/Y0amwmeO/jb+xuWqWMLQjQ2De7V/BIky+jobu4QGkGajsn/U8vmFyjZuqf/SAOf8USQ0Kpoo/fFxG5YFme1yXH9iIvyJqbqaFUgxRo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741078850;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ksDagsXbRnqXqY/SM85Of5WqOjgwoOYDeKarCY0Qk/4=;
	b=WPCBRp4uQXVdArRn1NGCvaPFNHxYb0G/1PtKB0VXZfI4BsKMV6DaYDVs9G8lEtEo
	iw6Ca/XwYVMB371BDlsKGGs4QD35XxD0jju7KFWJkHt/UDoJzmqORe5ZGKRSHr61Q1V
	dBahGk7Ib5T9Qe4U1W6ymOrig20KNxzJdEeSTyKs=
Received: by mx.zohomail.com with SMTPS id 1741078847265210.0717245482465;
	Tue, 4 Mar 2025 01:00:47 -0800 (PST)
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
	Tim Surber <me@timsurber.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v13 1/6] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Tue,  4 Mar 2025 11:58:14 +0300
Message-ID: <20250304085819.108067-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250304085819.108067-1-dmitry.osipenko@collabora.com>
References: <20250304085819.108067-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_010104_656275_8F1CC746 
X-CRM114-Status: UNSURE (   8.15  )
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
