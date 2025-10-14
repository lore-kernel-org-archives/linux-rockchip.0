Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81431CCD187
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 05:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqApvPR3X4O4xaRcd/mJeIbXdmcLKoL90PVKLvv7pSg=; b=LN4BPmgDp8L1gJ
	5x6xrH7mPzXQRAdPS3eaEBzjqEPFyqvWYrFbpeoxN7pMUC+ixEg07/DAgVfrmsVbC3YmXbPG3GYXI
	8Hzd0fDicErhKGZ4K9TEhP0YibVZ1dxKNzmTzQUHrhVNYfX5YOOZi0LNEYleXzByLMa44d8qMYjdf
	uDhsacNc24Mbu9t8Y/dt8L1ACThx2+ro4fR58zKFNtVyhzHNZkYt2quL8ZEw3Hdf5y7j1xMr/HuvR
	qyvWBeo648XvAPijJTKEOouVQJmVIDhH1v1DsostuD7PnV7Ax4VWEqijsWOmfBG5KgbbEANqpej8l
	Hj5kO2RxnN2GB0FK8dAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8XLc-0000000FB2W-17aC;
	Tue, 14 Oct 2025 05:13:20 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8XLZ-0000000FB0b-2FCc
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 05:13:18 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-33255011eafso5198361a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 22:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760418797; x=1761023597; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=Pf4vaqrfup+J4EhprfkENX0XnT7eksY/9cJlVSmjJCkujO4gOI4PqgCMD+wGW0UpUi
         tQJlXeei/tmzyQh8vFAnm4LoVFVV/g6PkWzMSJ5d5RoGj3aE9qr72Jj3bebBpuvMdcNc
         wC8xTTE0cZnztTskfByttTMSzpPWFS3WndSOkRMXscClseNyCouVg72I0+lFKk0NsYLG
         NvpdfLuiMQOWcTUYO+r7GYjnkcpdGV+k628MH/p7rs+Q8YmA+6psHpgiPYKNy8S3G12l
         R5L+Y9fJ6NEBHzP7wDpIlhhNliyGvEohgJO4LaqYACZxcBkDKwekA/bmnLeXoYANtjTW
         dDmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760418797; x=1761023597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=Qgi5OUaP64i+Ki8GnQcW3WDbXyKNrFV/zfQHmvCoG7XpjLZwAcmpDO+ag8+ZhldFgQ
         qaDuZ+Kha4CLNoKpwVNbIhbA5JHoVAzJI7yKlEvrRo1vo9U9JRXEX2QyAU0dCLhHHtID
         aM2iIzVeV4RHbEPl7V4p7bO8/d2Bl9D0Qy5LTl9PcYt1jRJjH+M0wh7rXWimcBRKmVm/
         qSdqdSbsPr7Lc7BQOKz5P9nyhKirG573h/IzWDqCaNTvvuRjWyX7rb7Xru9pxjCvXtuo
         yQblhVjEn8WU9qvxNjA/PmabjVenlY+gFnd+wjJsglJe3vDVJDZsx4f/U9FbY5CszZp9
         BrRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgi/0KPsmDmoFPxYGtErB2Rc2HEtMhxdr4Tno4wzLMsYBFdlSjU0ZixduskvNYf3YCeRt3N1EsR99zq7naBA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxHjFK5nV5xbKW/lxiRiWx9TOeXAqKjbXgxchtpWuhxtI0hzYIe
	U9lSDrje9aG0NPu3pmzhBqYGYovQsrPUssdTIwcg5ys50PjnAXDUDyCy
X-Gm-Gg: ASbGncv4etEN4k9NLrQbaU6v3nISBIG9+8M6M67GTHFq1NWAAewrepcBBJIzbw3p1XD
	PEkOQ6krdNJUDz2TVSoehTAiQhF8nTz8heVeVBCckHA2+5RkhA4Lx0AkjG+rHp16GwnAvJW4cKk
	1PCyDZ/5xMMk5kY20kXbk+l4cLRZt7XCxR3+/qSOfDRHu18iZwljvmmjpB2PpD/4vQeGg9YKGp/
	un2KawgQh7l0nB+Vuyv8ZeEWtmsgE4ogVO+yazO/jxePUog7eYtGLAv9I4fynvc6yn32Fr2rDWZ
	HPzzLtUhhYNkd/aQjCpcalHsC/sQivkEKA9fbkxthB17SUU29iYrnq/BRQtOrV69aKXUogSBoz2
	9YauGbtiuuofJsvyQ+goMztDCGYkFZVQdnWuZpk/RtRy7n3ukH1cRP+dRvOSw9HPpig==
X-Google-Smtp-Source: AGHT+IH97JkKWq6pRYrkp4vvzMtmr+mAWYEE+sx6Tl0wnrhQDndiVYomTi6Q/s8WM6+VsXjBNCVvUQ==
X-Received: by 2002:a17:90b:38cc:b0:329:e2b1:def3 with SMTP id 98e67ed59e1d1-33b51168d95mr31720007a91.10.1760418796529;
        Mon, 13 Oct 2025 22:13:16 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.51])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678ddce4b6sm10902353a12.13.2025.10.13.22.13.11
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 13 Oct 2025 22:13:16 -0700 (PDT)
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
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Tue, 14 Oct 2025 13:12:24 +0800
Message-ID: <20251014051226.64255-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014051226.64255-1-jjm2473@gmail.com>
References: <20251014051226.64255-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_221317_575288_D61A4791 
X-CRM114-Status: UNSURE (   8.16  )
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
