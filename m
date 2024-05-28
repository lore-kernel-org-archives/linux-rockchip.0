Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82DD5C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 13:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTcXLTPUWVEnSzqGkTP9szUKubXRZ1ckC80QV5njlqg=; b=rOHq0x4VSg4Gz6
	5A78Y7ZAF5tzRNzMlnkSCIqnO9e9/eFlC1bEa3dRHkz98GbRigPeEFpz9ehO4WCCDT/KWO0dkYFps
	03Q7y4znLez7Slbl0m+5CVFMKY5TzgRINrEgmKggqf1BbVjfqwsj+M63cknRIY9tgjdVHTqXHLlyt
	EYKOxHcAx1cM9wxlKwmzbBe/VNIM8nxHbi/Oo6RwtIVUW6wYvU5R7fmsGQ3EcidtIABUm0YNk4TQM
	GJB1rXeDQ+imHnIn1Gu0w0bsn7rtiROErHh/ZzWQh6+odUL5+pePVcdLok+aTq9DlcgD6y3r30SaH
	cqgjMugl4ZlDgVwWK51A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwnX-00000000mPL-3ato;
	Tue, 28 May 2024 13:23:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwnU-00000000mNU-3A1G;
	Tue, 28 May 2024 13:23:25 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBwnL-00040P-DW; Tue, 28 May 2024 15:23:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dmitry Yashin <dmt.yashin@gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: update rk3308 iomux routes
Date: Tue, 28 May 2024 15:23:14 +0200
Message-ID: <2553645.4XsnlVU6TS@diego>
In-Reply-To: <a54be779-9728-4ac4-9b85-8cf6787f491d@gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com> <1770701.X513TT2pbd@diego>
 <a54be779-9728-4ac4-9b85-8cf6787f491d@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_062324_813909_6279D14D 
X-CRM114-Status: GOOD (  18.68  )
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

QW0gRGllbnN0YWcsIDI4LiBNYWkgMjAyNCwgMTQ6MTg6MzUgQ0VTVCBzY2hyaWViIERtaXRyeSBZ
YXNoaW46Cj4gSGkgSGVpa28sCj4gCj4gT24gNS8yOC8yNCA0OjUyIFBNLCBIZWlrbyBTdMO8Ym5l
ciB3cm90ZToKPiA+IEhpIExpbnVzLAo+ID4KPiA+IEFtIERpZW5zdGFnLCAyOC4gTWFpIDIwMjQs
IDEzOjI5OjEyIENFU1Qgc2NocmllYiBMaW51cyBXYWxsZWlqOgo+ID4+IE9uIFdlZCwgTWF5IDE1
LCAyMDI0IGF0IDI6MTfigK9QTSBEbWl0cnkgWWFzaGluIDxkbXQueWFzaGluQGdtYWlsLmNvbT4g
d3JvdGU6Cj4gPj4KPiA+Pj4gU29tZSBvZiB0aGUgcmszMzA4IGlvbXV4IHJvdXRlcyBpbiByazMz
MDhfbXV4X3JvdXRlX2RhdGEgYmVsb25nIHRvCj4gPj4+IHRoZSByazMzMDhiIFNvQy4gUmVtb3Zl
IHRoZW0gYW5kIGNvcnJlY3QgaTJjMyByb3V0ZXMuCj4gPj4+Cj4gPj4+IEZpeGVzOiA3ODI1YWVi
N2IyMDggKCJwaW5jdHJsOiByb2NrY2hpcDogYWRkIHJrMzMwOCBTb0Mgc3VwcG9ydCIpCj4gPj4+
IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBZYXNoaW4gPGRtdC55YXNoaW5AZ21haWwuY29tPgo+ID4+
IFdoaWxlIHlvdSBndXlzIGFyZSB0aGlua2luZyBhYm91dCB0aGUgUkszMzA4QiBzdXBwb3J0LCBp
cyB0aGlzIGZpeAo+ID4+IHNvbWV0aGluZyBJIGNhbiBqdXN0IGFwcGx5Pwo+ID4gSSdkIHRoaW5r
IHNvLiBJJ3ZlIGRldGFpbGVkIHN0dWZmIGluIG15IFJldmlldyBtYWlsIEkganVzdCBzZW50Lgo+
ID4gQm90aCB0aGUgc29jIGl0c2VsZiBhbmQgYWxzbyB0aGUgYWZmZWN0ZWQgcGluIGZ1bmN0aW9u
cyBhcmUgbmljaGUKPiA+IGVub3VnaCB0aGF0IHRoaXMgc2hvdWxkIG5vdCBjYXVzZSBicmVha2Fn
ZS4KPiA+Cj4gPgo+ID4gSGVpa28KPiA+Cj4gPgo+ID4KPiAKPiBTaG91bGQgaSBqdXN0IGRyb3Ag
MS8zIGZyb20gVjIgdGhlbj8KCkkgZ3Vlc3MganVzdCBjaGVjayB0aGUgc3RhdGUgb2YgYWZmYWly
cyBvbmNlIHlvdXIgdjIgaXMgcmVhZHkgOy0pIC4KCkkuZS4gaWYgTGludXNXIGdyYWJzIHBhdGNo
MSBiZWZvcmUgeW91IHBvc3QgdjIsIGp1c3QgZHJvcCBpdCwgb3RoZXJ3aXNlCnNlbmQgaXQgYWxv
bmcuCgoKPiBUaGFua3MgZXZlcnlvbmUgZm9yIHRoZSBmZWVkYmFjayBvbiB0aGlzIHNlcmllcy4g
SSdsbCBwcmVwYXJlIFYyIGJhc2VkCj4gb24gcnVudGltZSBjaGlwIGRldGVjdGlvbiB3aXRoIHVz
ZSBvZiBHUkZfQ0hJUF9JRC4KCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
