Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 530A0C04FFE
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 13:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTbIrHPJ41tJ2W52W+hKnrLdjqQSsEHPLJzg2HOXytA=; b=DHiPlha12Y3LN+
	mpMWgNvVPFahTvrm/xNlOXgtqSYYNXyv5Eux9IDFXFzqsY8Y9QA/S3pPLlS5GcVy+6rMfUUCqJ+Uv
	dTA4Ct0BASDJnmYhmeVrTXD6e7lT4ACH1c4brMkOZ306oa/j/twPPuxXb6KG3ZhdyckEUlbJtoEEL
	7syiG7r9cJmMSlnpR78IYjgFMbV3Cgr3GLezys0qIpTW8nhYtXeZOozCNMcqeoYAQgaUieu+7EWO0
	tNfYkpamOG02xX0bbFW4ks+J8P2f4mNShhRNxWCagMokVPe4oxNjbuNAgsUtpicvzlX5H1VCL8fBV
	EqARNDmLrWgoLUtlv5Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3c88-00000004Mak-1HvR;
	Sun, 05 May 2024 13:42:16 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3c83-00000004MUK-2zXY
	for linux-rockchip@lists.infradead.org;
	Sun, 05 May 2024 13:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1714916492; bh=eTFSF0qSsxOuDHS34o+hgy93ZRL8a/aPI7xKAOuylBI=;
 b=SvRiPwWlI7y1OmkGt714c5P9kk/l/zL04V4apKKsdYa22MbHeMI9cdW109eR6Fe9Cz974xciv
 VSc6NApbV/jg48nsygdzzB8+rP9ak+ktbQXZD7sqyG/ajwts04zW/XA3cuV8Y/NiOdMLJ7jqMD3
 yUMKJI/E9KayR1IxaoP7GuEDieyScB5mDWLNeZyaEjfneHR9QfUc9y6I+Xqkhp7QgpwBa+UT89a
 bU8xTgHKDqvH1gqh4BHoYiARCOKE8TTJlNadUIl8fciDgNakZYt6pLA+2hyQZo7R2Wop2jRjlCy
 Lqh1v1CMWQVSVJ+zCOWhoK/Fd42DrooUYJUunXyYbdrA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, Chris Zhong
 <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/4] dt-bindings: mfd: rk809: Fix vcc8 and vcc9-supply description
Date: Sun,  5 May 2024 13:41:11 +0000
Message-ID: <20240505134120.2828885-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240505134120.2828885-1-jonas@kwiboo.se>
References: <20240505134120.2828885-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 66378c8a57f92010457d687e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_064212_217167_2D556B3F 
X-CRM114-Status: UNSURE (   9.20  )
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

As can be seen in the RK809 datasheet BUCK5 and SWOUT1 share an input
supply, vcc9, and SWOUT2 use vcc8 as the input supply.

Correct the description for vcc8-supply and vcc9-supply to reflect this.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index 839c0521f1e5..c951056b8b4d 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -78,11 +78,11 @@ properties:
 
   vcc8-supply:
     description:
-      The input supply for SWITCH_REG1.
+      The input supply for SWITCH_REG2.
 
   vcc9-supply:
     description:
-      The input supply for DCDC_REG5 and SWITCH_REG2.
+      The input supply for DCDC_REG5 and SWITCH_REG1.
 
   regulators:
     type: object
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
