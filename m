Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF6F606A325
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 11:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Y9aB0JlM;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.a=rsa-sha256 header.s=google header.b=j73NpvAJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjlBn0f+9TRu74oxnFy5N0mBDsCtCdHWYkvxOapXarQ=; b=Y9aB0JlMbY49jq
	eRWK9UMMXrdYNtwE6Ub9hVfsBAe9biwBD6UUqgNea8Nt8X3JpLsXvWGw6jMK48vNgtIOZhnV3Sd0p
	+StLNv6wjP+I0JOLopWoO35pGDvY4Uzi6PY0K059in5ySdLYCY32ldrhHRKUbr3MzfId923evH5Ca
	mEKbkLHRB8ODHiztxgthQ6f+quk6LxBePe28DOOIQlp0w6R6Cyd2SXGB1G8M0kY+X+dH6truULCMo
	ai0aUfRkLCE2NMkeYW0kOEnlcUH+Mr7+zl6WyKWTF/mBotucsiCxhly0+qzhquBc6NPmSDAiNmZJc
	VE3nY40RC2DeEBTFNTNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8AL-00000009ZDS-0zIl;
	Tue, 20 Oct 2026 11:38:01 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ8AJ-00000009ZCQ-1OzZ
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 11:38:00 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-48c4d870d54so2072032f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 04:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1792496277; x=1793101077; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UwtiDq8akIpNUxZs9Wt9YPgQZRmwy3QXWky9nu8dZQc=;
        b=j73NpvAJuM18mP1Kne1YvLpXx9TWhmRa44RCFBklFZOQqlhMyHdFqxE8zo/AwJvCr6
         bYk3F7jZwCVyjHn+XZGTGEWxW7sI/suJIi2uzsuRcOAL3OzFffTTYmGJ5YryXxSflQSv
         e5Hnnc4MUNqtm+b5+u/6K2+kxCHrViEukxxLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792496277; x=1793101077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=UwtiDq8akIpNUxZs9Wt9YPgQZRmwy3QXWky9nu8dZQc=;
        b=uhrjHvrObD8CBU0YDAp+AuVGXBhLAfM3s1J9c+/9OUk/lfnjeBFqyKQOe9anA8RKCU
         awYAyVFsz225qIOpqfMAg+oLjGzkOdT5ocjGC3K9n3NURosn2AUwqgAk1Lx/wDCfYWUa
         YlhhYyroTKhTWSSQhC2t56EAgSy0DXpllTMAKgW0W4M4Lws8YkCUx5IlDDWL0hMWCPQB
         nUk8CJ73lpJ+NFYCrbSFFyohjmhnl/htPuQA0YhtQzL4Zj/TZgi4/mKTC52Xdb+BgD6M
         TfieeC9jKRVDLPtu2XwyI+dTd7qgM/f6MyKTjEW9pH4lGemgDxEEYlIKQh+MlIdoIAcL
         wbbQ==
X-Forwarded-Encrypted: i=1; AKwUvBwA70tePQpwlMItP5RqP2Gfq7nXJ4OWy1BYRr1cF2DMH3gFbUDg0cmgWwiU9zzqPhI9ebiKS10AObSQbxkhvA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJB88gRP2Xbe1g/bFfkrHQJ4bGkKNhF/yU+7cRt1TjIdPGgwiQl
	BvpCLm5cQ8XbJoxKQw76rmWMa8LkQWIItGbVasxGTfMDUVIN/2Ldpi6Yjah+ZtnWjew=
X-Gm-Gg: AYBFou1mEp3KhTN2GV9LoMqdjl3KUngX6i03FnkofdJKJ4Ce7wyEoob8wDqGhNhgHtt
	RXAbfSaT50YvT/R80eN2AhzCCiO5KhHGOY8vVsSlOXAs6jC9iext67l37Sy5s02h+wKrN5yhb/B
	DG93SP+Vt94+8/Z3cx2+F+bcwlWHVVCi54BmLP5UvsFVMfx54L16JRmG84XikCtTZPH77rThSz1
	Z5Iqp86EjLQ0Jh5B+kPlesrXljOPL3ucry9rtFKRN2GmMwvkh/ZeWABZk7h3lpS7Ok+G5Kn0fDG
	Oy8tfpAEeb4wufJhmAftLVNobe0mg7kBuDsg9gQYkVjAm2+obwjLrIe4F7kPUrl2Z0bRLKHZdMc
	ka+lgTwvLm6H9oweylme1P/xWyn6lP6BhqcvcrIG/LKtiHP3GiusGUTeyZHl+EX1zRVZZRkYkQw
	PT1QkH5kw2hVXoh8g+ZKhM7UUcz4PGJJlCREwpBMky3SXZ3X1vDtq0bbmBUR0op+0r8wcYWy/wj
	4uZXRG24cxKcqyJ50rZ1pu+lLQDUk6NYwQytJmSOoUSM8tzCae9cxf952P6yREm14JDIad5sRC/
	hBbQDROu
X-Received: by 2002:a05:6000:470f:b0:48b:efb:4a66 with SMTP id ffacd0b85a97d-48e07978c74mr22040347f8f.6.1792496277013;
        Tue, 20 Oct 2026 04:37:57 -0700 (PDT)
Received: from thinkpat.amarulasolutions.com (host139-112-32-195.dimensionesrl.eu. [195.32.112.139])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d83a099sm4709728f8f.57.2026.10.20.04.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 04:37:55 -0700 (PDT)
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
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Axelera AI
Date: Tue, 20 Oct 2026 13:37:15 +0200
Message-ID: <20261020113717.189082-2-patrick.barsanti@amarulasolutions.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261020113717.189082-1-patrick.barsanti@amarulasolutions.com>
References: <20261020113717.189082-1-patrick.barsanti@amarulasolutions.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_043759_383240_9F19D825 
X-CRM114-Status: UNSURE (   8.03  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

Changes in v2:
- Change name to "Axelera AI B.V."

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ba2002969373..1267d9e2d859 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -219,6 +219,8 @@ patternProperties:
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
