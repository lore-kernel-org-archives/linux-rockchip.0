Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7560C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 11:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nONz9+Q7OJAQf09J3S06JzPtzG0FSsP2OEtVEK1314Q=; b=YuiOduN6tcfW/v
	8AFT0jcPUu9McAOui2rUYMl6bG2vDTNVBX6LwVvAWqs46rDv2jvFl8i2YBD5aDUfxe+2RLfBhk9Vj
	8CUEIkukCWYCrrYN7nqBCz7Ayin79DA6klkRx56CAT6KU2Vll/KKkbzjWIjKNsmuwyF5cWKN0xlB7
	GnoOpmIprn9kO7qJGzXzkBDOuA5MWCgX6BYm/4Na+9d2WfpJyC9Qe7COWfaqWW8N2W2RjBG52bRSq
	RTDUihUk+v14nFfvC7TWyTp2nDv/q6OWS+hymaWLaOVXECeMd+LQf1NS0J4tbJCM/Ah/a711eToGj
	hAfCCexN/FmBuYktabhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncmmY-00GbH5-4a; Fri, 08 Apr 2022 11:28:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncmhh-00GYCr-S9
 for linux-rockchip@bombadil.infradead.org; Fri, 08 Apr 2022 11:23:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Ylwbq95l0Mm9FxsxOV6QaYnDgP36KUfOScIIYrOYbmQ=; b=hZ5UjieFO/eUnAH43gyM+HSSNm
 iIsh5lJ4ThsuQl2wVE+BcVtDTTRWE3Lv6Wsr/QeqvhS8/sWLgshgKeEj1fC+EHGCEsdGUqdlhj/Gm
 4K4ciDQAxpe6RRU2SIesCkrLV+63ZfTXB5SMB2wcQS1J6nq8bdXhXaB7amHEYjtlsDQdXK3AluT6u
 wpfZAhaMOJqyFtA6FwTXxnXkOf4pPmbOBDfpEDGX+fw6x6IHXCrmXF7zHfV/eGFEQ/0nCjKLH+boQ
 sPLgelssI/hju+HnqPUhGqL24TuleuEEPfLzySE+ExFZi9XAHJo52JHdUr5gAKyNmYmSyZnetY1xI
 Dh0/i2jg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncmhb-002t9f-PZ
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 11:22:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhS-0002I4-AK; Fri, 08 Apr 2022 13:22:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhS-001n4M-Pg; Fri, 08 Apr 2022 13:22:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1ncmhO-005Z44-CU; Fri, 08 Apr 2022 13:22:42 +0200
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
Subject: [PATCH v10 10/24] dt-bindings: display: rockchip: dw-hdmi: Add
 regulator support
Date: Fri,  8 Apr 2022 13:22:24 +0200
Message-Id: <20220408112238.1274817-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220408112238.1274817-1-s.hauer@pengutronix.de>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_122256_025372_A9EFE31B 
X-CRM114-Status: GOOD (  10.06  )
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

The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs
needed for the HDMI port. Add the binding for these supplies.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v4:
    - Add Robs Ack

 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index e6b8437a1e2d1..38ebb69830287 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -28,6 +28,17 @@ properties:
   reg-io-width:
     const: 4
 
+  avdd-0v9-supply:
+    description:
+      A 0.9V supply that powers up the SoC internal circuitry. The actual pin name
+      varies between the different SoCs and is usually HDMI_TX_AVDD_0V9 or sometimes
+      HDMI_AVDD_1V0.
+
+  avdd-1v8-supply:
+    description:
+      A 1.8V supply that powers up the SoC internal circuitry. The pin name on the
+      SoC usually is HDMI_TX_AVDD_1V8.
+
   clocks:
     minItems: 2
     items:
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
