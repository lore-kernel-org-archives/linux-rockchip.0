Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5142C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 May 2023 16:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kVrPcTR91siaIivETrL8HmYQPbx3Y4NzP2JayWb7Pc=; b=XIh0MBP/C8gGWr
	MAbAsgJP0a/pzmfyo9GhExmskfXDLvvsajS1JFKkNB4+Z2iQJ95uX2efGTMI0jS8i/oe04328uJ7q
	Eh8c9XkLPorgeoXWzIYhYGjo6mUyDlL+wbShUdZqijgo9cIH94afC04nXgwXxm5JO7VIaCBaOJZPb
	uE4HXediX9zKeeZ1PE5HjGvwCNcZ1oEaX05SA0zYKAHEwbiLA09omqQDsf+xvy+k2SqEEFDaVj7cu
	U7U9o5e0R9wQmIohxMPlBQlgxbl+YuJMGlIaz8WNGP4KVs0s+1oElnmE5d0nLpOFWke5XMR/zMn2c
	47hmLhIzvdUEcbLZHV1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORR-000Qd0-1U;
	Wed, 31 May 2023 16:12:53 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ORO-000QXS-0P
	for linux-rockchip@lists.infradead.org;
	Wed, 31 May 2023 16:12:51 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-38ede2e0e69so3601276b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 31 May 2023 09:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549557; x=1688141557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/I9p4uFE4LhLrQniPcbipsYybg79wk4q2UammLd6/vI=;
        b=TRPuwPAcDLwuzn+azD92osTTZuJ6mH59z5UG01urBCMvZkk3dfG/xitgNIUWz/OaTc
         42POUp+VJ6c4XdzMgXlpM+xCzIlA1qYpwt5wRRDzqIq0VWvRf7NBRF8HHjBtlcSexgM/
         KVyzyK//jd4p8NcrmAMEoUpPUMro4dVblyi8e61esCqcRDFF5NsqygLEb7PyMOYqQZ0+
         mXX87z90bLyCIVI/eQ+TDu9nDKgkBFdv6ikMwBzSAtZL4SJQHT2SojE2/51RJk3kLyVU
         pIOf4lwqLmTYTlP1Tnp6gcbbHkSpTPghMmQrdr1ZkuJW9+nGMaWrJ0wa/rcMn9ID47ee
         izYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549558; x=1688141558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/I9p4uFE4LhLrQniPcbipsYybg79wk4q2UammLd6/vI=;
        b=ZEZWKqtTAsgzUj/bdcPrcztz8wmXu/vz4XNtkjVZ0nTmM5NyQKsxUybkmWA3XAK3iJ
         A0j9dTkCO7dC/NhfNSU+U4W33KRiVXpHjkl6+NRFBloUJf/xtxw5Joi25Kk0cEB4sjxF
         KayXw3+3+RK4BSf+pj450rePBVx5knRS8KxIdNDCv5csqYjMWDEgtmO3Pl1oSWtPFkCc
         MW0/NlJbQR9Rv3mtOh2eOwP9EG3DRCxZiT6/mIhCEjajkFdsSRWdPaB4Hb5JoNTNYa7E
         mDxWibUefi2Nhk/g5ZBpfRPrh136KJ3xJWt3q+9BXEw8uTD6F6tfWVC+1Nxwp+Z4eHqV
         xPmg==
X-Gm-Message-State: AC+VfDx/2xt6wuISOc5NYzZAi5+2xz5Od0gaHgUOhjv9olfyllKr9eti
	V+ERbcOtFsNaapXCBml0ClPc6rEujPg=
X-Google-Smtp-Source: ACHHUZ7n9fOl/FXDCpJMDjt+lJNn7ElHIgFZ4cemt40GeeFs9e3f9NMl3FlZotnTzP/s2kF+4viTcg==
X-Received: by 2002:a05:6808:298a:b0:398:26f0:67b1 with SMTP id ex10-20020a056808298a00b0039826f067b1mr3547101oib.7.1685549557610;
        Wed, 31 May 2023 09:12:37 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	lucas.tanure@collabora.com,
	kever.yang@rock-chips.com,
	yifeng.zhao@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	broonie@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V2 4/5] dt-bindings: arm: rockchip: Add Indiedroid Nova
Date: Wed, 31 May 2023 11:12:19 -0500
Message-Id: <20230531161220.280744-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_091250_169651_95430F5B 
X-CRM114-Status: UNSURE (   8.44  )
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

Add Indiedroid Nova, an rk3588s based single board computer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..3c5a204bcd81 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -542,6 +542,11 @@ properties:
               - khadas,edge-v
           - const: rockchip,rk3399
 
+      - description: Indiedroid Nova SBC
+        items:
+          - const: indiedroid,nova
+          - const: rockchip,rk3588s
+
       - description: Khadas Edge2 series boards
         items:
           - const: khadas,edge2
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
