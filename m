Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39061C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 09:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=trO6z9a4w5CXBeBLz/BCjzfi8Lt+SlI3y+WY60VCv9I=; b=iACEu0ohvER7l1
	vqRf+5COG+5+ZkRddEFz9pk6iFQHnD4vtFRN8srNqX0hgRlUcy5EA2em94kYFIG2fsUQe2Hz9nMzJ
	wfJIikU8p5a038vIyaAtl/Glh6rAAUw0g45T8A4fQoMYi1PD5eo0hppMj4NN39I2qqpzYHAL0fz/m
	qKQ48iB6T3RI7MQL/nR9t8uogKM4Cg+p4dgek0iXpanezypoqLhjgl84GqoC/+wVbkBCuMFhBN0Oa
	O0vQLxFPOsiLWj0Gdl9AI1W/yyeleiFbPa1KX0xUR4WxXCLa0hE2rs8Yad/RzquKJAtWGlYV9e7LD
	AgmQEiFU7bcRR9IdNVYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trvtM-000000059B5-2Z9O;
	Tue, 11 Mar 2025 09:27:16 +0000
Received: from mail.commetro.pl ([217.61.16.142])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trvns-000000057yk-3IeP
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Mar 2025 09:21:39 +0000
Received: by mail.commetro.pl (Postfix, from userid 1002)
	id A0C2683458; Tue, 11 Mar 2025 10:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commetro.pl; s=mail;
	t=1741684606; bh=COht1CALZmZz8MRkow5xVDQUyVzx29Nu6ozA/Y0jgb4=;
	h=Date:From:To:Subject:From;
	b=feJAWcjdzpF62h53+KJ42GYGEnEoQYDQMPovd4yH2gO84ip06EVf02mK1BJu9Hm9s
	 gwNSnFoFMRRidVvq8cl5XIkXihChi0gBptct131KtvJVEd/YqUgKhfJUnSpms/pGhR
	 CjMZ9W6u8nMFvDN6VWhjRjpISQ62x2eLWJcch8kpOT2tpvmK3BIWsilReqAdAkSpsV
	 jpLPZ9UsVEcSNadcJj4r21ZWqHHS9jtEk59xLAE4SaFFvjHPvOr5JYqyoF7h++aCXU
	 710mGs5SiEeV/PQurqF1Nvj5V1n7C+/pWOat3Yf9nFQ9ZkAMGeYZVyoys4E2k9wgvm
	 //VFzMu/ycHDw==
Received: by mail.commetro.pl for <linux-rockchip@lists.infradead.org>; Tue, 11 Mar 2025 09:16:06 GMT
Message-ID: <20250311084500-0.1.1b.fkln.0.khtlpc0xh9@commetro.pl>
Date: Tue, 11 Mar 2025 09:16:06 GMT
From: =?UTF-8?Q?"Jaros=C5=82aw_Kownacki"?= <jaroslaw.kownacki@commetro.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_ofert=C4=99?=
X-Mailer: mail.commetro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_022137_484670_54C98ECF 
X-CRM114-Status: UNSURE (   1.36  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IHBvdHJ6ZWJ1asSFIFBhxYRzdHdvIGFrdHVhbG5pZSBub3d5Y2gg
a2xpZW50w7N3ID8KClNrdXRlY3puaWUgcG9tYWdhbXkgcm96cG9jenluYcSHIHJvem1vd3kgaGFu
ZGxvd2UgeiBrbGllbnRhbWkgemFpbnRlcmVzb3dhbnltaSBQYcWEc3R3YSBvZmVydMSFLgoKWmFw
cmFzemFtIGRvIGtvbnRha3R1IHp3cm90bmVnby4KCgpQb3pkcmF3aWFtIHNlcmRlY3puaWUKSmFy
b3PFgmF3IEtvd25hY2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
