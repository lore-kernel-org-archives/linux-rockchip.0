Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04A0DC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 02:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xl5CahPy8T2VkxppQYIv8QFFezCN9rjupMOkGK9KYDc=; b=vXgDn+T3ewDvSe
	DM/cGSMj/aj5Fbn+OYzozkzLkqCVAcXzjRastAbeMCWDOBF08Ay4mnaSMoYREewUPh2NqXUVHm05/
	zfsNcazrlC8W59fCjSYkqr5FbHNH7OBOHBm71Mw9hEQWPwGwlLRoMX53hfThxbhviztNdyRD5ruel
	7Vd7sK6/nxx14Vr9uYUd7IWYKY4dcMKVPXbM3K8ebYOCjlenyNYLNUPgoyoY1G/Y5lVMYZyH2Rg2w
	0K1XcmW7+0Q6QpT61aC5p6jvIG4uRjzbtvjlWAcEUNPGKj4HXvJb8Wtxc+A/3N4kmrs8aErAPNoMO
	h/5PLH2MWlSfu2tn4niA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roaEb-0000000EiCC-3SF8;
	Mon, 25 Mar 2024 02:38:49 +0000
Received: from mail-m127103.qiye.163.com ([115.236.127.103])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roaEY-0000000Ei9T-3xLL
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 02:38:49 +0000
DKIM-Signature: a=rsa-sha256;
	b=XJu3axtJuclKjDhrBiJnfTTZK1beWCElLQpLCJ5C0A3Z0UK70ZnF8fBg/PxSPLRmYBjnhK46XOcecJ909nhrPk7cH0/VXPmKLQkfPqn+7Sd4sSBwjETQv+zBG8HK26ljiVGSAkoO5dAJ4UrFFFHDKIx49wyPdl2wXJrFJ2rE8p4=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=jMh34jf4s6vSoWqvWlOz1uTF/jW64ljn7FLzVGPFfxU=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 8C1707C0373;
	Mon, 25 Mar 2024 10:38:10 +0800 (CST)
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: heiko@sntech.de,
	vkoul@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dmaengine: Add support for audio interleaved transfer
Date: Mon, 25 Mar 2024 10:37:49 +0800
Message-Id: <20240325103731.v1.1.I502ea9c86c8403dc5b1f38abf40be8b6ee13c1dc@changeid>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUtLQ1ZNTkJOQ0JMSENOTkpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSUxOVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8e7378f5c309d2kunm8c1707c0373
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDo6SBw*NDMLHg04HAscSjQd
	MRkKCT9VSlVKTEpKSEhPSUJKTU5CVTMWGhIXVQgOHBoJVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSkJLTTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_193847_579912_12D5E77D 
X-CRM114-Status: UNSURE (   8.08  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch add support for interleaved transfer which used
for interleaved audio or 2d video data transfer.

for audio situation, we add 'nump' for number of period frames.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 include/linux/dmaengine.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index 752dbde..5263cde 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -144,6 +144,7 @@ struct data_chunk {
  *		Otherwise, destination is filled contiguously (icg ignored).
  *		Ignored if dst_inc is false.
  * @numf: Number of frames in this template.
+ * @nump: Number of period frames in this template.
  * @frame_size: Number of chunks in a frame i.e, size of sgl[].
  * @sgl: Array of {chunk,icg} pairs that make up a frame.
  */
@@ -156,6 +157,7 @@ struct dma_interleaved_template {
 	bool src_sgl;
 	bool dst_sgl;
 	size_t numf;
+	size_t nump;
 	size_t frame_size;
 	struct data_chunk sgl[];
 };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
