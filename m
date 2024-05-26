Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82DB2C25B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 00:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuoEfaNDet1m/+NaZeExdmJkmu8CaojCENjPWV8l9To=; b=sfDlxJhL3A45do
	sRjjv79nlO06xLNSkO1M1/5kkUyNa5xE4StRfOd7bN+xYB+hUNCB2UeRGUe5uDDWxH9bpRaPaF/SL
	Qae1nLOtOfYgU55UPwcUVAmPGbGHEDDgVcrodyAySQl66e3FK9hmJh62M6A3/pBfL3sr0NXF+HUEH
	Ou+yhCgytVQRnHB/748bRjd1aKJBc08Eh2WAwfBmJEb3LDlajL3xEF+sLmOKMrdv4xpIZTYmIOLHC
	l4bOch8+TF17fQycbb0itJrZSNpTW8uaKAvaPTtaEpXYq0uxRsSApSSu0dv65XoxJ6H8i27D616ZX
	9F/XxiMumJph2SQ9VulQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBORR-0000000DV4a-02eT;
	Mon, 27 May 2024 00:42:21 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBORO-0000000DV40-1dgd;
	Mon, 27 May 2024 00:42:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1716770531; x=1717375331; i=seb-dev@web.de;
	bh=frJ0lI8uicyNb2amZaZ+JjmJ6+ptKOdlxCG1Cr4tB24=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=FvyhgoxR9pswppgtaepeMLhibem16GBxIrisWItGNokJYJ8JPLFFQYSK4ljnsDpW
	 R0yS7X2lLJBItQsU8PElSbIAzwp3CddShEmmu1BhBDdT9iZCWOZDfOHUqPhRDxuHz
	 GKjszeSz0uAoamBRuxdq1UGYUlS+Y0H8aA1J5/0QPZcl1urRpT2mLfZavfCLnk+v7
	 Yiw+od5VBnRhCgeZBjahcBLcYhkl1/JFf7kJOKWto40Tt8SqfImOzPA9m21UHxmMe
	 173anCLOkmAAUGisLzkHtQ1TbSRq6fIWTJkBlzFmMZvKQQzk/LBZTxADfsnbE628V
	 6nqPWtCpiHI6HQ2e/w==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from localhost.localdomain ([84.155.184.248]) by smtp.web.de
 (mrweb005 [213.165.67.108]) with ESMTPSA (Nemesis) id
 1N2BI2-1seN2q3Wla-00tG0q; Mon, 27 May 2024 02:42:10 +0200
From: Sebastian Kropatsch <seb-dev@web.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sebastian Kropatsch <seb-dev@web.de>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add CM3588 NAS
Date: Sun, 26 May 2024 23:46:22 +0200
Message-ID: <20240526214625.8830-1-seb-dev@web.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240526214340.8459-1-seb-dev@web.de>
References: <20240526214340.8459-1-seb-dev@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:eDvQynp6rlZyxtMKGWx5rnGRjj8VMcE0Df3Mot2Fj73oulGPFk9
 YitcjfcUUj2onb+BqftY/Kez/h7VYIK2JHJjPH6hQRhivqoDHGPvNXiBtolQzBf0qayzZqf
 CZjMgLxlVfbByS4q7/rdkE0zp10ypiPV06Pkz/oQsGefz0A2ZLyOq8KKXfZJDMQvkc8jeXQ
 Z8UTC0CDGhlPAxeLIurOA==
UI-OutboundReport: notjunk:1;M01:P0:7rTnEiaqkUc=;C+r37ENNb8ObuTCUnBL8kCFvDY9
 m8XPPSnC7bhX6kTzi1v9ZI9EPjdpbjXIbsSkNGyOSwVViICeiKsGeB2b2TvNYMzDSY35Kveqz
 GG6upZcGjS4f3SNt219cmAqRLHRXpg8mkmULb+RZjTmjdxt0L71aBkKTh8GkdIond0+5JWl6z
 8zCyO3p4p39u9+K6TnUUiEMCqXNFI89XpSD5ktY3xmW87ujehq8l3G20XwzZiZ7COzNMYsFPS
 MBV5blAhLmCj7kgqnR6eFcig1b8OBU/HpVzQK3IHRa4TrQoZoz5aVgdNSNx3a1m5krTCdub7U
 Oxesej3CUoKy9N1+N70GrC5r9K5f58T26nJwkM4DH/eD/qVsyZ9Z8D0+on7Nka2NfFhBKueIb
 F1xz1YzbPDZLZ1rmpd4IvgNwLq1miHdBAyfJqa79If32z0HztrZe/jL/TmTPBYTJtfRc1Z3/x
 AhnnrvuO1B//Pc8czODYYgxUgW5utBb/akPXoZoD8OClpCeI5uh3E+HgZTH10W2OvoiS02Mbi
 2LcAIkqojLj0W3SDNrGCXbRdWxBh6ClrmBEw5wKiGbAlT2q8llV51w/nZ6Kn/PZxRJgGSVWEm
 CDzPsE1klYMCxUWbwu7Pg0mCcljjC5NT0JEW/z8mjv5jDYbdA82me/F9qQTZF1C/hz/umJSEe
 OK2dVFKY1RA/IP8YQuRRxk5zzpyMCeKyNGRIb8WiwLFF8xO4q6WAhW0QBpNdl/NNXDtcIH1lM
 Pta+DO8YpcqSmNwiluClcGmiamCmhpfe+RbtEky0Z8KJUSUDzAgICrkJy94nhoh358W+bcO6Y
 noV0Y1FlYTNiAX62cvbY8W8Wjae5M14CAv40Z4yJREwUQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240526_174218_930313_3A722B12 
X-CRM114-Status: UNSURE (   7.17  )
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

Add devicetree binding for the FriendlyElec CM3588 NAS board.

The CM3588 NAS by FriendlyElec pairs the CM3588 compute module, based on
the Rockchip RK3588 SoC, with the CM3588 NAS Kit carrier board.

Signed-off-by: Sebastian Kropatsch <seb-dev@web.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index e04c213a0dee..93d671e13f18 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -248,6 +248,11 @@ properties:
           - const: friendlyarm,nanopc-t6
           - const: rockchip,rk3588

+      - description: FriendlyElec CM3588 NAS
+        items:
+          - const: friendlyarm,cm3588-nas
+          - const: rockchip,rk3588
+
       - description: GameForce Chi
         items:
           - const: gameforce,chi
--
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
