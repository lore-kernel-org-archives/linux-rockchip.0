Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9DEAC61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRUNv4tsI66aR0fjYatnGCc83RaLvtoY0Yr9JLaQ6c0=; b=Zl7dzyMN8827l2
	UtEnwi3g+4TLCfhB6RdVUgOsWALrc7sCnvyzRsOObj19IIdCArjaXTddwx4V3mM7smU/Smr4aThcX
	hvNHyyiEj1RMzumBco+GqGVF7slp0whc/DU7seoHtBAxlLYr8I+cQfhTyumpehIzxJjvYWJxdkfOe
	S3AupCOowP8EUaAtM/keTRfr3BUwIH+iReoW6wlLnb81xMPyj/47+9HazZfr5OxhHgqxNPIAPlkPg
	+JihKgE32tJIMaib6GsWGzCnIHLkjdOdBGDRBMPNbCjI2DjOq9Oij9nGYCZbYLnRcxLp4kR+lfpnp
	mKNwj4Ky7MGTc5zFNj2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oRN-00288m-0t;
	Wed, 22 Nov 2023 14:42:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oRI-00284t-0S;
	Wed, 22 Nov 2023 14:42:53 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 79BB66EF;
	Wed, 22 Nov 2023 15:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1700664139;
	bh=wDApJOipWXJ+xO5p79TRPJampy6N0curdFUvhOlG9C8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=spfS8koB6mCbx7EhQk1ISAX2p3QSybUi0pbr19778oBsJflJ0yThy5u5r5t71CLZQ
	 jEoucs1JkhRIbFdu3ilEeFBOLfaQKl4kSvtxdS9OHr0UIfA5g85pk+oPu+3aLkV6Mi
	 IdwjQOMOFsNsAswnIfMz7SvJ9PN4f4djMHyIMcfY=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 22 Nov 2023 16:42:23 +0200
Subject: [PATCH 2/2] media: rkisp1: Fix memory leaks in
 rkisp1_isp_unregister()
MIME-Version: 1.0
Message-Id: <20231122-rkisp-fixes-v1-2-1958af371e39@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=818;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=wDApJOipWXJ+xO5p79TRPJampy6N0curdFUvhOlG9C8=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlXhNmgT8hYQq0m2LhNw8VE3d0LARdJLpZ7YXOc
 3uaZhEN2WmJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZV4TZgAKCRD6PaqMvJYe
 9WGNEACKacCv9FjzmAG3l2lCX0fir2y+MhLqtxC1Jsnj7YopQk4rTwfSQzZXg9PEfiy2f4fSflN
 28bMxNG9sr34UIWHOBeyNAxD2Xb8AN3cuok6AIj991pdsMcA88h8nWxb72fnXGu3AzAyx/HtTOz
 r5qdofYP2p4eu2JfBNVAOaVaiUw6xIbO2c52fm2GFjGjSEhgQtLBGBNiyrMlBlLlcGwSVnDUJpx
 ajoy3/UItSDX+EJYmf15AxlDNIjuki7C/WgkczFq/keNxOyOBZ1O+PC5tf3Ku8FiIw15sK7VxiC
 jm5YurJpFkCawaNvDTtAbnjbw3HEQp40cuj/gSfw/fuA6SwtVJKYbTmHEluebdyheBmzwuR+tZf
 lwbZQNLpmhVuSU1JoLsu18A6TD47IiCmwx0UPhOlaMWmL7L2XS6iknsBGqg2aYbXzb/fmMqzm3x
 Q1wRCbiLENJS+sJs3jc07Tahuvvo1dvAMUpqChhx4ffxljxXuIlqq+ki7ANcf6BfA2b3hs7ahaw
 35p1vtea7ygv0vwaPGPRt65L8EIagUeZVJuL4o6r3DKhL+ll0FPZb32rjn6J9onvNmcuVFfD5dj
 RMIO+y/lGcJFpQVnsHFoJuxq1dBSQCITMzxc0ACIGuWMrPpWIIwgNppHEtOXb+MLiSgv/tqOg3d
 BRwiyZMnnVf5m8A==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_064252_345070_36644113 
X-CRM114-Status: UNSURE (   8.29  )
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
