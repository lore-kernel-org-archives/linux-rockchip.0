Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A05A3C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 00:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRkTxVmFsIUxP56mFNUZBHZPUCQBE6XtaQA7zNjl3t8=; b=cC1FapisuI88T3
	0nrrGYuBwiPVuhQ8ojvD6+A9uw459fbLvjsDtUAWe6awjjhqS2g4Gsu8z84sTTJg3tASS6cgFtKrI
	JsWT0zwXIfUQYdfE86/t3ZxHgwNGHCAkauZ6vpkgBk2ZXiNx28r78kByTzXMsGDbKKct2HicWJMFn
	5EJo9rPTGvbRgfRYLxmJCZqY+Wq4bJpXS8UlHIjmjN+0wW1hJ0yI3YWfHrR8l6jwJOKWQ2sE4Nll3
	5pPVY78ORwyxcS7sZuFggZsWX3bCW/GVIUuOQNVtjP1ak7QMqS6lf1FgaYdU1R3t7OTr1qRPTin5Y
	0xtJ254hoaaG1cwQPd9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYdct-006tlE-Ps; Mon, 28 Mar 2022 00:52:55 +0000
Received: from proxmox1.postmarketos.org ([2a01:4f8:a0:821d::2])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYdcX-006tcV-Db; Mon, 28 Mar 2022 00:52:34 +0000
Received: from localhost.localdomain
 (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net [81.96.50.79])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by proxmox1.postmarketos.org (Postfix) with ESMTPSA id 627B4140197;
 Mon, 28 Mar 2022 00:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
 s=donut; t=1648428630;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EGfRjZnta91pDqb00FS0IyJHpRVsoSTogbe12bpoSb4=;
 b=X2zG46B5pNwGoT2nQfsdZaf9YtNrhXf8GJcEiWdevtF2Cm6PHVN0aslA0XeQHeQsnXffpP
 4zkZbszn7nISfJH8uRfhYZzXd0xZvY/eliL/ukQjDWcLR7igIDsWkSD0QOynje6lLG/y0n
 yp2Q+GNFhUsOWbUasS1mqbuZYZfeYUM=
From: Caleb Connolly <kc@postmarketos.org>
To: Caleb Connolly <kc@postmarketos.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, martijn@brixit.nl,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: rk3399: add an input enable pinconf
Date: Mon, 28 Mar 2022 01:50:05 +0100
Message-Id: <20220328005005.72492-5-kc@postmarketos.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220328005005.72492-1-kc@postmarketos.org>
References: <20220328005005.72492-1-kc@postmarketos.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_175233_662001_75F99BE5 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add a pinconf to configure pins as input-enable.

Signed-off-by: Caleb Connolly <kc@postmarketos.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 080457a68e3c..9b111bd89f0a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2188,6 +2188,22 @@ pcfg_output_low: pcfg-output-low {
 			output-low;
 		};
 
+		pcfg_input_enable: pcfg-input-enable {
+			input-enable;
+		};
+
+		pcfg_input_pull_up: pcfg-input-pull-up {
+			input-enable;
+			bias-pull-up;
+			drive-strength = <2>;
+		};
+
+		pcfg_input_pull_down: pcfg-input-pull-down {
+			input-enable;
+			bias-pull-down;
+			drive-strength = <2>;
+		};
+
 		clock {
 			clk_32k: clk-32k {
 				rockchip,pins = <0 RK_PA0 2 &pcfg_pull_none>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
