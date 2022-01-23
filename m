Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5946CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 13:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pCsfcF15nHYAeClQDCNCcsLTiyokEPwWoY/nl/ZJURM=; b=LBHUJ1MMe8qZwe
	w/H+bNGg/Via0PS7t+T0lIwgoj7VrR4c7lpvEGXfnV1LeKasduqgR5h2NQR8iBsZoy4JVh+PUx9oS
	1nzFAXm6m6zmljKJuvalvHUxwYo6rRCV5wKaJUWK+x4tgYPg4OTnC6Wcp4iPREl5jbrG38SW/cv90
	i1POURFV1hszDXiqWmDeR2uSrLb9PgKHsu1Q6KpLgGCGREDRgF4GKoN3IeojI+0cc45X0hxrpSDjd
	gf62Kqumaa/6BdxOvRKjuEOJx5yxzyXwuhHiRm0ZD9MXgF1wbtTO/z9Mjel7+yYiVuQDlwyjS14SM
	38/mb6ir4uxvdSQVqZzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBdHM-000uLT-Ji; Sun, 23 Jan 2022 13:51:36 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBdH9-000uHU-8y; Sun, 23 Jan 2022 13:51:25 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout2.routing.net (Postfix) with ESMTP id 23EC65FCA4;
 Sun, 23 Jan 2022 13:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1642945881;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=RELpic6Ktw2PgGIqUzW23e7A0BzsaqNGBjhG7mrfVSY=;
 b=whIfr0b1wwo9LTMEA1MhHpgGIlYasU678LDIiJ2hw+2uOVfDHmlRIs1EEh+8ZKJrimoDjt
 /YDWcghORi6SSYRUmazSa8ZA240qPHv3EIFYTa1uqaQkd9jAvEhyHyvwMja3lL4iJNvzkF
 W65p6xWXv/gF1HcZHkUpuSqlimXkvwU=
Received: from localhost.localdomain (fttx-pool-80.245.79.232.bambit.de
 [80.245.79.232])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 51D42400CA;
 Sun, 23 Jan 2022 13:51:20 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Add BananaPi R2 Pro board
Date: Sun, 23 Jan 2022 14:51:14 +0100
Message-Id: <20220123135116.136846-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 58d93621-8614-48a2-a3fd-b693ef9056f8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_055123_545875_66FD6AD0 
X-CRM114-Status: UNSURE (   8.77  )
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

From: Frank Wunderlich <frank-w@public-files.de>

This Series adds RK3568 based Bananapi R2 Board.

changes in v2:
- rebase on 5.17-rc1
- dropped patch for fixing dtbs_check (sent separately)
- verified pins on gpio-header (con2) and changed pinctrl where needed
- changed led part

Frank Wunderlich (2):
  dt-bindings: rockchip: Add BananaPi R2 Pro Board
  arm64: dts: rockchip: Add Bananapi R2 Pro

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 461 ++++++++++++++++++
 3 files changed, 467 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
