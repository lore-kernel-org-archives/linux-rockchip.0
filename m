Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6186DCD98F2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D9Ir4Eg18SYiI+muOgPEFa0ds7FCGK4yJmdpG3ebsR8=; b=YzBxJDr0ll/P8W
	minGqaZXZlFQwmEmWbVY+YYT6lCTv1cyNTjxg2m0FSPi+n4lQTYkVvtub/0YVrQ/7ACIJGZcqvMLM
	z0cYXQ5PB+UHAPT2xz8gxwE4srDbl5PmY9eKKk52+x5ua3f/xFrieIv/2aA+0rHgE2SIiK5JHBlY/
	KalR5cxDVzsuz1wA5EieYI9IxwPZyppkRjQ8fBfeFkgd/+lBydG/3KlsPhsxdYDmYLZimvuIKVqT+
	YgHIvLGpcHcLfOQoIdReM+fvn5HTZsQY4nFb9hE5oEXkGd94b5NPlo5HTcobq79eIvbHHQk35bLEU
	UcQByL6gcc2ypKS02yjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZv9Q-00000000AkV-13Nv;
	Wed, 17 Jun 2026 18:38:12 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZv9O-00000000Aiq-0FOi
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 18:38:11 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2bf1f074a12so1550305ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jun 2026 11:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781721489; x=1782326289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=dIbRfd7aYU0GeYpTY8y8KadKkzK/q9yUDr+phGEG5vU=;
        b=syhgNCSUeKlbqMYtAGWaG6tMVC394/96/5AssqJGei6ALcWjxx7Nhz/9QefP1CvVLw
         m1VoQUxL3SBfUrQzToNgDB2Z2Afw2ocnkAaGHQ9pvgrccTxi0BWzIfld2vpMaEgopMAr
         p0wtLQgEZVFOoYpaWuuDxu0VdTHztnKRCQAY77RPildt2svlZVsPWUTJzbR7QGHwEY5p
         PLOeu7eFaaaLtlkXirhBto/pROPvUOMm7EhA9X5L7Em1pcZeyvNSqPVfTxJV6IS9mG6c
         5Q2NeDifPpbDZJN6Ui5qNxaWPsKS8TGJVxFkD9O1uFRRd0cyAw3vENAaxCyNnUQnDLec
         4JMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781721489; x=1782326289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dIbRfd7aYU0GeYpTY8y8KadKkzK/q9yUDr+phGEG5vU=;
        b=EtgTn0eP6bgXxhfA3fyUcog0wyDeD2Dbui8lZz56btdVo7D3vz4z+SDoN/to0U/1qg
         UIuv4ZbnoO4A0bxJ+0KVIxWJiE/lxl9RxXJ1wKHcZlBYdoezdOIdkweyQU1p4RXYBy6Y
         lKDjtnBJa8WJsOvRR+E+e5N2k/eEZJaJGrZvWF1evSWdP2WPBP25kWFEvTNdK++3PWJe
         ICHdNRrREWo9o6vL0rbzHwDo9UFyflyLr/wF9K7fRs0axG36ogPcMU9r8RuH9WRFvupD
         vqWT8W0pOCdFGmkW7kcC1fFQL1SQ5TkEfH54c0rQzuUhRjtjHh2x+vuN2bnmVrrMlGuh
         J2Ug==
X-Forwarded-Encrypted: i=1; AFNElJ9Ak0Xu7XHsH3glw8OoJ+kleIdcw6WHhAuLOZgqP5twi9NP9iBbqmrKmlxI06VN30Xh2qRib0USOFwda4K1jg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwlgflaKxVpZV9rtso/HxX5RwLattlFOsqCyqFq0h/Xkh9pXsYj
	Q+wMy5PM1qHhWs3HkVGUKD7xnLdnLZL4zEUVodJ/fk2mDQy8nYK1cDIv
X-Gm-Gg: AfdE7cmKgOz0+2boJgRk+NVqiyCaHNT0CsUUCs93py9BzyvEfRfZmA2WSmiqfioO8tg
	IpV5mbe2A86+tl7kVRNsIVXXi5lyOxG67A+98YHDfhsLQ17jICKoVoh9rREj8vIOXVhesIvLQ3Z
	oCzfsmiIDB3Juaim1qZfXc8koj/RYTInhaRMBrBhMDFn2DHSd0szNud0BBYJ7KAr6hLU9PLHENT
	IEfDA7/tPPEphMu6cnt+tHi+HhbBEcSqJ0fHuYtK4kQYkUPunx9T1LyNE4O6KcZNtZDzYQrzLoT
	t13s+0A5du0lIwMrySrU5x0OUusmpHZneq7P7xRN88c6EIj88P8B/9hy85hNgrCOuYzA9LEpswp
	JgbbVJpX5LkodWSJp1EAyPcNeL8gIo9J9C6aEZS45Fkpkqv4sDKA9ohc0nJDR5o8fcNwXMrKzXZ
	FFGoJuoZm9n150kG1gSXRw8tjUMw4leC7w
X-Received: by 2002:a17:903:b85:b0:2c6:cf7b:d34d with SMTP id d9443c01a7336-2c6cf7bd4fdmr26141485ad.13.1781721489139;
        Wed, 17 Jun 2026 11:38:09 -0700 (PDT)
Received: from haichao.tail057a43.ts.net ([2001:da8:e000:1206:1886:6b7a:3e78:272c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c6e54e8390sm392335ad.71.2026.06.17.11.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 11:38:08 -0700 (PDT)
From: Ruoyu Wang <ruoyuw560@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] nvmem: rockchip-otp: initialize ret in rk3588_otp_read
Date: Thu, 18 Jun 2026 02:38:03 +0800
Message-ID: <20260617183803.1106486-1-ruoyuw560@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_113810_098936_8C6D83DC 
X-CRM114-Status: GOOD (  10.42  )
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

rk3588_otp_read() returns ret after a count-controlled loop. If count is
zero, the loop is skipped and ret is not assigned. Initialize ret to 0
for the empty read path.

Signed-off-by: Ruoyu Wang <ruoyuw560@gmail.com>
---
 drivers/nvmem/rockchip-otp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 0ec78b5e19e7d..50a19b6dc4027 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -242,7 +242,7 @@ static int rk3588_otp_read(void *context, unsigned int offset,
 {
 	struct rockchip_otp *otp = context;
 	u32 *buf = val;
-	int ret;
+	int ret = 0;
 
 	while (count--) {
 		writel((offset++ << RK3588_ADDR_SHIFT) |
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
