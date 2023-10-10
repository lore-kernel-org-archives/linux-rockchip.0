Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AAB2CD8CAE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 17:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWT6SDjQX+qTqMmg755qki9LxdiNt4bKlJkr+l8Vxso=; b=ku8COdoPxxr7lh
	dpfxwE+MFlwfeiMHhabBDJN9Pc2WpLH5kFrKYXf6WsqOcstt++RQOYasXQNJ36QHJL8op3MxtgRgp
	CNAeSmMs6lk2G2oGLkmQSPBUZBGrxOwMi2ESeAjbbczSuET28L8196W3UoMKWX4N9IgB3UThahGqV
	iRrPJZEn+7kyKixDbN0TDUqjEk5JSKfXdkIG5rRjMCFGeqAKyZHERzxp0UxaXnksRYy95RFDwQW03
	VZA21cfahy3H3IIbnszASwpKeNiwmq6xWUCliBzQd9/Xkvge10uvLOEEXNw97/DMJruGBDByOPe5G
	eaWmY6kPGk2FDmFh5KFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqGk5-00Dsib-0r;
	Tue, 10 Oct 2023 17:42:01 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqGjy-00DscM-2A;
	Tue, 10 Oct 2023 17:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696959704; bh=RCQ+dN89XvWkpn8AJOt3eHq1joZwnx3jE9sXb4ZVBF8=;
	h=From:To:Cc:Subject:Date:References:From;
	b=AqBYiGW7z6agl7IpGO2c1Am+OnMc0TK7ghcZMkHxK5rbH0kOntkA4bFlmljeKadff
	 B2dvKPcSnzYYC1H8NkyW6sNAOPA77ixbf2sVl8M8zvUN7RvoOiGRftyNvVsB7aIyC9
	 aJ4PJg75YJUwI3RdYZhtYwXM8QjpFTmQIOaWp1kM=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller
Date: Tue, 10 Oct 2023 19:41:16 +0200
Message-ID: <20231010174138.1888396-2-megi@xff.cz>
In-Reply-To: <20231010174138.1888396-1-megi@xff.cz>
References: <20231010174138.1888396-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_104154_918684_C7802595 
X-CRM114-Status: UNSURE (   8.00  )
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

From: Ondrej Jirman <megi@xff.cz>

Deprecate support for this property in favor of standard
system-power-controller one.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 3 +++
 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml | 3 +++
 5 files changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
index 4992f71b6fc3..ec5e0fadef95 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
@@ -42,9 +42,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
index f5908fa01a61..f1364c66cd62 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -37,9 +37,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index 7fb849ac74a7..382bb2f87a54 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -37,9 +37,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
index 269fb85b2027..92b1592e8942 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
@@ -38,9 +38,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
index b57c4b005cf4..038804ff708d 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
@@ -37,9 +37,12 @@ properties:
 
   rockchip,system-power-controller:
     type: boolean
+    deprecated: true
     description:
       Telling whether or not this PMIC is controlling the system power.
 
+  system-power-controller: true
+
   wakeup-source:
     type: boolean
     description:
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
