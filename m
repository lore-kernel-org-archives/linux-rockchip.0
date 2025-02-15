Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEE18C021A7
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 21:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uQJHtU/tjYQtbdg4uJr2W8tRdIzSh7oA6sd7gtzHZk=; b=WfQzJEF81q41PW
	YbSvp54hLB8e4vxqrcLWxAYQLOk5vJHv+6ADlPAVEyroHWxLdM5pKDskNENWRRy3fCPmtYyv8S78b
	z3zLHSQ6ucGFxzJINdHQEJlC8nyOUcXRV04T/3No5kdlGUuv6h+NBvpjtdjxFKNUkj0Z5ExPtZ8dd
	r81aJ6aOsFvnh5G6MQ2B9JGYps2ohFigiJ4ctzjCVV0p93+MJKQ9RCzqyUN6ij60BysOB/WPFWlYA
	VHN7lDe6mDq244Md5PhGSWRfp8FVKV5SQVmENiImcVrAdF03hOfnJmezelF5XQvQ+0GHfyiOJBgF4
	bSAN1PuMzfTDYt8px1dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjPLv-00000000kUv-2wsG;
	Sat, 15 Feb 2025 21:05:31 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjPLs-00000000kUL-26Rv
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Feb 2025 21:05:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739653517; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QWrP/ZC1d8mTFvMH9RtFF3QyidBtyY5qrqzsI2DcLmT74IpueygYnhWJnYhFkoGUX4sXFBd5279m3rOcLuRHwf5H7AE6zCDnSnCqlsmRci1EBvVY4sFnpU9tIHRTuond07GzUPEHNBncf1NRn2M8z62/p/aYGRGu+IdoWJiFg3g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739653517; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/EEGxG3a0Mq8W+NTwKBGr/iFZzT32KAE3KrCrz4Dud0=; 
	b=Czcgob59KBUv60CB5IjYDFeN1z+cID5lzF4YGnmsy8qpdwhgAfk+NxfyT90C/vYUT9HOV6YwsZ6LzClrYPL5+iwIcb+vdTAfSWT3TDDHyaW6rAqHBGMcLxgDwb65EKyTVl0r2MHild2vNh6TQCdf8mmgJm+JzrH/y2qRnRYxR/k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739653517;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=/EEGxG3a0Mq8W+NTwKBGr/iFZzT32KAE3KrCrz4Dud0=;
	b=AEaq5FSnGJ1jIyGTZQQORKZpbTtbQf+z+mHlrvRn9HPn5M/MmqN2VE3Eh4jn/zy6
	bfmRmUQrzhgfrKk4fKQvxaj53CuBA99xWjRH0E/XUi/bzpSWOzGc55BGcnXnHML7uef
	T2Rlqu3lKuM4s3wgCcwnxFvf8stjlOIgMrSt7RF4=
Received: by mx.zohomail.com with SMTPS id 1739653515821555.1433002311484;
	Sat, 15 Feb 2025 13:05:15 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>
Subject: [PATCH v6 1/6] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Sun, 16 Feb 2025 00:04:12 +0300
Message-ID: <20250215210417.60074-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250215210417.60074-1-dmitry.osipenko@collabora.com>
References: <20250215210417.60074-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_130528_605473_F4486114 
X-CRM114-Status: UNSURE (   7.82  )
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

From: Shreeya Patel <shreeya.patel@collabora.com>

Add an entry for Synopsys DesignWare HDMI Receiver Controller
Driver.

Reviewed-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 896a307fa065..d73ddb317b11 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22942,6 +22942,14 @@ F:	drivers/net/pcs/pcs-xpcs.c
 F:	drivers/net/pcs/pcs-xpcs.h
 F:	include/linux/pcs/pcs-xpcs.h
 
+SYNOPSYS DESIGNWARE HDMI RX CONTROLLER DRIVER
+M:	Shreeya Patel <shreeya.patel@collabora.com>
+L:	linux-media@vger.kernel.org
+L:	kernel@collabora.com
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
+F:	drivers/media/platform/synopsys/hdmirx/*
+
 SYNOPSYS DESIGNWARE I2C DRIVER
 M:	Jarkko Nikula <jarkko.nikula@linux.intel.com>
 R:	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
