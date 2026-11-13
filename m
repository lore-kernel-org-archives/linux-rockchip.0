Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511EF606A8AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 11:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4CaUtbkn;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.a=rsa-sha256 header.s=google header.b=GvSunoO2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uzhafQVrQZPrmdqIcWehUbB7v5dXZ6O5FNu4ZoSrBSA=; b=4CaUtbkn0mzGCs4x8JePgSGhc4
	Ah4T1jTSyrmWXJw3UM3fpvD0RL38yoK88if8BR/GS7svhF2+WV+MZET1ZSAZxCrJupzYcndw8ob0Q
	3mMy4suoLWiY3rnXfL/Gvnh/wMCKAUtwy+dlynpqmpTes382uEdW8igCZgNQ/TsqTE1JeDVQlTI/D
	Gu/L9MLHbKlXw2niUU/w/IL1NftgEMPhqj6SqgLSjKzTkLXQcDnY6Jf1yCTDZHqtYMxIw8jYDsWAs
	d/6C7apOZ8ERfGfjh2qz9yqjmifJ3YZ0imTD1d3XbOhJgj5WfF27caaoXF1jE0uPsLQm0eGKYu8rd
	lVFdZiFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpbm-0000000CYRn-2laQ;
	Fri, 13 Nov 2026 11:38:18 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpbj-0000000CYQC-3uQU
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 11:38:17 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-48dfc0421d9so974045f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 03:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1794569894; x=1795174694; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4DDTI+GX+RwqcL75e7n+wQt/eJDBwcDKt5JSCL+vSP0=;
        b=GvSunoO2qIO70ElxPx7lMv+bnygaPKkWRDPG0Zu8ezKDaovWJVEdfHl9mYOmsO3h7w
         oDwRytBMdxG2iGvD/b7FQwaQ6gnbnr5ODPeTC3tqkQKlEAXTJbRtfpwmZe3AeSjy94eC
         pdW1a0iNqH/TMiPusVzXVk6leuZW8cbwxNFPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794569894; x=1795174694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=4DDTI+GX+RwqcL75e7n+wQt/eJDBwcDKt5JSCL+vSP0=;
        b=shePBuHENb5LpPRkAXNaLG2ZijE8OOzmqD92n3Iu8W9T0hTJFyuTkwH2zpbZtWV0O0
         AYyC+4NZfQi/Rqbh+13O2a/79aelEZuXL8n/xpB59mhxjotvp79puzABVaRBWOudV1p5
         wlJzsTdDJtPY1Zn/a1xFq1dvcJH2HiJkkk2fQSTQfKNPPSPGVwCmg9bqS9uROXTTQRHp
         dCiybe5CrR2EF1nDWR7pGT3P1BfB6PB3p7g0NX88Xh1tiw67dkGF7kHdMQojpT678JGp
         Jx9RC/U9WmfvlOuRBehOilhy7BnwEGWf0xGBnrczWqFcnYUyhnJuQMsf7sdWuyyVG1Yr
         MGRQ==
X-Forwarded-Encrypted: i=1; AL+hErHTocO9wCormkmEp6sEMXA6ofg9X8t8rrxZ8bIdmapb2iizO23jylUusQzbKPmaRlCVrvgaY8zBubjkqmAa7A==@lists.infradead.org
X-Gm-Message-State: APuU4Z+uXp/TBxOiVBPWUG91jB8RVJIlsyo557/DeTFLqg3jBPdYu73w
	TrpRf6wdDnSAFh6dH6CCamLyI7ocIpj1m4xf5BwDoCC+/O+0U5Cfk1W9uQY62Q7FPY0=
X-Gm-Gg: AYBFou1Zm5RZi2kwcLp6XkecdvYaMOeFPdIJZH7PukoWR3wIiZ9pi1JEQHhC6HpTAKi
	/3jDhl4hYeFtEAKi37knolBr/wb75BLx6Y5yeiar/+b0UzlvxU0xS6n4K/AwnkaPO90B3DL1Wgk
	R5QeSSTikM2J9adp/dXxZ3IJXggr6jMox7yLRlbCCdOGH06iMT/RVIL3TLynhz1wjgdNtScs9iw
	XWhotMkqnoTqUgyPIhW6Hc/8aA//+7nxr9/VeBNFXRhDFNW0ugU6Afs4DdS0YsfKjxEGxcHojCq
	Dy+TC7wLZlvUeqeCnsslus+BnPCnZd88l1tz3BplZsfkX8iEnx2fqogiOMD3xZ1iqsVC3Bg7clE
	JbBAHxCV0THt5R4aqUQlGCL3q5bHSIyKGf87d1QWqplIr3taT7tIR8QRXX8rKQu1MQlbPxJn5YC
	NyEV54oJySAYSKZ6AG93VUVmi/wHmD23giJwZyjc1Tmwmi6seZCUMiG4ICmHf9ZzeYFR9cN+fPW
	MX2l/BiYMks29ImT8Xu9PAPiDVMLCLbVlVJ4N4cybtFhp6AIssqtH62wjpdSuhCIZ86PDl+yZ02
	PeJdqUBGaQsOIAgO9tHFzsE3zvN6gy9OXBP6cy+MZYZMs52IR6wbfCVanFXs1NQyxwKwT90UXfJ
	b
X-Received: by 2002:a5d:6f19:0:b0:490:a3e7:8af3 with SMTP id ffacd0b85a97d-49c71a6547bmr4387223f8f.35.1794569893910;
        Fri, 13 Nov 2026 03:38:13 -0800 (PST)
Received: from thinkpat.amarulasolutions.com ([2a07:7e81:b71d:0:3e39:d071:1d81:5914])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-49c5d03b10fsm5448492f8f.1.2026.11.13.03.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 03:38:13 -0800 (PST)
From: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com,
	Patrick Barsanti <patrick.barsanti@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add Axelera AI
Date: Fri, 13 Nov 2026 12:38:06 +0100
Message-ID: <20261113113808.1779860-2-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261113113808.1779860-1-patrick.barsanti@amarulasolutions.com>
References: <20261113113808.1779860-1-patrick.barsanti@amarulasolutions.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_033815_984163_A86E58BE 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Axelera AI is an EU-based provider of AIPUs for edge AI inference.

Link: https://axelera.ai/
Signed-off-by: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5471a06f93f1..20a3b24319c4 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -221,6 +221,8 @@ patternProperties:
     description: Avnet, Inc.
   "^awinic,.*":
     description: Shanghai Awinic Technology Co., Ltd.
+  "^axelera,.*":
+    description: Axelera AI B.V.
   "^axentia,.*":
     description: Axentia Technologies AB
   "^axiado,.*":
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
