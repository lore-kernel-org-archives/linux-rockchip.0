Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A65E7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 20:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NVi7Ishn2fmCykYqus+N1crz5e0qdn16SBlLgaJx0ME=; b=j51H906VP6VYlP
	dVhBzN2vT3BMva/ktkDEUhznfXAfKhpr84l5iqr36ZfIran3XIHFOQiWweMdI6F3FUSHKQfwlA5+F
	g6gmN+J1cjav54m2rtYQGA9K1q7sKRZ/TgbVtG2BqbNDKFe/wwzsmLo9KPKhVRAoGfbziLEWYTj7t
	IvW0lw23PPJQiQQsCJjjbeXgE1i+cRh6VwG+XDfp9zn7NvzvP3FDZSSpL1ukhPmRYJJjaZx0gVzjV
	1ysGQa3BUlQAD9VHp77oNVvRljUf0Efz/ykeWEeLdlNEkjjNU1YZs0EpJ1fVm0DbxkzTI9NKKSsJa
	9o466g42/vMdv9fV5niw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKjxI-000000097Q3-3pIC;
	Mon, 09 Dec 2024 20:02:08 +0000
Received: from a7-28.smtp-out.eu-west-1.amazonses.com ([54.240.7.28])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKjxG-000000097Nu-1SAU;
	Mon, 09 Dec 2024 20:02:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=bc7lryepznv65m6r2ewkpoafjt4fiq42; d=collabora.com; t=1733774522;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
	bh=/4RZbyvnAxjSwIetXPV5ahVyR7xjhkpwwsXpSPAIkEE=;
	b=q3j8YqzEw2kp6sZJWf0YqBmDf1HP/JiESgOgCGPdqWTwXllOTM6VTRGZ5DtFBG8w
	hOlAvRJc7y/53e/HEEYn4qxWZMEvVfOp38oQKivA2OQ7SkiQOfNvsPPAoUvvAfXa6nu
	Dk2DSh6yqjuZxnM//Belss69XgmdrWXdpSU5oGHOYwOu1Y5j/pQQzlR33p+qYCdRaee
	yUMYOZtC/umWMtI4rElLJCCFDYUUXfsKj79OXT0ORrltFwBf3zgJTasuoop80VQaeCb
	eZ1Lq5QZR+zW9/+90THbvejOr5XHhtYCQ9orXklQvJGX2aSCHqZs4bhMPMQbqFgsCkL
	0Fqh6DL8iw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1733774522;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=/4RZbyvnAxjSwIetXPV5ahVyR7xjhkpwwsXpSPAIkEE=;
	b=heYaDx3wMmAKYEeYmndi5e5YW5uus5cH7dbrjAC8DnHu+k50IJdaW0SiURBbL3bK
	IMonPZlVGEfi/t7vBLgBtcGMiGB++xpTK8M76d6KZhntcQCEIXxdEzNB0dNsbQ2sVVQ
	4aDRru77Ne3ms3H1bQKTAl5mCiBDCfcgtWbhcgsI=
From: Shreeya Patel <shreeya.patel@collabora.com>
To: heiko@sntech.de, mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	p.zabel@pengutronix.de, jose.abreu@synopsys.com, 
	nelson.costa@synopsys.com, shawn.wen@rock-chips.com, 
	nicolas.dufresne@collabora.com, hverkuil@xs4all.nl, 
	hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, shreeya.patel@collabora.com, 
	dmitry.osipenko@collabora.com, 
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v5 1/4] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Mon, 9 Dec 2024 20:02:02 +0000
Message-ID: <01020193ad03b755-9daf2dc6-b077-4f66-af12-8a7ad4b2ae13-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.12.09-54.240.7.28
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_120206_521390_777010BC 
X-CRM114-Status: UNSURE (   7.20  )
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

Add an entry for Synopsys DesignWare HDMI Receiver Controller
Driver.

Reviewed-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---

Changes in v5 :-
- Added a missing closing bracket for the email

Changes in v4 :-
- No change

Changes in v3 :-
- No change

Changes in v2 :-
- Add a patch for MAINTAINERS file changes

 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7700208f6ccf..3960c3ca1849 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22768,6 +22768,14 @@ F:	drivers/net/pcs/pcs-xpcs.c
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
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
