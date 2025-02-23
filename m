Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E773C021B6
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 18:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZiG2ztYbCzL5RZ9Nb4A/6WFvkV4WR48oMcoOY2QBos=; b=ILh1eEZ4u4Fq//
	7I6xmccStH0eBs83v6IJihFMTMga4TGb33oVgzi4ivlSUyrlX1OowPfKfvmDJcAEzsqqWEzmDKtQA
	LSYcmJEQla5mwOdHxzWgVG+r/w5GuaNxSHLkCY4j3rMW9CEUV0o+yj3IkKZFAvfx15eqpYUT0ZORK
	4kkWYUxVrNnoslYcWxaoSbiP3wgLYI5P++3Ss5OrGQEXr6KRT9Fe+/zs6rAkhIvVPECYem48+d+H9
	hqQTJenZ4JqdFgr4ncWEuxHk/LEqt1RKIQMV62f5ue77rpYKt/8RxejpHxnQ1js/ojYvX5ctPYJQ4
	W2as4K1GdMkeysgrfjrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmGi6-0000000BaD6-3JEd;
	Sun, 23 Feb 2025 18:28:14 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmGi4-0000000BaCN-1hbo
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Feb 2025 18:28:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740335281; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=XrK79wT8q2/8/ap2Fp8YAuhxHHyOL7LnHycCqGh+qgyadOGP7stTj/fhibPtR+VywGptEeU907quLZ1l+ZisOaSppQDQmMg+0MRAMxnD1RHgx3XfkUU819qqTpydmbIadguy0cu2P84XIZOMOgLmPIatPa+at6J6OEbTI3RkeXU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740335281; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ksDagsXbRnqXqY/SM85Of5WqOjgwoOYDeKarCY0Qk/4=; 
	b=kfpwMbS9kzXlogpqPk/D9MyYvjolY5Fmnvu9/HKH46cBfTd/Lmm1RM074dIkloJlJmWp9MffwQpPwUo/gjGLEMj48jkziRhaJLZlavFzrEcMhqWvI+UNd3G4IloOiw3Ev0OdU6d19RlVl5yrLlGwPkRIry22WjgZMepHHq4PYA0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740335281;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ksDagsXbRnqXqY/SM85Of5WqOjgwoOYDeKarCY0Qk/4=;
	b=RFD+ROZM6a0Bec7A9/7zyytxfHuASs1V2vjWrbevJrAiEPv5mUXL7GJwfX5cv/Ci
	UzSJjaCquJo0AKFbtK/92S9KdMytjj1/1zoXET4pFw1fbsV12MD1irz8ig7TM1lpqCR
	tf7iLnop+ED9EiLloJO5CMoWPtBZHgMtIoSPMD8o=
Received: by mx.zohomail.com with SMTPS id 1740335279252655.9221660129995;
	Sun, 23 Feb 2025 10:27:59 -0800 (PST)
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
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH v9 1/6] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Sun, 23 Feb 2025 21:27:05 +0300
Message-ID: <20250223182710.314587-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250223182710.314587-1-dmitry.osipenko@collabora.com>
References: <20250223182710.314587-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_102812_501744_2FE967ED 
X-CRM114-Status: UNSURE (   7.59  )
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
