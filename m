Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC693CA0EED
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 09:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5y6XC4zUCX4b5BpSSJsNJBki3TQ7wq/cST525Kx1zqs=; b=DvvlXQ/STH7zwO
	RJTPUwV14uQxHTGi99ULoIX6vp5XajRFryvJADEY/oRwdCYoQmiwPUbUf+pXF+VIZwVcDVzJVw5vE
	EnKXGeH7DTB2ZQlrQ8R5emfFoGO95oNroCb3jh1tcAN0bpneys+UiBG3Msj9Qc2vG5zyKHGNREAkk
	AuY8DUMJsUUeebRfrubgdNM8JzuAAHySOyNA7TIZxpGHUDpey6lfXzMWjTXIAOe0j4z0OxOcdVRTu
	+u1j8EvaMn5mB18JhFttCIof+HFROcbc1Zz9So/M+iTSB1fnN+bQLnQkunY+7XmjGw6tyHt8lgkb5
	RfaT2XDPmZAXSC4MIOlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urYrM-00000000wwi-2MMN;
	Thu, 28 Aug 2025 09:23:56 +0000
Received: from mail.dealista.pl ([94.177.238.196])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urXoi-00000000lMe-2d0A
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 08:17:09 +0000
Received: by mail.dealista.pl (Postfix, from userid 1002)
	id 5B50886844; Thu, 28 Aug 2025 10:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dealista.pl; s=mail;
	t=1756368699; bh=qcP5dcos5mZ8jV4yTLFLEHzXO5jTY/q0Nu8iMRmEEWE=;
	h=Date:From:To:Subject:From;
	b=GO01AhUCcavM6eaGY50I3VMArycM3YKe6LLJfJVqhmsUzmgX3SlDPt4024amJ1ip1
	 +5msHgUreqB0YXXmD4piakM69n3JQcbe9ZtMVU/5XJTB7wJWPabFBxuoF6U1FlU7qt
	 F0P7HTDpEJqEJmNB60luIa0elwDQRpiVq+unVhAkrtN2FPXjGACYUHRsisdR09TfhI
	 pS1EiSS+RchtWsC98iFDewo49JDrcZlbeDlYNBZZQt+JbGSJCB+Hfu+ZH2WqxSca9I
	 vGQLMnRfjoD512lC0z/GknpP2ij8qvz5A/4nZGewMS8O+wZJBe6h+vcpcQUnDQr8wU
	 qkkdq3JGy34tw==
Received: by mail.dealista.pl for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 08:10:27 GMT
Message-ID: <20250828084501-0.1.bi.1bm20.0.681f9o1j1a@dealista.pl>
Date: Thu, 28 Aug 2025 08:10:27 GMT
From: "Robert Kozielski" <robert.kozielski@dealista.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Pozycjonowanie - informacja
X-Mailer: mail.dealista.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_011708_797157_0404AC72 
X-CRM114-Status: UNSURE (   0.15  )
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

RHppZcWEIGRvYnJ5LCAKCmpha2nFmyBjemFzIHRlbXUgemfFgm9zacWCYSBzacSZIGRvIG5hcyBm
aXJtYSwga3TDs3JlaiBzdHJvbmEgaW50ZXJuZXRvd2EgbmllIHBvenljam9ub3dhxYJhIHNpxJkg
d3lzb2tvIHcgd3lzenVraXdhcmNlIEdvb2dsZS4gCgpOYSBwb2RzdGF3aWUgd3lrb25hbmVnbyBw
cnpleiBuYXMgYXVkeXR1IFNFTyB6b3B0eW1hbGl6b3dhbGnFm215IHRyZcWbY2kgbmEgc3Ryb25p
ZSBwb2Qga8SFdGVtIHdjemXFm25pZWogb3ByYWNvd2FueWNoIHPFgsOzdyBrbHVjem93eWNoLiBO
YXN6IHdld27EmXRyem55IHN5c3RlbSBjb2R6aWVubmllIGFuYWxpenVqZSBwcmF3aWTFgm93ZSBk
emlhxYJhbmllIHdpdHJ5bnkuICBEemnEmWtpIGluZHl3aWR1YWxuZWogc3RyYXRlZ2lpLCBmaXJt
YSB6ZG9ieXdhIGNvcmF6IHdpxJljZWogS2xpZW50w7N3LiAgCgpDenkgY2hjaWVsaWJ5IFBhxYRz
dHdvIHp3acSZa3N6ecSHIGxpY3pixJkgb3PDs2Igb2R3aWVkemFqxIVjeWNoIHN0cm9uxJkgaW50
ZXJuZXRvd8SFIGZpcm15PyAKCk3Ds2fFgmJ5bSBwcnplZHN0YXdpxIcgb2ZlcnTEmT8gCgoKUG96
ZHJhd2lhbQpSb2JlcnQgS296aWVsc2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
