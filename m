Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB548D11183
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 09:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i43lf1vmdMbCCvwcfxVpE1QvnRLU/qmrD9az2sxOdHY=; b=X4fm7pBJIFENI/
	g348eL1n/c/tYU7MoxOPveLn1OhyPnJpWucszU5d5sz/JARJWl/jpFERy70qT6rAwFM8Idl9+hey2
	v412yLRPANOWGGjqScg2ZJppkcfHE+U6YJboHzV7m8Nq2IR9M+frbEovSkLnk5EXzpByLlmlfcJMh
	2KXCAn30fgsldLLMyOUMHD9C7vh2ovVL3qffaUx68py9BrkcvitHjbSZg/YJ4Q+FnOe7jTRhDv/ri
	rFMw8lTVUfQ7juwW4922mIkUaZhdV2VsM6EiFfMbBVD8HIv1XbEqs8wWmDgE3mIEjFIHSveIoRuvJ
	53aALhdyLivyzpMaumPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY3a-0000000GG7M-1aCE;
	Thu, 27 Nov 2025 09:12:54 +0000
Received: from mail.vexro.pl ([141.94.250.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOY3Y-0000000GG72-1SH8
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Nov 2025 09:12:53 +0000
Received: by mail.vexro.pl (Postfix, from userid 1002)
	id 6A450A8C31; Thu, 27 Nov 2025 10:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=vexro.pl; s=mail;
	t=1764234731; bh=Q6Mp/vCJCiZNgk6fb7utkqIErbcoVoR/CugPofoeCtU=;
	h=Date:From:To:Subject:From;
	b=xpfVFEfCs/Qey0fu1pyLK0qsTzusnmjYBEP8XI+GptDwBGlcGtkx+uw2FlEpFihvF
	 2hKBt6wiPvhHMFLhXmikPKC19Yt9deRpNy5hYFFQIxEYzwPqs9vLpgi360G/K/Ajx1
	 OVH2Fr8uxO/QvYrjOdHqYjUZHkAxVFsgdhCn165tUPbqWMKyPOkQRnd6td0IKuOBT/
	 CfePH9ddjXdtiho8gbLmwk1S0oudVKVGGdG0+4+cbDTTJtMh7ZhODXDy+/l94ROlQ7
	 hO/KR8W7tYBs0ndb/3JaIooriRT287wFFsTQzr2L6tDEWpjrwsftE3vlEgeoRVNix7
	 Ydr3QRKXcuISg==
Received: by mail.vexro.pl for <linux-rockchip@lists.infradead.org>; Thu, 27 Nov 2025 09:10:34 GMT
Message-ID: <20251127084500-0.1.ou.4mrs0.0.h59f6hqefa@vexro.pl>
Date: Thu, 27 Nov 2025 09:10:34 GMT
From: "Adam Drzewiecki" <adam.drzewiecki@vexro.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_samoch=C3=B3d_?=
X-Mailer: mail.vexro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011252_540234_12F85193 
X-CRM114-Status: UNSURE (   1.31  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGludGVyZXN1amUgUGHFhHN0d2Egcm96d2nEhXphbmllIHVtb8W8
bGl3aWFqxIVjZSBtb25pdG9yb3dhbmllIHNhbW9jaG9kw7N3IGZpcm1vd3ljaCBvcmF6IG9wdHlt
YWxpemFjasSZIGtvc3p0w7N3IGljaCB1dHJ6eW1hbmlhPyAKCgpQb3pkcmF3aWFtCkFkYW0gRHJ6
ZXdpZWNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
