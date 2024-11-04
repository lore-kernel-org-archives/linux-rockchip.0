Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D14FD1BDD4
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDa5tFaIhr5bgODNcukdMN3rjzETuDK9mEsmJGW41ic=; b=uBe91Ss8du61v/
	fm8njTpEJKrPojoKddYY2dBkikWvl61yU3LueuiGF77+CHSTadfEow3CVUGijlUn1eQ20+UEjC+tR
	zOq6vt/2K8bLeQ+oWKT4+xXbjEt8jFCQfZF4CwNtfVUE0jtLjdYDIq7CNma4BbI3vI6ckC581cIV7
	YDJYcKZmeV7bcs7VTdKJMpNDL4DrsuuYDcSemgoBRHiqBWRAAjZSsQQAfAL3RYp4E8jJeltkZif/y
	k778Um4QhYSzMfqKjYiSwTBipDOFoxgrwtcaWcuNv47xtc1fnyqd7V5HHsx8K1miYFjQXe+egQPL1
	RoecbxbRvif3cw3Aojdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t81P8-0000000Edmo-2fgc;
	Mon, 04 Nov 2024 18:02:18 +0000
Received: from a7-44.smtp-out.eu-west-1.amazonses.com ([54.240.7.44])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t810B-0000000EYWN-2eHg
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 17:36:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=bc7lryepznv65m6r2ewkpoafjt4fiq42; d=collabora.com; t=1730741787;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding;
	bh=yl34RGvn530eol6KKKlCd1cMYmqiFsLcin5kdTgiGlw=;
	b=mEUqLzMKEDY11vgHNBOEWhqra23z0MbmnlnBV9Ayu6orbyeSjuNGlt3N6O8bwQT/
	DdMKoVjCMy9VSybDjpXB+0WnX8iSzW2SmtcBqGBWPDjJs6GEnMQrVnWHp4v6RZY45Ml
	BmkNPllZL2/x/ul99B1u0BBAq19J0Kxl+cAzhpyQhV5HClhANo7jJthpQRhJCXzZvo3
	MxmNENuEpZeHARQLQ2bCs7LZbUZeC9KYLfgm67Yricciy+IL/JmPAaHJ4//PzjjxGKW
	cM9nL0BuTzS50dt0TWVR338dhT+Vwj5gI9HqGgKMhjZAWDFLdcWnHVjvmo+rzDELz6P
	KOPj9mT2mQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1730741787;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=yl34RGvn530eol6KKKlCd1cMYmqiFsLcin5kdTgiGlw=;
	b=VzbPvsWEt4eG9KU6Ym0jzfXfbM+oysnmdHnLHPy//ijja75sY84DZkvYywkiVUS4
	bq+9yJ8ev5DYTNyxRbyl/FLHwt2cXmY8pbBbeDjKvbE3Dfm5M2IgJ0JNTU9xQGZQOJj
	0Hvnrbq8y/TDLaFo09Y1GM1pT/Ini5dgAPjhvDbo=
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, 
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 0/2] media: verisilicon: fix reference padding issue
Date: Mon, 4 Nov 2024 17:36:27 +0000
Message-ID: <01020192f83fdb1f-34d2a074-79e4-4fb8-af50-f065312cb65f-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.11.04-54.240.7.44
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_093631_884663_D27E0205 
X-CRM114-Status: UNSURE (   7.88  )
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

Hantro hardware is splited into two parts: the decoder which produce
tiled pixels formats and the post-processor which produce raster pixels
formats.
When post-processor is used the selected pixels format may not have the
some padding/stride than the decoder output pixels format. This led to
miscomputing chroma and motion vectors offsets so data are overlapping.
This series introduce a reference pixels format that decoder use to
compute the various needed offsets and size.

With this series Fluster for VP9 tests is now 207/305 vs 145/305.
HEVC test score isn't impacted by these patches (still 141/147).

Benjamin Gaignard (2):
  media: verisilicon: Store reference frames pixels format
  media: verisilicon: Fix IMX8 native pixels format steps values

 drivers/media/platform/verisilicon/hantro.h   |  2 ++
 .../media/platform/verisilicon/hantro_g2.c    |  2 +-
 .../platform/verisilicon/hantro_postproc.c    | 28 ++++++-------------
 .../media/platform/verisilicon/hantro_v4l2.c  | 21 ++++++++++++++
 .../media/platform/verisilicon/imx8m_vpu_hw.c | 10 +++----
 5 files changed, 38 insertions(+), 25 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
