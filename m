Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CCDDCA1001
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 11:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssDjgA18BAHHmKeN6Jgmx6xANDpjgTkq6c2TsY/Acks=; b=bKdYrbcy8pG2iP
	rUQ4BmY1hzOYzWDlFZshf46HCGMCt6KZWE5e4X//anfY8vZltedSfANVsA8CuIQgW15i1b4CRxA1F
	kOhtGDa7iBiAWgjbmW0vAnAgvrhZzc7wosGUORmglLFhJdgZFpTisA+l2AS2oKtOQ+hOLlqiPr44m
	JetlZzUDuOSCsNJVUV9abS1KMGS09j1ncLY2rQVvLe8EaqHg92lrID1ew2WIsjYQ6wK2zGl0fSoIF
	SkS8ua7UJRMn5Q2HKOTs55E0VGx8d7Zbe+LHBZ8kd+O2LBGhZb8ghkq/m9HKZ6ZQ2+AgeNNEF3lDU
	p/G78d3/Xxs2lE2j8+Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usfvD-0000000A5PJ-0jvb;
	Sun, 31 Aug 2025 11:08:31 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usfjj-0000000A4P5-2naX;
	Sun, 31 Aug 2025 10:56:40 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-b4f1ee2e250so372437a12.2;
        Sun, 31 Aug 2025 03:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756637799; x=1757242599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nqcV21+igz41P6HIZwf6dMMWAMpgmjOc14zoq/ll8jg=;
        b=SrrC0Vj1g3UZqbEbEYqTs/JSSWm+x8A6wvnKB0KDqivK6JtXdyax41oLzZekcUhbuS
         Zhm6zM2U8wuYXOnQVKv5pQfKJfTzJ/sU4jfYulOZB76iKaym1vMJxlJ1O3xfQIJLsayz
         y9D4Do4AN+cZ1Cwk0qNv6IXVzemuQehCT7p0M9enadi1Mxy5ETT0hj1xadkjHzw/wP+l
         bOZUPNYPzKAoluxtMvEDzGBrS9RDvKF2p54cPAeSN5OgXW11T+lOi7TDtVZYbKUVseeC
         tH8Em138G3VSLChKJ+U+kWWjleFb/IRmNw36Kwtdz3mcB28xdwI4WO8d05VEXJ3t7a6c
         j32Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756637799; x=1757242599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nqcV21+igz41P6HIZwf6dMMWAMpgmjOc14zoq/ll8jg=;
        b=DxBCqSMPI/3+z3smFDFhDp6eOs9yPy0tYfp13dtf5crElW1bjgqlQQldKERnEUtObQ
         63LmaF6Ai2mOykfBIusYoahEU7xh1URSwJ1Ds4inCCXdd5na5AsWDCEwByMuyXJCu03g
         vJWi1pQ2CxPwDTy0VwY6J+hbyIEzjRQOi/GOIps6ylD1unXEH3RjKstFB4KEJEK3KjNg
         Z6/GcV53xNtvdwFhumZPbK5+6hvVzzPCxIWgDFPrGNWMXigEtZaetx3eWn8arN2yTtwH
         84OwH+4bppeD/cHYT78VYWzmWTa5KDgJqIQ6xq4EPr9QT44cdQFNrOrRePZTIiM+jIDg
         TA9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV7L5kVXpzZVZ7h95F28g5K4BpY3R9YDHfRa3tO4viTKWI6pkLfY4G6+zLFlqZO6PBupyq2wu2qR7bapVx0axxC@lists.infradead.org, AJvYcCXtKvsTyw6Qt+D3SDbWGOHxXgqQURozDJgIMwKQ28/PKRCSicUZuF2i6sZZzPyH7pZSUSkMOfObkXwPBIsvTQ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPwoCBCw5W0pOiv8lmB3BO6/298gqYfRqudkJUOI/cztH2Em7i
	FtYYt3Ji621sG8hFBDqHMEI7UUAtyKXpHpAQxNhD1Ujk/w8UUBJapo5k
X-Gm-Gg: ASbGncsf0Bxw6qs9KbAuhExHlWbdK5RO36fqkQD68zBRzFqIYkZt63K8CCnvWu2DuzR
	GRyKFiW7+0exURzilnJJXPgl11JHNNom0GuUmyVtl9qdXbQBM1lqpqCjJBTLjD95cH1Zr/zsqRM
	IXdgN1EvjJSbPC8fhimn0Y84BegpkANUDd5a/DfZCMNQfbZFl23tSwabVgj/U+QSnpp7uuVv07f
	b/e0tmKir1ZTAYMIJWf4RgRFZyBtAm/gkRh7fIOWnYSKn6NbTLUxZaafvMpGdgcYPNneFGu65IM
	rjXF+Z9UOkybp1prxXL16KppjvsGfQwdTKjy4ZODI2v4F/H7Z1GWlzjGiduGTHNStilX8zLAfGB
	eOzzXu/xAX5MTB+Mdjzw3HmgqcTof6VyCw1lgd9X7tjhjCFerNQ==
X-Google-Smtp-Source: AGHT+IFFKuNZ2nRKgu4uZBy6VGYddufFjhDSnyU9JLi9zhCQ9lrm9bJvNJ8KW/8SG2HY6adk13F62w==
X-Received: by 2002:a17:902:f78f:b0:249:1156:31f9 with SMTP id d9443c01a7336-249448e52c0mr57217875ad.21.1756637798805;
        Sun, 31 Aug 2025 03:56:38 -0700 (PDT)
Received: from localhost.localdomain ([240e:478:1c78:352d:7cf7:15e8:f0c:9846])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd3669d76sm6638260a12.49.2025.08.31.03.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 03:56:38 -0700 (PDT)
From: WeiHao Li <cn.liweihao@gmail.com>
To: heiko@sntech.de,
	robh@kernel.org
Cc: hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	WeiHao Li <cn.liweihao@gmail.com>
Subject: [PATCH v1 2/7] drm/rockchip: vop: add lut_size for RK3368 vop_data
Date: Sun, 31 Aug 2025 18:48:50 +0800
Message-ID: <20250831104855.45883-3-cn.liweihao@gmail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250831104855.45883-1-cn.liweihao@gmail.com>
References: <20250831104855.45883-1-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_035639_702550_423A2E68 
X-CRM114-Status: UNSURE (   9.98  )
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

VOP driver need a correct lut_size to work normally.

Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index d1f788763..219f8c2fa 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -880,6 +880,7 @@ static const struct vop_data rk3368_vop = {
 	.win = rk3368_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3368_vop_win_data),
 	.max_output = { 4096, 2160 },
+	.lut_size = 1024,
 };
 
 static const struct vop_intr rk3366_vop_intr = {
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
