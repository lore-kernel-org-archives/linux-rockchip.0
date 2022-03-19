Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99FE5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Mar 2022 16:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yy+HPxa403UxIVsC8Cc6DMDXti6cXEm1cxiy6WMJCbg=; b=nCerrmJNn5nvmd
	NSYTZI5g3K2u94X44GP+TA3YUInAySsXMonoxUY50HkKk6AqqeoN8fFFEjohwRPESInHfJBChSux5
	p0zOLxruv1E4nRvuPSrMjKgMzUilZvd9gjBbfuPfXIzcyP/NqcODUFVL2uopdAa7OLMRthya+B0x8
	fzTVQSTRFzHspw988ltCPBA3LVP5l3RngtgPD/QpzX8a++pcIz6Yh0mz/hCehnd6rhCxoyx1ia0of
	WCCo96tvrPW9Ur50Ms0QUQw/uHkr5npaXfsllU7c6MK9daVookGi5AcCApeanlEUTNxWSFJxKQkK2
	Irah8fE7iOGaCaA7dJ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVbzj-0043Dr-SU; Sat, 19 Mar 2022 16:31:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVbzP-0042ou-TK
 for linux-rockchip@lists.infradead.org; Sat, 19 Mar 2022 16:31:42 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E98122CCF;
 Sat, 19 Mar 2022 17:31:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1647707498;
 bh=tcD2ACKWc9gJ6cif+GZMiiTUyuP8WlFFk5ZBdcMQ1h8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=agq+bsC4iYGQjsAIzpA3IJJ23O9bypPbG7zSYk5qfRvXppCsd3yXczyWTJJG8cTYg
 3wsoNslx1ZBNxnirmBXbk2WI0lR4ZlcXLnfeI25w7YUFHk9QKTnPnCCTvj4k6cF6wE
 H9f5AV3OZvGAMRTbu5E8rMKMhHJqyt2vJTbl+98I=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 17/17] media: rkisp1: capture: Bypass the main device for
 handling querycap
Date: Sat, 19 Mar 2022 18:31:00 +0200
Message-Id: <20220319163100.3083-18-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_093140_175406_FFDE5E40 
X-CRM114-Status: GOOD (  10.21  )
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
index a7cf672457cd..94819e6c23e2 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1248,11 +1248,8 @@ static int rkisp1_g_fmt_vid_cap_mplane(struct file *file, void *fh,
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
