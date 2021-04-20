Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A173C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 17:46:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3ACA5613C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 17:45:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3ACA5613C2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=posteo.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=of/o0TjQqoXz071tq0TrE6cHJrmhuB1DzqOHtc/177Y=; b=pnE5GcyGqwz9q8UkGASfXod5r4
	0JbSpBtSBpVB1CPJykKPVPCSD3JNiFIANoNvkaH+IQIfe2rq7uz8nf5hZaERLM4MP/PfzjWlD0fCB
	d9+O7hjx41VwURPIE1ctcWqktScirkxjpA7gs3e+vUdzVc97TCoBvK19BNjHQZhY8RE5tK8OuVxfw
	zATdQXPzEiWjF0tqcG9g38XhgwYkjBrhapHydmEkG8uj8R9EHWFVHMl5Cmd8DpV0wluZlXHyPc2fW
	uaykvln85aP8C/QZFOR5B0nFYGRVZB1tZ236akzZMVLUEqSsv+tOwPBqg9f+OGb5ACb5qTiqSb3nd
	07bqJmXw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYuRd-00Cmj8-HB; Tue, 20 Apr 2021 17:45:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYuRV-00Cmi3-O8
 for linux-rockchip@desiato.infradead.org; Tue, 20 Apr 2021 17:45:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=I7ZXNnS841cQ4c3lIi9lI1O+Ks0LJhhYNFPF9in5oTM=; b=N8LjrvKBd6a1nqJKRogjK/xT0E
 owY1/Mo5LJYaytLiQFVCc5fvO4KfbY9Pkb0/XdCLrizVZB2C4lpulY0PF43Hj2UnlE4gfpjDkfXWo
 eZyvsaOzBFhY8QAyKAcpvgkpI833kn6n+pSHemm+USim85lzGZ6he3iW0HboCv6BGFmO3yyEMEcEO
 KHYMcR3dJDh8aXB3xQeTC35YT/mWlcAQGU2Nf6e6/xxSIV73DQGD7CmCiMJyipljNC53NHhhkSi76
 5EbhQ7TFV3mWt0ZehA3LuYpoSZKfo/JI0B7rZTtrpZQr3neYTNATC0jBZRlR8ZPX3vQ/poTqGqBC0
 QM3cGqWA==;
Received: from mout01.posteo.de ([185.67.36.65])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYuRR-00CKFb-Ap
 for linux-rockchip@lists.infradead.org; Tue, 20 Apr 2021 17:45:44 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 484F424002C
 for <linux-rockchip@lists.infradead.org>;
 Tue, 20 Apr 2021 19:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1618940727; bh=Y+3vP2qSfKuw36N6bxNiacbL2Ml26/86eq2z9cSuI7s=;
 h=From:To:Cc:Subject:Date:From;
 b=eo500J9OA4efSluC4LsPcX1jl9efIMF3JaCPXvr7qAkckahTV7gXEUw9kwawf4uMf
 alQXqwglxBRdWw3sqlYI9SfveN3dmZtqP+KXmSKF8g/+0t0Xab/rS6vSU9Jha/uiAp
 cJ3bQyjQE5KJxyEKH1lphkYhBLV1dKK+6jmTujV2gRte3+RKtYPQMmiFVwaDQGcibr
 9tnEKqF39/VDqYusiW77Y/b568SW14omHXf9KHFEbJHyWjniisdAhevtFrNPAHyYU7
 MuHfze+leaId7+ubHLkFpzDeCpmswmrQ5shYdw5D9tSsVZhJIVLyrbr4fiE/kRjWyU
 H11xB2Z0FUeSw==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4FPrgT1sGGz9rxB;
 Tue, 20 Apr 2021 19:45:24 +0200 (CEST)
From: Sebastian Fricke <sebastian.fricke@posteo.net>
To: linux-media@vger.kernel.org
Cc: Sebastian Fricke <sebastian.fricke@posteo.net>,
 Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] media: rkisp1: rkisp1-params.c: Fix typos
Date: Tue, 20 Apr 2021 17:45:22 +0000
Message-Id: <20210420174522.9618-1-sebastian.fricke@posteo.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_104541_524929_7B4CF713 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
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

s/when the camera active/when the camera is active/
s/thus not isr protection/therefore there is no need to acquire a lock/

Signed-off-by: Sebastian Fricke <sebastian.fricke@posteo.net>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index b6beddd988d0..529c6e21815f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1258,7 +1258,10 @@ void rkisp1_params_configure(struct rkisp1_params *params,
 	rkisp1_params_config_parameter(params);
 }
 
-/* Not called when the camera active, thus not isr protection. */
+/*
+ * Not called when the camera is active, therefore there is no need to acquire
+ * a lock.
+ */
 void rkisp1_params_disable(struct rkisp1_params *params)
 {
 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DPCC_MODE,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
