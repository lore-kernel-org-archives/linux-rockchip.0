Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2C3AC61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 14:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqrZBAJbb7iBfBNDVx6YEXWbZVgrHKCKauViuDaEFF0=; b=PZt9OcrovyUtfV
	gjFrI4pH9yeCzZmSrXtMqiz5FxBfVru0VnhyzXzWKbdhINDR4LI6t7Wx+gf52lJ40ddJ6LV2Za9s/
	DjiZpwFE9OlD26nD0FiF77iJpX6eKa7Y4+Gr/4jsLEd74ZtNLGTq0YGLcXUU7KHu3XV/gK3AD/D8C
	c2x+3CKcDjivoR4ojBHAM8P9L/Ymcp3wbCeaud7l/d39JgEA7DQ9/8gX9UM323cPfuxHBADOKWSrS
	pFnPSmdu5Y1HMni+ISiSHwoMxm0JuO1zZute0KwzCPWs9/8fUEUauVd7yhqBUszw4b/ofyPAXj8Xk
	9xxgqiyMYu4mSEGW1dCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oRW-0028Ef-0N;
	Wed, 22 Nov 2023 14:43:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oRI-00284o-0S;
	Wed, 22 Nov 2023 14:42:54 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4232E641;
	Wed, 22 Nov 2023 15:42:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1700664138;
	bh=m/zEIfXXTHvQjozZAyjiA6eqZQPUBkii1euXSnYoOvE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YP9asx6SDnlDNjkOD34Fz3GV/GuZuWTjB9tLPdQb3cvh1GK1PGI3jnm/eoIe+qFGt
	 Diywgb9kB03JB7zlTkKO6R2NPSgJVqBuV1vtxTIN/2B1j8YAfFEoaZcek6ocFAHg8D
	 o7I9SHopGhyZxZ4N8VMmkC9fjLblP1g+CHIv5hJQ=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 22 Nov 2023 16:42:22 +0200
Subject: [PATCH 1/2] media: rkisp1: Fix media device memory leak
MIME-Version: 1.0
Message-Id: <20231122-rkisp-fixes-v1-1-1958af371e39@ideasonboard.com>
References: <20231122-rkisp-fixes-v1-0-1958af371e39@ideasonboard.com>
In-Reply-To: <20231122-rkisp-fixes-v1-0-1958af371e39@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1184;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=m/zEIfXXTHvQjozZAyjiA6eqZQPUBkii1euXSnYoOvE=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlXhNmoGXYrkOE3AdB7Fp5rvOueSko64nRBHCyK
 qKps9vLkRSJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZV4TZgAKCRD6PaqMvJYe
 9V4vD/9mS6a40zwMwT1NDJ+tXjKAo93DSsj3Q6ByOm9ye0/hPin7RMgZVFGa4q+ojuJnwwONjDb
 +TK2xaI3pQwgrd53zTS6cgTB0wcYLzShBoNMiDZpUP2jqM+p7vGfI/fAsGsphM67OoTNRh8VuBU
 oXYpKWgfgfIpiUujcLk9JbxzvnHQL8jZBV8xw2bjdxHuGovFWRGcegiCmF957Nyip8OJzNrP1tj
 X/wqq2vsdxdRmRTAF+WhqEAZBoJRlCCsV8k0R3hbemf/NgPoff+0Slnz9Iv8tIC1ffof83vNKu1
 U4nsbEEjIiCuOiVTWhE2+kTwcqThZXjWCPXzPJq3xNTugvYDmrCrl0l6cgti8n7XuhwqS7UJzvL
 BFuslCUgclBqOldOfLOFAMRm7tSlUqjdc3K2E3BZtCndzqO9zbrnCfSV4JqaUGAmfapIlm5ltRh
 NnIyIjIHo5t1v61964DsmBk+ezYh/uBBsNhvsi5vHJSo2JNqhUJWxw+1tZxqxuQ6QJ6rgXXHp6k
 lHOi0yBTgq9a4lbBdORqVHGG4WB2maQJq6egxHqmh1KU6N77c+Iw/5nNxqXHn/W/lmXQYV5Wrvf
 3BXb86pagpZjhXhsf7Qe7+CZ089UsFY+/dvlLlqtt5wWgZ/wxkhTiNLevHl9FJhIh+eDhsd8Q6L
 6VkHW9jMtVkw7AA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_064252_345756_3DE1A767 
X-CRM114-Status: UNSURE (   9.21  )
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

Add missing calls to media_device_cleanup() to fix memory leak.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index c41abd2833f1..e10cc2881757 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -617,6 +617,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	media_device_unregister(&rkisp1->media_dev);
 err_unreg_v4l2_dev:
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
+	media_device_cleanup(&rkisp1->media_dev);
 err_pm_runtime_disable:
 	pm_runtime_disable(&pdev->dev);
 	return ret;
@@ -637,6 +638,8 @@ static void rkisp1_remove(struct platform_device *pdev)
 	media_device_unregister(&rkisp1->media_dev);
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
 
+	media_device_cleanup(&rkisp1->media_dev);
+
 	pm_runtime_disable(&pdev->dev);
 }
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
