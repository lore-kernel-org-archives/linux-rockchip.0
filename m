Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FD38C7619A
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 18:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdaiSyy6LOtN8GiE6mXlKFOhU/lPkVVKcEG4fKX6rgk=; b=lhX5X+mUVZGiBN
	wrz4YF3Kf8vAJVWKv/OjU8JdhdixfYHfF4eDp9+GEOHElv/dx/ZJMcPMHsDnVc2wv5FNQDHjOVLsi
	MsJmpdxBnAMUMvDEmpvNK09cFCNHFhF7cufORddnB8FkhEyllJsDm5pylutBHg0Cx14ASGc92yh7H
	nOmAy9WpEGXCr6L8tXqvUJY9UObgbp+cQ9CPR+t19zqir9O+bJ6O/JCxlAs8aFNmRVCQFNCjENCRP
	fa/9nEoze/J7FJfYela6XmvvhpyfO5eARWpmXMYZ5FgE9Pcp7vaOL/s9IIF++RayJsCBoVmyqcsDI
	iC2kQeRl8Wx5A2cc/PyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgVKJ-0091zw-17;
	Sun, 26 Mar 2023 18:42:47 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgVK6-0091v6-1q;
	Sun, 26 Mar 2023 18:42:35 +0000
Received: by mail-wr1-x432.google.com with SMTP id d17so6467001wrb.11;
        Sun, 26 Mar 2023 11:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679856153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ebu4nwIgN7mEFNHKsFucsdmAM5v0jx+vLanNvV8aD6M=;
        b=cGz6oQovE41PdbF6K1/CVSq1xgIlGN3j3bfO9pQBmzHxC2QOJbQ5PbwYwTSUPaO7mo
         DOja5/t+qf6iA4WrGKoreqfTdEO40FlqKRp+QAXJKu4xFdZlJAvVExQdl3fGYN4WIsQ5
         BhN5O5BDe4+AAZJqtjPBlgJghEIqKRcwg49R7wMR9rigM/bshrhQNOtwxZMNdxg+K/J2
         tHuP37AvyYrlpZGqwexBnAtTpWNPCSDI+SJmlFoqgG+2KJlI2xgGcsK32/j0A0AmUBCg
         iP7hGv1BDnl1RWZHwlxdWjARFCs7ev5NxTWymHFICyfQNEAzIfft0d/Lk59BTOI88AuM
         U9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679856153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ebu4nwIgN7mEFNHKsFucsdmAM5v0jx+vLanNvV8aD6M=;
        b=z9JFe6y+snNwT7jJlfonk3NdqIZD+kMN0n9CgvhRqbcpDBnoZrG4ui6V5Iy3p9R99u
         YaHL+MwS4XPI/oZWJok99GyTUhsRUiDrKXpZ6TCF6cd9NjcnpsHDreqN1sKu3snJH81v
         NwGd5JQJcBzxdzqUE/g0KNl+YpVlM3eZVfaNKU2JUXInXQjfjyPVqAC4Cs9OkDIYP7fM
         mcjbJqO+yVnFwXRDcz8i3VUI8vv7C6bc/f6rRuSlb/bWGn+OPAkW6epnErAgfnpqKGZ+
         RTy08ozQoom0CUxUgKLVmQYek1OyFVL90TuOqjwSiUKtlHr4Fm//3Qy11Awi9J/M7VwO
         uBNw==
X-Gm-Message-State: AAQBX9cderCiGdw5Xr5CJG6/HANmPsu1af56YOvz/yt4Ph9n4de2zbzQ
	cT4BwhiBNFItE/QRFqhk0VM=
X-Google-Smtp-Source: AKy350bweOuSB+T+41j4g8mueKqP5Qvj+aUaZwJpzR2ZP/2Qg+Yog2owKwKJUym5uQAAIrQHowdXJQ==
X-Received: by 2002:adf:fc8c:0:b0:2c8:9cfe:9e29 with SMTP id g12-20020adffc8c000000b002c89cfe9e29mr7294653wrr.38.1679856152883;
        Sun, 26 Mar 2023 11:42:32 -0700 (PDT)
Received: from wasp.lan (cpc126518-gtya5-2-0-cust190.4-4.cable.virginm.net. [86.19.196.191])
        by smtp.googlemail.com with ESMTPSA id a6-20020a056000100600b002c8ed82c56csm23194725wrx.116.2023.03.26.11.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 11:42:32 -0700 (PDT)
From: Shane Francis <bigbeeshane@gmail.com>
To: 
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	bigbeeshane@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: Add FriendlyElec NanoPi R6S device binding
Date: Sun, 26 Mar 2023 19:40:40 +0100
Message-Id: <20230326184040.33008-3-bigbeeshane@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230326184040.33008-1-bigbeeshane@gmail.com>
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326184040.33008-1-bigbeeshane@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_114234_606776_7DC8C743 
X-CRM114-Status: UNSURE (   8.88  )
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

This adds the needed bindings for the NanoPi R6S SBC based on the rockchip
RK3588S SoC

Signed-off-by: Shane Francis <bigbeeshane@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 35f74eda30ae..b8574a93e0fd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -201,6 +201,11 @@ properties:
               - friendlyarm,nanopi-r4s-enterprise
           - const: rockchip,rk3399
 
+      - description: FriendlyElec NanoPi R6S
+        items:
+          - const: friendlyarm,nanopi6
+          - const: rockchip,rk3588
+
       - description: GeekBuying GeekBox
         items:
           - const: geekbuying,geekbox
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
