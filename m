Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D98B2C61D99
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 15:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIEOM1SWWmw2yRcvPInRjugYatZu2dnKst8Z19lhMWU=; b=bAin8dhPJ00y6X
	ZIGR/oE0wQ2mNc8JYch3MfD/axvtXZYUZ4a6Pe8DQNb/b8elHnkUehlVnFA4YM2Y6wh58bxsRJk5M
	1KqjqBPipr7brwbwsoz88rIe37okuut8HYR0LeQ8DEOR3z68puE4m0IroTQigzAgmYi0fQCEqN/1b
	/U2kg6eckVoO1raLZ6izHQeinaiBh1KaazbEHkR3hgP/oPUqL8Zqo4z8r2rRfZ6odMNn52z93yHEA
	rLJP57htXls+5jY1bsRRCUnxf8kSYEwmwVVMEtEL2pLuVoAIHprHW/cftK6jBZKDf3gRBQKpVeSv4
	5e/UEZZDd6cJwe3GZ+Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pUt-002LPE-1i;
	Wed, 22 Nov 2023 15:50:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pUm-002LLK-1H;
	Wed, 22 Nov 2023 15:50:33 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C84F2641;
	Wed, 22 Nov 2023 16:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1700668199;
	bh=GWSvmigvhbqxxKwsO8s1wxYTODF1EHzXekCVLlbZGxI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hwzEUySDhdg7+rV4lAQv1SLbaMq4f5LP3XGp0v8sHnCVXjnUyl0SO7+KttWy3qd2V
	 ONCgstHK1hey+zQcUHwkd7jQB80umbQ68bN4Z1oIfOBPCFBF3Fb1GgBwHFHmMTjTby
	 0u85d2oWQM5WqA6W6rSwkwJa2jMvx9VPIjAT6N+I=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 22 Nov 2023 17:50:08 +0200
Subject: [PATCH v2 2/2] media: rkisp1: Fix memory leaks in
 rkisp1_isp_unregister()
MIME-Version: 1.0
Message-Id: <20231122-rkisp-fixes-v2-2-78bfb63cdcf8@ideasonboard.com>
References: <20231122-rkisp-fixes-v2-0-78bfb63cdcf8@ideasonboard.com>
In-Reply-To: <20231122-rkisp-fixes-v2-0-78bfb63cdcf8@ideasonboard.com>
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
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Tommaso Merciai <tomm.merciai@gmail.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=940;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=GWSvmigvhbqxxKwsO8s1wxYTODF1EHzXekCVLlbZGxI=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlXiNCOLg/ZNZkH5JNt4+lP3cqdiX2JgWJ0yFPo
 ckl7sgXzkyJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZV4jQgAKCRD6PaqMvJYe
 9fWRD/9StEmHs8CUsFrm3u/UhmQD6eVyKBwAImdgigY4oTPn41xWao/S59SXpr3e88F9bXGxcMZ
 6rnSXhmN7BDKXLKnWttYjjKhkYpLSaxegHh55Z4xtfr3u0wXzdWcC3NEH6HS94P48DjKHuHzzBU
 Gr04pONVTSW+ns9cdVhJynYL2qzL4V2BFb7hQYKS1rAazEYhCVoUaC1EfEs0xm6wt5nk2HQGlP0
 tIpbqw+/2Jld19VUWran31Omv5uB+Z0RjRLRodX4vu0505piKnTt78v4Kly6xUU73WgIlh7YCp+
 9rknI0dcamE4ZCdv+dlCjENspgLNgfP1/09L2urGYQTcd6ggOttdO2Qg0KBfzcDTbrBVp64qQMn
 qFF6wovam1VktcLAFtH9crxOKWo+ZP8OU53xXj9IqpVQDO0mKZ5kYhKBzjU6t6tzXu2Z2d5uWgk
 TuSwTAfKKFRgjBn23rCbc3xzX53yKDURqxeNH6ZbTmA54ulm0vAlKwKb8uXgk1axttXuXaNMkoe
 Qp0vaz6pijRptgcMSEjMpeKY0xgjMsz8cCWG377otml93uq9BKemmP0IAZMNLb5d4KBs40Vz725
 y81xyOlm4aUtZfRvZvRNkx8Y22HHL2YhtupQjAel9hxFF1W3kcuGso4wuqky0GaAz9Qqf0zHZEj
 5JAOoWZlF2PmAFw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_075032_579312_83AFFABD 
X-CRM114-Status: UNSURE (   8.78  )
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

Add missing call to v4l2_subdev_cleanup() to fix memory leak.

Fixes: 2cce0a369dbd ("media: rkisp1: isp: Use V4L2 subdev active state")
Reviewed-by: Tommaso Merciai <tomm.merciai@gmail.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 88ca8b2283b7..45d1ab96fc6e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -933,6 +933,7 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
 		return;
 
 	v4l2_device_unregister_subdev(&isp->sd);
+	v4l2_subdev_cleanup(&isp->sd);
 	media_entity_cleanup(&isp->sd.entity);
 }
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
