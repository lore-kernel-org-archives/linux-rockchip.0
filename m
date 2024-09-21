Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4068CF9C5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 18:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buDs3ESGfdykHZwehCw6cBEriu4pwOlrJqEOsM7zEvs=; b=xYhCtwsw56s0vg
	PhK57zT+HVMcUCeMKiB2VhlKFUBf4wvadLhPxdRsgrOVz17JSXTCHGZZwkCExiqZPWPVTleNqB88r
	7IHq/HTGV7+oA3mr4s/Ma+fPf16aJGklt1zZVd0C6cnyBYR2OQJNc7B2dYyIUJ+3obTB5t9HIvWQy
	+iX8jRvn4ZfIcNyVWoe2oJ4Kc470e9nwstVa76qP5obx91gjJ0a/JfnfZghrsrwltEP1b19JlGn/7
	7g0b/UCkv5Dr8KsD8P8TCulfFgnUsoYF+1EQJNQtrq0l/niTthgWLGOkvMyKSVnJBA890dkfc/n+S
	m3mic0EHu2NJ63OD8YOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss4sa-0000000E0sy-3dim;
	Sat, 21 Sep 2024 18:30:48 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss4rT-0000000E0ct-3Hlc;
	Sat, 21 Sep 2024 18:29:41 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-718e65590easo306602b3a.3;
        Sat, 21 Sep 2024 11:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726943378; x=1727548178; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gtyt+qfHCrRWKEPMpavsPcf+YAF201xuLyqA3h9cbOs=;
        b=FVBR3EbLS6iaevzKU3yz9z3JQqobiiWwV53wCDhT8NxgWQlQcI3vAI4YlDHhXsY+aQ
         Q+bF5qhGGgcSqcUl2DXYnNWAZmczn8vMjM7OrjPwfQWKrw8F5rsOJvi7JDb2fmMEOuSq
         OjxqkcbX6tN0IFl7zF26d58pqTYTUK2crFUL8x6AFjcibT1jNv/AeMyGf89EkoF54l3u
         64g0VN0m7+zuXyQWV51R6yk4caM9dIoQVyIifXzJcrtoq5i8MGlrL6VHUBgRofWRJoZ1
         fAi8m3wvLXvd97jPSYYIIzZCyHj7lfBwNXQ31JZKaPBWTdn0Rrm8U2rQFIALQCFIYaHL
         /HQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726943378; x=1727548178;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gtyt+qfHCrRWKEPMpavsPcf+YAF201xuLyqA3h9cbOs=;
        b=iuvat9XHNP5iD4kAutNKWYG+vmU++QiWsMiNNrPu+uWzhaDNXpM4veUvxEiRarncdQ
         KZkKXarIeefIENJqX4rFxBMDC1dxmG4WyZrPsHacqTOIybNY0zjfqHUd+tFsf7soSkgP
         792egdRadGVLmkMESz5oFKiWANwnQgKrEua626CDfqF54gNy9E+MJDW6yQLTJEmtJyTy
         KBZYNwyJXOkf6MUieMJ6e4n5PuB527aRcMPqLc7DFpreeeFbDxNSqRHauNbjo8WvLhCt
         OpLf7WI7a4eq+y0rdRGtSlGuqEePQ0wJLBOjywg6isuqbx3wVbQVj5PlZLBYc7f2tmsd
         /xgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYGp8dv8lZq7AgKSxyspPArIBr0Byv/JbmBwpfR2oZMVAoX5C+3nuLxV4ue9iAAR3/apd94RvNQRr81zYh+TEx@lists.infradead.org
X-Gm-Message-State: AOJu0YxGcORlLMbtuQlLj+SzFdGuoWYuux8yoH65O+XWlY4GVu97xw+o
	R0JxgNB6tcD6I1oZLsmVkoJ8zSCFSOfijie9N5zPRpqvM6H6k+DIiT/YyruH
X-Google-Smtp-Source: AGHT+IG5MPAQDzBMaTft5ExxYqnkMwgIWXsY418SlKucfqiS/K9wHLeFqGJID6CEG2tWHXKIYkEMNg==
X-Received: by 2002:a17:902:e5c8:b0:206:a027:8aa3 with SMTP id d9443c01a7336-208d80efae0mr44301375ad.0.1726943378503;
        Sat, 21 Sep 2024 11:29:38 -0700 (PDT)
Received: from localhost.localdomain ([221.220.134.146])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db4998b96csm11080441a12.59.2024.09.21.11.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Sep 2024 11:29:38 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add ArmSoM LM7 SoM
Date: Sun, 22 Sep 2024 02:28:53 +0800
Message-ID: <20240921182917.64756-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240921182917.64756-1-liujianfeng1994@gmail.com>
References: <20240921182917.64756-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_112939_858521_F3E2582C 
X-CRM114-Status: UNSURE (   9.62  )
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

LM7 is an System on Module made by ArmSoM based on Rockchip RK3588.
This SoM is used by W3 Board.

LM7 features:
- Rockchip RK3588
- LPDDR4x 4/8/16/32 GB
- eMMC 16/32/64/128 GB

Add devicetree binding for ArmSoM LM7 SoM.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c2..1ed72df971c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -54,6 +54,13 @@ properties:
           - const: armsom,sige7
           - const: rockchip,rk3588
 
+      - description: ArmSoM LM7 SoM
+        items:
+          - enum:
+              - armsom,w3
+          - const: armsom,lm7
+          - const: rockchip,rk3588
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
