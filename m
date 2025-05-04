Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19247C369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 10:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rukdUMhuRvN4xlmEBPkzSxwH/9Xkjpi00rkMHBEq7M4=; b=i336GFpfSvXHuX
	Z9snwTq4jP10ARxSbvDbjUt7QiOJ+jQCZz6zwNOi1AbEeNFC3B7AFP0laX8it926ch1mQhLmOWoWP
	GXrkRS0Qb5pX1yLOKvqDLf3jU52EJlXVD63qI728SbVUuZHf8tttTBRYXqHULlyYVkzvmh0Mn5dkh
	equjFoZKmHhrCHi6oRL1I7ZTp5xcWBE8t1cUYQy4q7YC+GlAWEBLkQ+sjzkjJfhiRXYx9Lh5wnkwV
	7M7leGrnedj6Zzwg3IOtoAVdn3ees+PzjpNHUyjZWmAPfMmnw8Wc5lpEWwcNZMcIPOYVlCyDEN4Ma
	pqCaUSB7bOWmYVPFgDzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBWac-00000005Ame-21zd;
	Sun, 04 May 2025 10:28:54 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBWWs-00000005ALX-0sfe;
	Sun, 04 May 2025 10:25:03 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-7cad57f88eeso134264985a.2;
        Sun, 04 May 2025 03:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746354301; x=1746959101; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hIL4aNRUdWRX+MJw2hpcNbVT2cq828UqZbzjcrK230s=;
        b=FjSQKZ/UIkAc5wtMIXmk3sjCbE7cFhbZlMY4iVd85RWlq9DAVUywUXE5UCpeZIXwlm
         HZMaghSZw2dTyP6oCsSMO72Pjwxhst4fMnNxcv42FZFTnicDQeOkXVt4euq/NQ5t0aLw
         9LnKev6bZQ2cWmERQpcO80i9oLYmdOz5Ef4x8LdEmdZyw//ynfCqaYvfpBL8o3kFIMFj
         dlAfRyxjRcP2zDffvdFeL8RzU4/6cwkUerbL7yInJZPm343blHQIl85hRM0PJMsev5Xn
         xJBGgdL6/BRqOvj5wiyS+l4/9pqtpBiDmcCM7Fimsp7ca/nMlwtOj1ErjLEfL+OAAYQD
         5cEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746354301; x=1746959101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hIL4aNRUdWRX+MJw2hpcNbVT2cq828UqZbzjcrK230s=;
        b=jN7qqEm29r7yRL2LBu/TwKFxgnwR72rQjd4l9QPz3DzZlrPSukQCqq2rXpnw7P5ofu
         vykDiR7R21SEQMRnSBivguWYDL4T6NiAtlBXxbHMrQUDIbwGueLfjtKR7B0bzcpwycOw
         4HjvWqf7TRcnyoe0r4U006JKZF+HFRLE/GUxLOOO9r98tGmouUMB2obH0kHdFYHJarMC
         +wSa2d+hRjjOywmIoiJU/L4Otwn/AZ4hRktVLFCxW2QnSgGGcHZQKN2TVb/zqWWYm5lZ
         vOMMNfZgXWiIQm0aIYQgtbVqdWFpO4mHOxfZPSml+fbHrRccSyNb8gImZNG40ToYBXYo
         WraQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/V65CIAooZfK+lYuNUzobF39c/+FrR57AbhgXppT+FSdsscXF/LGDVwXlNyBQ/0KNS3KaOsoLcgbmvaGaesQ=@lists.infradead.org, AJvYcCWZ9yzqG27i2qrlOYKE7FgWR4XBccP0HKeOYs+7Zcn3l5TLdFTHZtC6ejI1QIAkuTghuNlPDI6h/UCPRyZwyt8p@lists.infradead.org
X-Gm-Message-State: AOJu0YxTxfSZ8OFuIfnXUBhDQQG0U7k2X8/M6aLCIhOAq1JIs+E2Q5sf
	NLque4L3/iALsbH+mvbO8pM9MPdciqqBkmtMxstQq1ZacCeXTNr8mJ+xcuQ9rIs=
X-Gm-Gg: ASbGncsbw3Ct4pAaRXot6riFa/nxKfrrL9Hi2dytbC7dPky8POQ5FPR0pG5Q+gqElJl
	tOPVg/C7LAHnaSBZuOVKLwtTeFPkkewrKSXXPKnnp0n6ffAZPpu+PdJLtb/xtVLuFnGzdemZ0cr
	Gv9SB53IrZVsXQhG4HHoIhedYTVAse2Chr0NMo0XhhOd6gOMZM5XhmX6BrqvjtfowKBKsKJqyO2
	fXOl9fZJu4ZSp/BZdyhAxgWprPgtyKazItD0AOfYY+cLuXof1sEFBx17Pt11NMk8beG0zsBHGr2
	3og8wqShy2RguHhkvZ3ANzugTP2jIWCZGyhw+LLptVJMoubmvT0R
X-Google-Smtp-Source: AGHT+IG1pLSmqs1TxI/sdiS6KwXQllq1uirYId4wzEbTV+gWXE5VbZZ64wBC5wE4MWD8ZRKMeuJDug==
X-Received: by 2002:a05:620a:400c:b0:7c5:4278:d151 with SMTP id af79cd13be357-7cae3aeaaa7mr454274885a.43.1746354301080;
        Sun, 04 May 2025 03:25:01 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad23c48d6sm429222285a.32.2025.05.04.03.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 03:25:00 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
Date: Sun,  4 May 2025 06:24:45 -0400
Message-Id: <20250504102447.153551-2-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250504102447.153551-1-inindev@gmail.com>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_032502_242623_B83CE0A3 
X-CRM114-Status: UNSURE (   8.71  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, detlev.casanova@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
produces development boards like the Luckfox Omni3576.

Signed-off-by: John Clark <inindev@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 86f6a19b28ae..9391e0c31bb8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -892,6 +892,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^lxa,.*":
     description: Linux Automation GmbH
+  "^luckfox,.*":
+    description: Shenzhen Luckfox Technology Co., Ltd.
   "^m5stack,.*":
     description: M5Stack
   "^macnica,.*":
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
