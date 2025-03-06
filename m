Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C975C28B23
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVvA1FrLT5ZE59sEHLB1RM6JYHM9cl/di4fuoAmNtFo=; b=P3fdqe04CMieb2
	6vCIiBmnNwDlZyz/hhFLuVJfwG/6eFx1omveaIXpRWpgVt6YdK+gZROTo9VYhiUXG42gG5mYXX8Rw
	2ARccJWNk4jbQHx+5repOoLVfVm3iyET1l26eXJEZyS62hpie/rIlvH2Ojzb5n2vIyT9vTdbd1WzW
	MAP2sCsoAypXns6miif2sQsiGfn9gszAwA1mVmzteeSfSdAsN8NexVYuihOaSGackDEB/BPiqf3ka
	zkvTbnRZOR3NvrS6sgptSwDW3CAV5M0a2kLE0daPjL7ypeOj3k4rqnba2pSj5rffAn5j/F1F3l83C
	qEuDH1zN+CgF8QVnuKqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7NV-0000000ASt4-2tNH;
	Thu, 06 Mar 2025 09:18:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Fr-0000000AHZD-3JnT
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 08:06:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=uCOliLTc8FCNZdZQCcLkuTnopU2o/wGilsZ2OAGkH7Q=; b=W95+XTH7rgvM23hgNNIQPBCrU5
	iYYolYYoEDknwdrggtRtgpyRxw9XGgKuPpV0s8ivLssgwU8QEiMq5OhFLkghBeomH5wb81HLvzqjQ
	m4Mu15pJB0CwpsDRt65FE7CGu+40XG9rgyoyJG5xfEjsFF9apoyhHJ5xASCKgD19tZI9PYaJMVJ6Q
	E0SuZVkWnEiebK/9sGk93tKmwMNk6535qUaJ1kZRhkbeatMCuR0nqUN5o4kuCrSfNEh3Vuaz2RdOK
	0RtRIHIVzb8W7eYVHOwyfVKSxtBfz/tWHnhRPW/+Eu1RNiUhLZ/zu92Ab1eP0y/TnJz6aYL1RuGW1
	M7N7gz5Q==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Fo-000000072hF-22nL
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 08:06:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741248395; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dcuS1vvnFY8KcKNp3B1qWH6z5ABilI5v5mzOFsWTGqDDIMEMhiH69DLJg/93jVZfLvGYNQAQEtu7PAHBwvTZSBgSG0T+FfuWlNoDS6z7IYqjvOQfV9mV3VUcAIclCgtt4X3mYNOj0vtHoU+6pm7nHHVbjAzRa0wm2ohHXG+Xykc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741248395; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uCOliLTc8FCNZdZQCcLkuTnopU2o/wGilsZ2OAGkH7Q=; 
	b=XX8zeFLWDdSw5pKnyqisWzxlInY4vWSB5482xn7bqWYCNDoTwF/M5qco07KSqd0AcMZ6v1YY0JEJUS6w0otWupEtFqln2+/p7vn0kbBVoFSmODjHrmQGLRwWgVqEXX7hLeEIp/ajAfpJV8TO4Ju+RsI/9B9Oa+C2fBugdfQvWMU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741248395;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=uCOliLTc8FCNZdZQCcLkuTnopU2o/wGilsZ2OAGkH7Q=;
	b=XXeYrDPnvMwong0AxeA19sYfopUW8O/CPCEdhZPU4CgtXNniVnkkYQNeWtfl9cve
	MpcjD3wQ8SbTqQ87BpX6KsyOan1IGWI929lA5Z5OUQHsH9ZYjYVuD8Fgvpg+DJtMkMR
	NcKe4gdhb8vu/EIcJg8nihpUv1UWtRhnRJwYBLy4=
Received: by mx.zohomail.com with SMTPS id 174124839394569.84592736885759;
	Thu, 6 Mar 2025 00:06:33 -0800 (PST)
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
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 1/3] media: platform: synopsys: hdmirx: Remove duplicated header inclusion
Date: Thu,  6 Mar 2025 11:05:31 +0300
Message-ID: <20250306080533.294964-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250306080533.294964-1-dmitry.osipenko@collabora.com>
References: <20250306080533.294964-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_080652_846780_5C4BDC05 
X-CRM114-Status: UNSURE (   8.27  )
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

Remove second v4l2-common.h header inclusion.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202503061231.PHF6hEL2-lkp@intel.com/
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
index 4ffc86ad6c35..f161fd6712b6 100644
--- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
+++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
@@ -39,7 +39,6 @@
 #include <media/v4l2-ioctl.h>
 #include <media/videobuf2-dma-contig.h>
 #include <media/videobuf2-v4l2.h>
-#include <media/v4l2-common.h>
 
 #include <sound/hdmi-codec.h>
 
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
