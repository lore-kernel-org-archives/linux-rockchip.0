Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9BC0C02198
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Feb 2025 21:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G3nvXe4YkHJZXs4fqZT9UxoYCDKxXKci12s/SzIWkPE=; b=l3uSBQ+ftQvnnl
	zi1Rvrd/GdioiOoNVcXNPKsXiAjeJGpiR0UAptMdshRrTsX5NVK49MaeUry8TUX2qEME6fBdYl4QB
	cmugQKvzgvhOYVS4+IrIc6zVdgBX4LQFdfJcnqOrMSkpphCT9USWWEGNab6jdu48rjbeLVvoAa2m+
	EhdMJepWFcvJ81KlBs8M22IcTJ7IB6xAqo84asDEc4T62ns6dtqzuXd0j+PM4qVhTOtFwhrjw6duM
	IG/f6K7zQDgdRLPSGzlJSYUnQQVnlBgMFFxZLlvSBmBcD4V1pJAZOX2AhawI52Itf48FHj+ZXSakq
	q4C5/4Am70VRjKu49osw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiJsh-00000008r4z-36Yv;
	Wed, 12 Feb 2025 21:02:51 +0000
Received: from mail-ej1-x662.google.com ([2a00:1450:4864:20::662])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiJs9-00000008qyJ-1pvJ
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Feb 2025 21:02:18 +0000
Received: by mail-ej1-x662.google.com with SMTP id a640c23a62f3a-ab78e6edb99so35283866b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Feb 2025 13:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739394135; x=1739998935; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wg1lA3IZ3q4wxQ5pM0sN/8lXutNm00FGJuuGk/CKpII=;
        b=lURWE7x/hMDBOqu4PK1FORz72dgLVTDCuglei/V+XA383HOJgdCErQBYnHF8iZPsfS
         c3cQrkhoyWFbxlqs/qOQ0fnmBd2qQkmers++z5TIJ+Sd234ujSD+5uRN0WmjR4ulm2GJ
         gQCM6mAw/Qo26TQMh4Z4ssKA/ZdV57e9N4KLvDllhBfCFBcjwMGFxCXGUNdc4l93JQOE
         JyKOVZdY5R61j9xxgb6Dtjk9GRjv/LEMNLWeVm4PcYk/tuiuUzkTkk7RobU3w9VPINRg
         uKqlruAIUlDnOBfGaL38Y6mFal2iw+HuxWlH+LF7BMDpzJrX/y38hJQVVaIgUyxCsyMe
         786w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739394135; x=1739998935;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wg1lA3IZ3q4wxQ5pM0sN/8lXutNm00FGJuuGk/CKpII=;
        b=i5cUoEKDTtaX7ZJvny+VeHQNaQLGio1jUS0m+9QGdOsaC+W2VSeNdr+hYX7pZcdUjX
         5SLkCiR0gfQKNdg3at9Pi1qWFsiMe5Zk3P5Bpn+rXS1ayXeTUmNRrMe9gUBPBryOGaW/
         EmX63wJXoAPPagSIVd+pN7UUBaEINKkE7Bni5hMkFWHMhsQvZ8cpvY5+HPd5MuDTYZMz
         NmJwc9DPp95May/ght7yKqDip9UBcFTe3pdIttO48Jocagr26g64KnI4f3I0k3MEDWh+
         co5AJypgWR2b/kYVhYAarkR/+8wM+3ZheYKvUtSC8sVwzLQjulp9xk45+V5t7GfMXWbC
         Dpng==
X-Gm-Message-State: AOJu0YyGjlmmjwKk/NibxEYdiYbOrohnArh6OKPg5oIvViyEj+oI2p9F
	CG1h8iG2Ni61Zpka9rRzwzUvFJoRUBe+CDExY5ZT76xQk2NpMJCIaumEEBm/vTaMgbe5ztBNLPm
	pFuHvD/OR6/o0ezSjFqvWK03zfj5tIvsvxWic4c/e
X-Gm-Gg: ASbGncty8QaAo6ItQubS9yYkeMvMU5mcRRQ2ngH+GYqRT6OytsyeoHMgd0/ZuicRnFK
	rvGCWiIhTKaJjVwDUJuSRNt1sfwcqGyvgyi5QvOrnvkD1q/58igk4vTPKbUeQW/rPo0cfy0Z2+R
	hrSQFjPjQ5/7z1MtN+PkOToMFpy1wuOryg0McCOY7gbdnb3T966VeV+Ax8aWubkuOeN//fKvopg
	SSqBJaV+hS+WYCvkfdC1jhdHSQytaOcGVEZuiKp1dE9tLhtp7cCQwcIZjMbhPrxCTxzylDc6a5H
	+zMRP255AvEtP3H+rGZ+sjtt+Q+R0J7u
X-Google-Smtp-Source: AGHT+IHqpvPQzdr9MAcycXbgI5nsdbZRNkyWMAN8JIQg9N+hkFcqx1Z+xzJ39++U7UI2g43v+TQUi47WEl0G
X-Received: by 2002:a17:907:94c5:b0:ab7:c6f4:9529 with SMTP id a640c23a62f3a-ab7f33781f4mr515355266b.7.1739394134643;
        Wed, 12 Feb 2025 13:02:14 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id a640c23a62f3a-ab7e3ec7281sm23009066b.92.2025.02.12.13.02.13
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 12 Feb 2025 13:02:14 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Wed, 12 Feb 2025 22:02:11 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z60MU05JLtI9VzuU@windev.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_130217_608775_308B45BC 
X-CRM114-Status: UNSURE (   7.62  )
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

Document board compatible bindings for the MNT Reform 2 with it's RCORE
SoM, which is based on Firefly's iCore-3588Q.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
---
Changes for v3:
- Split DT as it's based on a Firefly iCore-3588Q SoM
Changes for v2:
- No changes

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 522a6f0450ea..e21c5c8fc2a3 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -178,6 +178,13 @@ properties:
           - const: engicam,px30-core
           - const: rockchip,px30
 
+      - description: Firefly iCore-3588Q-based boards
+        items:
+          - enum:
+              - mntre,reform2-rcore
+          - const: firefly,icore-3588q
+          - const: rockchip,rk3588
+
       - description: Firefly Core-3588J-based boards
         items:
           - enum:
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
