Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97BDEC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 08:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ciMs7eIuTGgkWRHYHBybUTLq8V0r5HkDr+827A5cU9E=; b=UncN1VyiBzmb13
	HJqZ01f8cUPuB4cWCMQv+jR8C1YlEC/5pSB4HMVLyWIYO6hrEwBzMHTrzbYkPmOdiG+/TKnc7HuEf
	IoDRwqVaroN1+guDaaiKJ7Pfs6PVE7R025Il7UxMIi5vIDwa+Zb013Nx9p/YExA1stwbjZuHC9QUx
	YMw1JWgFTi6dOMSvUPz0veip7Idl9EmMTjsP5hB4wsmToMPaZxtA2lLU9UN0Tu4ELUY9WKi7K6Pdx
	Yrr5XjWOT27AIo8FdE8IDGQL+k3SQNePjPcvNAoe4EKwJ1Qvw5K1DqAHuGZqe8+HAvvXxj+RxFs7j
	KmRrGebmQ22dSiYIzygg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSanD-00FbuG-FV; Fri, 11 Mar 2022 08:38:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSaiY-00FZKT-0R
 for linux-rockchip@bombadil.infradead.org; Fri, 11 Mar 2022 08:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=yNVusaOcEA4LTJyX+ezMPm1mKFHQXHbtCu5/rYy/V/Q=; b=AyU97+WeeO2kZf7aCHY40f1dj7
 PmpoYpPHTAwE1rycjVRGhKT8j/I/xZ7WAbKaUKiJT75wZlXqqGByaUyhLLIDoD2lrTD53Jm1Y0AuW
 n9J1PxaiEBBdr2iWb+1fXscwl0bcooBAHAVdZ9PjDE+VtdHnJ9JbdGH612gAmmljAMx/GnqonIXH9
 w2bPcdlE7OrgCDOa1D1FdNQc1qZsZKQ6lazWRfDIFUM3Dk6gWejZA/S+Lu9ZAXS2vGZT9IyEWevIu
 7o6Q0hNNAyPs6SI9NyHIphO+ijUO6g2CiJRtIJ0Qtr6uz6XN7g2mLV78V/cblSa3Y95sKYqgqqV1P
 xEZCgtkA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSaiT-00HOE5-G6
 for linux-rockchip@lists.infradead.org; Fri, 11 Mar 2022 08:33:44 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nSaiL-0000aU-AL; Fri, 11 Mar 2022 09:33:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nSaiE-0040hM-LS; Fri, 11 Mar 2022 09:33:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v8 16/24] dt-bindings: display: rockchip: dw-hdmi: Make
 unwedge pinctrl optional
Date: Fri, 11 Mar 2022 09:33:15 +0100
Message-Id: <20220311083323.887372-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311083323.887372-1-s.hauer@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_083341_686433_224ACA7E 
X-CRM114-Status: UNSURE (   9.66  )
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

None of the upstream device tree files has a "unwedge" pinctrl
specified. Make it optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v4:
    - Add Robs Ack

 .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index a48b0e842218f..ff5cf9fe20904 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -94,6 +94,7 @@ properties:
       The unwedge pinctrl entry shall drive the DDC SDA line low. This is
       intended to work around a hardware errata that can cause the DDC I2C
       bus to be wedged.
+    minItems: 1
     items:
       - const: default
       - const: unwedge
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
