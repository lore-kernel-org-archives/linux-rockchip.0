Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1097DC433E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 70AF62076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="v7f8ni4Y";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="kgz3s8rj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 70AF62076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kGqCSW8MlDr4Yfsikfjt9fLJmN7nxlTDMINFThw6L5M=; b=v7f8ni4YT0OM6KXtYyUNDA9JT
	pyVaszeiDtDCUx4KvCCShrw2ixdqVUUx5my9F+x3sHrGVU+4dBT0f32MbnwnvFavvc0U1Ia1k65S3
	4uvEjMQJEeQKt2MUBXsDHkkvOzR4cwPjtaYPvYKqy2bBMAiR50DMTGwbfyd18jxXMW/9JRp+PuK3K
	Q+7fdKwWC2dteNXeaqNGPs26BfDlG2OGBno4gdNWEKXtJWCzlNqkWCGtiuwmgz9ZIC48ujlU7sabo
	QhVY4OReqzwBZWKNOA7XoKFC4hpzS8y8fkAv8VwC81QHdmISw0WI6l+QMHX7QzsXfx+Wh+aTGaGD7
	iYnO2ifCw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5F2-00084s-V5; Mon, 12 Oct 2020 21:20:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5F1-00083L-Ok
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=cAFpuYDTA1B+gTMqu074mzjn3gJNaop05CSI4gODXSo=; b=kgz3s8rjlNW7N0FVXTbDyn9uNf
 EITzNplCcfPLEI8Rh2NYMaJSGe9eDd10UY7osLDA8bAIyVI7jTtmEDgblBMcO6pW0b0010XawJCi0
 n6WCLUzwi9VGaWTe7DcrjaKWns0PMHFfhqnbr6bC/1YgSnFgD0Ra6DmO1Z4JF8PKFN2XXrk+3BerI
 P7aUsCRNyGpbZzHzcbnoExs8IMAI9eCZadccKVYresS446e/5KYlLS55xPHsmkLHa4oYOzXIrrGWA
 4Y7TQmPO0Ig4CYQATLzZ2D11Ok60q6Pbht1/4LJw1mg2wRBKtOrPYWdoUOXE8UDxTTQrEFb0ACkpz
 KX5q2pGg==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uV-0004nk-BH
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 62D071F44C56
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 16/18] media: hantro: rename h264_dec as it's not G1 specific
 anymore
Date: Mon, 12 Oct 2020 23:59:55 +0300
Message-Id: <20201012205957.889185-17-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215911_596281_5FAE0E93 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The h264 decoder is now capable of decoding on both G1 and VC8000 and
other HW revisions can be added in the future by extending the hantro
regmap config, so we rename it to reflect the new status.

All other core-specific files like "hantro_g1_mpeg2_dec.c" should be
renamed as well after they have been ported to the new regmap API.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/Makefile                           | 2 +-
 .../media/hantro/{hantro_g1_h264_dec.c => hantro_h264_dec.c}    | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/staging/media/hantro/{hantro_g1_h264_dec.c => hantro_h264_dec.c} (100%)

diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
index 52bc0ee73569..94f1e454c495 100644
--- a/drivers/staging/media/hantro/Makefile
+++ b/drivers/staging/media/hantro/Makefile
@@ -7,7 +7,7 @@ hantro-vpu-y += \
 		hantro_v4l2.o \
 		hantro_postproc.o \
 		hantro_h1_jpeg_enc.o \
-		hantro_g1_h264_dec.o \
+		hantro_h264_dec.o \
 		hantro_g1_mpeg2_dec.o \
 		hantro_regmap.o \
 		hantro_g1_vp8_dec.o \
diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_h264_dec.c
similarity index 100%
rename from drivers/staging/media/hantro/hantro_g1_h264_dec.c
rename to drivers/staging/media/hantro/hantro_h264_dec.c
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
