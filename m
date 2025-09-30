Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 112C3CAC5B9
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 05:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqApvPR3X4O4xaRcd/mJeIbXdmcLKoL90PVKLvv7pSg=; b=nhcOnJa3qqvzzc
	Re45QIfPZWgBUsaqiQp1muzIEAReAQ9lmPjP4hTRAkPF7vJsi71JoTUd536zufsbHEjvTQCG9fzPp
	rjiV0IRc5Ua2UKFbsJj0pa71afiqRCPlEbaYC582QWw5OILsuo1LQlLbY31WufqmJ9BoBWAi4IOPJ
	d9716IQSo4+9l/iGAPeeXry2QZnLw3sn93rYK9fzQc+vIJl5SPy1K+xDcgFy/ucEGJJ4IET1FC5zX
	Ala31YaU9VapG6gr9KNEYLCozwX4kJ+Gcl+Sb3YI1VE5ql/mYJPpvfrd+aeCg/zvOoWwnUGmm6GhV
	hPM3KlocGqSMGqhRaRFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TGA-00000004Hjk-2lx1;
	Tue, 30 Sep 2025 05:50:46 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TG2-00000004Hah-0IrT
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 05:50:41 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-86302b5a933so338655985a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 22:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759211437; x=1759816237; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=bIo5yV545DslP9ZFcyM8XKfJ9/dgHU5EuM/wSTlwjZxfr/bnsDchPWijrHffuWDDYZ
         4T185BqIAnrAIRN8EeQ6E5uRL6iSQ8Tqtd/Z6OXS4Lo36Sw8sdWE8Bn0dHsK5T5/Rw0T
         BvnsQN3L4RofhbSM6QZ9IXc7lDjZLDHCzhbbPfn9zIfeSX5rGYB8/Ebwg2t/KDyGGqU3
         Y3p37eKIAFZZrHa7ovid1vm8DxF2qyPii22DycxyuJl/ov243+zsBvK1G9wRT8xZhQYS
         amqMfGI4LWR+0q3ZtP6B9KBZjL/kqc9GnKrO/DJm22ThRK74DVd3MIVzzoNfp8cpcdIY
         yyIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211437; x=1759816237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=HkzPo9tjiLDLdOKjCUQRvpLfGpiNZSuukhk57hCSQ9XINgRt1BWbw5qHmA3pQWti3n
         d5NQ2WveaKnjn+RiJCsP6W0yAzzU3Kv/J/JNj/4zo5FP93wRz/q2SY3OfAvT+6iF5WyX
         5bZci7AeI9j9DIpr/JmN5P6xmCMv0xc0YzmH3wo8CB9aTAgX5o9j/kaCRcfVELmRHITi
         aHbpul8oK+Fv9bYm38GvOUWxZKCDZpNjXx8YpmRaC/Rqwky915ptNwwWu2wQMTw7c+K0
         t4yc7jqxyVGvH1HNuEWv+w8pd0dAefxgVa9mwHGPhEMCUTX9D6ZnFvk0fSyXqsJsUYQz
         6Fxg==
X-Forwarded-Encrypted: i=1; AJvYcCVDwlcnt9Xh9kXcsRprBqQwSyyJ7l5qhYq7hZrvNa7cq0xhBmh67BVtw15p3ZRB3UchxGKd8jAuRS5vAiSQhQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyOczML2vUqNRk+G3q6BwQXEDC6njmB0HZdhFX3uBpiAvWp/8pe
	1o10D604EciX7M6j5fmm+OlRLDRZ0NGXFF0tp7AOgEmS6mRVGvxn2qtB
X-Gm-Gg: ASbGnctvp6VBZqCNi6t82N8/Vz3S2Rxl3to/PHfoL5QLgb0k57JKUDtF+AhmRDb+YYI
	hj5+MBi6fxVtf9YbI2nu+u1ehCzJQsrAqu1L1LjBErUMN5dIDKRzmAruzVKdEbaZMMiNKru5s1P
	FfJGqw3iAYz51oETcL1YwS7zuNaF3ASQlQ2dLnBcJeybk7rx3kui6hD9Y2x66Pdat6hF4/EWwbJ
	qzs8pNMuO8IlxozYO2ojtYr5umQgim4HJz0DqLt5NL8DMBtCRi+Pgl/eLqJVWdlul0US2M5PEoA
	L6a18CH62zexf+7WEj+w5hkYh2GD4fq4o0bdyul0ikeZedkoKnSnp+F1uvutwItjqgYWkZySzP/
	Ow9PIbd6cqKxD1sDJrX8VJWfngF7JM1PUhuJ+Van3a4sTIQE5HEpSyUQ=
X-Google-Smtp-Source: AGHT+IF1NCZYHFGJtQBXZPM7yoZ9n80a/zNf/Zh6Vz1P6UZxNFVTcoi8V03+lauZsiqM2BR9Y4W8fw==
X-Received: by 2002:a05:620a:2904:b0:86e:8d29:4629 with SMTP id af79cd13be357-86e8d294680mr492575185a.80.1759211436821;
        Mon, 29 Sep 2025 22:50:36 -0700 (PDT)
Received: from localhost.localdomain ([2a09:bac5:3981:263c::3cf:53])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c306b5f64sm971990985a.32.2025.09.29.22.50.30
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 29 Sep 2025 22:50:36 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Tue, 30 Sep 2025 13:50:15 +0800
Message-ID: <20250930055017.67610-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250930055017.67610-1-jjm2473@gmail.com>
References: <20250930055017.67610-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_225038_241719_169E5364 
X-CRM114-Status: UNSURE (   8.58  )
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

LinkEase is a company focusing on the research and development of
network equipment and related software and hardware from Shenzhen.

Add vendor prefix for it.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..db496416b250 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Lincoln Technology Solutions
   "^lineartechnology,.*":
     description: Linear Technology
+  "^linkease,.*":
+    description: Shenzhen LinkEase Network Technology Co., Ltd.
   "^linksprite,.*":
     description: LinkSprite Technologies, Inc.
   "^linksys,.*":
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
