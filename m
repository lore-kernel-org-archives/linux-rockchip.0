Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3192FC61D9C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 14:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pZHOCJhdGVazEAShce2ItQ8zUX2PcjN2+7jeWJ2M7Hc=; b=UWAzLElLr3A7ZH
	GvP2uQzvaB1OySjxAFi58T85Z9oAsKgEF2EVaXQ2USM/qWmm0YOgkj0Ig87e4iedJCi9hH4JXZZQV
	umWVebzc6WqABNUNnbtFqadqGYDudJZirOOanlABjQyec8WCix9S6aDa8309mWi6VNdFxDomaqzLi
	qn9gYm+BKei78nswQ9CiekFriD+M+G0G3uWI1TV7iqOixHcMUDF50InNyBCvWtVBkNpLtmO2tzO0K
	i/6/kxDa0Wjl6uxUSGdEjgPovVFWCmF0MBRGXacUX7Bn1ux0XzAHsy7UhsLj83ptgt548H+t40HXg
	GiynD14ABMAcuNDC4qtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oRM-00288f-2m;
	Wed, 22 Nov 2023 14:42:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oRI-00284e-0T;
	Wed, 22 Nov 2023 14:42:53 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0579929A;
	Wed, 22 Nov 2023 15:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1700664137;
	bh=Q1F0LY9V1uh3EhSCWJsd/th8ziEnKGSJDEVMKi83lT0=;
	h=From:Subject:Date:To:Cc:From;
	b=gvxTVU+JDNsoybOx5RQzECQarcc7Hp5qvNLOPHn7tudo37KR43SqZT+WqnvbHgXc9
	 QWYcKkYO1nh+MfFJIJzs1DBQj8EcH9+oS8aY7pXLNXEPgjq3QpvxXlZuGt7gN2sO4b
	 19WKPYB0Dz4jNbAQm9CzcTcO2ISKr8zt8pnL9yGY=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH 0/2] media: rkisp1: Fix memory leaks
Date: Wed, 22 Nov 2023 16:42:21 +0200
Message-Id: <20231122-rkisp-fixes-v1-0-1958af371e39@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAE0TXmUC/x3LQQqAIBBA0avIrBNyQqKuEi1ExxoCEwciEO+et
 Hx8fgWhwiSwqgqFHha+U4cZFPjTpYM0h27AESdjEHW5WLKO/JJoj/NivYvBWYR+5EJ/6MO2t/Y
 Bn3o7/10AAAA=
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Jacob Chen <jacob2.chen@rock-chips.com>, 
 Yichong Zhong <zyc@rock-chips.com>, Shunqian Zheng <zhengsq@rock-chips.com>, 
 Paul Elder <paul.elder@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Eddie Cai <eddie.cai.linux@gmail.com>, 
 Allon Huang <allon.huang@rock-chips.com>, 
 Jeffy Chen <jeffy.chen@rock-chips.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=587;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=Q1F0LY9V1uh3EhSCWJsd/th8ziEnKGSJDEVMKi83lT0=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlXhNi6mGmzFhiwH8XScOyZRSpdoZWu7l19VDPm
 +NTh/PUYw6JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZV4TYgAKCRD6PaqMvJYe
 9TJlEACtzRXltazs9OpEwit3KlmQqsXxumZIs9MDHWKt1ZVCffsxlBDMisG0iIfdcN5UATuJZls
 1QdO2nYLHp8hCbXwzQGYeEo2TZGmbPc7xNM+RfINEHCgBdRF2tOB1sA2DyvqdNqaywW7RmNrxoA
 sCw/IsPGQQ5OfiJoPVV/E6Ch6EfokJayyoWtDt9/9iv1fr+4rEmoc/cwiwPjcZWnc6y043sI092
 29EvdmvEDq6UXKTtj72N8cCTmMFN24DIj0AO8bcUGzsUjfkGRgKvvs7YV2d/15GlJiaIqMLBNLX
 P46dOH1xLXFm6anWeUE1cNGoNzs7hrXyOfAWoGL5rfPkgWKSetxCPt2TrsRY76rW7vB3ISlsJdr
 PxLrP4NjFVPEJkKBDHoVPsgv06Fn3Gro7CCfzRk4t3oCoIbkJhkCHzeZHiteWbx5h6wCA0B5blF
 td0bIFXGhnSVtztPYLQrQdWF94jCKJzIV3N/XoRnQpzYsLWBwL7qaVOkG3AbbpKDfzK63FjRyYr
 PhYCnrhhVb8Xa1wYPpm0AEiXjKozx6gR+n0xJOTiSJEIHPOrBOGFIFcTF34hAwDt/CSzyNOPuHP
 y3yIE5JCEJMrKITlqJLbROl+nv8VqY2y8EBxWDAB5nHoULrED1TzmUg13abKHqv1Cqce5wHhdNd
 7oq1wifnplUL3uw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_064252_345559_217F314D 
X-CRM114-Status: UNSURE (   6.06  )
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

Fix two memory leaks in rkisp1 driver.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Tomi Valkeinen (2):
      media: rkisp1: Fix media device memory leak
      media: rkisp1: Fix memory leaks in rkisp1_isp_unregister()

 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 3 +++
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 1 +
 2 files changed, 4 insertions(+)
---
base-commit: 1865913dd590ca6d5e3207b15099a1210dd62f29
change-id: 20231122-rkisp-fixes-c2795cafda52

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
