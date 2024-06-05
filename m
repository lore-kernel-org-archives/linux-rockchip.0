Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E9D1C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 17:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3F2u5gzgVWSLMMw8GCPw6OQB0phwQxre/tMcBKe4QE=; b=2QP69Vlwam70UW
	e3gtETu+R2DQNxZpbYGApVEsamaFkqsWV2cSLFxHa7lf2a07F7w1yw6fwZRzNcdVwEpU8vdWVf1Cx
	fy5gJurzCbd4Gdr0tnOhGSlVDX6NNXzWIQgLF1x1ee9a/B9Rdq+2wg9UnSXp+yWywjO+3snOa+jwH
	sD5buOvf66uyn1ZkYMhZuD/ktOZNU6qYK89tZldxfYC+8dXSQjfO34r4E0q5p73ODrBNniXY2MZbR
	f0OoE7XK/Je/0R4/Ry8v5cNqrifRZ68PA79KHHAZPmSaQwtKjt5o2ze2IiqdBVwahyJFAtV2sPo7l
	F9rWvEfOrY7m6zFlGDgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuKs-00000006xtD-3N7P;
	Wed, 05 Jun 2024 17:22:06 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuKn-00000006xqj-3Dfp;
	Wed, 05 Jun 2024 17:22:03 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-57a20c600a7so45104a12.3;
        Wed, 05 Jun 2024 10:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717608117; x=1718212917; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6uLyMpvLQ2nfxB85Lbnpwtsih80slOvRMVa14hvwXO8=;
        b=ksnh48Hp5lxfyOXJypaltDxRq3wnJUeZYjNEPVnQ9SgNjRW7oAlU04nqPrjoZJter+
         PWSpKIoPY0f1hTuK7zdE9yE3Ukt58c7AZDquTb/uH/YSAcQGx+uYRtOaa13mNd+OnsCq
         4H0QJJky5abqME3yr2NhsFkyqVfPktPPVA5c8gm+Jp0vVKaCMIv+Krj15wP2P+5MrXu4
         w3OQ/YDjsHOYD7IK63NcwIhppobLY60i7vxWXJIOodx31QSAEvFLnFCBP2PjfqNGr8ul
         zZrYloW1H8QJOCK6LHkwNgm6+1dDs9/moTkYkxTA7co8wR1GlTenzeG+IuMXCzgsTeWP
         lN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717608117; x=1718212917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6uLyMpvLQ2nfxB85Lbnpwtsih80slOvRMVa14hvwXO8=;
        b=E14/sVSuvkc/bgTHfLF8bMBMc4O0+zCh9p+2N/1sn/ltwM+H4Ed+s+GzWQuLdP978J
         CZv12HgLBZg7+A16zqWCdKhraLnFVbX5FS4JuLMWzJUJFH4HJ1pdoPjK7aFUUge1Hz5c
         Z+LcQ63XN9IpI2kTJ0H7dh3YQuhDKUP9meUMmMd94IF/EIEtkQHf73uRUvXHG4QWU2gp
         V8QbQy6O3I5s6iBcfvBfx8+XSDTozaSnNHRnZusomtbeyQ3WMbm7HYYEeG2g9LD0Djgk
         4UjB/ETnotoc5wH1EuryBSQjD0YkQ77syh0C4xUj2ASU9lCy9hUYm/dSD7A7UGE5do6U
         R1gQ==
X-Forwarded-Encrypted: i=1; AJvYcCWafX2AvFDvWjoQH0HM+GL0W2crZMRstA8PIotbfWnOGGYZh34aqkHAFWI5y/XmIK2eLmd7BICccuyVQSlJ5G4Bo+gXqsAFVgrskaw4QyB1QKdFIzD3CRKEhl4FwPheLvVXE6QOEb3KRCTW06Lho2GlgEqixah4Avc=
X-Gm-Message-State: AOJu0YxJxxmbME+RDrRbZF0ncPUsLjLz5ZK4SDtvZllcXhaeQbc5PeVn
	elnyzc9szEMMHnsmQrzu85I5vl/Vn4+gQdd6IT7mzZeKyhOhzh0=
X-Google-Smtp-Source: AGHT+IFkm6pEpa9c2BG9XpvddS6f3Lcy8uCRCwbthZdPaQvv53wnHkEA6vJp2EvgKZQRyYTeaPcaKQ==
X-Received: by 2002:a50:aa93:0:b0:57a:212a:a21b with SMTP id 4fb4d7f45d1cf-57a8b68797fmr2102682a12.7.1717608116812;
        Wed, 05 Jun 2024 10:21:56 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:34f:df25:1c86:f2e7])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d594sm9666663a12.69.2024.06.05.10.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 10:21:56 -0700 (PDT)
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
Subject: [PATCH 1/3] dt-bindings: clock: rk3128: Add HCLK_SFC
Date: Wed,  5 Jun 2024 19:21:52 +0200
Message-ID: <20240605172154.193047-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605172154.193047-1-knaerzche@gmail.com>
References: <20240605172154.193047-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_102201_828175_79765E0C 
X-CRM114-Status: GOOD (  10.71  )
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
NB: I've added the new id at the top of existing HCLK's, since adding it at
the bottom would change CLK_NR_CLKS and therefore the ABI and there is
plenty of "free" ids between PCLK_MIPIPHY and HCLK_SPDIF.

 include/dt-bindings/clock/rk3128-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 1be455ba4985..a6bd7f13d7f8 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -119,6 +119,7 @@
 #define PCLK_MIPIPHY		370
 
 /* hclk gates */
+#define HCLK_SFC		439
 #define HCLK_SPDIF		440
 #define HCLK_GPS		441
 #define HCLK_USBHOST		442
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
