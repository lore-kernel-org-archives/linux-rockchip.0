Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81FB7C54E41
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 12:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcAbaPpLcYqo/wh8jbJlXVLJkGqoP5M/4rRK0rXb6jo=; b=zErduVre1K7lw+
	bd/35bnIDdL86j4L/pIO2LRKx+X1jiJ0z2rxFs94bngtq2t9WSQ9pxiXc8bdSqdNlxqfZACIN+X0P
	OfPriKGgDrGzmkXwDc349QsZ3mXVtOCiXk4Y6FnsrhUiyDAU7kdbEkALpLWZNgvou3PZaSyPWKjov
	7vIEMMj734ShjU1+AzaMvehg2Tk8SZQqVZf6Jgy/ErN7JnnTBxmCZDU93BETHYrVEnK5MWkEH2G34
	7pjvckX6tPOFXOGqmX9LqQwxyAw+1/33gyM+X3V7S+6V/rgJYWg8gnJlheHN9gwshCuj7OjVV8QZZ
	0M3CP00/oFZ+0w3VtNtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhU4W-0000000Dbr5-1dkO;
	Tue, 05 Mar 2024 12:39:04 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhU4N-0000000Dbm7-0MUP;
	Tue, 05 Mar 2024 12:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709642333;
	bh=VwkM35Jda0C3h7EKsFxBVHx+9GeS6C01tG+KewTTe5E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=c9DEEfbJVYKRbFyOJYn8GW/3eer+MVMTZCVghdzEDNmyMtuzEmZ5djstfXjQs9qSn
	 1PsF1+WJNA2ujD0EReK4D1MKvljfQBIhmwNDF/Ta9rmHFUqNp55E02eIW2SFunNdkS
	 aSyKEuzmnbPNngDhbo8XgZ1kbLQRybQh3l6pdABCsjSgVEFBcc2YOjJOJ8ZnsGwx8T
	 vHV5egg2/g6TiGoRIGY2qQJxPZEtDWP48Ws+idTnZ46EJf7z+U1Rdo2wgQiEQ5QS4E
	 EU2gnCms6fcWUxt9nxD7gARz+Wvo1S1zFMbieEKVNL2+pU7bKgi+E5xKT23DTEsPn0
	 2a8cHaDFB7CVQ==
Received: from shreeya.shreeya (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D182437820F2;
	Tue,  5 Mar 2024 12:38:45 +0000 (UTC)
From: Shreeya Patel <shreeya.patel@collabora.com>
To: heiko@sntech.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	dmitry.osipenko@collabora.com,
	sebastian.reichel@collabora.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	hverkuil@xs4all.nl,
	hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-arm@lists.infradead.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v2 6/6] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Tue,  5 Mar 2024 18:06:48 +0530
Message-Id: <20240305123648.8847-7-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240305123648.8847-1-shreeya.patel@collabora.com>
References: <20240305123648.8847-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_043855_415733_D6D66315 
X-CRM114-Status: UNSURE (   8.22  )
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

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
Changes in v2 :-
  - Add a patch for MAINTAINERS file changes

 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 897fbf1b0701..26ff6a1cb24a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21427,6 +21427,14 @@ F:	drivers/net/pcs/pcs-xpcs.c
 F:	drivers/net/pcs/pcs-xpcs.h
 F:	include/linux/pcs/pcs-xpcs.h
 
+SYNOPSYS DESIGNWARE HDMI RX CONTROLLER DRIVER
+M:	Shreeya Patel <shreeya.patel@collabora.com
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
