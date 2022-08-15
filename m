Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C25FC00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Aug 2022 10:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N9tIuiBKTq/8INzfXEcVKEzMemanOy927Jd9CboH+Yo=; b=jZ8hJWm/MT0Tzv
	yv1MhhW9PJrcG56DQeMi0idY0bmg4aSIhhvaVbfkt8y6PfEXVqw5Xi5qr1Lbdy3d92KBiB60kTlEw
	YYWrzisNcz7pFpMnZ1B5MXx2+QLDxYjV8s2CzT34LXL4Pn9+XW64aJKYCIcUjCM3LUQ0YnZ3xBKob
	nNUlQ+VCs9CKRQLTOTgXTRS9QEYgQB8/+61KssLM91EMem1GpHbhIONgrRFz8JxmZ4+OhCF+sXDeT
	Fj7KNtn8OmMv41i8C3YYggUxrl/1aZO4nIfWmOn6bmW0pKSC8zrAbTVVdPNSRhXJixJyU675l7+Ws
	HCkB0yKJMPSuIHgP48vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNXUl-00Er8M-3V; Mon, 15 Aug 2022 10:38:55 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNXUU-00EquD-B6; Mon, 15 Aug 2022 10:38:41 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id ACD865C00A1;
	Mon, 15 Aug 2022 06:38:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 15 Aug 2022 06:38:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=undef.tools; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm1; t=1660559911; x=1660646311; bh=l7tzxS11gKHrXKaS8T9yXyMkE
	8x+VVDK1NsLzxeV1wI=; b=kIXBtljSQPTxfbpnr5ETctb/X6WOiJlnD4gd9hjEw
	OKl0ToDc3D71s7jvH57GssWiHJgPMFEOubFKODK4Wv0j9GJmbl4FGsHsjCxWMP/m
	F8/NX678CEWMC9RtPrqNe0b+ClOTm61gGiVr79kDBhshx73Myoi/xtd7Gnnms1MK
	91G67rxsdbw++uGeqm5APDsejfnUkShaozn1g+4PrdcN8BiL60e/uVC4FBJ5wgb2
	yIMFUY2kK90lTSY2S+ut73gjguULZ0SgQIsWG0FUkCbdU41xqpplNxiqlNInOCUN
	2B1bmMXVe67etzKC2hoKIivc3oS0fpKXtFxX3zJOJgluQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1660559911; x=1660646311; bh=l7tzxS11gKHrXKaS8T9yXyMkE8x+VVDK1Ns
	LzxeV1wI=; b=qaVQGMPI94iPnqpZxLkN1o5MblWmMOZxwgqP6D1JQLYPVuF4jQp
	9HM02Ep5mu/irrTMDcSRJPc+y8xAMqXkPQC8+NXGwUNoUUvdGVYtU5cZ+blEX6Xf
	Gl3p70SP7IDVi5yDRhvsUnkuC1Wnzb9JqTvcTeGLNh9z0KWdB9KCX2D8ckvadlsV
	EGKwDaXeu3P7yrh9emNHmXdcC1fAxMDGOvqJ94NeXlprr643e9NjPMmb8uWKeMEK
	SZrZx9HZlvJEVAVaaUq1Akb0MR+vS3i268Nwdd2HNryzb3qjMcdhZ0S5ImA/oR/7
	niO4NCINL1/6svi7cJ2AsbT1VZBax0JErDQ==
X-ME-Sender: <xms:JiL6YlQGdttFvqPnpKgJwVFt2oJ0HzZtxjn9B442w0uK5Z_B9JRfzg>
    <xme:JiL6YuxFVnAa4dAM_xsX2ZK8M92SE-3lkL2RJMh5wSklNhgpkLjx_O0IAKhl-GjWs
    gThyH7IpoUHixgqnxU>
X-ME-Received: <xmr:JiL6Yq0lfmxUZQ3VOr2fo8wm7cU3UKrPOD5yGFoZ5uxWLfzBIiaIn3oSfxt-avK_T7R_dgV1uHDe_YMMULWSGPb8pozY_ZnCzObPY0-E-YxLN66Hw9sMdTYlgQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehvddgfedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomheplfgrrhhrrghh
    ucfiohhssggvlhhluceokhgvrhhnvghlsehunhguvghfrdhtohholhhsqeenucggtffrrg
    htthgvrhhnpeejueevgfejfeeghffhfeehvdffleetheekkedvfeehieetuedtheevgefh
    geekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hkvghrnhgvlhesuhhnuggvfhdrthhoohhlsh
X-ME-Proxy: <xmx:JiL6YtDk7o0FclxYF3M3-heuBfLlR8ewnFWUwu36iAW0AauqPtEuoQ>
    <xmx:JiL6YugQTpwBo9WWoWrfORrTiMwMnMhSbIHnvn-b0Ob4uRAlBBriBw>
    <xmx:JiL6Yho_NPdA54dkOdOsJR0-D0Mm0pV__NN39kshRbLsQCSIEyYu7g>
    <xmx:JyL6YpPZxrLshMykFemM7UJtSTDLc8lorJWG9z80RJF8TyljzQLKTw>
Feedback-ID: id76147eb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Aug 2022 06:38:27 -0400 (EDT)
From: Jarrah Gosbell <kernel@undef.tools>
To: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: phone-devel@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>,
	Jarrah Gosbell <kernel@undef.tools>
Subject: [PATCH v2] media: rockchip: rga: Fix probe rga_parse_dt bugs
Date: Mon, 15 Aug 2022 10:36:22 +0000
Message-Id: <20220815103621.86509-1-kernel@undef.tools>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_033838_627698_26565ED0 
X-CRM114-Status: UNSURE (   9.93  )
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

From: Ondrej Jirman <megi@xff.cz>

rga_parse_dt is missing a error return, so if some of the resources
return DEFER_PROBE, probe will succeed without these resources.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Co-developed-by: Jarrah Gosbell <kernel@undef.tools>
Signed-off-by: Jarrah Gosbell <kernel@undef.tools>
---
v1 -> v2: use dev_err_probe to handle -EPROBE_DEFER.

 drivers/media/platform/rockchip/rga/rga.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 2f8df74ad0fd..61b25fcf826e 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -816,7 +816,7 @@ static int rga_probe(struct platform_device *pdev)
 
 	ret = rga_parse_dt(rga);
 	if (ret)
-		dev_err(&pdev->dev, "Unable to parse OF data\n");
+		return dev_err_probe(&pdev->dev, ret, "Unable to parse OF data\n");
 
 	pm_runtime_enable(rga->dev);
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
