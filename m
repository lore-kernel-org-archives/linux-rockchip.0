Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 578EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 17:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TZ+z2wb0yPhxb7fk/I1DpLm9Bp9yi1Nben6xF8sEfk=; b=zdagYDGpBbZFE7
	QtDnkR6M28RPSPj1MR7nyF5eIN/3jsWS1XMArYHsCjaZzpKxCGyo8WjlqHEWcsar1eyt6XtIWkaSG
	gTACqKBfuCAGE9QGt4bTGzomu9GZluEeUs6fDFgfdi3sTFtmrTGMPofHvJ2uPNQPH95E1WKnqR2dC
	4Icv/+vjA01ed/LAKjdRgh+YVeJANE/HBu/cW+i2JgYvf0iHL78XkeODHNI7GgS5RrK4blv5WLm5a
	xgYGcK4XHuE1RLIoGcFZ9ofPQUKPAAvjYyCUbtXRY8Hf91QgARGwOat4l9x8/cBexef5la+/4/LWR
	x/wU/j01u5TyZYX7NNzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQBh3-00BJu4-EG; Fri, 04 Mar 2022 17:26:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQBas-00BFjS-EJ
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 17:19:58 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 98F4B1839;
 Fri,  4 Mar 2022 18:19:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646414393;
 bh=J3H/YWgcSpzCXhiXmgrcBIpagqsZt7U0Wwt1sQ/XPOU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KnPhrn6nCf2BKAJ2fG0gGS29P0gpcYhFqDA9IR0Z9rd0DLx97/n4JR3cEYJ/mCACn
 LNLbt8znAgdwhjFF9OOce/AwofgaD2CzPKHivPzHC18BsVtD4SmcR3KRsyvkIC/P8S
 6jK597BTk4sSXu1PxB5rPsB+zaRpRG0oTemKQr1k=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 17/17] media: rkisp1: capture: Bypass the main device for
 handling querycap
Date: Fri,  4 Mar 2022 19:19:25 +0200
Message-Id: <20220304171925.1592-18-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_091954_694484_8B7E201F 
X-CRM114-Status: GOOD (  10.37  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

When handling querycap, the capture node would access the main rkisp1
device unnecessarily. Get the information from the most direct source.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index c6f699dbf0b4..25bb0ae17abe 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1232,11 +1232,8 @@ static int rkisp1_g_fmt_vid_cap_mplane(struct file *file, void *fh,
 static int
 rkisp1_querycap(struct file *file, void *priv, struct v4l2_capability *cap)
 {
-	struct rkisp1_capture *cap_dev = video_drvdata(file);
-	struct rkisp1_device *rkisp1 = cap_dev->rkisp1;
-
-	strscpy(cap->driver, rkisp1->dev->driver->name, sizeof(cap->driver));
-	strscpy(cap->card, rkisp1->dev->driver->name, sizeof(cap->card));
+	strscpy(cap->driver, RKISP1_DRIVER_NAME, sizeof(cap->driver));
+	strscpy(cap->card, RKISP1_DRIVER_NAME, sizeof(cap->card));
 	strscpy(cap->bus_info, RKISP1_BUS_INFO, sizeof(cap->bus_info));
 
 	return 0;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
