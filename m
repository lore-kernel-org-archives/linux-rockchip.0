Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD356C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 06:03:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B1A661151
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 06:03:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B1A661151
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=posteo.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YIUt/7EjCTERSFHnyXuOTiMWR1gzNQAnhweB7NQMoYk=; b=htuxJxRa2f5aM1lYbB2n8Y+3wn
	iDzpFhsGpSkdBUqmMZ7Xrox2EZubjwxgEj0XhGl2IIM8DCnvcqNNP+BEsDjR6cwf7MCk+BcA+m4Sy
	sg+R8YWCKL7f50Vop9xmzS7Z3AHlkQjQHi3opaky4A9mxLqjdR9RsRwgXO+y2Ms/RS7b0lJqUaBEN
	vj/FqTr3WNrHFoIHKdvN8ckQwExmfp90iMPALZohgKndN05fxvi8SwMnhmk5y0FDJ0lmY+h+6odEU
	IDA4nTwiobc5AaCX/omGb+DVkpLotXVTXa5STK3MfqeTETpQ4NwZBvgtbo4sNEeUcjmca+83t4uFt
	tk3VzS6Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYMzu-009BjF-Sn; Mon, 19 Apr 2021 06:03:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYMzi-009Bid-Sh
 for linux-rockchip@desiato.infradead.org; Mon, 19 Apr 2021 06:02:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=szQX1yP7p84A0Cfef1CrEfA3eka/GB+0rZE7CMAex7c=; b=We6PC2F0T+NNVN9/fl3NfDyYG/
 CSxInk65hAxMX5f+Xg8OsnyCqowSWqJDlv3I7GxFPasukN1wnfWZlKaylp5eS7RVrmOIqZyBaZ17p
 zMmgEIYRU6+MIToHR3oM9/PSm2IAwUDXkUjYhqKv126rIfWG9d372hOtGOodlYBOcIBoNULZdpzYo
 ahE79wt1A8zCPuTjqz0gttPIO3mdibwOZRVIJ91DGJWkFsQfiqPmpEI57Jap0ZmIrtYQ5aSj2Yo5L
 bcBH1CBUlpRfn497zEh6Avjml7jU/CyacfDVAt7i1mePak4AdAlxpkKrUEsfeAsvvM4+O6AEa0Ypx
 VzzRA+Cg==;
Received: from mout01.posteo.de ([185.67.36.65])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYMzd-00B2iW-MP
 for linux-rockchip@lists.infradead.org; Mon, 19 Apr 2021 06:02:49 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 25D9E240026
 for <linux-rockchip@lists.infradead.org>;
 Mon, 19 Apr 2021 08:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1618812158; bh=3IN80IYONT6oAz2dlhNOkGlr8EfsfOZFECs2S2AKsJg=;
 h=From:To:Cc:Subject:Date:From;
 b=Kdi5uWStoeT96EzLrsaSs1pQMSzaSOZCWNM64Me6ttTrwLhpWNMdEvZILhK3Cn/xG
 hB022fPn2+9+GAJ3kyaQEIUjeA/38l4AZd3aUWmlQFsUmeiteoP+B3zu4ev6eGvzpd
 JFIsSsi09xgmrI36Icu9Lbz7B4C9d8jivJOzYaVXQhFFOiGQe0PyGQC8lhx2VBck67
 BS/axrFjYRp//tjV8R2C/Qmbgjjz6pdTESgM+MYno6J5PS91LRKWD06GHnn+Wu0FRQ
 aG+M8oa5uoJEqELsw5xy5WWqo3sxJCjBsIncVq9TMYSKtKuDyzxIKR+1qLAnDH9PII
 yFQ49PQ5KaXjw==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4FNx703jlqz9rxG;
 Mon, 19 Apr 2021 08:02:36 +0200 (CEST)
From: Sebastian Fricke <sebastian.fricke@posteo.net>
To: linux-media@vger.kernel.org
Cc: Sebastian Fricke <sebastian.fricke@posteo.net>,
 Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] media: rkisp1: rkisp1-params.c: Fix typos
Date: Mon, 19 Apr 2021 06:02:25 +0000
Message-Id: <20210419060224.44353-1-sebastian.fricke@posteo.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210418_230245_880898_0D51E802 
X-CRM114-Status: UNSURE (   8.33  )
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
s/thus not isr protection/thus no ISR protection/

Signed-off-by: Sebastian Fricke <sebastian.fricke@posteo.net>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index b6beddd988d0..ead948a2d01e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1258,7 +1258,7 @@ void rkisp1_params_configure(struct rkisp1_params *params,
 	rkisp1_params_config_parameter(params);
 }
 
-/* Not called when the camera active, thus not isr protection. */
+/* Not called when the camera is active, thus no ISR protection. */
 void rkisp1_params_disable(struct rkisp1_params *params)
 {
 	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DPCC_MODE,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
