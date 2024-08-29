Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F91CA0EC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 20:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQITPaIHvFNqybYQ3ZxKSeu8hu5+7XfO9M8Md9uFhag=; b=z5hT0W5STLrg40
	VFvkJ3R6Len7w9GRaRjDbcXEHf5s0dvV+Tng9gMk20EP087sCOEtD20CILyJ08d0AVEfqru8qEf6I
	vZos8umsnML1cH18knKDT50/4yqzAEDjHNpoHjyi2dbCAwTm0Bgxb4kA3++6TeY4mmHpJqGaaEiSs
	njrtarWXIk19swMKBsnvNZmw9YY80jaAkPltUHgkv7dyjtwb+UX5fihFVYoKRBwRXt71TR5O43zVZ
	+yj07iJi7WkbY5yWflDmn+DXGNgiMRkWYKf5P91fadqHaMdZipH/JQ1vv6fyq5jEarNKri3sa7CqY
	9eVQ1q9MBwQjrAgC080Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjm3Y-00000003atB-2ocH;
	Thu, 29 Aug 2024 20:47:48 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjm3T-00000003aqv-1yiK
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 20:47:44 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-2703e8d3f7bso620925fac.2
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2024 13:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724964461; x=1725569261; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GMNECcNc9zIPRm151CO50e68GZrIwUGK0WJbxMBA+tI=;
        b=MkP3YaWGod4j5Pj1dGc8+sYpNuyFQICLnV2Jqc49HjSr1QBnO64EVkQG+cmK+UTjPZ
         OEkrIZVE8s0/DrjbpvYYI1J7MxZGkSC9pLGkW+12k3klbflwTQWhqUCyKxdbayvOVKqF
         3AfKrJBpU91O390RvfOKrUWR0+jDUZYeD3UJ5CHNHLNniBWtzCX9puSRFoCKDWucyxwr
         dggEpFLddei4WFcjTVUi3FIKg9biFgL1iAZKlih+ApOmU7cxindZjSVv/T8viBe96A4c
         ciizMX1WbNRxZGFs0dtm3hXxqcvUacx2xUJdj/xR+ZHCll/xaPKarv1ociHNo8ZVBYx3
         shzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724964461; x=1725569261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GMNECcNc9zIPRm151CO50e68GZrIwUGK0WJbxMBA+tI=;
        b=igD0ROlDUxLPr5FbH894x9zZ0pKVWsd77S/suN8GhXAyGIH5PoSSTED3FYvSWgJ8Za
         I8Ai0EaSOvgANJqXoyNAb5xy/qH5PtxbblOAAS9tCDhCDqsJFDWRfCrkEI9RcqzKh0Jd
         A/1kNPrVFAfDPxpTR7vgk1PJV97wdjGyoRakB2UXGJmxvMSRleg1K0+6I6j5d91VMedC
         iOvvLrPk3f8/zw9rtRNOkpzXyAD1Xi5g9nrgHkXP2lHK9Jg09hGRXisMYHxgCefE6gEa
         yq/vgN9Xk7rT21FhkxQeMhJclb/e9lDJEBbocdJ0sPIBP+Xow1f3fGkdxdTllVN45OPg
         gkIQ==
X-Gm-Message-State: AOJu0Yxway3Sbf5/1bWFdU4b1JTC0ZmEuEkwQOqAmimDXAR865wTTE4J
	4eirvtf4mrm6PvKp0G50u+oTwh145ep0ESHmay/SQatRJz49aL4OYHqVNQ==
X-Google-Smtp-Source: AGHT+IELJG/5Sjygm5cXL4PnQ/JJMp1w2z1g7qjOKDFcXD9paEK2TlhFQiWv2QT5yXZKVKMKntD7Cg==
X-Received: by 2002:a05:6870:7815:b0:270:4134:1d3 with SMTP id 586e51a60fabf-2779006e927mr4694462fac.9.1724964461561;
        Thu, 29 Aug 2024 13:47:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd13b1esm86639fac.42.2024.08.29.13.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 13:47:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	zzc@rock-chips.com,
	andyshrk@163.com,
	jonas@kwiboo.se,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V2 2/3] dt-bindings: arm: rockchip: Add GameForce Ace
Date: Thu, 29 Aug 2024 15:45:16 -0500
Message-Id: <20240829204517.398669-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_134743_618452_9C499229 
X-CRM114-Status: UNSURE (   8.94  )
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

Add devicetree binding for the GameForce Ace.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..a5a2621404ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -255,6 +255,11 @@ properties:
           - const: friendlyarm,cm3588
           - const: rockchip,rk3588
 
+      - description: GameForce Ace
+        items:
+          - const: gameforce,ace
+          - const: rockchip,rk3588s
+
       - description: GameForce Chi
         items:
           - const: gameforce,chi
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
