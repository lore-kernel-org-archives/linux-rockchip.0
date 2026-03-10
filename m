Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BADDFFCC9DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 09:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/loXkQ1vM02O4sjmkApWykeodexDcXrbSuYhiEFt/g=; b=TewwSUO5ELiiEz
	C5/Zy3RlcZcyehoCeDK56XEFiUzHamQGPe0DD2LjtgvpoI+k1FA3AGqOJr3uLarOwjpLGmsf5R1QP
	51jyJ3NmInqj9Gy0hocc4+Uo7UkT65fr1nm4jDu4SyAQBIS5dcqyNBWErACLkls1FPbphwrNrd3CQ
	6QgRsELBUkbNQ7kN7DIquVU5sqhgIm/O8/RQ7/E35Jr+AUoIzOT7uEk+daACb/H86ScRYttsxMl12
	yqA3Bgum1r9QFOiNaWGqMJjX7LyDjk+ee0E37TBuLiA5ERbta/YEFPKGtBOshxYCk2LkO+6pXEeTb
	c0q9D0QTxjDeCPw1BPbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzt1n-0000000920N-2Pjv;
	Tue, 10 Mar 2026 09:05:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzt1i-000000091yg-2VwC;
	Tue, 10 Mar 2026 09:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=M8pNDEtotLUhhRZIK1FscdSEc+0KR4iTe7nbV8NtZNg=; b=VByBN9Dn95xghDhOxw1yKNiwXM
	r67u85KhS+vpERHVwqtLGbtjeyLoXNagYYcAX8ZctMPr8ne6sDu25dL2HJCVlZWY/iFmVV/CPLqkc
	qYRBH2tW4/G6lIjbhDLA+XUtw9uYyjrtL7qprvhpQ/dX+X0jFt1C0zdtWcGEVOizceKRbaPBmm9Du
	R7zF05ExyeiTVeZXKOrL0tOLbziga2vhEufAO1uflnwBXSeTgL670SpR/YSALzrF1fYy7awaJd23e
	bRb5sAoIe2u0GOEqjtFBsDPj1eaTEMgFJfUBUc6zGQB8K980vOgBj+koQex7zA3cQb2aNRegoEzrQ
	fZkpOlxg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Frank Wunderlich <frank-w@public-files.de>, david@ixit.cz
Cc: Martin Filla <freebsd@sysctl.cz>,
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
Subject: Re: [PATCH v4 3/4] arm64: dts: rockchip: Use reference PCIe clock generator
 for BPI-R2-Pro
Date: Tue, 10 Mar 2026 10:05:04 +0100
Message-ID: <4743255.cEBGB3zze1@phil>
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-3-37abd7ba29d0@ixit.cz>
References: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
 <20260304-rk3568-bri-r2-pro-fix-pcie-v4-3-37abd7ba29d0@ixit.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_020518_638982_BBDA74D2 
X-CRM114-Status: UNSURE (   8.51  )
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

QW0gTWl0dHdvY2gsIDQuIE3DpHJ6IDIwMjYsIDEyOjA1OjI5IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgRGF2aWQgSGVpZGVsYmVyZyB2aWEgQjQgUmVsYXk6Cj4gRnJvbTog
RGF2aWQgSGVpZGVsYmVyZyA8ZGF2aWRAaXhpdC5jej4KPiAKPiBEZXNjcmliZSBwcm9wZXJseSBQ
Q0llIGNsb2NrLCB3aGljaCBhbGxvdyB1cyBjb3JyZWN0IHRoZQo+IHRvcG9sb2d5IChyZW1vdmlu
ZyB0aGUgdmNjM3YzLXttaW5pcGNpZSxuZ2ZmfSBkZXBlbmRlbmN5IG9uIHBpNmMgYXMKPiBzdXBw
bHkpIGFuZCBhZGRpbmcgdGhlIGNsb2NrIGRlcGVuZGVuY3kgaW4gdGhlIFBDSWUgbm9kZXMuCj4g
Cj4gU3VnZ2VzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+IFRlc3Rl
ZC1ieTogTWFydGluIEZpbGxhIDxmcmVlYnNkQHN5c2N0bC5jej4KPiBTaWduZWQtb2ZmLWJ5OiBE
YXZpZCBIZWlkZWxiZXJnIDxkYXZpZEBpeGl0LmN6PgoKSSB0aGluayBwYXRjaGVzIDIrMyBjb3Vs
ZCBkbyBzb21ldGhpbmcgbGlrZSBbMF0sCnRvIGFjdHVhbGx5IG1vZGVsIHRoZSBjbG9jay1nZW5l
cmF0b3IgYXMgb25lIG5vZGUuCgoKSGVpa28KCgpbMF0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/
aD12Ny4xLWFybXNvYy9kdHM2NCZpZD1jZmUyZDY1MzMyZWZmOTVhYzczMDg0Nzg4OTc3NjA4ODhm
OTU3YWViCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
