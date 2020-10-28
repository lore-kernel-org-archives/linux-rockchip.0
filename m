Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F9D6C388F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 14:51:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD7BD247A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 14:51:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RRokp11g"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD7BD247A8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=scYXU6eoCfLxcjmL1WyDi8KZ9Oml9ooVeV7BJhlS3xQ=; b=RRokp11gyNCYRxY+pbKcy4hEB4
	Sn091XDgAXrihRBYF3pSVYSN4zKu/95EfATpeUowBN7h7I7Ri0+RqPAPxt0IQ07rOU3LtRiTuNzo+
	pv+2K2PN9EI7oCW4JmKnlMv5mSaaUZEGkSg6wwN6FD3ZLih1YVGpS/xCxn02MiSyp4yxKC/+lL4wP
	5VdiNANkIFWeVJcc00JTSybeVdA1B2R9IQNf6gHLvqos0RUGlQUbiOFo0GjwApDhXWn7JcgiaJPZn
	v7IrX2yYr9tnRbxcrVCCyDBo8vTnDrTJPnrj2g8RqCPHvjrNGDsTOBHsOvqIcLosQbQq8bKJEX1io
	sojYrAeg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXmnS-0005j8-Kk; Wed, 28 Oct 2020 14:51:30 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXmnP-0005im-Qz
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 14:51:29 +0000
Received: from ramsan.of.borg ([84.195.186.194])
 by baptiste.telenet-ops.be with bizsmtp
 id lSrN2300Q4C55Sk01SrNpH; Wed, 28 Oct 2020 15:51:22 +0100
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1kXmnK-000oxl-8Y; Wed, 28 Oct 2020 15:51:22 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1kXmnJ-007GYF-Je; Wed, 28 Oct 2020 15:51:21 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] pinctrl: Remove hole in pinctrl_gpio_range
Date: Wed, 28 Oct 2020 15:51:17 +0100
Message-Id: <20201028145117.1731876-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_105127_990649_E78BFA4B 
X-CRM114-Status: GOOD (  13.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-gpio@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 64-bit platforms, pointer size and alignment are 64-bit, hence two
4-byte holes are present before the pins and gc members of the
pinctrl_gpio_range structure.  Get rid of these holes by moving the
pins pointer.

This reduces kernel size of an arm64 Rockchip kernel by ca. 512 bytes.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Compile-tested only (arm/multi_v7_defconfig and arm64/defconfig).
---
 include/linux/pinctrl/pinctrl.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/pinctrl/pinctrl.h b/include/linux/pinctrl/pinctrl.h
index 2aef59df93d70550..70b45d28e7a9293b 100644
--- a/include/linux/pinctrl/pinctrl.h
+++ b/include/linux/pinctrl/pinctrl.h
@@ -51,8 +51,8 @@ struct pinctrl_pin_desc {
  * @id: an ID number for the chip in this range
  * @base: base offset of the GPIO range
  * @pin_base: base pin number of the GPIO range if pins == NULL
- * @pins: enumeration of pins in GPIO range or NULL
  * @npins: number of pins in the GPIO range, including the base number
+ * @pins: enumeration of pins in GPIO range or NULL
  * @gc: an optional pointer to a gpio_chip
  */
 struct pinctrl_gpio_range {
@@ -61,8 +61,8 @@ struct pinctrl_gpio_range {
 	unsigned int id;
 	unsigned int base;
 	unsigned int pin_base;
-	unsigned const *pins;
 	unsigned int npins;
+	unsigned const *pins;
 	struct gpio_chip *gc;
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
