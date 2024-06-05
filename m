Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42EF9C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrTC73B5/ZJ3V5JHf+b3LuqoYbuk2UqaLt3Z7zHVFPs=; b=4teyn2MPJD0HVv
	6qSLkLLp3auQIg1kfoKvJVdW7PYhYygRfWtveGVAD27ThhOTtmWHx+IQ4rnQMwTDFI0RN08ofninz
	odheNGVN2zT+LUQXjcBE9Ck5JOd7Lmz9/kZH6CjYggufvjPcCKjQZdK8trHpPL5ipPkYvJ4v8Yjnt
	DWDfKNwOr7piS7oNkYDtqszjH1c9IhM1oziM2P2VPJ7yI5+j+3AOuuZaqb5tfsdnkjgvsqSjmYrBy
	2ifu1ApKRulDNY075AeAcHnIenYLYBezsZfRQht4PK56DoQQqOkQx301aLIDbsCBlJNwqcwyV2yAc
	Cx6d6wtwtVeDYSP2SVow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExd4-00000007Vg1-18Yd;
	Wed, 05 Jun 2024 20:53:06 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcP-00000007V3e-00XB;
	Wed, 05 Jun 2024 20:52:27 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-57a7dc13aabso294777a12.0;
        Wed, 05 Jun 2024 13:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620737; x=1718225537; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=33SKSYjNACPXXw3O2oejlfq/sz5jEco/GHNmXgivYNQ=;
        b=OSVfxYPS4iCzJvAAHn+jgUtFZkgXutf69IfjyBSGrLQjWaLBDf/u3E1kUuHOk+fLyy
         sqWVkM1uMgJjPTzvvaRg/3ySfGEB9nVIbgG5nC78kVwBmOdGvMueM8/MeCGILeagiAIZ
         gji8JUTCEQJrpd2PNkdY4N00laeA5TtI9w9EEonAV/L02ECeiKOP1QkGbzrzc66giL5j
         QyzmBGB2EktPzbhg2uawOw2o2V4inv7l8o8uoJ3+arbPudp00jGb128OxV7SvLCYFgII
         grxir95xwzAwBxoWJuB0j/CL40ZdWGrAl1YDyk2pc2P0pqSNlCb/WLFDvmNC5gNqPcrl
         oUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620737; x=1718225537;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=33SKSYjNACPXXw3O2oejlfq/sz5jEco/GHNmXgivYNQ=;
        b=Qp0eBY7UToCQxQT4LtM4MHbwbERNmnra1qmUrnstCw6AbHuJBkWpMk38IRErgUT5Pq
         NuzMDBMBVdSKNuF4u97/Y/PnU/iJDL0rPSrDFj3n1x/PapYCtiWWmidUe3xv+ROdossR
         SwvdQEorkMnn409dBDrvd/DP996Pdj6lNV2Pcwcj7z4PBqwxbhknuzkAFIHuKbl7DUcy
         nAPH641KSJ9zLmn/m3SHYaM6N/G4Cg61J3Z6lhtnNyLotIfrGlQUuTCd7bZSsshW6xqi
         W9zmHYLBomrSXxBRX5Fbi/7AFXYK3ZI9JMa6xVbYLC2kk9zgdsPHbRJFOS8t+SLA/RXT
         OppQ==
X-Forwarded-Encrypted: i=1; AJvYcCUk3R75E32THvc5D1fZZs8UOd/7fsOO2ygRPe/I8+mBWHvry/5DPHhMFppuLzySii+q4ueFhwia7lHCm5JA7iZln+jdu+6//mhFylRtgRtmO8yVSjOjOYaoKMl6xga6LzhGWuo8IaxYDRUmIHqoyh4rI+HXYsLMO9g=
X-Gm-Message-State: AOJu0Yz/Cszfdlzyd4S25MlNaT/yPEm5YWEiwHxOR88xKqrcZP9DG/gK
	Nk7yVDkjsf46IWRZAX0tVaH6UKHO2EuDWFfBtU/s0h3jd5sqLHI=
X-Google-Smtp-Source: AGHT+IFIDerHktAZirR6ar95KtrL8RlysFwPrG5PvbJC1Cu9Jj6XSFP96k+U46so3QZVSMUrWG4NyA==
X-Received: by 2002:a17:906:b7da:b0:a68:cb24:a123 with SMTP id a640c23a62f3a-a699f56e66fmr241689066b.19.1717620737442;
        Wed, 05 Jun 2024 13:52:17 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:17 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 3/5] dt-bindings: clock: rk3128: Add HCLK_SFC
Date: Wed,  5 Jun 2024 22:52:07 +0200
Message-ID: <20240605205209.232005-9-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135225_194105_D6332774 
X-CRM114-Status: UNSURE (   9.58  )
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

Add a clock id for SFC's AHB clock.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - add new clock id at the end

 include/dt-bindings/clock/rk3128-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 420984fc2285..d731c3ffbe1e 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -144,6 +144,7 @@
 #define HCLK_TSP		475
 #define HCLK_CRYPTO		476
 #define HCLK_PERI		478
+#define HCLK_SFC		479
 
 
 /* soft-reset indices */
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
