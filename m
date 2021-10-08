Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFD3DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:55:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD55060F59
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 09:55:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AD55060F59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFk0YAgaJFDxACtg/T9Jfe6600eWQfGZmFNgIm/FrKE=; b=rmo308sovIJ6oH
	YeF+/J3FbfHU02O8Vj7LD7ZTvBLLn5+fWoIvunK5gnI+bJJp+5rv52/v1JjElpn2AYWV99GSIl4yn
	LH51MsROUfKf3OcmEc+Tsfipxb7UyqrSCPrEoCs4nD4DwA+pDrg4c+Gwm9HuS/RiwKUShnXYxwnHo
	fwfi/qP/F//KqwBss7FqDDpv7vW0Jirlma6ToASUZpHrmJ8CC6e/ErpGx60s2t6Kaq0GsRsofuYu6
	kxKqc3Bb+tqzyW7EoTPEauQSs/9wUHDse98SKFeBMdlATiMG1ihFbZwaPGJyhFMs467i28ILg3pXr
	ZB1v1fWFITjF75Wq6/Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYmaj-002HlO-JZ; Fri, 08 Oct 2021 09:55:01 +0000
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYmaK-002HbU-Ae; Fri, 08 Oct 2021 09:54:39 +0000
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 56EFB40008; 
 Fri,  8 Oct 2021 09:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1633686871;
 bh=TuVTrdle0GA/hj731likpqii9Ao75WSiuD/GlabjbTI=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version:Content-Type;
 b=g6Fx4ISKggvBOHcX7uB9bC9mN2rP9e5a7wkPU48MaqVKI1Fnfy8mY+o0cYPtpntzL
 vUSL67MOgzuz8Y0ljrv2meRl2KB/BhnsGvb4zCtmD3lONj3WmjPUh0haHOfyteEHkO
 YTiJBXTvaK+DFBV73JxoeXGdD1VGv4lyu4q6rYDRug0LHUmzNreRv1xARdNY9Rh5H0
 jC1V4o7N7AJDrNvFB8suk2YDml4zT+PUhincACr/EN/YdhMFljHzClBjacAVG34+YK
 7IYdkjuYzUUJTdRcKLuksRqq4gOQAS+Ub5kOF5ovbLBzL0801qHLTumG5SnT9ZGGcc
 YAwUTHyEP1B6w==
From: Colin King <colin.king@canonical.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2][next] ASoC: rockchip: i2s-tdm: Fix error handling on
 i2s_tdm_prepare_enable_mclk failure
Date: Fri,  8 Oct 2021 10:54:30 +0100
Message-Id: <20211008095430.62680-2-colin.king@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211008095430.62680-1-colin.king@canonical.com>
References: <20211008095430.62680-1-colin.king@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_025436_682546_C3E96B81 
X-CRM114-Status: GOOD (  14.32  )
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

From: Colin Ian King <colin.king@canonical.com>

In the case where the call to i2s_tdm_prepare_enable_mclk fails the
function returns before the error handling goto is executed. Fix this
by removing the return do perform the intended error handling exit.

Fixes: 081068fd6414 ("ASoC: rockchip: add support for i2s-tdm controller")
Addresses-Coverity: ("Structurally dead code")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index cc5a2f9d3948..396277eaa417 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1736,8 +1736,8 @@ static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
 
 	ret = i2s_tdm_prepare_enable_mclk(i2s_tdm);
 	if (ret) {
-		return dev_err_probe(i2s_tdm->dev, ret,
-				     "Failed to enable one or more mclks\n");
+		ret = dev_err_probe(i2s_tdm->dev, ret,
+				    "Failed to enable one or more mclks\n");
 		goto err_disable_hclk;
 	}
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
