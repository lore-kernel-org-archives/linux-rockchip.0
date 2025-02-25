Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B45C021BB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 13:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqHW/at71zs1jtKNIXOf6XImu9cMo2FnbsdAAt3d2KA=; b=lLaoHUFQgM+CBh
	v3U2xQo+XBnMln88V+HVGXE5hECrQ4pe+giWGB9jxYM+8/zcFUmZPYFXYz3O4z+jOiVSH4FypkxeR
	/7SHk+BBFeYyvsBZR2y9hJ9qpi9r5/fllXmpc5FARKzxFXGr4t8p7ijtLtfDclZE8fc15HnRDrQPj
	quBYrnnXJIFwomzLRdW1xG4mRWyRl6AG4fHVGtc/mePWXwJzgrXGGSTVmLlkm5NKTYO2NdTcWt4Zz
	/3rZuVFbd85dx0XddU+RyXrN35S03SwpS38D67ftqbGZ4ftDAVTySqhtrd/4Yn8VaQahQfpUbXsrz
	b6XRKfJqgZCcqnPfa9GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuoz-0000000HLJM-1bzD;
	Tue, 25 Feb 2025 13:18:01 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuVL-0000000HHMO-3Q3Z;
	Tue, 25 Feb 2025 12:57:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740488248; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lmcXg71Tfat+hgjWvLhShXas9QGFsvlWYt6HKtso735A8hdFlY7syJ2e0onyCR4aGj1YfjHOC8SucKM0+mOwIUJ97KRkHeypbiGl8kCgogRl5AhPXiiB7Cx1i0zU26BOeChFfNI+QOhWLUCBoIqwq7H5H0RXt6F4Dt2tesQq/p0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740488248; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cWGtW43TgLnA9XLRjmVYZyHmW1immnR6brlslYhRp80=; 
	b=mfohuTo97wtGhA6gUQ1s94iiCJzuNmrWxs5mbI13B8q59JmL36ihXBJFQKFA1tJFmBX9QEkpYd+DV29yr4fMM3Le80U8hGxXVhoaoePRH5GTwaYJs2aQT9i4foK1FA5hpXJhI0ai38N3UhVmoeDXRpIPRgD0a8kCO1emP3tkqq8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740488248;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=cWGtW43TgLnA9XLRjmVYZyHmW1immnR6brlslYhRp80=;
	b=GTNrD93eBrF+xM9lAwCtYSod3XyhAMdx8D0mEBbrXSXRDEgy5QnGk0eIpXX1xh6S
	WkhGiLaeK+m+VuJrp9glWvadYUOMdeEswTiH7Kn07gxPl63c9NnybeCduhz1sh3yR1P
	KfaZ2ofWjVzkOunW+M7BApYr3UT00J+FRTEJ+6NU=
Received: by mx.zohomail.com with SMTPS id 174048824766496.17668398054809;
	Tue, 25 Feb 2025 04:57:27 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 25 Feb 2025 13:56:44 +0100
Subject: [PATCH v2 1/6] dt-bindings: rockchip-thermal: Add RK3576
 compatible
MIME-Version: 1.0
Message-Id: <20250225-rk3576-tsadc-upstream-v2-1-6eb7b00de89c@collabora.com>
References: <20250225-rk3576-tsadc-upstream-v2-0-6eb7b00de89c@collabora.com>
In-Reply-To: <20250225-rk3576-tsadc-upstream-v2-0-6eb7b00de89c@collabora.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_045743_933327_52C157C6 
X-CRM114-Status: UNSURE (   8.07  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add a new compatible for the thermal sensor device on the RK3576 SoC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index b717ea8261ca24ebaf709f410ec6372de1366b8a..49ceed68c92ce5a32ed8d4f39bd88fd052de0e80 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk3368-tsadc
       - rockchip,rk3399-tsadc
       - rockchip,rk3568-tsadc
+      - rockchip,rk3576-tsadc
       - rockchip,rk3588-tsadc
       - rockchip,rv1108-tsadc
 

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
