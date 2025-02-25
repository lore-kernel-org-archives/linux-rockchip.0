Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 124B8C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 18:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZiG2ztYbCzL5RZ9Nb4A/6WFvkV4WR48oMcoOY2QBos=; b=mT5eBzgwJkyxNm
	oS1PsqBI/T0m9Vcd8HRuNZEtgGvSsaZn7q/y01+X0oLQ/VuUp7UPJymsRNynLbbyoDrUxc3I8d/u/
	Qs+NJuT0hkG1bFxUHbsh367fRXhmW74Mt/bKS7zEl2gG9GAdKXWYwk1MLQNO32+hbtZk4DbkgkTHm
	V5JyW2VuNkuftv3FjQkdoL0rMpoUkXVaLBrY6fULki21iR76o50uk5JxjjrZeMjFatzOuIrl/a+iW
	qXJw3F0nWbeJopBfk4yOIjLcnPOWkUWSUKR/xMnwJyrOvwtvSH89gDzjIDGatQ70Xxyc77EB6u2za
	qY7iwLrFSTubGogDGIuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmzsf-0000000101O-0Tyg;
	Tue, 25 Feb 2025 18:42:09 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmzio-00000000wuc-46ye
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 18:32:00 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740508307; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=U5/FaTdndwqBqtD9yWOtXXRHdXPcxIt3WDJFh+QTJnSfhF04JyOKCkd7INXoolX9zGxy8xpLmU73JAjDqfzMudJ+dh5x8xE32T5hlYZr54+Apu51XAdIlu7hysEoyuSv+U9dFOVbI/5IoMPZ8l4cQ3CN44PAfNqDudNY51Fh+fo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740508307; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ksDagsXbRnqXqY/SM85Of5WqOjgwoOYDeKarCY0Qk/4=; 
	b=A19J2CSy2PXC8n57nLGry+yxSGPeI7/o8ffwCvbIAtiIW0tF87NgqAlnXWThmF8co63x6oUpf53H7QLYUNtGOebyRbea5hKwn7exX6OGitF7QZRMr7LZNJq3Dr29t0WFzoSjldgIp9SuQHfuYgHiE1GOH/oLdjQWRDhtpgfP9wI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740508307;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ksDagsXbRnqXqY/SM85Of5WqOjgwoOYDeKarCY0Qk/4=;
	b=L89/9lwfPNFmZT77ZLk1sI1z3DwLwa/md/fKhnFCaPQThuwgN5OtJDW9koDXr1bU
	13QhwOHcml1llK/Tb34S0ro7ugxQ5GUStYSwIh/eDI3ft1eEvyb6H2Unt6R1kFFt2MD
	Oogl9IaxNvhzRulnO88m4K5aeGy51H10SSeOHCNo=
Received: by mx.zohomail.com with SMTPS id 1740508306356520.2415660523628;
	Tue, 25 Feb 2025 10:31:46 -0800 (PST)
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
Subject: [PATCH v10 1/6] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Tue, 25 Feb 2025 21:30:53 +0300
Message-ID: <20250225183058.607047-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_103159_083414_6CDFD81C 
X-CRM114-Status: UNSURE (   7.99  )
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
