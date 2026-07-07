Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1823C43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 19:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4ttL8TPRz2ZX6VmqxoH5dUqPJOOyknFBgDI6RXjvTw=; b=dxm17uUIPnt1Xf
	kZu+NHnuXzabjgkm0XvRzv3ISdqK+j87OIWt4ND4IonGlHxsA3VxEnQcYZPyB2rSH/LcjkSeSAqIl
	lgF93Pn3XLKKTnWy6GAZbHSkEvR2GAGfAEeYr/tpbFk3aHRPu417Ad10m82nXXzKAGkCXPp6MSDce
	2RvWOSn/2LgPze9iWCddWSvXt8nDVNuertSfUA7aEU+Rz6CnkVsuv67ROHcw1JXqsZqSczTqnDzaY
	L1JkFsLmXAov4mNV1to+u3mAx14By7VcThyxFDtvsqw7fhmnvxmBKEtz1CMpfH0NREF51x2P3dKTc
	tExtyJgVEoPS+mjm6FSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBCR-0000000FjfL-0VBS;
	Tue, 07 Jul 2026 19:11:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBCO-0000000Fjdd-0x0S;
	Tue, 07 Jul 2026 19:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CzSD/WRXSlgKfw1SIJ9ztQiHBCfypInUCvizihETDao=; b=0tNkP0sM9hr4FZjY++IN4eXAym
	vUXoSgMGph9rYpY5YQiICFxdvkb4gWX5CkBKDtyzVM95S6pBYN3Tg6g4mEHcUCkogYvGpdWjP4bW9
	D6xOzbUOg0NJZMg12EspXxOL9FEq0QPcmXEHq5mmSVwRlxEsyiGwE0t985yqwAbAXTlUUv56B1wxg
	Wko+DbvaIYA0Q07bIRq8H1ArSEHrkXFHBHUm1gLrtWzk8xnSeRU8fE+RJXY5KiqzDyLdHoZJ15+6v
	FS5nYLb1LZPj45gwqQa9ItRL6q5n1lTyXfUaAhjfu/Mz8dn13ZFXOsi4XTtX8pnUquUUPnHRef3GM
	E0IQcJVw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>,
 Joachim Eastwood <joachim.eastwood@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/12] arm64: dts: rockchip: Add NanoPi M6 board
Date: Tue, 07 Jul 2026 21:11:10 +0200
Message-ID: <118899013.nniJfEyVGO@phil>
In-Reply-To: <CAPSPb=tZ1FenNfEM5P+DWcksKvpQjyQQjAWTRdyxb7=YYxY_rw@mail.gmail.com>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
 <DJOWHH5K7P76.3JPJVO47K1SZE@cknow-tech.com>
 <CAPSPb=tZ1FenNfEM5P+DWcksKvpQjyQQjAWTRdyxb7=YYxY_rw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_121116_262869_DB6790D2 
X-CRM114-Status: GOOD (  21.42  )
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

QW0gRnJlaXRhZywgMy4gSnVsaSAyMDI2LCAyMjoyMzozMiBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIEpvYWNoaW0gRWFzdHdvb2Q6Cj4gSGkgRGllZGVyaWssCj4gCj4gT24g
RnJpLCAzIEp1bCAyMDI2IGF0IDEzOjMwLCBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25v
dy10ZWNoLmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gRnJpIEp1bCAzLCAyMDI2IGF0IDEyOjA3IEFN
IENFU1QsIEpvYWNoaW0gRWFzdHdvb2QgdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4gPiBUaGlzIHBh
dGNoIHNlcmllcyBhZGQgc3VwcG9ydCBmb3IgdGhlIE5hbm9QaSBNNi4gVGhpcyBib2FyZCBpcyB2
ZXJ5Cj4gPiA+IHNpbWlsYXIgdG8gdGhlIE5hbm9QaSBSNkMgYW5kIFI2UyBib2FyZHMgd2hpY2gg
YXJlIGFscmVhZHkgc3VwcG9ydGVkLgo+ID4gPgo+ID4gPiBNYWluIGRpZmZlcmVuY2VzOgo+ID4g
PiAqIE0uMiBNLWtleSBzbG90IHdpdGggUENJZSAoQWxzbyBwcmVzZW50IG9uIFI2QykKPiA+ID4g
KiBNLjIgRS1rZXkgc2xvdCB3aXRoIFBDSWUgYW5kIFVTQiAoZnJvbSBodWIpCj4gPiA+ICogMSBh
ZGRpdGlvbmFsIFVTQiAyLjAgcG9ydCBmcm9tIGFuIG9uLWJvYXJkIFVTQiBodWIKPiA+ID4gKiBS
VDU2MTYgYXVkaW8gQ09ERUMKPiA+Cj4gPiBUaGlzIHNlZW1zIHRvIGJlIHRoZSBNNiAoMjQwNSBh
a2EgJ1YxJyk/Cj4gWWVzLCBjb3JyZWN0LiBUaGlzIHBhdGNoIHNldCBpcyBmb3IgdGhlIG9yaWdp
bmFsIE02IGJvYXJkLiBWMSBpZiB5b3UgbGlrZS4KPiAKPiA+IEJlY2F1c2UgdGhlcmUgaXMgbm93
IGFsc28gYSBNNlYyICgyNjAzKSwgd2hpY2ggdXNlcyBhbiBFUzgzODkgQ09ERUM6Cj4gPiBodHRw
czovL3d3dy5mcmllbmRseWVsZWMuY29tL2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L3Byb2R1Y3Qm
cGF0aD02OSZwcm9kdWN0X2lkPTMxOQo+IEkgZGlkIG5vdGljZSB0aGVyZSB3YXMgYSBuZXcgdmVy
c2lvbiwgYnV0IEkgaGFkbid0IGdpdmVuIGl0IG11Y2ggdGhvdWdodC4KPiAKPiA+IElzIGl0IHVz
ZWZ1bCB0byBhbHJlYWR5IHRha2UgdGhlIDIgTTYgdmFyaWFudHMgaW50byBhY2NvdW50IHdpdGgg
dGhpcyBwYXRjaCBzZXQ/Cj4gWWVzLCBJIHRoaW5rIHlvdSBhcmUgcmlnaHQuCj4gCj4gSG93IGFi
b3V0IHRoaXMgc2V0dXA6Cj4gcmszNTg4cy1uYW5vcGktbTYuZHRzaQo+IHJrMzU4OHMtbmFub3Bp
LW02djEuZHRzCj4gcmszNTg4cy1uYW5vcGktbTZ2Mi5kdHMKPiBUaGlzIG1pbWljcyB0aGUgc2V0
dXAgZm9yIHRoZSBSNiBzZXJpZXMgYm9hcmRzIHdpdGggcmszNTg4cy1uYW5vcGktcjYuZHRzaQo+
IGFuZCByazM1ODhzLW5hbm9waS1yNltjc10uZHRzLgoKeWVzLCB0aGF0IHdvdWxkIGJlIHRoZSBu
aWNlc3Qgd2F5IEkgdGhpbmsuCgpUaGFua3MgZm9yIHRha2luZyB0aGlzIGludG8gYWNjb3VudApI
ZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
