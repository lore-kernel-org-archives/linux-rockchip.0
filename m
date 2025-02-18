Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 485FCC021B1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 18:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uQJHtU/tjYQtbdg4uJr2W8tRdIzSh7oA6sd7gtzHZk=; b=4OWnI2zK9/TyoV
	VcZe749hug5b7SKgnaA2MS3owX/csQgij2dkBildAkGQSCw0bxBfNNDiz/VRJC3cYU3JaZwCyEc3r
	X7bscqTCPxHlvEIMvVgUXTU3krDTBWe1RfveHxX6Nf8zAbPc7LKXCas6ECSdHBtqszvhe0XkdWpN/
	oZwTdynbfpVgjH8KEQf5xdBS52lW5DtWjnQl9sTaHI5tmv6+ObOXL44XLgRn05aJ4ceBXDS6/CQB+
	CWngGUzihTg3DITqidUhDtetrI4LuxpK8oYrnFLt1xtE+svfJpjuqOjyZKw6gjWMKMsE1j/Q4mgf8
	+Y0qgj9I1lhDPbYbyQfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkSkY-00000009S8V-0tn7;
	Tue, 18 Feb 2025 18:55:18 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkSd7-00000009Q9f-1Wa7
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Feb 2025 18:47:38 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739904446; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RN74za/4lskP274Ucw0gMqVYpcBxnFDgLVHKc1oXFVq/MBhC4ElkJaGzWums0WqWyQa/Igo0HljG80oS/y+RbGM3Qr4d204NFCsITHzl1a/UK3DnRkgGMSKYxIZvdXgLLOJAsk2ZtmwmvhBOKnhLkkenjo7AL33ED69Q4nPghwE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739904446; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/EEGxG3a0Mq8W+NTwKBGr/iFZzT32KAE3KrCrz4Dud0=; 
	b=YDFMxW+++axipzrlxn8r11uXORogk3CI1hRhLKF02dxFCHZg1idc/LxkZFJmFVhLNVPhPTt0TmLchsA9I9Ts5BY03J5nb2L6oId45kxfitr9yf30CRcAQHgQ7xH/N7VAdYPkxHzDctcTwLG9oAOET9TIHWgNllAaOwlGi+IuwJw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739904446;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=/EEGxG3a0Mq8W+NTwKBGr/iFZzT32KAE3KrCrz4Dud0=;
	b=Vht+SBE1hy8yaapcnywCwDGqYeOkCf4ykAUDfUEoKO9aPPBnc7ZOC7NZsMlzrbup
	q02muUi8DCSps8ueYEZXw99vD/WdCAh3ZK1FbiSU+WFeqnIfi54ODJmnyiCVAnaCK4C
	NxrY1qUG4JVqs3vp35qquGPk7GmBP0GkrMSssVvM=
Received: by mx.zohomail.com with SMTPS id 1739904444113537.1827373653718;
	Tue, 18 Feb 2025 10:47:24 -0800 (PST)
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
Subject: [PATCH v7 1/6] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Tue, 18 Feb 2025 21:44:34 +0300
Message-ID: <20250218184439.28648-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250218184439.28648-1-dmitry.osipenko@collabora.com>
References: <20250218184439.28648-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_104737_461792_E567E5F2 
X-CRM114-Status: UNSURE (   7.83  )
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
index 896a307fa065..d73ddb317b11 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22942,6 +22942,14 @@ F:	drivers/net/pcs/pcs-xpcs.c
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
