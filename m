Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E529CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 11:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GNhSIZ2jY/NBIwGU9Q/E9KG6gwdGBwN9VzevePeIHdM=; b=20NsdPWawyvaMx
	jG/3/rCX1Z5Ak57YvGqZbwtBkSRNIZ4M4ep6NaNoQfv4pppeyTPHTVJsrxoNdapVCL5657D+LCX/A
	rr46uylnbk+uW/0w/U6VkoG6RUc51AR1B23+N+6AwFnt/c7/FupPmvGxf5hPbjFdebodCgQVgyYge
	J3JtuH2Z5PnSP2YsF/eznVcG+/UmfUAcFXHytSVzmbUCn+Qqun3cS+bJLApTWP/fUSeIR4Yl2A7pf
	USYxOgChbq0e829K4DWfyH5FqHi4BMWdXzUwbyEEKwm7RVUWwjHZT4pC/uDMKHgSY/sewwHZ0o8uc
	VDxi1kM/5GKOZUswsPig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogwq-0000000DOI4-2hbk;
	Wed, 20 Aug 2025 11:25:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog7m-0000000DAwc-3cy7
	for linux-rockchip@bombadil.infradead.org;
	Wed, 20 Aug 2025 10:32:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=L/DY3w/dkX1JEnee89D1ni0qXzrMnWvJW71C4ROFh5o=; b=ULumkeOlQH7u9iV18FtrR93+Tx
	uO2SdgB14gE7yktBs8AWMg0wGr14oROh2z2h2t65f8PzXqkIJ8b3YOxKCbALMfsSSN/iDPbDGNz+6
	qBXUa5DATh27pgq5X5D/6GY7kqVFvRQ+Gvjk2wtfQrQKp83kfzTHvw1vhy68dqioH1JU5UP/I6I+y
	lloI/gK9BQNtpWouTrjUuKQLQtm1Anf3Nqz8JSqY0zt5ojBEkNUkjA84eSNp5K6KosFYvi5gqvhgR
	YomWmYK9iXtg1Z1jk2jG+s2Huqy3mO5w5yJxLnY+1mLZZqhltqd5rxH4ygF3FE9MFKpeUVCEQCPc1
	zUqCIPpQ==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog7j-00000000IMl-1zE1
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 10:32:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1755685960; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OAvv+zFCpb/jM/M2C29e+J2X1pekKnt31HFBRH1I5gYpSYu0oKkTnDOQgeb+OCtgvry1tn53oSeGUwBU2No3oJH113NyXWP8bBSu1+inlx4Al+1M9HgG1kc8X2uTccqCxomlXe2DguVrboiJrYoAXA/huManVE1nu7TXkWu4jpU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755685960; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=L/DY3w/dkX1JEnee89D1ni0qXzrMnWvJW71C4ROFh5o=; 
	b=TsQgr9Wbhsj/oWpPS6Td2/xjWI122Pq4MgNQr+xN7PRnHvoPlhBAKFXU1aOrA86N0C462qrAPoeN9B7oJbcVCgDLLJelDlrrw0kFM1EhfS62QgpNzfyNEbHruysnQEJOLMmSpxVbUGa6HDCp6weCYr3BzSEISeeeUueaIcKwRrE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755685960;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=L/DY3w/dkX1JEnee89D1ni0qXzrMnWvJW71C4ROFh5o=;
	b=JkAjfh70HrHYkkYUzhqeOdM0OOhRk/E0lFcuJpnw841ib36p1ylUrbCiBVmFSwA0
	mMDpwGw/IOR1D4glHoclGINZylSvTLqeQx16KQY5PReb+iAhjfrjtV6EwhvQCfu8Unv
	A2xxiqnMXji9JLcsGXhsabGf5Ll5sm4lnC0NX73M=
Received: by mx.zohomail.com with SMTPS id 1755685957040941.9859599941752;
	Wed, 20 Aug 2025 03:32:37 -0700 (PDT)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 1/2] MAINTAINERS: Update Synopsys HDMI RX driver entry
Date: Wed, 20 Aug 2025 13:30:58 +0300
Message-ID: <20250820103059.342850-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_113255_977702_AFF94070 
X-CRM114-Status: GOOD (  10.19  )
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

Shreeya no longer works at Collabora, set Dmitry as maintainer of
the Synopsys HDMI RX driver.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index e913c1edd1fd..e1db3cc859eb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24535,7 +24535,7 @@ F:	drivers/net/pcs/pcs-xpcs.h
 F:	include/linux/pcs/pcs-xpcs.h
 
 SYNOPSYS DESIGNWARE HDMI RX CONTROLLER DRIVER
-M:	Shreeya Patel <shreeya.patel@collabora.com>
+M:	Dmitry Osipenko <dmitry.osipenko@collabora.com>
 L:	linux-media@vger.kernel.org
 L:	kernel@collabora.com
 S:	Maintained
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
