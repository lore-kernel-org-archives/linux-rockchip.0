Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC76EC47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 08:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EMO0fYPwyXPEjSXDLH6s5Dhkol9Gio02+ujf1eOf2kw=; b=nL03KKwjScTIoN
	D04Q/6KKK8P/E7QAQktXh0A0OVj1B5i1c4/p7y19AXt7KeklP1hk6ve6vTBqKzeiZuMURnHJDV3Yh
	8PTpSkLRSPcjx/JYR2Qm/c+f8ai8zdcBvEUsosUYwx3hnzOZNU4/zQ6kvENsIVfbGiepN7zUCnFKV
	m1cDWsJt1q++LKN9D7aThpXDpG24bfb6bdaHqTphMKYeWg1k+OpErJ3iuZSWsQFxxzxXIrvtoB4GD
	2Njish1y941fLa1vMsoUhLiSxOo/Yqts/+kZDK3FYZyEz7oyo99Rrpm/8QF43wV8in6VcZCZHwpP4
	SoDqDcvsLNWc2iH3jKUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPerL-00BQIF-0C;
	Tue, 16 Jan 2024 08:31:47 +0000
Received: from mail.entropitech.pl ([141.94.250.74])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPerI-00BQGh-2r
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jan 2024 08:31:46 +0000
Received: by mail.entropitech.pl (Postfix, from userid 1002)
	id 45592A3B79; Tue, 16 Jan 2024 08:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=entropitech.pl;
	s=mail; t=1705393903;
	bh=3C0lFFl3FyqJxhWazybBxamNtYGn+JlC8TtPqc/zclI=;
	h=Date:From:To:Subject:From;
	b=BfLl74GxwVS4s9LOSglTrBXKcRhu+NhBENpsZGtapO3O6oyjmHi9729W+Lm5g2txu
	 vhSpFBFNBG67QfhUNqaoH1ldvVCPpiYus7zjaiuafkCZa0c8QzSAux59X0x0pKa3Gr
	 U/J2UUmhd4WA2Xvvehih8L+KWtns5MQjwi4nQ4yMpO/m1NNJgJx7DUm5huWFn6g0P1
	 rF3Zrc/6ESwyCbL7w5vyTaB0IRguKiPVDk902i4YqanqmLPFza/phh6Noz0hvpQCgU
	 W0KI5mjorcYuYoLn8yE8F7AzwRjh6/ypSnPIVh3iB9TPjt+9WCrLvujIv/G4LjKmgz
	 dWe69a1UrAGNg==
Received: by mail.entropitech.pl for <linux-rockchip@lists.infradead.org>; Tue, 16 Jan 2024 08:31:12 GMT
Message-ID: <20240116074500-0.1.ed.p5zp.0.ix1vjmgh9f@entropitech.pl>
Date: Tue, 16 Jan 2024 08:31:12 GMT
From: "Szymon Faryk" <szymon.faryk@entropitech.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Zam=C3=B3wienie_na_klimatyzatory_postojowe?=
X-Mailer: mail.entropitech.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_003145_075953_10C956B6 
X-CRM114-Status: UNSURE (   1.39  )
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

RHppZcWEIGRvYnJ5LCAKCmtvbnRha3R1asSZIHNpxJkgeiBQYcWEc3R3ZW0sIHBvbmlld2HFvCB3
IG9mZXJjaWUgbmFzemVqIGZpcm15IHpuYWpkxIUgUGHFhHN0d28gc3plcm9raSB3eWLDs3Igbm93
b2N6ZXNuZWogaSBpbnR1aWN5am5laiBrbGltYXR5emFjamkgcG9zdG9qb3dlaiBkbyBhdXQgaSBt
YXN6eW4uCgpPZmVydWplbXkgc3dvaW0gS2xpZW50b20gdXJ6xIVkemVuaWEgY3pvxYJvd3ljaCBw
cm9kdWNlbnTDs3csIG1hasSFIFBhxYRzdHdvIG1vxbxsaXdvxZvEhyB3eWJyYcSHIGluc3RhbGFj
asSZLCBrdMOzcmEgc3BlxYJuaSB3c3p5c3RraWUgb2N6ZWtpd2FuaWEgaSB6YXBld25pIGtvbWZv
cnQgdyBrYcW8ZHljaCB3YXJ1bmthY2guCgpNYW15IHcgc3dvaW0gYXNvcnR5bWVuY2llIGtsaW1h
dHl6YXRvcnkgcG9kxYJhd2tvd2UsIGthbWVyb3dlLCBrbGltYXR5emF0b3J5IHogcGlsb3RlbSBv
cmF6IHJvendpxIV6YW5pYSBkb3Bhc293YW5lIGRvIGthbXBlcsOzdyBpIMWCb2R6aS4KClpham11
amVteSBzacSZIG5pZSB0eWxrbyBzcHJ6ZWRhxbzEhSwgYWxlIHLDs3duaWXFvCBmYWNob3d5bSBk
b3JhZHp0d2VtIGkgbW9udGHFvGVtIGtsaW1hdHl6YWNqaS4gxZp3aWFkY3p5bXkgcsOzd25pZcW8
IHVzxYJ1Z2kgc2Vyd2lzb3dlIGkgcHJ6ZWdsxIVkeS4gCgpDenkgc8SFIFBhxYRzdHdvIHphaW50
ZXJlc293YW5pPyAKCgpQb3pkcmF3aWFtClN6eW1vbiBGYXJ5awoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
