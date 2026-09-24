Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6DF6C98317
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 11:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vog4XQIsdsNe/YhmRHS9Ye1o6BPlsINb34PlOe6QnoQ=; b=zdfKEDnubV7s2X
	bHhhacA2CXCQSsE1f3Z6S1H7RMDLcQZ3XjG1mP+3BQTt2c++SEiNyu29MX/bKE+35+Y2uMaBIiJ1F
	qjknvMVH4KYaZMwlfnenhXwRdhGdqKn7ZA0zga101r0uHA55yuiECrBp298znz9En0Bqxt12KQ0ue
	2vfE70dstKC8NOl/E92lcZE2CVP/hLbXo/Ls2DwV9NY5tWGCkoG2fLDInmezScd3oeXz36JjvLdBJ
	RhGCG8JnT7hKiz1SQrj5W0MgkAcq4DdRM7oyHhq2LpLYxi/bdZ8z6OvFbegfwbMaFAqKOY8bsqRf/
	kmf8ss0Fmybr6z7N3EqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hJn-0000000Aol2-0cGM;
	Thu, 24 Sep 2026 11:08:47 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hJd-0000000Aog6-485B;
	Thu, 24 Sep 2026 11:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1790248111;
	bh=Mtojtg2W6FyqJ5AJ/ZxpFW1x6w9Yz/ywA++HVXDlACM=;
	h=From:To:Cc:Subject:Date:From;
	b=ocQyk7DbaikGw0zgzuelLathBbin++rYWY6niIWlI/zGqBFZ5Va3m/nazybK/Zeyj
	 3LcFBGya6804bUX9znjrdxeWV1GQGIJNMSg19qyhc2JYGmV33VO77VV2OlG3kQfzzP
	 G868lC2jBOQXWru9za1D6itTrwhvEzFLoc0A+OXtysoQYceIAxDsNyay8l71NrfBZY
	 nFxExuMF+uA9u2IY4+Uel7k8/1k+xYhqtuvJbttE7qoHVUntug5IXaLWPvj4attWRi
	 a8hIQlFa+RnpxBQsup1C1cBsQZLEnkE/+JtdX7RxvMTWrLcvUnU/XPOHH4pgyI1G9q
	 I4Tp98py3QtbQ==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E278C17E00A9;
	Thu, 24 Sep 2026 13:08:30 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 0/3] Remove unused variant and code clean up
Date: Thu, 24 Sep 2026 13:08:22 +0200
Message-ID: <20260924110825.166238-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_040838_176376_BF2C4925 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

"nxp,imx8mq-vpu" variant has been tagged as deprecated since 4 years
now. This series remove it and make some context's fields useless so
remove them too.

changes in v2:
- have a separate patch for documentation
- fix dt-bindings
- rebased on v7.3-rc1

Benjamin Gaignard (3):
  media: verisilicon: Remove deprecated variant
  media: dt-bindings: media: nxp, imx8mq-vpu: Remove nxp,imx8mq-vpu
  media: verisilicon: Remove useless internal fields

 .../bindings/media/nxp,imx8mq-vpu.yaml        | 10 ++--
 drivers/media/platform/verisilicon/hantro.h   |  8 +--
 .../media/platform/verisilicon/hantro_drv.c   | 21 ++-----
 .../media/platform/verisilicon/imx8m_vpu_hw.c | 60 -------------------
 4 files changed, 11 insertions(+), 88 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
