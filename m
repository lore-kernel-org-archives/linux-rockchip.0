Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F33CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 14:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iNa3+CaKuHl59/wT9AM4nDbpuuUmnjOYkVp2vOpoNcE=; b=plYK2skGxvoQhp
	NNcbbby4Ej7kw/QshdCe8XowGchGJB0e4wiuGFyUdkGgCs9o9jebd/S97sbkxubC368bvMuxs29Qo
	t5z9XoXiEYcqM62CVnXRTJjnpxk8xnQbT54/Iww5A9fdrpZe6agPD02oZ30zHvLsZ1I6rswY/8LQN
	hqbBvvUnUd8Iqo5KdcA7yC1x8gQF2T4vj0oxtaNNh2Pm/x/uKXmZG7Aw1MchNYk41JJ0Xp46j7Ns/
	7uZDSp5VBMHDFN5gZ8DCPu4qIJBRJ1WqCKWuuukDuSShvZxfXuldYOYPar96YtgpHZCbBuO9wT9Bm
	UzuNmrjFJ6saYS3pa2KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGesV-0000000DsMq-2ycH;
	Wed, 05 Nov 2025 14:52:51 +0000
Received: from mx01.omp.ru ([90.154.21.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGesS-0000000DsLh-1c09
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 14:52:49 +0000
Received: from spb1wst022.omp.ru (87.226.253.162) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Wed, 5 Nov
 2025 17:52:31 +0300
From: Karina Yankevich <k.yankevich@omp.ru>
To: Corentin Labbe <clabbe@baylibre.com>
CC: Karina Yankevich <k.yankevich@omp.ru>, Herbert Xu
	<herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>,
	<linux-crypto@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <lvc-project@linuxtesting.org>, Sergey
 Shtylyov <s.shtylyov@omp.ru>
Subject: [PATCH] crypto: rockchip - drop redundant crypto_skcipher_ivsize() calls
Date: Wed, 5 Nov 2025 17:52:04 +0300
Message-ID: <20251105145204.2888978-1-k.yankevich@omp.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [87.226.253.162]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.1, Database issued on: 11/05/2025 14:42:52
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 59
X-KSE-AntiSpam-Info: Lua profiles 197802 [Nov 05 2025]
X-KSE-AntiSpam-Info: Version: 6.1.1.11
X-KSE-AntiSpam-Info: Envelope from: k.yankevich@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 75 0.3.75
 aab2175a55dcbd410b25b8694e49bbee3c09cdde
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_uf_ne_domains}
X-KSE-AntiSpam-Info: {Tracking_black_eng_exceptions}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {relay has no DNS name}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: 127.0.0.199:7.1.2;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;87.226.253.162:7.1.2;omp.ru:7.1.1;spb1wst022.omp.ru:7.1.1
X-KSE-AntiSpam-Info: FromAlignment: s
X-KSE-AntiSpam-Info: ApMailHostAddress: 87.226.253.162
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 59
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 11/05/2025 14:45:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 11/5/2025 1:23:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_065248_427093_02289D43 
X-CRM114-Status: UNSURE (   9.58  )
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

The function already initialized the ivsize variable 
at the point of declaration, let's use it instead of 
calling crypto_skcipher_ivsize() extra couple times.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 57d67c6e8219 ("crypto: rockchip - rework by using crypto_engine")
Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
---
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 9393e10671c2..e80f9148c012 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -321,8 +321,7 @@ static int rk_cipher_run(struct crypto_engine *engine, void *async_req)
 	algt->stat_req++;
 	rkc->nreq++;
 
-	ivsize = crypto_skcipher_ivsize(tfm);
-	if (areq->iv && crypto_skcipher_ivsize(tfm) > 0) {
+	if (areq->iv && ivsize > 0) {
 		if (rctx->mode & RK_CRYPTO_DEC) {
 			offset = areq->cryptlen - ivsize;
 			scatterwalk_map_and_copy(rctx->backup_iv, areq->src,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
