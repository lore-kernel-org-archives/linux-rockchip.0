Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA02DC282C6
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqHW/at71zs1jtKNIXOf6XImu9cMo2FnbsdAAt3d2KA=; b=A6CPZN2RP31UpM
	GgCr+JMHJgg2+i0TOlaMTxVEfzyb2naP6kQLhcbIDmrMMoqJs5rAoQboYx2Gf5CLAIDtnLovJWeCM
	NxGQ3RCTXUdwxzFUg7bFN9ZDMXmHyEgzIBtZP6ptQUdc4PyacadQAcmheBT0xzDsLEb2QjPfdphTL
	1iPJWkQwxgIje+PBdqHPWQwXJIricK3kt1gqBJCFOSuPw2bWyMUtCGGX5uBBcqK8r9HPqaJ6Es/wg
	ciYAB8NQqDGcdYGu3XlUtJYKXRsid6hmu0dOT35HCo1PUBbmeSG9RMyMrjqVaI8VseOs+VRjQ0HNI
	s//3BIlg770LaSWhbXCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to6jf-0000000CX8x-2iIj;
	Fri, 28 Feb 2025 20:13:27 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6ds-0000000CV70-0iTE;
	Fri, 28 Feb 2025 20:07:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740773236; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Ljx4l5wUDUzt4Q3TJ+EHXKTTsZBw2eI+1GpkbH+vziOL5XAkB4oLN3W3DfDRXwb3kOpECW6WbC/vhdIZ5OTkdY3zTfyESCA5lKw8JsXLuhmrcUs2/WAHaQOYX5hBgFNCDGyvhRULX/E+wIcSzhohCo2X9UEzUEOAqX9UpMdQT2M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740773236; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cWGtW43TgLnA9XLRjmVYZyHmW1immnR6brlslYhRp80=; 
	b=BBoBLTBAEJtWWpxBsidBJSfC1Wr5/vKtmFGX5hg5tuV0lDiyeYLaI1EcoGJ5Y/dSFxgkgLytAehoJTtFas/yL5ehmWtFYEA+PyPhEcvykJmKVAEiW0xnmFsVKAAR09u/C/2A1kz/vB29ChjnEFqMXy+J8guRZV0znSIh1H19Ahw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740773236;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=cWGtW43TgLnA9XLRjmVYZyHmW1immnR6brlslYhRp80=;
	b=f/RwSjQ1bk4jtujL2u/olBA2vBMpEGzTmBJd9CdcFT7xVjPswJXrvn4Lw94HjVjt
	dMjNLOVUd/FwF9Kc5jDa8qRfjfPUx/BaezUoVH9+Fr0GBnjIFZDIW8J4DQjf5gq8kTK
	sV15xRLUyBfyaEZj44W0XcahnpT7c5ypi+1p9Y+Q=
Received: by mx.zohomail.com with SMTPS id 1740773234796518.1892036001826;
	Fri, 28 Feb 2025 12:07:14 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Fri, 28 Feb 2025 21:06:51 +0100
Subject: [PATCH v3 1/6] dt-bindings: rockchip-thermal: Add RK3576
 compatible
MIME-Version: 1.0
Message-Id: <20250228-rk3576-tsadc-upstream-v3-1-4bfbb3b699b9@collabora.com>
References: <20250228-rk3576-tsadc-upstream-v3-0-4bfbb3b699b9@collabora.com>
In-Reply-To: <20250228-rk3576-tsadc-upstream-v3-0-4bfbb3b699b9@collabora.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_120728_282440_2A8DE360 
X-CRM114-Status: UNSURE (   7.67  )
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
