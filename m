Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B17FC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 21:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KbVCKcvU9QPyAnaN2SngKd5ktTMAUdT3ySNWLnkyjg=; b=0fLdUYvcqgZW+Z
	vzaXTg3XNSe3wTJ1BgPj/SbPEdRYPzYmii23JuMrm/Y3is9M3XFdsTWw8zd4OM2OvPOwDJZf0bUr2
	vLqzjrNUCnVaTtgRiYaX/Prhq0j3rx3DWMdpK9RgL7OCnAjyxjay+0FwGqJon2GMO+X6FsBh5XtlB
	chTDo7lCw0+JkVVYOOvUYf9tI2d6gJqdEYBOnMgs0vKC28Z3sRg9sPF/Ng454eYw3WGsv5awJZsXd
	/ccZYT2Sk2TgjE9auINv8N7yT3DEkSDy1IDnwzZMnFCPl3K1S2P7LdBzBXoNqkB3jpvDcRz/dul2E
	pc8zsqvd9USvu8NtpA0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIeh-00000005oOJ-1csG;
	Fri, 10 Jul 2026 21:21:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIef-00000005oM6-0Ucn;
	Fri, 10 Jul 2026 21:21:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CA7F34168C;
	Fri, 10 Jul 2026 21:21:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE2BD1F000E9;
	Fri, 10 Jul 2026 21:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718464;
	bh=nv7cz44iwUgVWCe/vkeZL2xE/X/Pa4B1obmjmVQVapk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=TX6yUC2nv2Y+OJjIq1TAChYa9ehBIOLyVpW/H6xv26I8eshyz4Y3fs3LlQ2KQPYPI
	 jx7CzBx7Ehzs8JVdiGkcZJDO0ynoVqn4hG+FHhZqqRM5hUmMBlkIRr+3xatfBIZ4D5
	 W1yW5kIpwzVV0RY6k21fsNNpaZoJ0BLffrAylzLXjOklVFn5m6xaUnGe8ZjhnYBQX8
	 a3kSj7/dUnTuiJkjOlGL04uB57q5b2E3E31KvTntPuaj8Jb5NfT490w6pJRiZkF7n2
	 t2BaCMqKSc6r23YjmpjmbOGFnbQpBBKjfJcmmAod7v1OLjIzCaSUZAVeGDCOtkgM/Z
	 TaaH4j5bP5gQg==
From: Arnd Bergmann <arnd@kernel.org>
To: linux-gpio@vger.kernel.org,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Greg Ungerer <gerg@linux-m68k.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-m68k@lists.linux-m68k.org,
	linux-mips@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v2 09/10] Input: matrix_keyboard - replace linux/gpio.h inclusion
Date: Fri, 10 Jul 2026 23:19:54 +0200
Message-Id: <20260710211954.1373336-10-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260710211954.1373336-1-arnd@kernel.org>
References: <20260710211954.1373336-1-arnd@kernel.org>
MIME-Version: 1.0
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

From: Arnd Bergmann <arnd@arndb.de>

linux/gpio.h is going away, so remove that since the driver already
includes linux/gpio/consumer.h.

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/input/keyboard/matrix_keypad.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/input/keyboard/matrix_keypad.c b/drivers/input/keyboard/matrix_keypad.c
index e50a6fea9a60..8863b741d1a3 100644
--- a/drivers/input/keyboard/matrix_keypad.c
+++ b/drivers/input/keyboard/matrix_keypad.c
@@ -16,7 +16,6 @@
 #include <linux/interrupt.h>
 #include <linux/jiffies.h>
 #include <linux/module.h>
-#include <linux/gpio.h>
 #include <linux/input/matrix_keypad.h>
 #include <linux/slab.h>
 #include <linux/of.h>
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
