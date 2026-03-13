Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 669F2106FD6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 02:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aiyp7tebMx9eZqgKpyenQM4RfGHhZwVK/pP9TnHWySA=; b=UPW/hecR8y3DMs
	fe4CcucFRZQ5l//C5YqEv3M/QhyK5oU0jQCfjhsTZx2OHisRjJ259ra14S3wvapuLW0IY3g5PdJO/
	pr1CgbMMMrUMMDoCcxDet/Mg1pcqXG8038XLz+1XTNZoNwLn/CarrhmHKncImy3eZbfwoDWf2VWjE
	58QCMqGo8U+Q3AR9c1Ldkd4hEutSPfV6qYCZUudZrnitNgk2BnJlO8IH7NS0lnsO5QzrIn1WBp4bX
	tvIcJlBuLU02mneMz01iyTFJlozHLP+RhdgTpwdosWe/DfgVZGV9Rq/CuWpO/xzvfAltaIvP/fmAt
	Ipd6yLSiBVyprMyCzCFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0sWX-0000000GHd8-3bW1;
	Fri, 13 Mar 2026 02:45:13 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0sWU-0000000GHar-3oUG
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 02:45:12 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-2bdd40d3c61so1592058eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2026 19:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773369910; x=1773974710; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SFzriUvxyUouUh/14v5VpqktDu3zVKkfn5cbsv15Ta0=;
        b=nHjPr8j1WaKdTSuUNEK0a5CrzCl5dqk8ygfwucsfeHXIWiZ8+imvvh5iAKsaYBYE/W
         KiRrNP8g9HtUHXZowfyVkqj1RbK69Nk0Ora/i8GcErWeDuagRJ+DCUKFd/EjmyntT03U
         /zA9vNJE/wSaaRiq14ejb0BWswtY0K/Aw1cdEPjNRyIhsJzs1MCnM6RQZXCb6NQyIjwH
         WWyXRT25Un7I/lvnKWw6inH0HsH0k5MzKkIy7SJL/8Wh9MVoI75cGGdHrlmlTqTet7JI
         jRzKN8ttVWKq0Aq7a1bLGUbTwdTnN7Yepon0vWxE5l5dUf3QLO3xwpUp97OkEilac9nf
         FDzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773369910; x=1773974710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SFzriUvxyUouUh/14v5VpqktDu3zVKkfn5cbsv15Ta0=;
        b=hOpE8/ESthqi1tmdPKJWYrAlodDtIw5ajgIxEABz/Jryg7YmrELgv+4jiH6m7nowYE
         2gJKXyCqMw19XU0BmGmQqV7kVqfmNbLgNVvGiVV8ppOm2t/2zVn5lRxm+j4a6+txqEjA
         s1/K0okoo8WfCv2DiZU8P8OXFlSG55CgMm5PzEtH54Q9ABHtn/IXZ7b0dCW4pLnCliEw
         zosocGolxwP44ou4piCtaloAS1tq/BkhdckItSWNj3O56MyQWeyOslyfoBePcLfiZJqz
         MY5a3txycJso5q6Nqyl/q0NUEdYW/JuCBeUVR67LGDioq1zbGuUNzaEopbYRi2O/+wB2
         QGzw==
X-Forwarded-Encrypted: i=1; AJvYcCXI+nlHe0wCwvSjeVhiROJNUNkylh0/vyMeCPynH1wAoxhHIr1DHzzK5VUgpTCjdaNi3WKg1hrsWilJPgixXw==@lists.infradead.org
X-Gm-Message-State: AOJu0YymFPRtFIs0I1jIC4Cje9nUi3C83SvEAAqA2rWBjcLfchiG6TAX
	w7awQQzanOTQunBT6a2icHvUsBR8fOUpn1Yq+zQm94Uf3l+Zwmfwsjcy
X-Gm-Gg: ATEYQzxZmBuqSfJaPfOmd02DC4nvPyukFrTTdasSSKf4Qr5lOISI2I+JqjY5ZDZcAEN
	8GkWikO6JrlorMoqKUQEOgAf3oVRDSPNCNYxiD2hNFenZwpTnHwf7nKZ311XTFKi4WvHlc2JYL3
	YkHm021SirL/v8FE5MvecqfZjT5DmgFD2vSoAn2SfNwszYL6qM5/Pe1IjUbsirseKHbdF35uLyl
	LtRK2YJGRMsysSrAB0YcupaNb8VCFxHpSG++7D4if5qvsK7R1J7fEI4nkLBREp1wq8QNnD+92Z7
	3Nj/cMQAanqhTR3Im5DmVRpXI+MELjeFkm5MdojD92LwBxJ7iFvPNVdDw9FTekIQUzThJCTLqJ0
	2X0smc88mNLzxJoZZYsQf9WyOIN5dsCbe38PVSJhrrPFVFPgRORB+1Le6EWsOVb5H4HgNR+rSEH
	kY9PaK2hkkiaZ1xHGhRgFBgoQ6PRIYW3XuKJ/WYOLyNtLtKJSG2WBUN5B8QrB7s9c957Xc
X-Received: by 2002:a05:7300:7c15:b0:2be:85d4:4a2a with SMTP id 5a478bee46e88-2bea5398545mr806874eec.1.1773369910271;
        Thu, 12 Mar 2026 19:45:10 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:62cd:a5bc:7e0f:18c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab526db0sm947919eec.20.2026.03.12.19.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 19:45:09 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Thu, 12 Mar 2026 23:44:50 -0300
Message-ID: <20260313024452.625064-3-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313024452.625064-1-festevam@gmail.com>
References: <20260313024452.625064-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_194510_956260_A81A9FCD 
X-CRM114-Status: UNSURE (   7.74  )
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

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Document its compatible.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v5:
- Only collected Conor's Acked-by tag.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 91a387621bcb..1e5be6c809fb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -808,6 +808,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,omega4-evb
+          - const: onion,omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
