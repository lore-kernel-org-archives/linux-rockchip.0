Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD7B2C61D97
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cPnHoPpgAoL+n6LUXZNmie3x1oaK5Ko4Bsus0Eqg1Mo=; b=YniHb3QPFZVVOI
	PHrVtTeAg3xL1YSI2ga3rZssbMF3PoVkntkmOdhxL3xb9K04z2byIHtlV6v4JMkILVRnlcbhUeXCc
	NEtNfKvH7npsr+NJrSmI9Emk8/voaD4YI2765owl+jig5kbH8Y6FMWnX6oZjCGtTQucsTsVZwynW6
	W8tMkvx05eJL3wevi3H8oYGjUkccnAUUbZ3kX2JQ6GWvf8ULmA5sHe4AFLrzvg4SH27pdi3Xh8dQM
	Qqvv4+J1c/xfaxoLM6N7dsoZMuYc/QQCsjp3kTHYBakgmLQ5fTnLDbNBrJ5nwt3IBSqxH8S+YVoFi
	HQULtfgrwdqE6qpV0wkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM8iu-001ZmL-GJ; Sun, 29 Jan 2023 14:32:00 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM8ir-001Zkb-4H
	for linux-rockchip@lists.infradead.org; Sun, 29 Jan 2023 14:31:58 +0000
Received: by mail-ej1-x62e.google.com with SMTP id ud5so25257035ejc.4
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Jan 2023 06:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8MIKp1sLjt2KlpkgBmQpn1698eVN4BwncnTW01kcrf4=;
        b=PtKJDOJ9uQXcFJ9z0ojEz1wUdi1og2nCFbIvZx7BnyohI7+nulSalxMeNCwRRwsOuh
         nYMAwS6TeZMSVFyzxB1uVp2+jHYRvpL16uQmQyc6EH+12yVCVQ7bEDyAAl4mhGyNeDK8
         ZAvcgtgX6pvI6UflJdS0crp/jyLYDaDk5Ikvl/tESeTXf6oQxnbZaYQP6U0CHK6WpQa3
         CPrkC7kMdzXDL7MJkftyajulWlxyxu5+RAOhd5bXKHDVH0S5JNcThf6UX0KPSOn+KBSq
         MxoleBC5Xo9t18skRMV64yO92kpKGbsNqWYPVDRhM/5/9xkfsJ7GDYR63rHOEjeByozT
         AC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8MIKp1sLjt2KlpkgBmQpn1698eVN4BwncnTW01kcrf4=;
        b=Ud9bGeyjJn9JJEMbiqxYaVLoyrq4/TSrs+O84vJwSWMvWPPiKNlgFNHr/0NragEvWi
         tak6DOfe19jUnsswtVE+HS4AeR1lhVDhHg/Y504W8UG/YQGnFuBwFpOEyCzxnxNKhERQ
         yRPqu9TG0EZ5uVWb7frgItu/ELWw9cGL0h/Zi5iNC0PTrzHF4RgXHTiDLK7h/aZFdPRr
         ToS88ay1vvG1FBhgCWH4h8+rDUtoTDdM2571SsWqHYtVv8FJ9PX8CPF5LfRQJ7Wz1KXr
         ZTb3X9UcQ2REpFmMv/R/6NQ62/QSDaKAlaVzmZAJd/ZBk1tIL3KIzt6YOoAyhUTnfPAf
         33Hg==
X-Gm-Message-State: AO0yUKW3i7yZO09b5juZ64pm6aUlrylgJj8P4sITov6kYOBWm3oyyER5
	V/7Gh2PMrjyHetLZ9unpnQW327o5Tjg=
X-Google-Smtp-Source: AK7set9El9Qw9ZNnDW9cHlXT8z0VcwKEt6G4063gTHLbzByjD78crgBS/dqIqQO9eKwbqicdnEtoIg==
X-Received: by 2002:a17:906:6c87:b0:87b:59d9:5a03 with SMTP id s7-20020a1709066c8700b0087b59d95a03mr9010329ejr.36.1675002714570;
        Sun, 29 Jan 2023 06:31:54 -0800 (PST)
Received: from localhost.localdomain (83.6.123.74.ipv4.supernova.orange.pl. [83.6.123.74])
        by smtp.gmail.com with ESMTPSA id jr23-20020a170906515700b0086f4b8f9e42sm5410128ejc.65.2023.01.29.06.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jan 2023 06:31:54 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH 0/3] Add internal display support to Odroid Go Super
Date: Sun, 29 Jan 2023 15:31:38 +0100
Message-Id: <20230129143141.173413-1-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_063157_210601_688883A3 
X-CRM114-Status: UNSURE (   7.59  )
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

This patch series introduces internal display to Odroid Go Super, which
shares panel with Odroid Go Ultra and several clone devices.

Maya Matuszczyk (3):
  dt-bindings: display: panel: sitronix,st7701: Add Elida KD50T048A
    Panel
  drm: panel: Add Elida KD50T048A to Sitronix ST7701 driver
  arm64: dts: rockchip: Add display support to Odroid Go Super

 .../display/panel/sitronix,st7701.yaml        |   1 +
 .../boot/dts/rockchip/rk3326-odroid-go3.dts   |   4 +-
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 125 ++++++++++++++++++
 3 files changed, 129 insertions(+), 1 deletion(-)

-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
