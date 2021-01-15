Return-Path: <SRS0=MHCR=GS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0127C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 16:38:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71342238EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 16:38:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71342238EF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EJCc9ARUBsJwFzPN5wmAUqiBGXXOgsX+J5yVsaBYHf0=; b=aiUQIGG7O9lWRyNc+wwJOB9uI
	MXcF5SL10EttevlcgMmdjbg8OpYx7/TzzuqgnuzCitMtE5O4qYQqIOX1wtEkvvWfmSPf7TRIBw0AN
	B5/FQ3MYlI+53JqYqPNd6EauNKAmskKPr0t+uTSrNShXcPkC4UUcVqus6k8xkadrEI6/ahgb/4KR5
	+/G7SxFtni1y9P4wE3QJx0Zcy14sdQYKWQD4qrZalmzgWWZ1G+R5/G7pAP6hnSXknPcN0wLaDChF4
	vMzN10n2XnnpCi26Qi5Nwt4OR8slELimg4I7CWmbWsRqbglU/45KZqF1qsinlKCHblU1oQu6PdEn7
	FD7HQbsjw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0S7b-0004FH-K2; Fri, 15 Jan 2021 16:38:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0S7V-0004Ce-LJ
 for linux-rockchip@lists.infradead.org; Fri, 15 Jan 2021 16:38:44 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l0S7N-0006YA-RM; Fri, 15 Jan 2021 17:38:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
Subject: [PATCH v4 1/3] media: rockchip: rkisp1: fix comment about number of
 histogram sub-windows
Date: Fri, 15 Jan 2021 17:38:27 +0100
Message-Id: <20210115163829.217131-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115163829.217131-1-heiko@sntech.de>
References: <20210115163829.217131-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210115_113841_757404_459F31C3 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The histogram data is divided into 16 sub-windows, not 25.
See RKISP1_CIF_ISP_HIST_BIN_N_MAX being defined as 16 for reference
and this also matches the datasheet.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 include/uapi/linux/rkisp1-config.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
index 6e449e784260..ba443771cc0b 100644
--- a/include/uapi/linux/rkisp1-config.h
+++ b/include/uapi/linux/rkisp1-config.h
@@ -846,7 +846,7 @@ struct rkisp1_cif_isp_af_stat {
  *
  * @hist_bins: measured bin counters
  *
- * Measurement window divided into 25 sub-windows, set
+ * Measurement window divided into 16 sub-windows, set
  * with ISP_HIST_XXX
  */
 struct rkisp1_cif_isp_hist_stat {
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
