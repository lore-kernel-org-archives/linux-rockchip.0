Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 141A8C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkLI5p85+U9SPmmSFDQAgu/GflsBFxd1d0KL8sBJ2vY=; b=agQoOJwrdwzWXg
	W4R1nBRogydIraE4125WR0DJ+0cydxZBqzEf2SgOaXOINCUPozFGNt5gu9/xk5nPj87CXrFMiXjnD
	btT3Pak+bble8m2zN/p2dDX3f80EhgbhxISTY+blqz9Ei5HRycPjnqnmYnW9mtnTzYPjoy5PYraIW
	OSCUQt101KOz3T0FdWppdoCDrKXcYfV5cHatY52C58mF29Uedw6JVDF6dG9WEocniu0r2e3feHWRT
	SGjIy9PiT1L7jR1KxMZiA6g5L8s9mVzUlx3WYQG5dzpdHVF+px78xVDk1/7A5sbgcyE2fDcWbGiZG
	5bE5ODp7r40OrnPDJx7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfRX-00000003SDZ-3W8c;
	Sat, 13 Apr 2024 15:37:27 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfRR-00000003SBT-29vc;
	Sat, 13 Apr 2024 15:37:23 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-5ce07cf1e5dso1160896a12.2;
        Sat, 13 Apr 2024 08:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713022640; x=1713627440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wed/K58PoYmD60dNtijXSLDH6AUZcMsW0hh6I87DqgI=;
        b=DYz4axFrSuNYnVqAQ/ll40LH7RLjsQFnDjTxMMRmuRD+oEoeQF6TbvtbGVZNeTnNFb
         VyeUFfb/+dDo5kv8GpfFrYsD+UYe+Pu2Yx/zWlEDtcj55xCGtAfvsASrb9CDEuaMSxFv
         3n0zQPf+4VTVaq/TIH4b5axIxNYlXB6C37GqXbot/BMqzfToDHUe/5DgSxdRWBj5DnQU
         k7uRq3RiaEcqCGurPXfMY3F6xAFCXOLnlGd0ZUuaGa/fjujKiAUI2TjowaYy3IBV+NvK
         ort/Gs4h28hkarBE2z7eg8rX0xAdiGBS0T15mG/SjE3QLPSIIj01kYzeDUlGeZbyx8tn
         HaWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713022640; x=1713627440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wed/K58PoYmD60dNtijXSLDH6AUZcMsW0hh6I87DqgI=;
        b=RSmCruxe5upCUp4Cl5T5s+XIji81NW5bYXCtNrqmEJZRnOP3QItMU25cOMQLtkj5qc
         w5eL5nnuLkCpJTiqe7Mb5w7b71H4H3Ag+zETITmzU9kit34mKxJELUnkXlSDiFEnsrjP
         Ve/7NjhIQB9dUJVfmbLS/bFbjWJmfOwYIWeAAAa5hCuwpDj6aW4YvjAzwfX8ii6lwMAc
         jXOvyX0HXxsJQE9QQawGt9G6usfwzOsp0v99zd0n2pk9zKTvBLrSsofoXjBt9DfQa3oK
         tIH8wBw8CNj+NsCfxxQkFCHyQzPkggpvmQzsooN6vOKUUu0JKPIo2kbCNCKQMQzLuWLP
         6Qcw==
X-Forwarded-Encrypted: i=1; AJvYcCUxpCv3WS1xjhGF22WDxzWcSCynHe+AKx6UjFuT6AqF6uuTvd+eLdnl47SpSMlltmUMPYzg2XUJQsivTJOzrpyfodE3HTtvNX4TrxZf0sfWm3v4HK/7qvptHtmeHKhfH0JSfgQ/RW01IuuW+H5OzdyAk807hwPUTPg=
X-Gm-Message-State: AOJu0YxohtViSesqeP+vIoZQ5O9LpUsblOMRRVluCYyz2OQ/8IkRrhFz
	+93BnrOfDsY6ZJTHZlcATUzONIHqGdc6KFfw5uQtu2L70BwWUeHfF68y/sy3IMk=
X-Google-Smtp-Source: AGHT+IGAbgTuqPkp0B1kgsTuDrFH6Oy++aHUCGr4XwRHonghXVj5lMeWJ2otf2/+EgeYnTsF9PiARQ==
X-Received: by 2002:a17:902:d48a:b0:1e5:5c49:ad4b with SMTP id c10-20020a170902d48a00b001e55c49ad4bmr5132349plg.38.1713022640279;
        Sat, 13 Apr 2024 08:37:20 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id d13-20020a17090ac24d00b002a706910b05sm2609606pjx.9.2024.04.13.08.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 08:37:19 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add ArmSoM
Date: Sat, 13 Apr 2024 23:36:31 +0800
Message-Id: <20240413153633.801759-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240413153633.801759-1-liujianfeng1994@gmail.com>
References: <20240413153633.801759-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_083721_576978_E9FDC72F 
X-CRM114-Status: UNSURE (   8.22  )
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

Add vendor prefix for ArmSoM (https://www.armsom.org)

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index e4aeeb5fe..c6af4da94 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -151,6 +151,8 @@ patternProperties:
     description: ARM Ltd.
   "^armadeus,.*":
     description: ARMadeus Systems SARL
+  "^armsom,.*":
+    description: ArmSoM
   "^arrow,.*":
     description: Arrow Electronics
   "^artesyn,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
