Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 806D8CA101F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 21:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FsbMAaxirrBybOE5WYSJxdJEOt0OJAdzJ58h4mZSPOk=; b=BEJV38IzEYIRUq
	snyCi49AgicZJwsqkQyzcQNyMpnOJswkGA7Sqp/hEMIZlhiiz/R+s6VjNE10Z2gM2eCis6/Y4SQXO
	D0JNWqdR98kSdR7xl32kvje96x+V5Km7e/97X0oG1ZBOi04JUSQcJ11Zy3QQR17rXTtJMOYvNLj8t
	GTT6wX9nr4b+Y/vkTMYEgquRNOIzdVp348bmFS73iNObRG+91AMol9wBiYvNcIKljY0ArJt9Sze15
	cSuAJ+0sVrGujw5vqLvGlVsKGhxTjiB9DA+b0hOZ7mGgzdzVFk8nEBlwCr4jquzX1don12cs2087M
	WL0HdAp544rukZB5pVQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSZ8-0000000GucA-2Gtg;
	Wed, 10 Sep 2025 21:41:22 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSZ6-0000000Gub3-1EaI
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 21:41:21 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-62bec18abe6so39678a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 14:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757540478; x=1758145278; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SgBJun68GT4t+Q+ZqI1trDwNO9m1ngITxMaI8EXqUuo=;
        b=DbCRXmQxgvgGbZ3jYp5upHv/xMCYE2FR33y4jshW9RcLe2duoSEgi2XHsb0j+jvHLT
         AUUDB3j3GylrPeh6kKIHi6DrYJMiSepoCvtTVxttXL/Rw99MzE2PZkQrTvJpmaFdAXMZ
         eeXUsMObT3O09xqZ1wNUyDycrpMB8/upIKt90LgycEpGCeaP5HM4mVTgCWHCbMF7AqSk
         zP9eKsXChFAJu9ADiAtFWTRBmq37aqo7ofqmQYQxHIDBxSkSGX6vDAQk2Xw5rMsIQczQ
         MtJv6j9LXMUVUmCKcVrxCOudUNAPN94i06w4ZdarkTOVR8vs0xwpQjaWFOOCc3vOrmTC
         +UdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757540478; x=1758145278;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SgBJun68GT4t+Q+ZqI1trDwNO9m1ngITxMaI8EXqUuo=;
        b=AswzSL5iz3XMt8gGQA6g7t9GnQrMcedUlCWPftJcxdNm42Yl2ODANCcKn7hSeR+ynS
         hWYndWWZIcczRvGaLQIacLUa4N6fAPclAJcGYgfEnfsxEQ8CzE+Qy4rgAV3fT+V1ZeqJ
         ZaFfO39sWlf+0LoCalX4TUMk5XzGLUHyhe1ofcBbggdnsp4lm96VplEm5PHQg49XfJpg
         Vs07/t4QqTfiaaFe1kM80bH6l/nqMg+VpvUJYKEcCgmBw5Y+Rjc4wgBIbQ/q48E9BGRv
         hIVdC+xH6+A6RB6oU9kn5skzxgjwT4uOGdlHS7DCa/rY14TZlURdnkzgbcVA826DGzk9
         MtKw==
X-Gm-Message-State: AOJu0YxTmyYi0iP5lC4RW7yWJbIPEGKqWcEzSgEv+sjJqw3kz0FpCxPj
	GeBM/3rU08voV9Hjev6AgCIYro/yiQkN8LREiuNdEhW9eiTX3UpJAs7ZYUg7BeK9
X-Gm-Gg: ASbGnctqsrXs851zLhiHahblCQx+HhEgd93VuTVq6bqcKdNej1sKyEJW83It0JCn6Bc
	exKgJs3r8GQ84vzUnoitPQHowfT8mQz+MU9pzx0FZKbxdwV8UROBsrUf7iIihXaosxIbciD+KJH
	UtqMP0ZNlQLv8/WfhvnygxvoA8L4HiZswInuj4sZkXkBAeBy3ISQFpqDGiGKya1j02rsQramSt0
	CCgNjl31W1JEVO5dirlBzq/KNxgKJ4+MpKvmJdsbKUMl5UieBzZtr6YX92JskuUawS41h/6Z7nV
	lFnpc86AySNG9HLHASmyNBtvMinKybXebI7wLoXjyRHHy3sEzZ/BVyRnWhID9ZQf+WGH7yF5Zr+
	G7A33Un33lelWNapZyiLvlUm0y3+vsgir8WrdIDjz/d1NkrwjyUI1ipylJQ==
X-Google-Smtp-Source: AGHT+IFTwg4LZE/26YtNSR0mUwe3NkMeWWuPgAjZl3Iklo0r5y+ONEfEkji7nIycu2Doh4G9tZ7DkQ==
X-Received: by 2002:a05:6402:3495:b0:62d:36e0:265f with SMTP id 4fb4d7f45d1cf-62d36e02753mr3803329a12.19.1757540477897;
        Wed, 10 Sep 2025 14:41:17 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62ebfdf211asm51005a12.4.2025.09.10.14.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 14:41:17 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Andrei Leonchikov <andreil499@gmail.com>
Subject: [v2,PATCH 0/5] RK3566 BigtreeTech Pi2 fixes
Date: Wed, 10 Sep 2025 23:41:05 +0200
Message-ID: <20250910214107.2243427-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_144120_341888_A08589CB 
X-CRM114-Status: UNSURE (   6.85  )
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

From: Andrei Leonchikov <andreil499@gmail.com>

Some fixes for a DTS to a valid support all features.
Two fixes affect6 to a normal work, two for supress
a some warnings and one to future use.
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>

 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  |    2 +-
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  |    2 ++
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi  |    1 +
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts   |    9 +++++++++
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi             |  105 +++++++++++++++++++++++++
 2 file changed, 118 insertion(+), 1 deletion(-)

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
