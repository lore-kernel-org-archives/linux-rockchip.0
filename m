Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7362FF885E
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 10:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOlTILhBF3pRobqBpa3au5C2i9yRUkquCkJm5BGeGfo=; b=LZuEA8cE8D4n3Z
	lKUbQbEzFEk+k6gonRg1dTLVFoy0u1HKFZSNvulfojiBQu3cJWYI6qvMiEPihM9qYxdj9poIOknea
	7kfXYV5fRqDwrWs6J47CjDY997shq9QIjGxEtdX/gOkaAizMfxOIY75mdBVGNNhguhodT9MF7tP+Q
	UFiktDNlGv6bpfaKIUIY3tX4W272eXIAmKUkxnLSyBjzEgUVhSyFCtjiVnQQ4JOiOMJHtL3hxALgp
	BI+Ay7SSDrBmtzyvYa3jC/Zj+mlVwNIeySUII1GEI/JZwk5U90qhtRDFPPwYkV6SmZoGAgG6Xk5c+
	Y9kEvXhSmdppxvxsrJvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJLx-0000000GhrY-1gJp;
	Mon, 27 Apr 2026 10:38:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJLu-0000000GhqY-3h2q;
	Mon, 27 Apr 2026 10:38:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Yp6hw9YMUgyBOlWT7AEyu22BSsvL8XW4ydyheGX7ebs=; b=ungP194ke67KZU5pOYDrDK4HRt
	39+h5iKodZrPPc3WP3GJYIdwdDcuK7sfhBdP/fYS8mBpBW0L+4x7+27aTH8nwmc6AVV4RkcoT7DQL
	IkYwhSHkJRRfA9FPYpGD4uGLFm0ZI50bARTZK4MxIq/FDHWr40hHzrnqTDe/8VSoZGfJWozga84HQ
	dTJRkKQGn3u1R9MosVaskZDpqpb55lW9AvrkzxjlGm102hV9MJGIFvnl2WC4lDCVylE54QDvn+rPr
	nj/JKQmt/ZRhA5tZmTcyE9H0Dz+Nxzz34vQ/1ZwD8fuDmhEvIsml4+mPFHCnzS4g9jZXFhu0c+gef
	y2SGQNEg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@gmail.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Dennis Gilmore <dennis@ausil.us>
Subject: Re: [PATCH v8 0/6] Add support for Orange Pi 5 Pro
Date: Mon, 27 Apr 2026 12:37:57 +0200
Message-ID: <6856027.GXAFRqVoOG@phil>
In-Reply-To: <20260425031011.2529364-1-dennis@ausil.us>
References: <20260425031011.2529364-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_033810_937419_8DCA7694 
X-CRM114-Status: UNSURE (   7.88  )
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

SGkgRGVubmlzLAoKQW0gU2Ftc3RhZywgMjUuIEFwcmlsIDIwMjYsIDA1OjEwOjA1IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGVubmlzIEdpbG1vcmU6Cj4gVGhpcyBzZXJp
ZXMgYWRkcyBpbml0aWFsIHN1cHBvcnQgZm9yIHRoZSBYdW5sb25nIE9yYW5nZSBQaSA1IFBybywg
YmFzZWQgb24KPiB0aGUgUm9ja2NoaXAgUkszNTg4UyBTb0MuIFRoZSBib2FyZCBmZWF0dXJlcyBl
TU1DLCBTRCBjYXJkLCBOVk1lIChQQ0llKSwKPiBhIE1vdG9yY29tbSBZVDY4MDEgTklDIChQQ0ll
KSwgV2lGaS9CVCAoQkNNNDM0NTYpLCBkdWFsIEhETUkgb3V0cHV0ICh0aGUKPiBzZWNvbmQgdmlh
IGEgTG9udGl1bSBMVDg3MTFVWEQgRFAtdG8tSERNSSBicmlkZ2Ugb24gZHAwKSwgYW5kIGEgNDAt
cGluCj4gZXhwYW5zaW9uIGhlYWRlci4KCm1vcmUgYXMgYSBnZW5lcmFsIG5vZGUgYXMgdGhlIGRw
LWhkbWkgdGhpbmcgaXMgb25nb2luZywgeW91IG1pZ2h0IHdhbnQKdG8ganVzdCBzdWJtaXQgdGhl
IG9yYW5nZS1waTUtcHJvIGJhc2ljcyBmaXJzdCBhbmQgZG8gYSBzZXBhcmF0ZSBzZXJpZXMKd2l0
aCB0aGUgZGlzcGxheSBwYXJ0cyAoYm90aCBkcml2ZXIgKyBkdHMgaW50ZWdyYXRpb24pLgoKVGhh
dCB3YXkgdGhlIGNvcmUgYm9hcmQgc3VwcG9ydCBjYW4gYWxyZWFkeSBiZSBhcHBsaWVkIGFuZCBn
ZXQgdGVzdGluZy4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
