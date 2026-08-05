Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9968AC2A09B
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 02:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wbt1G615o/4MIttz81qMLk0BlLBGM4eialcINo/nNDQ=; b=lrW5CUnleE3jjQ
	Gu4/XkQmzEwcO199Nx0UeeDMD4x79dX3biy+FJi6CsEoad4XgtcsIX9ap1q0V6EbAGW3kQSqauAtd
	kluX24DZlCpZwzfO5xPscwBK+QMlyvatFgXWqFqQdh7G/ZY/czRydyj6gxA7nyHfF0tSGqR/JGB4a
	5S3Qy3gegetSqy8x8/bhLTULj2H7gGzGnZ77KPEyjZXDFaMvXmE81xBZ3cyvvT/74MYi1YkVMfKoO
	ZUrD9jHWdudgKNZBkWucabgT+ZYUk3SiNZxBR7CEWtyEaGuFUR4t1Kv86OX/w0QggNi101zLkKh3e
	9bx4303l+/R+kdG2N9XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRMy-000000037QV-3na8;
	Wed, 05 Aug 2026 02:28:36 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRMs-000000037J1-0OXg
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 02:28:32 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7e9ecd7216cso337925a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 19:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785896909; x=1786501709; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=azC4yJVvIjculgK3P7AokYSHVCXvbgOhfjCyepYSyOo=;
        b=KTToc3Gp/P04fDP1SGH9XtlfKvnpfForv4pYsYUtkFJKMZX34omRV6imziaaEg54lj
         qRbcDb4V68kRs2sojpHsJnxdczhzV+kdZZwlklo//UF67mUkPfaCBcFohmkmGTwVPt6N
         Kxx6up0efmI+b9D+Y4HLGzPfQKd5yGzVpcSBIrZplKnt46QLA7J8cwRAlyM1ZkFRrPEo
         BKmu9WIf08xfnUKzeUYyJArdR0b7gyI4KFLV/nwW69QbKflJfM0Xg5zA7O5bhKZ6+KOT
         LjkSw3YQEm8iwnPY7QZnWtbNWPf/dYoha4om69KHDK/XVplqrjbKfMLT4FFJjpyMXofP
         9eCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785896909; x=1786501709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=azC4yJVvIjculgK3P7AokYSHVCXvbgOhfjCyepYSyOo=;
        b=EfaZdsUZfB8QdmVn+ZQyG7bO8HlkdhFRKlBi0DDss5dQcfdFU4S7lM2wRC6H6Ethle
         BOGOuCkYp3sA3kZ39OXplWbA21DOcZ3zxs/o7zpOOqaVv7wDDvYJPXkfOgU2BR3KCnS5
         DH51z0gazEsap4lgfZjx99lCGX56auFYFz8sJRQBiZoZCW5RcWOPzzfRQUPino99ZYLS
         0mrDnMKIxj9GKd9yOVWzSyGEz2zmO+TULcCwQITmTqmHlg4XcxUEOY+959feIdKMRVKe
         Ahx6+r6Lq1RKPyQiX0rvlyeEeu/rRP4Grfbx93foOIMLgBVdXBu4H02wdIPlrE3apkeW
         26wA==
X-Forwarded-Encrypted: i=1; AHgh+RrSjllDveU5a7tV6KRRj6hbnZx9o8zyAXx98uV3nE1vqsizDqWfK6KN7fdUtvtgv45X7CvFEUirw+Bt/YLBTg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5V6ZZAVo2h8jBnGplLrnEPUg2MGTeJJ7hFnt5g3hb2drABbOY
	naddb7Rwk4myQMI+CoCm5Wp4qJqqILGL0jq6FNVPhKbVy+nk9ZrpbdMg
X-Gm-Gg: AR+sD13X7uxjXpeFdu079XZ0yx1sZMweLgsuwLqWFZnfbK85Ci/rg8YDpJxZfY2tag2
	1OUYGNQU1Vv14gIJTTwvcsa1VqvPXop0Z2WKzxJi5F3nW+RKEeKIx5jljy/KfRswVXdnpjoqwi9
	UKcpNBygl4tleNQiw9V71X++aILCNRjaTw+9FBEpxzRwmDoRxeFgVbdI0PQnKNlVFfJvf6oq44Y
	tD8SzDyh7ygCkpo6h1NjQ4DXzfuhMuIxbW1VPjHIRzQIvmOHVdnZL2/Hxn93Rrzd/mSqAJDzFbN
	gmu+noDa1i/wcyPAvfTM+nv1BBEbF3II7ALCOT9p9EaszvHR7e4vJhB7cxQ6+TmiNzQR0afdiZF
	gB0vDQiWbeFzJGmlnVqgoNXwHStx/kI+E1GVjyhFKnjCh19Zx/r5WcC+D4eSfvdNM/o73K1iREh
	fu007hDr5YFG5Cd5SMP+lvsYTXPxz+EzIkOK2JuSrddX3E2xAXC89QL1J9Q8ugjrRkseCXp5DsZ
	omIV1z4VHxBedobOALk0nJTgZiXq0sQwbY1eJy0rfVSGS6JxfOzYBpvqYrIN/lwOGkzivjI/gZk
	6jwgSdA7/NzuHyXHig/UJlE+Tx167TBwGlATf4pxOATJKhex5w6XgNQCx0UhXG0amGEuTSazxdR
	05Rajq7qf3LHyEpYl
X-Received: by 2002:a05:6830:2116:b0:7d7:ed69:81b2 with SMTP id 46e09a7af769-7f1e5d0f2e8mr2637298a34.5.1785896909187;
        Tue, 04 Aug 2026 19:28:29 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f1df565d37sm2078153a34.16.2026.08.04.19.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 19:28:28 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Tue, 04 Aug 2026 20:26:59 -0600
Subject: [PATCH net-next v2 1/8] dt-bindings: net: x-powers: add AC200 EPHY
 control
MIME-Version: 1.0
Message-Id: <20260804-submit-acx00-of-dynamic-v1-v2-1-3eef49ff1d8c@gmail.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_192830_153253_822BFE2F 
X-CRM114-Status: GOOD (  12.50  )
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

The AC200 contains a Fast Ethernet PHY whose power, calibration and
interface-selection registers are accessed through the parent AC200 I2C
regmap.

Describe this control function and its optional SoC SID calibration
cell. The vendor sequence adds three to the calibration value modulo 16
before writing BPS_EFFUSE. If the cell is omitted, the driver reads the
AC200's internal copy of the calibration eFuse.

This node represents the package control logic, not the Clause 22 PHY.
The latter remains a separate ethernet-phy node on the MDIO bus, which
supplies its address and the MAC-selected interface mode at runtime.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../bindings/net/x-powers,ac200-ephy-ctl.yaml      | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/x-powers,ac200-ephy-ctl.yaml b/Documentation/devicetree/bindings/net/x-powers,ac200-ephy-ctl.yaml
new file mode 100644
index 000000000000..5bb60542030f
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/x-powers,ac200-ephy-ctl.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/x-powers,ac200-ephy-ctl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: X-Powers AC200 Ethernet PHY control
+
+maintainers:
+  - James Hilliard <james.hilliard1@gmail.com>
+
+description:
+  The AC200 Ethernet PHY control function configures and powers the Fast
+  Ethernet PHY in the AC200. Its registers are accessed through the parent
+  AC200 I2C regmap.
+
+properties:
+  compatible:
+    const: x-powers,ac200-ephy-ctl
+
+  nvmem-cells:
+    maxItems: 1
+    description:
+      Optional SoC SID cell containing the Ethernet PHY calibration value
+      written to the AC200 BPS_EFFUSE field after adding 3 modulo 16, as
+      prescribed by the vendor initialization sequence. If omitted, the
+      driver reads the AC200's internal copy of the calibration eFuse.
+
+  nvmem-cell-names:
+    const: calibration
+
+required:
+  - compatible
+
+dependentRequired:
+  nvmem-cells: [ nvmem-cell-names ]
+
+additionalProperties: false
+...

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
