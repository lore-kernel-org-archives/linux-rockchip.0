Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A328C021A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 23:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgt+DpPS5Xfhw9zKr6nP+9QrMuyjUTQolTR8t69h0Wc=; b=FjmM5kymXsiMko
	hfH62mtPoC4GaZtgxLBT6iXQoBaT1J+0w93kU0nt+kDGd3uhsHzYM/uVaO6hAubZRvvZ3655Zu6RK
	ByKLbzoWVNCiaE4Si9D5ucCWJko/6faD8eT5fUwsZG6w+T3vozrOLwTwadnEnYOQBEPoLH7F2fFRT
	75uDpt7uPnelaoLjzj6D8RvWGfRgGgKaBTw2BMkwg3MfGzPyZyv9yy1NNTJM9S4z0CoJcYOBvXJmJ
	Y83xkXcwv2PFsAiZjSFjWY//tp0VBannuIYSPWWg7/ABe+CDwfr/IVtOm8c9KVHZMPRCfRber4ypy
	OS3Yc/cs3TCU9Vim+O4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRiO-00000000tsS-1YV3;
	Sat, 15 Feb 2025 23:36:52 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRgv-00000000tYl-0qBi;
	Sat, 15 Feb 2025 23:35:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739662508; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mbifMoSoMISXAR3xZXE43PYTb4VKgKz3cmubZVfwwT2VLJgOT22619GtQ8sidUBoPXi0Sko/Anpf+p5uar7g90Xe3Ztxunk3hAHVDTagAScw//nKcNeljvApYgOdaSU0gYe4GgkXADDA/TdUqUxGXe+EbA3ohQZ8NwR5YQfszMc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739662508; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=sbLLDWdkkmGg2gJ/dWXDp9NJrL5rckyuc1qaW2EiOzg=; 
	b=KUAoQz/q6ZiXs1LrledRyiwjuenPgJq1NSTzToxd5g+3XHObSDX3zabLyyWhMYGUoA2H4IjJiA5qC3nZ7erEjl9Fkbx+v0PUJpN3T7enOKcAc2ibH01fY/IbB78YNqGqJKr9iSkXIqFRSNkETeNFo51SGjBDRjpIvyMWP5cimYk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739662508;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=sbLLDWdkkmGg2gJ/dWXDp9NJrL5rckyuc1qaW2EiOzg=;
	b=jbPHXtKR3x8zgy3OraOCzqKnb5xaJx6sWJxZLhDmx6BWw1Ma1PzwJDqA8ofG3pHy
	F24QkmqCJCQeHj2JuAVy4DgkdK9uuZFxGQOw6kjE29S07J5ne7VaKxxUJqWNNfB7Wc/
	A2pf+mdyOC46VtBThZRlGsnH6tv2UXN7L9a9T+tI=
Received: by mx.zohomail.com with SMTPS id 173966250691519.102304818019547;
	Sat, 15 Feb 2025 15:35:06 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sun, 16 Feb 2025 00:34:50 +0100
Subject: [PATCH 1/6] dt-bindings: rockchip-thermal: Add RK3576 compatible
MIME-Version: 1.0
Message-Id: <20250216-rk3576-tsadc-upstream-v1-1-6ec969322a14@collabora.com>
References: <20250216-rk3576-tsadc-upstream-v1-0-6ec969322a14@collabora.com>
In-Reply-To: <20250216-rk3576-tsadc-upstream-v1-0-6ec969322a14@collabora.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_153521_302148_C66BD574 
X-CRM114-Status: UNSURE (   8.04  )
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
