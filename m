Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D087FED9FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 18:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsE7wEWOw1gtSELxNWjS7G+VQLCp/wWgFw954ya0bzg=; b=f3bcULUZjYt4Vb
	k3JToG6e3TcjDBAdWKPM71dZ6nUq5per2Y5wROPllOLCU/KQqd9tFeHqAsV3EWFya3cFUqxyEUuGe
	Q5YxZ4OuDe/QP8rIFeWnEOMlMbXB1tSeRiaCDeGD2tehjDjM2HhHNkmqZdCWQfLWQPs2/0A91jlHb
	K2OSMYqJxYz5TvtwM/HqOBRqV8/FovJbA/NeiWKhI1xEGKOTava0yznmDYKEnZIly5XaFkLTwofxV
	axQxIdpMtVmpIyOSRC18oI8GWDkQztjll9ZDqjnUS04tADs/Gvmia1ja1wd5lldTSSvZL2zq3CSjh
	s6yCeIrO7dKJbSa+OGyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Yq8-00000007179-1pqb;
	Tue, 17 Mar 2026 18:08:24 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Yq0-00000007101-41YA
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 18:08:18 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-48534237460so65409005e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2026 11:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770895; x=1774375695; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L8XGsFBJ+hu898M1fjVVq758+iOj2O06p054bPmG3Zo=;
        b=gR1kv+mgX1r8zQdLxnFCjbUzZivxc2JqzLFEqFN0PqmFNHlaPJfI9f7bYdXrvGon2B
         Y/4Xa7d9qbxUi4xWQJbr3qfV7Uh1+CExdyDvV4AvqLTePnpQUfmiRTFrA2P5NbizcdPE
         Yir1A5gvXrTVkZOqY57GcsPfbYMc/4hSVmxz1XSblOYQKXleICFh+cNDtFVW9oJM2bvc
         Rt9OyABQ6TY92ItFsuDN1oW5JimoA/+Z4pG6CpXQ37CQoMD+ngYR7tTp3M9w7S3sR+jx
         9tqy31vy6lPYJLaQ65kIuO7UwCzWZvhYCw73ncqCr1veWuIWkD7N5Qd4+fSq3YlbEpfE
         DdPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770895; x=1774375695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L8XGsFBJ+hu898M1fjVVq758+iOj2O06p054bPmG3Zo=;
        b=I9X7NpVLpIcLRGhiL/i1R6a0bQML+XOp/5W3BdM0DMTiQylKbD1AWNUq4EHzFYuPL6
         dBsh2KcFSL7lDh/9jmJRFHBH+lCUr3w4cAnqmxotMwavd+9xyOXtmLnivGjR8Jm/OwyY
         by6G2PQPIZeijHL3scitwe5pwUwP8gGoEl9ztk1Wh4HwdZaeVyAdfdoq9xFO42TsdTo6
         KzYKWHekssMqrdnWJBqmmZmMoEp+M3QrQbtQPaWcUiQAo7+uO65KhyA50/rsXwkjBc/U
         2QkkExst5vG6Q6RKuGJKmRyOFFrI6cSj4ZAWkyWGxftALeh4vMr1Uqjzfn95JnckUlSX
         RTZg==
X-Forwarded-Encrypted: i=1; AJvYcCWSOTvrXXD/dgfsDiEfxvoHr/+hFklQvS6gFfY7Q9JzzeMYNAmjJk0H7drCdZh1kP6vmKsQ5mpx4EwcWYof3w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq3y07/zBTxTTvjKBkKDX7S91kM3WivZr5Gc2iRKIpTrnpgeuS
	2s6e60DHG6/bzKtP0kD8JX79tutZvkuoQnzSwry/U3hVWWolOadRLlguFycMoEm/QIA=
X-Gm-Gg: ATEYQzxiAnnKC30Zv9Iyi5NOAEWcK6uLdirm3UfkzF1zgfLqgptDzahvCL5Uhcl3O1p
	HwwUbcaDtRNTSkKZ8LGfQ2UIaDA1aWTbp0roKoB/oFb76h9EDlEt8js+Ix+eecu3mcYXvv3D+J5
	NObjI/HFm/uzO5aa2dmTyUZva2xn1EiQ3dBG0adSQgjg41UYta/mwujhy3VfzYPSvWZZt9X6SR2
	JffiQldCkW6WsiFplsV4kTf3rd/vqZXb1t4DT8bMMKjssJWaWPUwsJ4sgHWm4eup7B0cnh4ZTE5
	IFqbfkjBiUlR3mGtr6HeyVY3rqnAL9fbfCBXxHTiNO2xREFzk6PQNrwhf3lygSCjYTOeWedKRCA
	OU0lY9LII7QwU5BmkNjpVEsnFvxvcfhg5ZOdPZnuBxm0UNzlUwGd1S+kL1z5QkX7J9hFyutlnm2
	FEvBL11An1lZNhsPzsjWQvXPcxqzS04O5BxfzI7+BmDy7oBGozMp8TBfuMlZFveq9qe650cQS5a
	Usyrw==
X-Received: by 2002:a05:600c:8518:b0:485:4328:407a with SMTP id 5b1f17b1804b1-486f44435d3mr8363685e9.19.1773770894941;
        Tue, 17 Mar 2026 11:08:14 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:14 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 17 Mar 2026 22:07:59 +0400
Subject: [PATCH v2 2/5] dt-bindings: usb: richtek,rt1711h: Switch ETEK
 ET7304 to use a fallback compatible
MIME-Version: 1.0
Message-Id: <20260317-husb311-v2-2-03c17c986abe@flipper.net>
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
In-Reply-To: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1456; i=alchark@flipper.net;
 h=from:subject:message-id; bh=wc0GFxLbCGBVmDS2XpWAyiiPfvrBfgtTcVXRLT/pt8A=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNEWf+r0jqyTf7R7hK55CG1YtH5PxHqmuXWVk9cft
 W1Y6mU1s2MiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTUMdYxYuDiFICpNo9l+J8gFf5eUVz4LvMOAXtv5j3bO1s0nzovXVTZlpusmDunJZOR4cni7P6
 5sr+5LxqtPfBh3tQ17lelD2z6Ei3+S0bi5qLJlowA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_110817_098105_10A906D7 
X-CRM114-Status: UNSURE (   9.78  )
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

As stated in the commit message of commit ec53fe37a560 ("usb: typec: tcpm:
Add vid and chip info for Etek ET7304"), the ETEK ET7304 is functionally
identical to the RT1715, so reflect it in the bindings via a fallback
compatible.

As there are various TCPCI chips by different vendors reimplementing the
registers and behavior of the RT1711H/RT1715, fallback compatibles will
scale better.

Fixes: cd763789d31a ("dt-bindings: usb: document the Etek ET7304 USB Type-C Port Controller")
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
index 1eb611f35998..62169daddb4c 100644
--- a/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
+++ b/Documentation/devicetree/bindings/usb/richtek,rt1711h.yaml
@@ -18,10 +18,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - etekmicro,et7304
-      - richtek,rt1711h
-      - richtek,rt1715
+    oneOf:
+      - const: richtek,rt1711h
+      - const: richtek,rt1715
+      - items:
+          - enum:
+              - etekmicro,et7304
+          - const: richtek,rt1715
     description:
       RT1711H support PD20, ET7304 and RT1715 support PD30 except Fast Role Swap.
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
