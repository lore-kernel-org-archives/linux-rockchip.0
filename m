Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76CC1C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Na1mS53KWNUeiQbg3zhJwbnRInpH8gk4LwPoI1J6Tek=; b=OKl6GHkHsbEm01
	Lg7AFDV8cRi4DOTL2iFeYlMnFN2l5jK9WwqU70cgeDt2XVv/QrdSBOmQPoXV04suHNu/P8QOjHZ1I
	Q72NaXMfeWu5mAXLobqbTsUVZYgihApRezegBOSfo1zHixzURHGF98EV0ChM+5Efhsq3TqBSFvt1C
	obn7qqlTGLB+GooRbR4Sstgw1eKULEXUO9dYcJ65wF/JQIIWudR6lzra1Yh7cmGsO/Xoj1nRQo6U5
	U/DtTF1E/VKak9Je09f92Uptxwpslyr+2s1lmcn/dG1asY5wUXw+AsLZkHzxRAPHx7S0gegWycrXN
	Biy5GCUcQnnvNcVtnBfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmXm-00000007dBe-2K2r;
	Sun, 18 May 2025 22:31:42 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmAX-00000007ajA-436d
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 22:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1747606061; bh=JlFCAc4M4tsY005AhENFwugyMYaX2j/qB+dCiJDYFXQ=;
 b=ZA1iJqMGpKXbw+puZd5bHGkTflKS3Pz49U+HE1A62OJH60VLdkZzwRN681rpj1uHVRQmy5iAb
 y/M8X+bb6czcGA4a37if/60ytRp7xiDDq4s44DARyn+ceZL+CvwFHBjL5rXnWErpkipOVeLddGT
 iCgIDFPBHrojv1wJoQXuGJ7Oqn23XYZKqkSbKpwav/cpY8luIRODiWbooMh29lblfRRbQXTenFb
 Q0+usZt6gFPWzZKdqVR071vsdajQoOpXuunMXfDcB/d7aStjAPOOM3oWcTOLTptxG6uQSOfFbYo
 snwBv9/f+yyqTDIjdM0GL7ycv/wztfS+sKyMXKA61iWg==
X-Forward-Email-ID: 682a5a2a78cae75fbd8d46ef
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/9] dt-bindings: gpio: rockchip: Allow use of a power-domain
Date: Sun, 18 May 2025 22:06:53 +0000
Message-ID: <20250518220707.669515-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518220707.669515-1-jonas@kwiboo.se>
References: <20250518220707.669515-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_150742_038136_F94BCA00 
X-CRM114-Status: UNSURE (   7.66  )
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

The GPIO controllers in most Rockchip SoCs are part or power domains
that are always powered on, i.e. PD_BUS or PD_PMU.

On RK3528 the GPIO controllers are spread out among the PD_RKVENC, PD_VO
and PD_VPU power domains.

Add support to describe power-domains for the GPIO controllers.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index d76987ce8e50..bdd83f42615c 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -41,6 +41,9 @@ properties:
   "#interrupt-cells":
     const: 2
 
+  power-domains:
+    maxItems: 1
+
 patternProperties:
   "^.+-hog(-[0-9]+)?$":
     type: object
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
