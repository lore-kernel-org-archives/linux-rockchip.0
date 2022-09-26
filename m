Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C327BC6FA8E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1gpzi1uW0d8mKa5IMxUitPmby3/HC5eZajwgepQ+YE=; b=DsmaT2jDquMfcR
	GMzGyzvsEydgsUZP1XXSGnPjsFLE4nNnmvU1V0LY6wMM37zW5cr1crPw3t3yfUSxx+Bozti/s5oDa
	0yixKHmCcnQqoZK+93cWdZRnvlM2u3KwZoKkSQUwzKcKg2Xxq8HL9TQWB7uK3qQJ8MjUev94LhmLy
	b03QJGzQPYTMKk81IOFOpeQI9S8v0ddgTWjmprDemun/ZHmdEQPFL4SODUHkeBtt70yRHEOkecFkA
	eS+O/sWk8f0YX9aDKfsznKjifzUNbwjrSHoZUzwU5TO84CJod4DVyktWMP6CBWWb3t40C5lc3Ewhy
	8QC1pPXCzoETCIi9Kwgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocszK-006IRF-Bq; Mon, 26 Sep 2022 18:37:54 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsz5-006II1-K6; Mon, 26 Sep 2022 18:37:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=wn2dlv+AAhjXeFbTWc4zcB3btHAdOPL9MKl20QyJBys=; b=MoWc2PAYvN8ybarCHs3475q4tz
	eRELGyZSuS+1N2xbEzJq654ZZ7lV2b7WGyjZRhlkb5H/XGHDx0YtuoLNoZkriIS2qHjFok9r/IzcQ
	Ny7X0r1Ic+z9onbihF+FvdWrw1Rmn/YRCNaZ5mO6nng7NSGKAY/JjaPL9kUG0zyfs4u1PJyvbIIuD
	8k4JhcSUbODqJuLwxiXtDZFE/TG6iA50bMsxCscvkY8AYRWo5fdFfk7xHJGXoH7Ziw2TwqjTnK/XL
	ty3PoctHxSF7wkPmxSPDCZNBB4MvJNhFdASDsq4wx+m/zyEJnWbEWW2w4fCwHmUqsCplq+RVoHA2j
	fPD9K1/A==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz2-00B9PS-FC; Mon, 26 Sep 2022 20:37:36 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz1-007wbq-1I;
	Mon, 26 Sep 2022 20:37:35 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 01/13] dt-bindings: rockchip: Add Hardkernel ODROID-M1 board
Date: Mon, 26 Sep 2022 20:37:15 +0200
Message-Id: <20220926183727.1893566-2-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926183727.1893566-1-aurelien@aurel32.net>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_113739_681741_D4A542D0 
X-CRM114-Status: UNSURE (   9.06  )
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

From: Dongjin Kim <tobetter@gmail.com>

Add device tree binding for Hardkernel ODROID-M1 board based on RK3568
SoC.

Signed-off-by: Dongjin Kim <tobetter@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..d25a8a0bb2b5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -688,6 +688,11 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3568 Hardkernel ODROID-M1
+        items:
+          - const: rockchip,rk3568-odroid-m1
+          - const: rockchip,rk3568
+
 additionalProperties: true
 
 ...
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
