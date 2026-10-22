Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF087606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 12:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FLRV8s4d;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=W65z/Ak3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=s8YA3VVERexBj9iVj3TlpJE0Z3Br8FOt/jchZUODYOg=; b=FLRV8s4dnh8kAwtquWFh8jdx0v
	0k2RN2VNmdSccj28ZzJJ9bud1MH/a66w08Gg5KcraR6RfATewZ6I661zXT8KKwTlwi41sV1P3ka3o
	dBR92IGu9T7yPZ4D2iZ9B2XX1Xw52+3lMl84cFP313JG/AZfFyv8l9hfrFdxlrwlLh3K0KSJhMJJ4
	qLxb/InQNfF44fJxzR4SSQvVi9lpNoopMWfpQqNiGExkamXAqYwfDXnF7v4W9rPMitpl1qg+GNAY4
	dA6Jk1R3CN42aQUdbsNwAgKcQPbZXXVqUMgSZZOQFAH8GEKdioowVYUGW6j9GIJVsDdeXzTWGOIv2
	Nk02NVeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJsJ2-0000000E6pF-0rTK;
	Thu, 22 Oct 2026 12:54:04 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJsIz-0000000E6nW-1Izj
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 12:54:02 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2e74a32a07fso2359455ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 05:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792673640; x=1793278440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WUN0wSbCxufL+1zQC0DuNs4VauEfRZkkrTtPoiI3bLQ=;
        b=W65z/Ak3f4WCf7ri9uE9v0X/FjTuWT6YWPCW7EOvnvHkmSJo2fu2J/U/hR5NGzzd7V
         P0sfpInmfxJ9awD/Ilfbxb+awDmZ3AjZMu0NWatk1XpiNBIv9p/d8WUMHkSa3WA7jlH9
         nxvaV1RbYtKm7WwQt6cP+qzj/LO/plsmEEk2mBp5blIC1SQx7QLDsMEUZfR1Tf4g7eM4
         W5k5Ph5BL319k7BBrTS51NiTOSQYMesozfUf1msGuBXdOiQjdwCta47L1pkrP56PGcqg
         GG4r+Hj2JSl1dU7Kk/sAxRbxiPFozFeIfIHEpqQv2VJxN18BPsFQ5QK1cgrmiPTNt8Sr
         UrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792673640; x=1793278440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WUN0wSbCxufL+1zQC0DuNs4VauEfRZkkrTtPoiI3bLQ=;
        b=OeMKUEz2baHb4Js7PW7O6PwMLJK5qoU+wxytcrXvsXzyGJQF6+1A27zHIa8bxbnWkV
         HQWeubfdgX4HDTO9BOsQCXGSoVRNTRGI72ew5KrS5FFQr18AHnzIFH7uXlykKJbi8hY7
         6NrEmemuLuc7LvbUvPnrcOJ7knSiaHc//1gkC+xLJKu1soGkzvfeuhFNPWjZjc5FDuN6
         SBBgTs8V71AaUDmi0rrPOvTGLkkQdgfSeTzJ97MOmyNLuRRKJgqxKxKcDGa7xTyi2TBN
         zkAlER8iBqhQoRkC0ZSIoT63v6HDcR/h54l5MtTxx1BIl8bbzSFNVjDci09lt03ggcQJ
         2AiQ==
X-Gm-Message-State: AFq9FYJMNYOiKtzvHKWrLo+cjZnLH29eIGmrudStmy31f00JuDzWl4Pn
	KMzUNlUUVzHAqTCO2mlnSMM+IZY2OlOEArV/kvoLUKLfQGfaN259Wwcv2Hh9mzZrz3QH9g==
X-Gm-Gg: AYBFou0M1j5ncgWATXdVsoyPgpIX4wmi7x+keOa0jvrpnzjEohfPxIShRnn93qFxZJj
	b9LfQ3ED5c6/CxwOc4NDxgTakKU48ljG0RMcWSlEpZJMBO4TV6noTOiiMxe+p5lH+FFUf4ttv2Y
	IKZcJy+Gr29w91osIrf4jOFjsGVO1fv98P9I193J18imxI01Xp8/hA7/nV842yr5oCnRPCe4/bk
	24jguDcetQgch6HUq/dA3R3cl+qOwl+/7Qzbshp1tTEa//+W3bBkAq6ODdeE0FTVxT4puZ+x4QB
	oiX1kuG592lKfay2hiV6fCg8K5aKpJlywXfInWt87jQseet4svpkZFAlCecY+joydPbHcA/5koW
	99V7xowWiZkqvrSD8eptlVguYEX6QM88ENhOFb5F9XsHk2ciAWV7mfzUGI+WBTX11Z3Gsg99l+L
	zSZgRY0aGSV+JBPp3LI5mfGdXFs5m27hBHainUo2R7I0xtyIeoRGmaBTpbbkv6g9jGLOCtQxPIf
	7kv21z+mkRZnrE8YQL5q0rx3wR2BQfehBfFLW5ssh10MgYxIis4Lim5wkI=
X-Received: by 2002:a17:902:c94d:b0:2e9:65bd:62c7 with SMTP id d9443c01a7336-2ea4321cee8mr68893965ad.0.1792673640404;
        Thu, 22 Oct 2026 05:54:00 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b435243sm23704165ad.31.2026.10.22.05.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 05:54:00 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7s
Date: Thu, 22 Oct 2026 20:52:52 +0800
Message-ID: <20261022125339.82746-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261022125339.82746-1-liujianfeng1994@gmail.com>
References: <20261022125339.82746-1-liujianfeng1994@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_055401_356192_F3046CEE 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The ArmSoM Sige7s is an RK3588S-based single-board computer which
shares its hardware design with the CoolPi 4B.

Add its board compatible with coolpi,pi-4b as a fallback.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a24949b163cff..1b905a7af8009 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -99,6 +99,12 @@ properties:
           - const: armsom,sige7
           - const: rockchip,rk3588
 
+      - description: ArmSoM Sige7s board
+        items:
+          - const: armsom,sige7s
+          - const: coolpi,pi-4b
+          - const: rockchip,rk3588s
+
       - description: ArmSoM LM7 SoM
         items:
           - enum:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
