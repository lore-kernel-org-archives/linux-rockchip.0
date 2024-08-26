Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D68C5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 23:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYPmubQRmmpuranYYTbzOhWSRrFkZ7czAw5wFLjaZ/4=; b=HKTY/Rj3AfNekw
	V2pyNCVlRc57cqlEEyP706ilNafbenLmAMc4rPj2N9oECHk2dcp/4BNBaSYxH0uJ3FwXNq8UU6vto
	owTi0fXE4G2f0pfb5R4TL4f7mJu5xM6P9M7QROBSixfG11H1v4ijRVXIeZ3sp7IpEmezMcg1ajAAs
	22lBbSU/nwZRXCfcvG8QhRuXp2PI7ZRJZIQQGO9TJeAeupCBv/HenhFv2WOD4rGsRPV2lnrPa0jDH
	raGJybXViH64KAyckgpRoA1BLrMC3ikg7zTZCgBs+u33wokfipptzGcVzhfSRAgtmsY9qQ7wtal0P
	J3rGEDIVXVzPdJTKA3Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siioK-00000009778-0xlo;
	Mon, 26 Aug 2024 23:07:44 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siioH-00000009762-0gIf;
	Mon, 26 Aug 2024 23:07:42 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724713652; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=n30YeZKpctL7lgeuk13iZuXGky6lQYaFw2xu5qLcanLDQavRHZSWWawuFaac7mfJwTjNDoh0Z5JldjHzWYa4uj7u8hLPPVt+D2XrARyjQsPBW/r7co5Nv8xIq0cChBY1tSNA4gRSm4u6oL06gKC802xtzo4NS4iAny5MquTIdo4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724713652; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Z+jAzzzokKHCe3H8TXOmojTHnCSogBwzWxfbfhEDvF0=; 
	b=LOhCs6hHAucsr9CR+MypUz1P8/pXP/ZCw0VoL33T9niOuJBDfCL4VhF6uZ/TJf/gkn4ZvXDht9a9/B7fO3PhYs+aBZIreW3Sqjt7u3qpT0eXAZeJImUlxjJyx5x9m7t6xJ1yieWpX4JWfS2+Zt6ksoDU20PCKqld0G9BDhScPQo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724713652;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=Z+jAzzzokKHCe3H8TXOmojTHnCSogBwzWxfbfhEDvF0=;
	b=eDwUlTGyWvOJzKPBvCqVS+oeVzABeGwp4/T1ZpEiygNeDAvvYtGKJ999y1gFIA4y
	CYF09afxAP+NWGud+766H5CiucKdWGFZnzOEkvUbitiKlHdEqGJs30nSwtsNj77n00F
	n/36wRR30Hym/HlogxmN2PApktKi+H8Gc66j7HUE=
Received: by mx.zohomail.com with SMTPS id 1724713650530383.7164698004325;
	Mon, 26 Aug 2024 16:07:30 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 27 Aug 2024 02:06:50 +0300
Subject: [PATCH 1/2] dt-bindings: soc: rockchip: Fix compatibles for RK3588
 VO{0,1}_GRF
MIME-Version: 1.0
Message-Id: <20240827-rk3588-vo-grf-compat-v1-1-d4a18acf951a@collabora.com>
References: <20240827-rk3588-vo-grf-compat-v1-0-d4a18acf951a@collabora.com>
In-Reply-To: <20240827-rk3588-vo-grf-compat-v1-0-d4a18acf951a@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_160741_284539_3109B203 
X-CRM114-Status: UNSURE (   9.38  )
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

According to RK3588 TRM, VO0_GRF and VO1_GRF have a similar layout, but
definitely not an identical one, therefore sharing the compatible is not
really justified.

Since currently there is no user of this, hence no ABI break, let's fix
it by providing dedicated strings.

Reported-by: Conor Dooley <conor@kernel.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 78c6d5b64138..8fd539125f4a 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -31,7 +31,8 @@ properties:
               - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rk3588-usb-grf
               - rockchip,rk3588-usbdpphy-grf
-              - rockchip,rk3588-vo-grf
+              - rockchip,rk3588-vo0-grf
+              - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
@@ -261,7 +262,8 @@ allOf:
         compatible:
           contains:
             enum:
-              - rockchip,rk3588-vo-grf
+              - rockchip,rk3588-vo0-grf
+              - rockchip,rk3588-vo1-grf
 
     then:
       required:

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
