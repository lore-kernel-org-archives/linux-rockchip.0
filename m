Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFA52C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 04:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tEeYa7haCAAegQ8zAQwq1LUjO7bFiWjbLLCVXtqYL7Y=; b=sWwi+TsI45TaN+
	0eiGcNGt17Vvl4NeVqMNrE0oCgnRCOLGz+EyRa8PZRGmWzd6dXRQj7xGukxUXU0E74NKHUU5569WJ
	wsGTdfVW4mGTvb9z6Sqpbyu+zjfVMEFoW7FFIzAj2MkqFxSmH74kBnbozmPb4JQGeYMlrVxEscbQ4
	OxZBMvU8bfZETec4ki/A+FvI3PPMRmHQacxkNvJDn9cN/LT7fKzLyR6HnO09KU3gTGyTstDoXViJL
	ynL9+hM3tBJpE9H5akBTcIOtGwylVoIswWAPuMoq01EMn0Iz6pf6Cb+h+XOnlTxiVuDjeoXlrNVad
	4TuIj0v7167EuDCW7+cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMfYv-0000000CXNd-2zZJ;
	Wed, 04 Jun 2025 04:17:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMefA-0000000CQVu-10P8;
	Wed, 04 Jun 2025 03:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=7vSiZE4HoUSKbaW7XhTE0K3ds9fcZZ/tQHD6EYfAQDo=; b=U4xhM6p81E4GQofifaArgnPjjl
	RLnM3mUtm/NYQV8F6TvS1n/Q7xQ2OXJxX02LeBO2PvRkLxTQhFtXfC9ser+mXgv0IfU0917onjjB+
	K6PmksxPhmt0QAIslVuy0K1x2Ab2hujwqIgB16REQaenzS6vI/pem8Y7ElmkqNc3DTKN6sUrW3jtn
	AM2fbHj6hPuR+HWt0cFwztUBNhsZMZsSfy6/6iHxhW08Lv2rQCmg3B2w6QYHna/CktH8Zlcf6R2o9
	Jn/bX6sfjp6Lvg9OqM0HCME6LXsAiZMZioRSziQPRv5t81Wdvj+eYimQTjGnBrn4aRS6PZ/0mcmrL
	0hk608FA==;
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMef6-00000000qvQ-2zdI;
	Wed, 04 Jun 2025 03:19:34 +0000
X-UUID: e6bd0c8a40f111f0b29709d653e92f7d-20250604
X-CTIC-Tags: HR_CC_AS_FROM, HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CTE_8B
	HR_CTT_MISS, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_DIGIT_LEN
	HR_FROM_NAME, HR_SJ_DIGIT_LEN, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER
	HR_SJ_NOR_SYM, HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT
	HR_TO_DOMAIN_COUNT, HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED
	SA_TRUSTED, SA_EXISTED, SN_TRUSTED, SN_EXISTED, SPF_NOPASS
	DKIM_NOPASS, DMARC_NOPASS
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:ac2b5b67-f461-4be0-86f5-f140d85816cc,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-INFO: VERSION:1.1.45,REQID:ac2b5b67-f461-4be0-86f5-f140d85816cc,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:-5
X-CID-META: VersionHash:6493067,CLOUDID:bf73bdf337e657ee96ed1ba791fba56f,BulkI
	D:250604111336Y8FCD4MN,BulkQuantity:0,Recheck:0,SF:17|19|38|66|78|102,TC:n
	il,Content:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:ni
	l,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD
X-UUID: e6bd0c8a40f111f0b29709d653e92f7d-20250604
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 499770508; Wed, 04 Jun 2025 11:13:35 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: nicolas.frattaroli@collabora.com,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Pei Xiao <xiaopei01@kylinos.cn>
Subject: [PATCH 0/2] Cleanup in rockchip_sai.c
Date: Wed,  4 Jun 2025 11:13:28 +0800
Message-Id: <cover.1749006565.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_041933_424637_BD7F1E52 
X-CRM114-Status: UNSURE (   4.28  )
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

1.Simplify the condition logic in
2.Use helper function devm_clk_get_enabled()

Pei Xiao (2):
  ASOC: rochchip: Simplify the condition logic in rockchip_sai_xfer_stop
  ASOC: rockchip: Use helper function devm_clk_get_enabled()

 sound/soc/rockchip/rockchip_sai.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
