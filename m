Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87A53C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+t7qqpz+gjGQybQGpMl+dCS5T26Y+CVvWXbhggLyGg0=; b=Gd2VKa9OMLfv33
	3MXMyXdTgA08dGg42vCFF3jD2BSJMW+K62GnYbEU47FicuDuPP/QWt2ZYsGzwEWH3buqRCj+ALbh5
	A1RrdMecklnCxDaDMMoofroUnwfs+O/t+rcLgF1OioofB1oL14caxHd8M/Do1ZGxcnyACqLRhawLO
	lJmF4a1eQZSfTr3jxp+UdURy4toKcvB4eF4zxnXV3eKdvhUAfUIYJp8s6GtCJOOpglWjVkv0eRYtB
	+jtbXHTmWM2Thn5Ev66Cwl667o9hRMsMPYN3KDn5e4ivXM9NbQ7HhiOTPAsjZOIWQl4Q8KximT6eH
	Vzw+Ymg1/RHAEO2lV7+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxZq-007bHh-N0; Wed, 07 Sep 2022 16:06:58 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxWE-007Z44-Ex
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:03:16 +0000
Received: by mail-pg1-x534.google.com with SMTP id bh13so14041684pgb.4
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=a9wa5InO2XyMLOr2Gn4u1KSNjpfJAhNzw+XNa7giGrU=;
        b=LqeEBWqX6eEpYfjMzwdXNtpu6YP/ty9uua31s62LfozPU9T5xQT36NOG+ebFVMdtxs
         Z5yfbivP9r/WvP0qnscbq0pmEak1Bfm1Gpr9FLUWBqpFjwhUZfml5i0CKXjLSHdJyl1z
         YNsN15mrEShNP2M442YzOvtrGQIXf6t1VzwadyJ6gLu3O3oEcpC5RCPwe85fgN1u8H0a
         i0kERRe8pkfG0Hj6XEZ4Oe02wy2du5UoEYRw6v5YVJMDWUJVJgGGm6M4xyn3520YJ+Cw
         9D5IwqD2S3YkPsAYDi0hEINCbrj3csJ90zBzJZ+DH/XuEufGlKhexXqfIEJo6xZqLUnR
         jnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=a9wa5InO2XyMLOr2Gn4u1KSNjpfJAhNzw+XNa7giGrU=;
        b=PsxOCeS2hAn+Le1eLIFnM6tmWmjyIxL51CwFMsoQz9D45mQrMrfHMv7ut9yy1tFkQ9
         CTj07xx1BRM0Bs5ucUQvRQxz8bJM4BmRsfaVXFVNanhIdOrtyIi3/T1ITRqzy16hUuzT
         EY07yW8FNyp6K0Qgcn4eVsiyT7GK/ILSJgGozgG4glu77jKzOpf9D/HiY7rL1S9PmLUI
         RvtBy7B1+wAcnMLf7vT5fLF3WIZZvA8popZ6RMp+UxAqk+XvuFBhUeviDQKsou2Jsi3e
         k3tfTM67jXuGkAsTHvfdT83Vv5VwUim6M/m0dvvJNFIXXfT+wi3g5EeFTgHGBeR9yhoa
         7CfQ==
X-Gm-Message-State: ACgBeo25NqKnbMF24MZxZePd9wF61wjdovrqr830QeAkTQ9EXuc1n7zu
	3dxbffv8n7HQEn28aAQg2aesfg==
X-Google-Smtp-Source: AA6agR5KCpOA+blmjARcnQjwXjqRJ/gneDTLOp95lR1XCSFiYiXGmuQoTx4L+tgdpdlypsIqzFfxuA==
X-Received: by 2002:a62:b519:0:b0:537:9723:5cf2 with SMTP id y25-20020a62b519000000b0053797235cf2mr4713129pfe.15.1662566590434;
        Wed, 07 Sep 2022 09:03:10 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:03:10 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 10/13] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date: Wed,  7 Sep 2022 21:32:04 +0530
Message-Id: <20220907160207.3845791-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090314_550184_144B0044 
X-CRM114-Status: UNSURE (   9.37  )
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

Edgeble AI is an Artificial Intelligence company with a focus
on deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4:
- rebase on -next
Changes for v3:
- none
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index dfaff2487b04..f3c1bc0fd4bb 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -364,6 +364,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
