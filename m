Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19052CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 06:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAy3PVGMnsDQ/hwO/NrRL9OykkwqjGYJ8XVmXkIhMZk=; b=ybua6z189gxdUq
	kknDzhez7SNsJ5ruhB0dsQ/Oh0jHKA6EDIykLad483OArlYrM7pq6HoUwzI8o9FT1EkC6+kAMlzEE
	3JFfINLcpzO7Gf3wlC8NSH+yclOuDMHQqk7Iu17zW0MjNgT7FIVfZyRn8Gh6WKqTwvL8VQdSABnYI
	X35DM4QlV1FTXlajGUGxOkG4eYgQXuOrvrHArz+t7PW0za+VSvZDsh3RaTaOiulewaOUTCFvsjhZ5
	shATmAItzprZEgXX2GCbgZAXRcvl2yHrfWyIONWXyffZIvsRWwv/pyv8OxKT4filrehl9wRm3G1NI
	i1yFHdQPNj9Or1PPr1yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37pL-00000001Y7y-2Z2L;
	Mon, 29 Sep 2025 06:57:39 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37pI-00000001Y66-32MM
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 06:57:37 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-7811fa91774so1974753b3a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 23:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759129056; x=1759733856; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=gANQJpkxWA85uJhFau8yDyOORKZkFpO60JWwd7tucdx2aCxlsJKkzLeAis7580N/Z4
         g5MU2TgXw1oK66qn7kWKW9Qz2owvp9nRkZS+/xJnXhE3rvOoSe+eM7tMv8g7lKRWpTTT
         8ljWLsDc5qs6n87F6T7lHExoQaK2Ee99CvV5fxFDVj7CsxkFSbDlCXfGiJkj9TL43IbR
         U5TLdZRw5/p7EAFvgMJ8NclY8LO6kzM5u+gO6rOG/qzgdM9RZKYtIfP95E3uOYevkW9b
         RV0Ag5OakuUlaZTTAdMH6Ax2Q5avwIagbUgxrsTvcncSpCtXUd6W55ugXc7Kce+5B6ZQ
         O5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759129056; x=1759733856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=Q+fgH+yBrfWnTa/Hv4+bJmkBEqT/FLQDMvqtsh1f7mWtIAKc5lfWGXDxMP8PAnYq8z
         TnJpQplsT+uOwCxNqmD+f8pdhk4qWnxL5uhD1wlerBEsQZLP4iwoHtPECsk49TA4FXza
         bIF80+TlG9pWKMtqX5GMrniWK2X3G7PtOHIf/S26PIPSh0Ai09Ej2RI/QEF0ydJ2qMGW
         mxq1j+JHHLcCjBXhRKoK85W13ypVoeyXo3Cgj0ZUiNqqbQRcqame8VNWdgwm1LyFC+y1
         AXqSns0APDacmvgj5NK0M54ZsOOpqRAVvLOKOFk4nSroOBNRy2V4Smp8sbv9KG29kZar
         8avw==
X-Forwarded-Encrypted: i=1; AJvYcCW89JGQZW4ooFnO0TpOKjdgeAKk1Ssxckv0lYT/1pBlbDiy+84F9tF2FKdC1a6+XsGUZGvsgGd/+NWS0WiNoQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2KpouT/jmC7Qkt5WnONexSL5KIEckl4UEOf/S1Gi+Lqbv4cAn
	nauXrKi4WJrTxstgB9CWRjiN261gDZs6NC1LvLJ6/2ZYcyTUN2gjTyCW
X-Gm-Gg: ASbGncubzewuwtCAicl+iC8KwpCuXexrp02cbZYnh1eEYfdgHbUlvqBaJtXyJSP+yVh
	3Nhiq0dZ1pDx/QBjSv0gwOrjAWvGx5HyqN6NRyWfMvgu67JtNsnIfSA16L6vvemCEmhKV9AeWhE
	luAPxy432pmyZ3iLHdw9KAn/y2PFNBNXYeUv6TRoviCwwnhCSswGsS8Fl0M4Sf+NWIlFH1SGOuc
	XJP+puM+z1dp620hnMfJEDLF8Ufwg5vifOLN7eZG0w7Kjml2twU6Dyx3zjRk6tA9A9lq9OQhheK
	VkMdgHm4wrixJPo9Zzt33cBbxRdJk4THX58RldjkIib1CyzGso6ZxuEf/AjAvwxvNIfxDnDy0H8
	dWjdgoZNqXLt0Yli5lRjvUu9LsadiJoOvsJnd3USZAZVtXVoupmuBEuwR2b0VaRb6
X-Google-Smtp-Source: AGHT+IH4i8/G2t5oPtUqYoiiGGusyxmzE1tEeQmVVpR1IWJ1EkiDqJkPlsoVlGwgQEV5FUFAV7yu3Q==
X-Received: by 2002:a05:6a21:3397:b0:245:fb85:ef58 with SMTP id adf61e73a8af0-2e7d184ddcdmr19240666637.40.1759129055820;
        Sun, 28 Sep 2025 23:57:35 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.251])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cac77sm10549595a12.17.2025.09.28.23.57.31
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 28 Sep 2025 23:57:35 -0700 (PDT)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Mon, 29 Sep 2025 14:57:12 +0800
Message-ID: <20250929065714.27741-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250929065714.27741-1-jjm2473@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_235736_774752_F53827BF 
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

LinkEase is a company focusing on the research and development of
network equipment and related software and hardware from Shenzhen.

Add vendor prefix for it.

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
