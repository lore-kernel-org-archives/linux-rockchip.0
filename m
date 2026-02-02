Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 528BEE7DEF3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 15:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFzwWPEMXBUQ/9X76403I+PhsNPslHG9oPYzMZgKv14=; b=Z8a6H6uGWp89hw
	b0/ZmN7vuKAv4EH3E9RFRNvtbDBpgGOktVutb61Dsqm7IO0fkVckG9ogAp0Rt1xFlv/jOeqBTG/7D
	116EvkHxGtuUKaGcGZeg7QwtCzKBXoSueT3uwGEN2g9nYyy7uXy5p2F6F3jaHplx/juenMRuqSo0x
	bBtzA/Cxy+6EYYzQpZQr3nBWwGWwsxADuQVZqnMoqXsbXkEqczn8vkxjvUhTCtgQU4/RQHG7yhoY1
	iJNuw7EdGU/rdZRW5bD/Objp/0VTT4BCaVz0zedsV6zaCA2aWTUOWgiRFquGRntzMWk91Hzb3BpIu
	2w2IGs2sF385dW+of8Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvTy-000000059cD-0GA7;
	Mon, 02 Feb 2026 15:04:54 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvTu-000000059Yo-22SY
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 15:04:52 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-82307c6902eso2312853b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 07:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770044689; x=1770649489; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSDNEyCwakS1Ym6Pza3YQfvhZWkeeNtC0qOGvxZYQyQ=;
        b=dN1is0HqptNh3/3XGD4h5TmNnuqEwGuFyhxD8b1bn4O5od6ljlTG7CvhC7y8//SojR
         CRvZQaoU+RsZPGW5E5/qRC55t3dO8kSbyaR7EvsZi7qdUh0t1DjSPCy8qM0xE8hVBza5
         hGRABLZ0WifRWj2aFOjc5qdB4swscM0ykm26D1FFfDp+Z8Stc4eRxTZB3jhIPK+RFRLP
         Ojkk12btpOw1EZgz9g4Mj1Q+PyyP35oY5Hfm/WcIAlxAhvqoSjjy22wEVITALJ+wxZqW
         Scg4gvvuE498F2IZYmgVqwzZfO1J/rtxObehV8kVGEDCGw05dipKnV5KVL1wdKHLeN5/
         JU7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044689; x=1770649489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iSDNEyCwakS1Ym6Pza3YQfvhZWkeeNtC0qOGvxZYQyQ=;
        b=S8zELCDOnC5Up8hZLu/zBs1GvNCXuqIiOcugzk64MPtnJ5dQ0eeW/sLjsyC9UFaTwW
         g+bH2kaBQLkIhMBXSkeY83OC9JmMzQxUydczhzQCK5X//INWcE58Mc1z77ylQCPd3AoB
         WJq8N18g8CdlgKdMndeLbeaD2o2IEuzaKVxbM/0xCCCcexjXfyM3pbSM0aR6doHAQDjI
         MdBaJMjeYhyCOsxAqLyqyXk5G65z6H1jmPy1LkYfKQNzATFvgGAzXVrE5YqEjhCYuLmn
         p868gG78nK0iNohhlau/5fln9t90DIIUvg45OJP//b8xnrwUeFWqFrIqeFNVgn8XmA0f
         UNVw==
X-Forwarded-Encrypted: i=1; AJvYcCVs706I940reW0MOSd6vf/mIQWu0JtTlz4qx72UcD4S14sQozKTALYJvU9KMX4PqxMjzCFhj0EUx0NfFUmWLQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6h8NEEvCCFTeLPpWhJZAv4qcWr9u4bA4CtSUbhHoKt/CMbMQ2
	80yYvypXmprCfsC3Q6rXF+jv/0KLnkJoQugojSd+qd7eYuLFAVv5qe59tdFvUXTM
X-Gm-Gg: AZuq6aIEoyvLxaELT+2ul2P6XckkHAAvDKOJUsvXBkpiBZ+xiwIL5LFeDT+Cd6Kp7C4
	6TeLXCpmALLJpET99V2fGwXW0qgi/rlmn6pHqmBggg83bH8oRu3wA0N4sK/xXJmIIxMrJLQ1Eg2
	MnmKmPdVSDHuoXjYH3kAsos7L5VP5a8y+bXVCYUg8UxMVtcz/CD5vBxbuz6g62xESiUJXLp3Jx0
	oGRwQUOFyUJLAxZQVFlgh7T/bKZGdF1zUOYfGsfaOubkjE4cvl+sWsetdvHMxKC51vpMjSK8sZ5
	27dCtDpkkYq6cM6aeXFFNRrOXUVYQfFs61c2KpvEyt3Wv1wR5q3ahrjkjdUlcpySiTIFVMBx/Wd
	nWaScqaqsvfPuwIMiB82YwPBLhuo2KNE0S0/3oKd1cVLF3wbBDpqnvR3+RuQ4wk7FJbbXC1yJ/+
	FvUCpKkIfD
X-Received: by 2002:a05:6a00:1c90:b0:81f:9907:e503 with SMTP id d2e1a72fcca58-823ab67e71cmr10570020b3a.16.1770044689452;
        Mon, 02 Feb 2026 07:04:49 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c21112sm15948480b3a.54.2026.02.02.07.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:04:49 -0800 (PST)
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
	Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
Date: Mon,  2 Feb 2026 23:04:01 +0800
Message-ID: <20260202150437.270567-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260202150437.270567-1-jerrysteve1101@gmail.com>
References: <20260202150437.270567-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_070450_541674_D68ECCB2 
X-CRM114-Status: UNSURE (   8.28  )
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
index ee7fd3cfe203..49607cf2941e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1199,6 +1199,8 @@ patternProperties:
     description: One Laptop Per Child
   "^oneplus,.*":
     description: OnePlus Technology (Shenzhen) Co., Ltd.
+  "^onething,.*":
+    description: Shenzhen OneThing Technologies Co., Ltd.
   "^onie,.*":
     description: Open Network Install Environment group
   "^onion,.*":
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
