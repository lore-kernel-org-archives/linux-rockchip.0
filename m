Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5964C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 18:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCc6iv4mqzLYX14+noaCr0+HNE0FXPY2psA6o4msALY=; b=ovSLkhwsT3eAat
	D82NTJFV3rge/pOkXSO2kxSsb+98tfXgmbCoIAlT2WInBMYimeRClxGSsDoNuxggG1ZsU9B9xQd0f
	WP9yXAMQNxk2Omjl1h9XqeXU0G/qekmf2Jq0WtO2IZ0U9VFnNvn8Za6NCcJSI6vSYIgSxdcnBo3Em
	VvXJ3/fuwsHba9r2vO2SwxEoPXagsrJMqjGFlZPRcOcjHgrnWA3j08xQJJAMX2DspAZ4Tu3wPgIZ5
	CIxAtzAgCko1O724np54n5WL4LyCu/AV49CPaKtuQQxNDlJYNymvBNjUwRjlsVHfWUMh6nvmPQzYg
	ZInG60lLMCtrgummB0KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIDJo-00Emt1-R6; Sun, 31 Jul 2022 18:05:36 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3Z-00Eeb1-Jb
	for linux-rockchip@bombadil.infradead.org; Sun, 31 Jul 2022 17:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=A2PSPyUUXTTYXQC8rxRCv2uQL7y80S+kxovu+gvI868=; b=SOVZ9Ppi2VfiG6lOEWjH+uiEFS
	WyVqrHMwl0cY69w5LJIKhMFmEy+hWLQ7aC+QWkA8DsMny5nDIcBy/XRAatGf26ypqsZmN/a3H0SfI
	yFE5BcnIgC37F0WWPNuA//p8vNP+hPMXl/mkn+Cy6e2098siohvdH3fxgoHzaBing1nras1gjNP5B
	bPZ1t9n/93AvfEADvwcpkEMc/v3tg7zhna6XDDf+xFA3cLTrRX6USTztvCFHDZFdabpJH2uI7AN/j
	3EaOscIf9kHzGPerydR+b2BPBrsWkCf2jNRg07bIjq+QM4BPvfiJmiQtnDJeK9YPGJZpQa9bYe5ty
	wJbV6Wzw==;
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3W-002Dds-3f
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:48 +0000
Received: by mail-pf1-x434.google.com with SMTP id u133so2002347pfc.10
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=A2PSPyUUXTTYXQC8rxRCv2uQL7y80S+kxovu+gvI868=;
        b=a5VPc3D9N9hQc9NtaDOhh78kLFUMxpe8/4j5PntwEkqjiEKhG/8uZ4Bp8zKI/SsBM7
         ylgh8I/9aBgHlcb5sHHaer/ToDT28tCR7fjD/XbUX7dSr1VVbaF+O5X+OOYUEj5YCrew
         YHP+I1wyz4nklwBFeEognEZlAGlSNbpx0cFPnLGckKRTIugjAM9RhXPGVfl+K7J7MaNn
         qdpaVCgfsZ59EqR/bPDeRffN9T/7UKBy1N5VPEJ/SFxoqYSHa6y/WHo2UZD4d9wgSb+i
         c84lt6FYkZsbu07Z1nZoibS7qJtQoQNJrMtimRV4zYg9giwD+OsTBYQo21AzXQ5PNQv6
         qItw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=A2PSPyUUXTTYXQC8rxRCv2uQL7y80S+kxovu+gvI868=;
        b=4hQuoZqPlv+kZcUN7KKNhclkd7JRxSww2cPWwd+uAJ2/MAANcPMZW63v+GRut04CvH
         tEdEga6xnXPp1SMuivRXnBrsY8KqzQpvfgwLfi6Oa5zlF2zDPqvugpYPR3P3Qi2jSTCL
         +FxtkjUsD9s+u+x9gHjVqLTYBJllNsmQxBrd5p3uBfhWaxUbflVp/pxf+No7dPbZWv7A
         Sh0W3mSNxlVSX/17qhU158wK7M8kUL75sxixYn2KQfx7UnKLBc0tveQjdvZW304vYsMN
         5UrRqwWjZ0y7Ri8YZAVC9prb9a9HNlKmgHJiM0WRWq4rNvWIx1XnDuSRs0ysm2FTt4dy
         KRtQ==
X-Gm-Message-State: AJIora+1BEhVxybtkKeceqKhv9ytKeU4M00MKlKsVyDH7CZSh641rkwD
	ul0B4gLMERSLbKfvPnP/266uYA==
X-Google-Smtp-Source: AGRyM1tNE5DcXNvcslrp2fd231uxwes142MhD0iZcScCpdQ44zcZZmbHiQ7GtPrpRTOblFkCvS+DuQ==
X-Received: by 2002:a63:6e81:0:b0:419:f7b1:4b12 with SMTP id j123-20020a636e81000000b00419f7b14b12mr10331102pgc.406.1659289723999;
        Sun, 31 Jul 2022 10:48:43 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:43 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 18/20] dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
Date: Sun, 31 Jul 2022 23:17:24 +0530
Message-Id: <20220731174726.72631-19-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_184846_317204_BBB8DD0E 
X-CRM114-Status: UNSURE (   9.67  )
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

Edge Compute Module 0 is a 96boards SoM-CB compute module based
on Rockchip RV1126 from Edgeble AI.

Edge Compute Module 0 Carrier board is an industrial form factor
evaluation board from Edgeble AI.

Edge Compute Module 0 needs to mount on top of this evaluation board
for creating complete Edge Compute Module 0 Carrier board.

Add dt-bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index cf9eb1e8326a..2a4b7f2d018f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -65,6 +65,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble AI Edge Compute Module 0 SoM based boards
+        items:
+          - const: edgeble,edge-compute-module-0-carrier  # Edgeble AI Edge Compute Module 0 Carrier
+          - const: edgeble,edge-compute-module-0          # Edgeble AI Edge Compute Module 0 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
