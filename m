Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39709C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 09:31:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5463E61132
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 09:31:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5463E61132
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TzPrQWT9l1In0wqV20eLvFBqR8w7lZPBwsw3RwkbY48=; b=Wng1CK2THZdObqp0FxmBbADIcf
	x5iZgs+WuZG0mdLm6PEoIiIMAAtE8cWzJemntIDWNcwf19gaiO0l7Vt8S0VqnL3G8F5Tmwf5Yr3uQ
	HRULRFZbThT4C77eMuMly9jK9vzFFc2ZaY0KPQn614R37TX+j5qj8H6tg5VKiIx27TXIgl4CqgQmD
	D/vo61XM4l2W8CNCurkwcxolLpGZjDv+X2AQeK8p4qagNU9IBhZBsvqe4EfNtiGpADocq2XCcz93q
	idi3t+fYrzr+IoZpMVfjC5gvobSi5+Sv/MJ52G6bEdpfdJWEUuKMPtJIv7hbWb28nXqCghEjBgPnS
	c8CvcZBg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaLX-003ofd-Tk; Thu, 06 May 2021 09:31:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaKW-003o8T-3m; Thu, 06 May 2021 09:30:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=jNmgoDpIAghNn3BnTNkDEnQ9+nEoZ/qyk+RO/b8i32Y=; b=1fl4avjPOaGL5fDbmlFY36ibgB
 1nzUVf4Dznk4HUYHe7XAXMwBTeKJ4qGhTFml5f6e39M4jTyrDuItycIijMvLDl0NWp0OqNWPGQlFJ
 RSZQFuZZKQBTNiriPs98x4lpnLRSCJQtXq923npUrBJYMKvcqc3apH6W3UL87B+z4txwDK1xltni9
 PEFcTlTMzirHKkO5EATI4/e/uNxJNC0VROJ7DY0WyaFLSYGveEMN9P6XHCOsKo3cgSHIKeyxxVQ/P
 GtGnmhLWMNGh59FQg8zVIwN/170a/DhQHjzNm9y4SLDv0GbTu6YPNrvKPHHtvHKWVaEE3Wg8fURuh
 3rXvauaA==;
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaKT-005uMA-LK; Thu, 06 May 2021 09:29:58 +0000
Received: by mail-wr1-x436.google.com with SMTP id d11so4830604wrw.8;
 Thu, 06 May 2021 02:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jNmgoDpIAghNn3BnTNkDEnQ9+nEoZ/qyk+RO/b8i32Y=;
 b=XRhWl492jQpC8ztR9K/xdJ/kLA1bcHs/VmX4tFlPbocTcg088sm+c0RAzyGu/2X0vV
 YQFyRFDy21EG7IVWa0XWddIUe0HHasSTWU5UQHfOD4oG5JjsHVIb53mLrQb3UFHxq8EF
 6HVd2ElkEypGxP95nnvD6ZQj3spgJ4IWQN96TCIdQddtE4gIbuXXLDEA8IiBdTSLaDR6
 gRrwnLyZezZI/i5uLtsEUQxvox03KC9jPan/2z30yR85AJFEscJ0SFqH36LiIh8KbuIS
 T0MISJkr+R+toKNyTgO9HmnyZMRTPTFLGJ1Gq+LxIK8Adn08jtKLd4Spai3a/qGbjtYK
 cOHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jNmgoDpIAghNn3BnTNkDEnQ9+nEoZ/qyk+RO/b8i32Y=;
 b=V74d0n7YRmupjzHWeqfcs8xqWov4DSUTGHbtRKIHbuXonhkTZxpFwkaxOXWMWRj/y8
 zgvfymQaj8E4mt49Mb1LB/EbYpGCTGt0EGgiQLJZmH0T4Z9hS2w61TPgUceXneWVEpgU
 YNnYm92qJ/3svNbEIGpbqvrCoxnX4JfT63X00jLwTLGTl8YJ+tKkhooHc4jQT2z8eETm
 Xm6a7ZANDteeswdfylNbSRmz3kvODRc5Nf6gnBIedBYioUOwcicyKa3aVXQSYNx3yjYS
 SVTVOVRI4jZbM+cMyhrV/vQRosuuOq6ORsFJgo6esYv//d8YSfAnwOKCmDQNrbTyX/7Y
 OqRA==
X-Gm-Message-State: AOAM532q5O3KExlM0RgEUg5ZBdvgZ2Pi6BLrMLwjXuQdILbhzgWCSNQF
 YKPsPhReM8dadUcoAWDoIYPTwbEUm98=
X-Google-Smtp-Source: ABdhPJx1eaBN19Q7fZ+VHgblI39HCWIKzxs0gNie3Nj96TsdIPOKUtTrFxheE96Rd3xV40P9VosDgQ==
X-Received: by 2002:a05:6000:1866:: with SMTP id
 d6mr3956776wri.141.1620293395545; 
 Thu, 06 May 2021 02:29:55 -0700 (PDT)
Received: from morpheus.home.roving-it.com
 (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
 by smtp.googlemail.com with ESMTPSA id i3sm3747434wrb.46.2021.05.06.02.29.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 02:29:54 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] drm/rockchip: cdn-dp-core: add MODULE_FIRMWARE macro
Date: Thu,  6 May 2021 10:29:51 +0100
Message-Id: <20210506092951.515813-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022957_729485_ADB7829A 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The CDP DP component of the rockchip GPU driver requires firmware
so define MODULE_FIRMWARE for rockchip/dptx.bin so the details
are available in the module info.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index a4a45daf93f2..661f26a458da 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -42,6 +42,7 @@
 #define CDN_FW_TIMEOUT_MS	(64 * 1000)
 #define CDN_DPCD_TIMEOUT_MS	5000
 #define CDN_DP_FIRMWARE		"rockchip/dptx.bin"
+MODULE_FIRMWARE(CDN_DP_FIRMWARE);
 
 struct cdn_dp_data {
 	u8 max_phy;
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
