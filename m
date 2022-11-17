Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67696C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 08:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=62by9DEDzlId8WWxCDxHNaAnXTbxHSlek04dkTfq5ns=; b=SbHPm97FbBWihU
	hYPCX8aLqqmvImSgTVh6hAWk201B78H084ZczlcoYDMWtliecmTKHkmvAIoTlrj+kSjuHYKcem8m/
	yS9mpPG811PbcZgtDWBHNsmkQgeRt6A/Xt33nTuvbahmeAbQ8eqPbBuBDv8Lx7ECcVslo52wGULvc
	bvgncKeo7d4Pm8WDGgfSzs0VwpTIbjnHJmA8pp34BHpixPw3wHS/8HKm9TLRDQnPrsZ5tjDUbyOEg
	sUdWRo5HAX2ZJQ4bRsBBypFGYuYsM8lK6ONe//l/3KfkHxtIrcaspfx14+XGwfPHCkgrrzKszsu1Q
	bkgiMiQbG0/s8+YtsAZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovaWN-00BmHi-Dg; Thu, 17 Nov 2022 08:45:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovaTu-00Bkll-CI; Thu, 17 Nov 2022 08:42:47 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B5E356E0;
	Thu, 17 Nov 2022 09:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668674553;
	bh=GesO4lDOfgoAFgRLJP+AnBfnRtub6PScqO3q3Eoh5Fc=;
	h=From:To:Cc:Subject:Date:From;
	b=k/hcRzAK/hevcw2go0xjSnhiKGfFTksQhC6CxeNCTY6wPis8Xz7sqcbvXXGvqDtp2
	 brFANgU1Mdg9KlXnd8VhYI7wSEg8TJSE1hdBoZZFp1cExQQvKIP/ZlndeVdCr9mE3/
	 XP8RFoJnXxK5v/de9NQ0C09DgPYftPr3f0mlqDkM=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] media: rkisp1: Miscellaneous improvements
Date: Thu, 17 Nov 2022 17:42:14 +0900
Message-Id: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_004246_590367_97049443 
X-CRM114-Status: UNSURE (   8.43  )
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

This patch series adds small improvements to the rkisp1 driver:
- Add NV16M and NV61M output
- Implement ENUM_FRAMESIZES

As well as a small code cleanup.

These patches have been sent before individually, so really this is a
resend, which also bunches them together.

Laurent Pinchart (1):
  media: rkisp1: Make local immutable array variables static const

Paul Elder (2):
  media: rkisp1: Add NV16M and NV61M to output formats
  media: rkisp1: Implement ENUM_FRAMESIZES

 .../platform/rockchip/rkisp1/rkisp1-capture.c | 64 +++++++++++++++++--
 1 file changed, 60 insertions(+), 4 deletions(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
