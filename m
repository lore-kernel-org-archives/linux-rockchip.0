Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F776C3DA7E
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 19:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGCQKveQjc3Pl2PVjHlHQuEHqUQWVPNdF7WrHR7y24g=; b=S/enutunpmnzSI
	WxZfpV/F7kz5aEJ+ZUjvPmSsVgHJqccItPHeOLpTqScTqowqQvPCmjFs6Ozqivz8CO5eKZV6OOPJn
	KrJvYZsbiv0vFq99a/7/AU7NE7gb+eHOFDhC8RiUM7dNudHI8yTHDTVByvToBSAArEdMEWNH/rn0y
	79Lpu/B0DCs4Mh4Eke03s2ks+ohyKYsl0DMrsJj+o+vaHROpi7tNqQ+/FTd2UToMb7cvxktssY+hK
	OutwLY3M2db9kalXDrPiR/GqqKH02gFmYSAG16lCGjhjMAlX7mMdV4XytdhIfKZKvscwy1zQo0Rwi
	BV3chTNbb3olcPCI0LCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzL-00000004pF3-0Wa3;
	Fri, 26 Jul 2024 19:52:27 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzF-00000004pBc-0eKh
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 19:52:22 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7093abb12edso852823a34.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2024 12:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722023540; x=1722628340; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h1/2W8RcQjiqKYDLwnvQA5GcanCOKJKq8/U5bOmJErk=;
        b=C8s5GSHEIzIiqpIhnuVgrWeg+52A2UWoyI8OGmJjRTw9mmch7yvOhBg1O5wWeR3K7o
         T7zaxyVVW4uuoCamPDB+/oaDc6EDm30dR81M5rwFqmZpJ9ObW1nRkkGtF0ZkEIh6hdRb
         LepuEegQVnA2nZaOgWlGKoKMm68cZx/6J0XAkgxQ8ezkMhUmj9YvrjrkScbiI04fxKM5
         NDvlsyUCWPyYv9hVYWFSoin2FMY+WnYU4TgaQsmmppEAihBsFmM7nF8x46NA2bM9SBwj
         /fF7OSoTdMWVSwMf1ndA4pV50pvN6Y2ISIgV+cEIXJCmCot4DSWst8hZOmuV/DbDrjDS
         nePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722023540; x=1722628340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h1/2W8RcQjiqKYDLwnvQA5GcanCOKJKq8/U5bOmJErk=;
        b=AaDOH73slIkHNWWQ7kmjWYqXtowSbjhEFG5/pNJ4Lrq1sjDdR8xWghdytv1SXKTqyB
         3gh2/t7W1HkW3Jg0M0tal0nxZl7L04msaKzc2bjDX8kvGsctG/At+tkpJqGC7O2tYsLH
         riU4wktJcftSIN3OwlKwxsQqGDuo+NLleVdMBjM5UcCEH+b0L/hfyBYNf0OpBLMg5qlh
         4vaUnfmMpaMyOiXToT4JqNdHdHa+er+JTrSvhXQD1ax/IrplJQwMDyRoHjD9q97QUT0K
         NUP8/pSAdwl3ER4Ecb4AKuqLyX9I31kXM+LRvRsTVrfqnyr08DtBU7/hM02V1vnaea3U
         kjUQ==
X-Gm-Message-State: AOJu0Yw2XkPx8wyoRtJ1mI/bsjf2wO/AOsDQ659zGZQLZsfzLqmekTes
	gZamYL5c5shcHIeUQLv0VpIYd6JeaZkG/OhBnDF/gpTgi7zmSj6W1B1mXw==
X-Google-Smtp-Source: AGHT+IGFD8UcnUWfAtOrktYS3XPLNwRusDiWDkC1Xvsjj1zIrmYzOL1G4rpSrpvg425XDPJUWhxSfQ==
X-Received: by 2002:a05:6830:6e04:b0:707:e28:58d2 with SMTP id 46e09a7af769-70940c0b3d6mr919254a34.2.1722023539885;
        Fri, 26 Jul 2024 12:52:19 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:c1f3:7caa:bc8b:ab10])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70930778069sm889972a34.59.2024.07.26.12.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 12:52:19 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	andyshrk@163.com,
	jonas@kwiboo.se,
	sre@kernel.org,
	t.schramm@manjaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Add GameForce Ace
Date: Fri, 26 Jul 2024 14:49:47 -0500
Message-Id: <20240726194948.109326-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240726194948.109326-1-macroalpha82@gmail.com>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_125221_223198_95558CA5 
X-CRM114-Status: UNSURE (   9.08  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add devicetree binding for the GameForce Ace.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..a5a2621404ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -255,6 +255,11 @@ properties:
           - const: friendlyarm,cm3588
           - const: rockchip,rk3588
 
+      - description: GameForce Ace
+        items:
+          - const: gameforce,ace
+          - const: rockchip,rk3588s
+
       - description: GameForce Chi
         items:
           - const: gameforce,chi
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
