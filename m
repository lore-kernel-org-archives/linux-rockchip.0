Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B67DFC617E
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 10:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEFNxpOVAhTAx5dFT9+FzCurvopJLj0vOiW7RNcXYhk=; b=URcaa5ZZpxK/WY
	96Z1wLGQH5RrOENxPHV5+mKIoZkfwntRBFOJagW/eZW1icmA2ss5+h6IPoCN8FaKHJoiWgHKGMy/X
	noZosHdA1hkXQd2GOQEl/SLUmA68y5XJPDxRFyGPsIvImK/3kNf6af4FCzpAnA4Y7EuyksOszU48v
	QfoeelJLX8qUjhewyRQfdStqBVVmimiNfc3nrBv9BVazgfGiyLO1xkafGol8RmM80SPyJiBzGk2YC
	4C7vCmWnaYTCu9HRUHsUa3Itgjf35srdJuhyjGWHcw8tvNrUxW/F5TowTBWNviyiCqJq5OIk8aXYF
	MNRMg7/VTtMsJVhnl1oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbz31-00000009DPe-0y0v;
	Sat, 03 Jan 2026 10:39:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbz2y-00000009DP3-2bgt;
	Sat, 03 Jan 2026 10:39:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5m7p8m10yK7qHox0wi3lALDmcBikD2hsMgWE5RZDzho=; b=tc79plr9scNNEtncd9A2ixqMX/
	jXl6eBLypvOGWsjRmEwxsbJ5fXUy5bad+uAOY4BjIsXDrva7RY1Ow90wRkyoKtBdvtRBQ6scqAIwA
	LfwyZkOgSvofW3uHnEj//5nLGxDKvfUx5WzzaIzWeLoz00dM12Nv5FCc7Go2BVz140SLJQJs4vSYH
	fOWJAVDDziIlQXat8DP6GJeRC8SLAN/4uYB8IqNwb7hSKSVPodlPC+9aTYbj3rsTQxu2FmUyeubxu
	vfp5iVox3Zx+V25LUzHgAIrEeHUgXQrWg4ECO4gjeoWnT+wP+jOKqUWMLt/VY4vN6XCi3JiWOfkPd
	IdWdlt+g==;
Received: from i53875bab.versanet.de ([83.135.91.171] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vbz2q-000vtH-Rg; Sat, 03 Jan 2026 11:39:41 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andi Shyti <andi.shyti@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Anand Moon <linux.amoon@gmail.com>
Cc: Anand Moon <linux.amoon@gmail.com>, David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH v1] i2c: rk3x: Add support for SCL output enable debounce
Date: Sat, 03 Jan 2026 11:39:40 +0100
Message-ID: <1802774.yIU609i1g2@diego>
In-Reply-To: <20260103052506.6743-1-linux.amoon@gmail.com>
References: <20260103052506.6743-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_023948_767992_254B1722 
X-CRM114-Status: GOOD (  11.15  )
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

QW0gU2Ftc3RhZywgMy4gSmFudWFyIDIwMjYsIDA2OjI1OjA0IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgQW5hbmQgTW9vbjoKPiBGcm9tOiBEYXZpZCBXdSA8ZGF2aWQud3VA
cm9jay1jaGlwcy5jb20+Cj4gCj4gQXMgcGVyIHRoZSBSSzMzOTkgYW5kIFJLMzU4OCBkYXRhc2hl
ZXRzIFJvY2tjaGlwIEkyQyBjb250cm9sbGVycyBmZWF0dXJlCj4gYSBTQ0xfT0VfREIgcmVnaXN0
ZXIgKDB4MjQpLiBUaGlzIHJlZ2lzdGVyIGlzIHVzZWQgdG8gY29uZmlndXJlIHRoZQo+IGRlYm91
bmNlIHRpbWUgZm9yIHRoZSBTQ0wgb3V0cHV0IGVuYWJsZSBzaWduYWwsIHdoaWNoIGhlbHBzIHBy
ZXZlbnQKPiBnbGl0Y2hlcyBhbmQgZW5zdXJlcyB0aW1pbmcgY29tcGxpYW5jZSBkdXJpbmcgYnVz
IGhhbmRvdmVyIG9yIHNsYXZlIGNsb2NrCj4gc3RyZXRjaGluZy4KPiAKPiBJbnRyb2R1Y2UgYSAn
aGFzX3NjbF9vZV9kZWJvdW5jZScgZmxhZyB0byByazN4X2kyY19zb2NfZGF0YSB0bwo+IGRpc3Rp
bmd1aXNoIGJldHdlZW4gaGFyZHdhcmUgdmVyc2lvbnMuIEZvciBzdXBwb3J0ZWQgU29DcywgY2Fs
Y3VsYXRlCj4gdGhlIGRlYm91bmNlIGNvdW50ZXIgZHluYW1pY2FsbHkgYmFzZWQgb24gdGhlIGN1
cnJlbnQgY2xvY2sgcmF0ZQo+IGFuZCBwcm9ncmFtIGl0IGR1cmluZyBkaXZpZGVyIGFkYXB0YXRp
b24uCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IERhdmlkIFd1IDxkYXZpZC53dUByb2NrLWNoaXBzLmNvbT4KClNp
Z25lZC1vZmYtYnkgbGluZXMgYXJlIGluIHRoZSB3cm9uZyBvcmRlci4KCk9yaWdpbmFsIGF1dGhv
ciBmaXJzdCwgdGhlbiB5b3VycyBhcyB5b3UncmUgdGhlIG9uZSBoYW5kbGluZwp0aGUgcGF0Y2gg
bGFzdC4KCgpBbHNvLCBkb2VzIHRoaXMgZml4IGEgcHJvYmxlbSBmb3IgeW91LCBvciBpcyB0aGlz
IG1vcmUgYSBjYXNlIG9mCiJ0aGlzIGxvb2tzIHVzZWZ1bCI/CgpUaGFua3MKSGVpa28KCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
