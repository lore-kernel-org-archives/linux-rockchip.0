Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA712C4450A
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 06:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWqAnbCAlLWHuJD9Sooby79bvinUOANWizDyBw10NNE=; b=am3bp93pRb8ZoW
	SjCxfMetXUQ1Rf423EvISOh5hGWiWvgkKVn2cBkbxCrL6FhDZ9c2QLVyiL21tIlGVaK50ydOBraun
	ve9TYCBNN1Z5WP/9p6IR1ilWfT/9P9giL4yGrkWLXWHFbcq24Y0OAv/ob6lGFF2xLl3vyp7c1F85r
	895dRkL03cySBs1UIb+Vypn9BXC4q8aBGWOpL2lt+zC+HnWWKbd48StdzITTAbg6xQcaFSbfZfWta
	4nuyssuJezZ3Ut2Je1qSUpFCcFMDZMn+8ohJj1+IOrRYRYESlK7dWo7Nwqf0TvhuMnFXTwPQ8mONI
	l/lUBRlOxxurodEaWVpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkz11-00000003nWZ-19nd;
	Sat, 18 Jul 2026 06:59:15 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkz0z-00000003nVR-0a4T
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 06:59:14 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2cab973140bso105583875ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jul 2026 23:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784357952; x=1784962752; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bSYaq4nat1jPpXSI23xdg6ZNt7J9ZT6NEZnDaQEBhfg=;
        b=SFBjBTnQtJV6HNWWoDarFyIxwcvDSRQAIKWfj/2kbTFCaBkv7fVzsT3cAjNletxw2c
         uXN+Cj0U+pkyCbp3ntk7Ai7ZwX5TUWu1EGoiQ1Jm8FRFDNCRa/tiUWh5c4ClUX6p7MOl
         ZnPB74WReF8FaDGFIhi+fuQi7F60sb1ajDuOrq5janD0qt5c1fs04Xy1XsLr++ZHpRjG
         nn7uAvs/7qXUJ2HdO7XshtwwEAKgyojc0Cjfaiq+Ki3xAAEci7arDU6zZRd7MvNN+Nai
         CkSzisAwWqlAycqmab7BTdFILr8DUlwEnAEtJG56C5X6jxDQc6XdZV3J2pUjoAvdVVoa
         JZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784357952; x=1784962752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bSYaq4nat1jPpXSI23xdg6ZNt7J9ZT6NEZnDaQEBhfg=;
        b=LUwQNU7sF/3tRZIRNP0FWfXdoNzQkjbrvvLLOxPEDfnnS7oEvGC9RSXq3Vyx9GwKqj
         K1fDgvg4AZLTl/joWPsZ5q+oScsphGurc7MWmshidR8XaCygkeVMwTNg3U+dLQKlbVBA
         VtW8gvZrHkxByMDSpkg50Bumexo1HIB64k2Wt7d1OrSinBOANJeP6ef1+TEdtMlssuuQ
         RUzmr/AEhFY6TKQ0cI6wODwWTHCqvbT1Yxxa5jyC8eVi2lc9oinyH+3zCRjRPwlzqFsb
         wYRK4BKcxFe7w6wdbbVizWT2Md3h93/VpSnxIQxesQnks7hVjW/1++A0IoSYMJmHtSsf
         sI/Q==
X-Forwarded-Encrypted: i=1; AHgh+RrnziWDIwOhwioWnt7Ac+LEumYgr++dC9bx/DXI68eefnfJFHBqxsJsHtVB9SelNfMvzH90uAPR+bxg6tvRBA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwwMB5cfcoyyIndUKQj/8sKx3p+TYIruBOYgPtnR1SmYZXn3AA/
	fDioyz6MtdxEFZuwf61BYDaceRYEdFx+DpsM/v5sJVZ/DbJp4Q52GPmG
X-Gm-Gg: AfdE7ckunyl6b7bXepXDzec/jgExxpxlgQzhf01tnbDb7583YVN7IU3ZaZGQzmr/djI
	hILOyKBYqTdt3GkKy8ww2LAePg1vAD03EuLHVpwKhB7tJIjt1znYDHqz1o9cVnoUzSYucJRHdb5
	F4U9MIAmfFpMgI60aY70PXCEW6VpeVicaI22PaMXxLRNMbTiXUc8e0vKGtL4519rBUQr8EoOak+
	IEVkiwV4eIpdYJL3ZEo2xRSG8ANBVMBEIhHbImOj26RUXp73acOUX8tObM/Odu4WaSY6c72FTsj
	USRyUjJtfSVmcpW6+2dIqJ4U9jwmmLal4I0ppfWmMo/o2ebS7vFGm8LwZ8+ECrmT4krTfiXgXUZ
	DFfnwAnQ+LDHGE7THXPQA1e8CjxiSA3sFs5welQ1/0yDRed1o6ix6pKIPRFldsDdP2CLqZRx/rU
	CvgWVlgt8PTg==
X-Received: by 2002:a05:6a20:9183:b0:3c0:9c19:65c0 with SMTP id adf61e73a8af0-3c3adaf501cmr6434455637.72.1784357952083;
        Fri, 17 Jul 2026 23:59:12 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31429f9bb62sm13426133eec.2.2026.07.17.23.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 23:59:11 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman board
Date: Sat, 18 Jul 2026 12:28:59 +0530
Message-ID: <20260718065900.755631-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260718065900.755631-1-hrushirajg23@gmail.com>
References: <20260718065900.755631-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_235913_179891_008B7A09 
X-CRM114-Status: UNSURE (   7.80  )
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

Document the compatible string for the Vicharak Vaaman, an RK3399-based
single-board computer.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..7cfd3687768c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman
+        items:
+          - const: vicharak,vaaman
+          - const: rockchip,rk3399
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
