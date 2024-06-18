Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74B27C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 19:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rq7XgsqQyOloL47LDn2ThDsEEHA18aWklgwJ/4HDDps=; b=jCaRJzMSD9xBsr
	LEnGQUx2xMK+CdVRf1CGhN3lnAZ2f26X/cIrRGls+pv0+7QNn4Y41ttdRreeO2bKHrUditwe8ecMN
	4RbjHthJz50uC0YhMxdSYBaWLDBzIV6lKErZ8io3QsniUWrhBZJkSgUN/WaUz2h8Sf8jl6+vsP/le
	dAedIZWV+J3TNV+skhF3QLAzb6fFZDaVd8exYbA3MAhInudYH2B/ZXoMPT1Hk+4gSVBpMDBaXaP6t
	vk012hvl6aCSaRKlvZd95YmTCiz4b+pbBmTMS8pSsnxvN4ftBWGs9HNb2mn7MIp/ArNY+C2jkr6t+
	EDxpHVXnuV6Em/z/0xyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJedj-0000000GN3z-2Xcu;
	Tue, 18 Jun 2024 19:37:11 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJede-0000000GN0c-1L98
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 19:37:08 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 45IJaxrV075761;
	Tue, 18 Jun 2024 14:36:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1718739419;
	bh=RaY76pclxOi7Kh6KECJQ237ArOuiV+RkbWN27NXq+d4=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=NXsAAUgafboBlUHyTiFmCAXR1hRhAyNkLH7b+6QNgX+71uQTR4HlJjtfA1KeRkQYL
	 1iVA56O6zZ+ZgvTzJFvUG0aOH5OGddZVKmdz0jW7lFslTvdVzeKJkrq9L10kJ1IVz1
	 fWklVDj4pZQDP8v8eG9A41SjBPTpkme3nNqDIGW4=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 45IJaxoS116617
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 18 Jun 2024 14:36:59 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 18
 Jun 2024 14:36:58 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 18 Jun 2024 14:36:59 -0500
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 45IJawZx010552;
	Tue, 18 Jun 2024 14:36:58 -0500
From: Devarsh Thakkar <devarsht@ti.com>
To: <mchehab@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <hverkuil-cisco@xs4all.nl>,
        <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
        <benjamin.gaignard@collabora.com>, <sebastian.fricke@collabora.com>
CC: <laurent.pinchart@ideasonboard.com>, <praneeth@ti.com>, <nm@ti.com>,
        <vigneshr@ti.com>, <a-bhatia1@ti.com>, <j-luthra@ti.com>,
        <b-brnich@ti.com>, <detheridge@ti.com>, <p-mantena@ti.com>,
        <vijayp@ti.com>, <devarsht@ti.com>, <andrzej.p@collabora.com>,
        <nicolas@ndufresne.ca>, <afd@ti.com>
Subject: [PATCH v14 4/6] media: Documentation: Document v4l2-jpeg helper functions
Date: Wed, 19 Jun 2024 01:06:49 +0530
Message-ID: <20240618193651.2771478-5-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20240618193651.2771478-1-devarsht@ti.com>
References: <20240618193651.2771478-1-devarsht@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_123706_608486_3CD6F516 
X-CRM114-Status: GOOD (  10.80  )
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

Enable documentation for v4l2-jpeg header related helper functions which
are useful for parsing jpeg files while decoding or creating jpeg headers
while encoding.

Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
---
V2->V14: No change (patch introduced in v12)

 Documentation/driver-api/media/v4l2-core.rst |  1 +
 Documentation/driver-api/media/v4l2-jpeg.rst | 10 ++++++++++
 2 files changed, 11 insertions(+)
 create mode 100644 Documentation/driver-api/media/v4l2-jpeg.rst

diff --git a/Documentation/driver-api/media/v4l2-core.rst b/Documentation/driver-api/media/v4l2-core.rst
index 58cba831ade5..ad987c34ad2a 100644
--- a/Documentation/driver-api/media/v4l2-core.rst
+++ b/Documentation/driver-api/media/v4l2-core.rst
@@ -26,3 +26,4 @@ Video4Linux devices
     v4l2-tuner
     v4l2-common
     v4l2-tveeprom
+    v4l2-jpeg
diff --git a/Documentation/driver-api/media/v4l2-jpeg.rst b/Documentation/driver-api/media/v4l2-jpeg.rst
new file mode 100644
index 000000000000..af3bc52f865b
--- /dev/null
+++ b/Documentation/driver-api/media/v4l2-jpeg.rst
@@ -0,0 +1,10 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+V4L2 JPEG header related functions and data structures
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+.. kernel-doc:: include/media/v4l2-jpeg.h
+   :internal:
+
+.. kernel-doc:: drivers/media/v4l2-core/v4l2-jpeg.c
+   :export:
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
