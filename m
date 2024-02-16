Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F28C48BEB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 09:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4y/XRaAlnRDt0FSdN/2b3VBdBxlAajfllrjBzmnBU8=; b=dj+bwFEG6F3bxt
	6scq75gdVHvnwra2E5MjGHCb8OhTIOokBuaY3g+Km84fwgo45lAnxRawhf0a3wZnvoYT4GKOTN/Er
	V0UIR/Go2kgJdRIDFCY+n955dylbFmc0gOE/vC7Hum/L/FgwhnIrPXOzWOpOhryQE7pKqeP05vvO/
	6dxUerGnqWfcRV0au21SPccb0bkfwZX2LpgY6PIUB3EaeLdpJYJcd3ryxxg3BQ70bGLC0qTYNMAAN
	TNFdzp429OLYbuM9HD0PlmFAFG50xAm1LKfX0pHqfxXuVmw/TZv7vGm684YiYwBh/I5TAnWkjB9ny
	JBWZfaSXnsrVYtjLxwuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauwm-00000001qKT-0i9D;
	Fri, 16 Feb 2024 09:55:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauwe-00000001qDx-1PXy
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Feb 2024 09:55:50 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B6973D4A;
	Fri, 16 Feb 2024 10:55:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708077343;
	bh=Ck/+exqg1EcWWvcqDsaDHQJ5Wz7v5d1Bcq/AocX7McM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KxMnnzdZCFB7zbcpbYQXjh6IH5fiMOXLTu7Ya62pT9LbG0lR0o2uDBN86/CjgVQ5V
	 cEO/RZsQscHKFe0cjQqtXUFrAwC+xwRH3hwcJbME4drGbrhOkIoRcWXJHrgv66Zkgl
	 pE0BeByhKjFIfJMcN2z0BTrcr9qtvc86i9YZyiFY=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v12 06/12] media: rkisp1: Add version enum for i.MX8MP ISP
Date: Fri, 16 Feb 2024 18:54:52 +0900
Message-Id: <20240216095458.2919694-7-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
References: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_015548_633630_94A4959B 
X-CRM114-Status: UNSURE (   9.54  )
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

Add to the version enum an entry for the i.MX8MP ISP.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
New in v12:
- split out from "media: rkisp1: Add match data for i.MX8MP ISP"
- changed the version enum name
---
 include/uapi/linux/rkisp1-config.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 730673ecc63d..2d1c448a6ab8 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -179,12 +179,14 @@
  * @RKISP1_V11: declared in the original vendor code, but not used
  * @RKISP1_V12: used at least in rk3326 and px30
  * @RKISP1_V13: used at least in rk1808
+ * @RKISP1_V_IMX8MP: used in at least imx8mp
  */
 enum rkisp1_cif_isp_version {
 	RKISP1_V10 = 10,
 	RKISP1_V11,
 	RKISP1_V12,
 	RKISP1_V13,
+	RKISP1_V_IMX8MP,
 };
 
 enum rkisp1_cif_isp_histogram_mode {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
