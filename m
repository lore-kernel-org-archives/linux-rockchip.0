Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 038F5C4450C
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6s0cFtjOpDPTV1eNdXyl+/qI23VUE235gHDSzW/330=; b=nHcN9x0HdtNx81
	BK71Zcuyvng8dld4ghBcd1zK25/O51d8ujcRnENX343uaxnXEWpf8U+TfY8rNronldpOSHFItpy7r
	KXmY1i1liHnHezj29i4Uhq0MmKj1wkEtLEH/bXByX7eSQ2qgub1T6gF0OX9DvwHZecBuDXUjqKQfl
	BPNVLFHj6kSeRDttooA9YnBb8BJAbuBgJedMhotkd5Hjg4MapkPYmlr8bhCcwPTsjQfC4Dq17B6Qe
	QeJDc32Bpv55ORoLgqTNr6lD69d2KbIpZRaGT1L1HxgXml2xDgfXCygOo43jothAO9Byv9K0jWXRD
	8p4jgSmC2U6A2an274/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiwW-0000000D8BV-2jnf;
	Tue, 14 Jul 2026 19:37:24 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiwQ-0000000D85h-118Z
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:37:19 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7e9f5637634so823561a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784057837; x=1784662637; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pBu5PO50COeanzLU9hRHdGtnyMlkKFNMWpi+El+MyHI=;
        b=Yx3cSedLi2Mes4e4bVlSwwAA4VnHWzdLnEEQMeBKQCvxghtqcArPNTa5SELKdlOmoY
         TRcSY6GM5QZb5TZMIRlBKpthpyZYRcXqakjFj5TFzxHf5cSswX38cbXzV4lVBTbKIi4H
         dp5kX7BdNpE+D1N+tU2qe5f4lkZGEOD6zRQNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784057837; x=1784662637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pBu5PO50COeanzLU9hRHdGtnyMlkKFNMWpi+El+MyHI=;
        b=m5jbKy6whedTdEmNJe8RhzkN6eXuyrBrpTsWceMKLRaNelW16CiukDnpV6qsjG7zHL
         wHQtjUzYKZy/xRCLjrWllEy6XO3FocizooDbjPVkYre/DXukdVmEV3zeb0GETEX2/a5Q
         nGQQAhxSZFicMbPF1TlGtHhL/XFP1RdheMkZLmuWdqMtPAC+4M0ih/6hJoYnGZCmZpxW
         fcM5E+AA3prnEJE38i/OSt+1iGLbdhMVzjn8yrunxu0fPrlKcNtVAi1JBV3JC3KRwYpZ
         2iyUzBfhpfZwrRSsKhDSBMh8isMbM7KASw24TxYswp3MDWMw9vLTyBIK2MTFnAThN6RV
         sNWg==
X-Forwarded-Encrypted: i=1; AFNElJ9B0K1wRgO2HK8y61z73UFQj59MSywGOOKS/CISe7+CGllT1R3vLaZMaOCkLdr5hOGhstypIeeQTX1srQwlmA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5V36pazgATzU38nhaC56xvdP8rP+4Wy0vMUahdgwneRsjqlMZ
	UBWaCsciiUeT3HDGcW28VBMy7re/oJ+y3ZhorbanXJ3AyprUf243csSQaRMZ3tQJQA==
X-Gm-Gg: AfdE7cnKqQHfMyGA8zG2zGUFkhlxQcq04+JC03QimHWbb/OuzixWRZGg5191Qaj5dpb
	zM6XyPQMsX0PcxgWTFgWGw/SoJgYSabRfjcpgF0zcd74ahNke5RDbHbzJFGeqV6eU+mRbZnJRmi
	vs+ZieDJXgotfDD6tyOToFM/rMXTNl0Kb4R1ijOL9q/sWKrqK1pVqKX7IIVLnq1fq6UrkY3G9hs
	iGECO+krXQKJIh6H4eboTtGcYhv5LPgDtPkwSuKlIpUE5JmQMG28lC99smPuGZ9OKRWWx93jsUs
	hPVOt470cHw7M04pNWdmKI43tqw8enPr4Y4wjBdFXk8D3vy6H/0bfh+c2dkQOmEEy3IBDPyfxaO
	jbNQLXJEJAPFq75YBaD/x0DDBCCnSmSRAu+Oxm88Q/CLG22DrbHHN5iyURzJcfxdgWvtCaofU63
	REy16Y/tvaXfpViJGZyQ==
X-Received: by 2002:a05:6830:2b25:b0:7dc:db3c:1d82 with SMTP id 46e09a7af769-7ec0963a968mr8895929a34.10.1784057837546;
        Tue, 14 Jul 2026 12:37:17 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcaf742e1sm16004026a34.8.2026.07.14.12.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:37:16 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Rob Herring <robh@kernel.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] dt-bindings: arm: rockchip: Add Luckfox Pico Mini B
Date: Tue, 14 Jul 2026 13:36:42 -0600
Message-ID: <20260714193656.2196447-6-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260714193656.2196447-1-sjg@chromium.org>
References: <20260714193656.2196447-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_123718_307793_8F85436D 
X-CRM114-Status: UNSURE (   9.29  )
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

Add the compatible for the Luckfox Pico Mini B, a small board using
the Rockchip RV1103 with 64MB of in-package DDR2 and a 128MB SPI NAND.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..711029ee78af 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,11 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Luckfox Pico Mini B
+        items:
+          - const: luckfox,pico-mini-b
+          - const: rockchip,rv1103
+
       - description: Onion Omega4 Evaluation board
         items:
           - const: onion,omega4-evb
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
