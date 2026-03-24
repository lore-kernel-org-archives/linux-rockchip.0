Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F173FEC104
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 22:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/sOVdgr9ElG1Qc7cUvhFpusLejIDj6VTDuLv/YKoVg=; b=DXwlFqPl/gk+70
	+hNt5fwbRirFLwvyTLKS1QMfyNIW4AdtHNqYdS9LSGCih2QjwSDdwBBU/WrAzvn+xZQOe7HVs4jlP
	wJa8U1UKAuIojWaD9VIaPV+hvmuHySoUVgdbA7/pRqPeYtwS7KCptCWwTqgnFjah+zLL4Kjvgb/+X
	DKBDGWqYG5s8d1yNh21eQE7K7kcqtuDm/kSV47U8sWtIuyc1QBRnR4bQYTD03pLKu/74m51ZEWAQL
	tWhwGCqQ/J1LW8LO5poFRPDtuQ4up67ME28sQHVbSZ77avqW9Gz1c7hzuasORm4rDroNvBh1xuzi1
	dcWCqSqQqQY46ePgpnTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5AEH-00000002JOS-1kc2;
	Tue, 24 Mar 2026 22:28:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5AEE-00000002JO2-1YfH;
	Tue, 24 Mar 2026 22:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=V3gld30CC/yUh8wAsj33dTrf4cqP87g/8NsYlEhB37I=; b=EvgsFLXu69P0N9Jf299wrsywDx
	PK4xGnPpKiCThvwYdqEjq+sp2g5tZxgGCU+b54CIpjprafspupOR9czL0pQhwQ6/Kq2qUd1xON3hN
	WZwGHSdcTbgSrxe/J74zhUOY7eDKpswDDtQtkcgtdeE2TvrcrN/db5gjh9pr+tr9y5vgBF5oL97MH
	N+NZO8wpf7TWHrLqWkuzYkMFIp02XYFqj/Fl8imG8IdxD7285qg5dMcmSZXPAW8eBWgfSoe++bClI
	pWDf8t/UpIt17ZAdnDuxdL8vRm4NYuEoo1YjMILVfGoE+ovbKabHUhqjvAgbqdiauyjjzfVEybRyT
	X+/jf6Yg==;
From: Heiko Stuebner <heiko@sntech.de>
To: MidG971 <midgy971@gmail.com>, Jonas Karlman <jonas@kwiboo.xyz>
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com,
 jonas@kwiboo.se, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v5] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
Date: Tue, 24 Mar 2026 23:27:47 +0100
Message-ID: <10821700.nUPlyArG6x@phil>
In-Reply-To: <533f27c9-e970-449b-a431-4ba41a566aaf@kwiboo.xyz>
References: <20260320094441.128263-1-midgy971@gmail.com>
 <177437177535.786081.7519498810130807269.b4-ty@sntech.de>
 <533f27c9-e970-449b-a431-4ba41a566aaf@kwiboo.xyz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_152802_490948_EB677324 
X-CRM114-Status: GOOD (  15.31  )
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

SGkgSm9uYXMsCgpBbSBEaWVuc3RhZywgMjQuIE3DpHJ6IDIwMjYsIDE4OjE1OjM4IE1pdHRlbGV1
cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBIaSBIZWlrbywK
PiAKPiBPbiAzLzI0LzIwMjYgNjowNCBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiAKPiA+
IE9uIEZyaSwgMjAgTWFyIDIwMjYgMTA6NDQ6NDEgKzAxMDAsIE1pZEc5NzEgd3JvdGU6Cj4gPj4g
VGhlIFJhZHhhIFJPQ0sgM0IgdXNlcyBhIFBJNkMyMDEwMCBQQ0llIHJlZmVyZW5jZSBjbG9jayBi
dWZmZXIgdG8KPiA+PiBwcm92aWRlIGEgMTAwTUh6IHJlZmVyZW5jZSBjbG9jayB0byB0aGUgUENJ
ZSAzLjAgUEhZIGFuZCBjb250cm9sbGVycy4KPiA+PiBUaGlzIGNoaXAgaXMgY3VycmVudGx5IG1v
ZGVsZWQgb25seSBhcyBhIGZpeGVkIHJlZ3VsYXRvcgo+ID4+ICh2Y2MzdjNfcGk2Y18wMyksIHdp
dGggbm8gY2xvY2sgb3V0cHV0IHJlcHJlc2VudGF0aW9uLgo+ID4+Cj4gPj4gVGhlIFBJNkMyMDEw
MCBpcyBhIGNsb2NrIGdlbmVyYXRvciwgbm90IGEgcG93ZXIgc3VwcGx5LiBNb2RlbCBpdAo+ID4+
IHByb3Blcmx5IGFzIGEgZ2F0ZWQtZml4ZWQtY2xvY2ssIGZvbGxvd2luZyB0aGUgcGF0dGVybiBl
c3RhYmxpc2hlZAo+ID4+IGZvciB0aGUgUm9jayA1IElUWCBhbmQgb3RoZXIgYm9hcmRzIHdpdGgg
c2ltaWxhciBQQ0llIGNsb2NrIGJ1ZmZlcgo+ID4+IGNoaXBzLgo+ID4+Cj4gPj4gWy4uLl0KPiA+
IAo+ID4gQXBwbGllZCwgdGhhbmtzIQo+IAo+IE15IGNvbW1lbnRzIGZyb20gdjMgWzFdIHdhcyBu
b3QgYWRkcmVzc2VkIGluIHY0IG9jaCB2NS4gRS5nLgo+IHJlZ3VsYXRvci1hbHdheXMtb24vYm9v
dC1vbiBub3QgYmVpbmcgcmVtb3ZlZCBhbmQgcmVkdW5kYW50IGNvbW1lbnRzLgo+IAo+IFsxXSBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvZmVjMGYyNWQtNzMzYS00YjZjLWFlZjEtMmFjNTFi
ZDE1Nzk4QGt3aWJvby5zZS8KCnRoYW5rIHlvdSBzbyBtdWNoIGZvciBub3RpY2luZy4gTG9va3Mg
bGlrZSB0aGF0IEFJIHRoaW5nIGlzCndvcmtpbmcgIndlbGwiIDstKSAuCgpJJ3ZlIGRyb3BlZCB0
aGUgcGF0Y2ggYW5kIHJlY3JlYXRlZCB0aGUgZm9yLW5leHQgYnJhbmNoIG5vdy4KCkBNaWRneSwg
cGxlYXNlIGhvbm9yIGZlZWRiYWNrIGluIGZ1dHVyZSByZXZpc2lvbnMuCgpUaGFua3MKSGVpa28K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
