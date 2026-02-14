Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C37FDEF99F0
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Feb 2026 02:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0zabwkbO2gM58RBwj/5gqlX4elRfl5DG9/jfaG022o=; b=ZTugDqDEO+7CXx
	W1aekHJv5XoboRtEbwfPYNILBEucNvqg9x5Y4No36Zu6Rrn842ttvbwODaT5xybutdL8rZzF9RmtJ
	TzqehJoivICmQV1BkHMph88IFm4J98+tw8aJ3OLaJ3fu1S1M96/UhxlMNbHuln/jOjph7B3oyj9/K
	Ny+Xswcn5wxdnL59y1CZqgopSbJK0US6W2y2roCE3cqq7WbeKob/184PJzi2cWJeZYTHlrqp109ml
	hy5im9Pk09r8WJQwBdt96xMCjClE8+EbRpKg23FqBaUxR2ZwRnkbZnfRfncBdghc2NC+1AYtdr9yD
	kmfGIGUuRw+Mo5To2Dog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr5EE-000000049Wz-3gKz;
	Sat, 14 Feb 2026 02:17:50 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr5EA-000000049UL-3or1
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Feb 2026 02:17:47 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-4376acce52eso1008778f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Feb 2026 18:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771035465; x=1771640265; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TzRCi/w8UauYNvGrp56yDPR9f/IQ83oBSYIApP5ggfc=;
        b=KMarYU4EMGbUmLE2srmcCn1Fs+RaF1svZSTV/l/ZSUtbdNLv7seXfB0+h4qiaRjVc5
         eenPVYUH7TaWPGy5C/B3af0wQZbiWY1YFXZk4BdAxvur5kbG3rO+yXrUEugsUVTjnPoy
         0uXZ2CHVZH2wQNhVzYthQ4+Hf7BJmbj7JjFg9G6TLKHd0zHShHig2+4USGs0jLKYR+y4
         JCEwMtnI18FZYnu8Xi1BT+muFwHx5XmWzfaZheoDV0xHu2VxuqAIua7CVky8cJtqoXe5
         c1yq3Xkt+PLJKkz5fXAUppodgBvk+Qn7fFawQj/wlHTyFqO8/PvvXmp/50w4WHDpeUh6
         5wBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771035465; x=1771640265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TzRCi/w8UauYNvGrp56yDPR9f/IQ83oBSYIApP5ggfc=;
        b=E5nyZDU0dKdR6qA/bfn+FGrPZz3iVXmeueQROLjXHFJK9hS1RSAYFy7YlcxSBbpTUA
         xpK7TXsIcXcJGyiJ+dSKVoRftu3faIf2ippS/uok30cin2jQxjk01DSzpAjKCQeGHkpi
         tpO0sk2y8t+9rax2277kv+qShz6yrFlUGV20QcgoH07jbVH+n3FfSsWoq0dqBQhj6QXF
         +wBOc8Mp8teBT2i9QGtyoFPukVbugV9mSegQQIJRazkZfAajbXZFCIJKwsWTS+YGXa96
         /8gFaCtnfoz/8M3xj793UJZx7J8Clz7Y7cThShAGpC7HUy+Bnbs/aKGFYK7aQHFz9jz2
         R3tA==
X-Forwarded-Encrypted: i=1; AJvYcCVGTA8UVDKt1jpSrYeRRctWo6sh/UZr2DhBMMtS4PhcuvhkoNGYkKjoHjXqbqYO5oMysIkPMYmjHS6FUg8jxA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEibxO7HFoIUIwV9Q1vxfVIsjQUb3SMePg5+gMXOzUoTRwcDzY
	nmybvejBttwPDKAVFnx5+2vdVaRJRx/i3Gli4b5Xe9gCKYIY9WfjaNbv
X-Gm-Gg: AZuq6aIyNL1Yz0wtpfMbQOaZMDXFncVxIX7k770Ibrkh3FEO0B2cASl5NOzQPNfKe9K
	pxelTFQJhHo2EoGN4UL+fi7TA4rogcCRmC9QxR6PUOFEiDqscgM8zJqBf0bQ6e1/iAbuJW9xT27
	X5myTXrw4ZI2+vxgI49sHsPB2RG9o2jV5mkPv+UykZbW9GMYwdm9QKMD1Ccu7ICvedt8DU/ka1h
	vmSUjDg8kBjNeFyabIgoecug8vDHjSglHI4IJ/YH790co+H0a8JLLwrcwluB8xD2+2gnNsiTM0i
	21dKEW6jSDi28wyEclWg/IZujZxaOzFACePt8yjx1O4EPPBOnd31O2UoK7lbuohmboA/oQ4WXp6
	JmWvxr1rXi7VnA/aWC5A4eDhugQ3wd2ks6FCHsuPLHXV5mEjUWYc01zdnooV1hWPGMT36fpxByu
	isK8NnStsY6TDew8hxrhXu
X-Received: by 2002:a05:6000:1a8b:b0:435:dba0:736c with SMTP id ffacd0b85a97d-43797927177mr8537551f8f.56.1771035464830;
        Fri, 13 Feb 2026 18:17:44 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acffcesm8608308f8f.37.2026.02.13.18.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 18:17:44 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	jonas@kwiboo.se,
	Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Sat, 14 Feb 2026 10:17:14 +0800
Message-ID: <20260214021719.620752-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260214021719.620752-1-jerrysteve1101@gmail.com>
References: <20260214021719.620752-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_181746_953419_C482BD4F 
X-CRM114-Status: UNSURE (   7.35  )
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

OneThing is a company engaged in edge computing.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2aec2a..484df0b7723b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1187,6 +1187,8 @@ patternProperties:
     description: One Laptop Per Child
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
+  "^onething,.*":
+    description: Shenzhen OneThing Technologies Co., Ltd.
   "^onie,.*":
     description: Open Network Install Environment group
   "^onion,.*":
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
