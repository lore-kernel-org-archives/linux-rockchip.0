Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC6B7C197BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 12:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H+knr5mOpjXdVc+sb613/jxqDTX9Oif5KDMplrqOHgg=; b=A1jedZn1aP+Qzp
	lQkqqUeFP/lHkAx+Ju+PRkOSPozB+bAKBzCFrped3kRRzZogaQeBJ5FlAElkvZhpGv4YT41RUwxZ9
	oVU/NxC7dkDeeCOVL9eqrYuWOcvPsbmJbMge50drR309KPG1oit8TSCzIBR84IpIYCpl28/J+VGvl
	fjGORhmJWiCm+7FLz8KFHN4pQbcmlylFs4LlQzwNCOVJzqgkalm0zRaHxRwrBRNsFk0kldCYjg5eY
	hT6uROLgMVIJDzXWL2hKXbW1uYptJZjJoGB5thVzHiBdlrjBPLoRJSH4/xDNWSr7AY1UNsZcbFl+e
	ZM/KTiMHN95mnAZ38pZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncnL-00000007Jx1-33OR;
	Thu, 27 Feb 2025 12:15:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tncLz-00000007EP6-1qNx;
	Thu, 27 Feb 2025 11:47:00 +0000
Received: from ideasonboard.com (unknown [IPv6:2a00:6020:448c:6c00:a3f5:6799:2ce9:5b66])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1C1906A6;
	Thu, 27 Feb 2025 12:45:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1740656728;
	bh=m0byIXM8l1cSjYztsjedplkoLC9ZBtvnC08V8sv8PfM=;
	h=From:To:Cc:Subject:Date:From;
	b=U2/9bzRLid0pBsKRIyD9nae+aOeDLTcv4guOuQog4GnnVNNw17mnTz34zBreMfu1P
	 pUl8GEg2EhwH2JmV8vjxLqSalGj/ReCv6zNxKlWzjq9FxmXVY6F9rOaAYad74LIjYR
	 NRf7ES2BoZEwRAIRSHjmza5UGnxgB7e2hFR1o0HQ=
From: Stefan Klug <stefan.klug@ideasonboard.com>
To: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Fix full range quantization on rkisp1 based devices
Date: Thu, 27 Feb 2025 12:44:58 +0100
Message-ID: <20250227114558.3097101-1-stefan.klug@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_034659_798196_19FAA13C 
X-CRM114-Status: UNSURE (   9.77  )
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

Hi all,

After I sent a patch too early yesterday, I'm sending the corrected
version now. This series fixes two issues with the rkisp1 driver and
full range quantization. It was developed and tested on a imx8mp board
(Debix Som). With the current code it is impossible to get full range
YUV data by selecting color space JPEG (fixed by patch 1). But even
explicitly setting the range to full range results in image artifacts
due to incorrect range handling in CPROC (fixed by patch 2).

Please see the individual patches for more details.

Best regards,
Stefan

Stefan Klug (3):
  media: rkisp1: Set format defaults based on requested color space
  media: rkisp1: Fix the quantization settings of CPROC
  media: rkisp1: Remove unnecessary defines

 .../media/platform/rockchip/rkisp1/rkisp1-isp.c   | 15 ++++++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-params.c      |  8 +-------
 .../media/platform/rockchip/rkisp1/rkisp1-regs.h  |  7 -------
 3 files changed, 15 insertions(+), 15 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
