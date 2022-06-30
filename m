Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4514C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lpVvNUvKItwfhvcrmgxdf9fFhwBQKxpmWVPbAui2O0=; b=QVQKrgtJ4f/y1z
	HtTxA4UTwzEO/3hboz86q57lY0UEYxW9tpKcQU8Ho0vmR3LGamoO5CdKb/Y0dyMWqjda+MreBUO2f
	/WnQFid6Kxc/Izi66GebFcxIKdJhE3URnTxMTiWn8KjFhtoTi1nK5gIPKXpj6uXA/Fd2lx5RHIukl
	UoK4JccSv+l+Q7UW3B6H9YMD9yJlu9autMsNT+jwL78ndUJC75U1wlyO7YBYfIOhrKq2/Z2q5HPpY
	4CuSTCWSh3rVuYwQaMlASdOPMQRgN0fDMqW+nAVTaalx0W6PQPBXEDqqyReAZJeSGbpPWFao7xmLK
	oinOuJskehu9+ry/kR5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KD-0028J4-LE; Fri, 01 Jul 2022 00:15:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GK-0020Di-5t
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:07:56 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id DC1001354;
	Fri,  1 Jul 2022 01:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630465;
	bh=vTfQCG1hzA3XS6ep9XFoM79iG4hSQACGV1TEjvay5iY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=T4CEa1psKkwccqUJZgA7aBK6Vk+lqcJmO7UIAWgT8yA01MplLP7ZJaI1kcbyPMX0d
	 WfPQJ4CZuVakJdBq8/V2YmFM0bvpOcgVWxD6JSx5ZRGP9HmysXZRO0okbVePxcBOx8
	 NUp583qNuNCXWXKXk9y6Ifvy7z/4IPNI+j2DvY/w=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 12/55] media: rkisp1: cap: Print debug message on failed link validation
Date: Fri,  1 Jul 2022 02:06:30 +0300
Message-Id: <20220630230713.10580-13-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160752_493513_D8C33A7D 
X-CRM114-Status: UNSURE (   8.09  )
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

When a link validation failure occurs, print a debug message to help
diagnosing the cause.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Add missing \n
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c    | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 94819e6c23e2..fb14c8aa154c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1294,8 +1294,16 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 
 	if (sd_fmt.format.height != cap->pix.fmt.height ||
 	    sd_fmt.format.width != cap->pix.fmt.width ||
-	    sd_fmt.format.code != fmt->mbus)
+	    sd_fmt.format.code != fmt->mbus) {
+		dev_dbg(cap->rkisp1->dev,
+			"link '%s':%u -> '%s':%u not valid: 0x%04x/%ux%u != 0x%04x/%ux%u\n",
+			link->source->entity->name, link->source->index,
+			link->sink->entity->name, link->sink->index,
+			sd_fmt.format.code, sd_fmt.format.width,
+			sd_fmt.format.height, fmt->mbus, cap->pix.fmt.width,
+			cap->pix.fmt.height);
 		return -EPIPE;
+	}
 
 	return 0;
 }
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
