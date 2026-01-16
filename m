Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E95BD47CDD
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 11:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/W7ChbqZM9Ug7pltTMwvx7p2I2R14wWmnJWL75Yk6KA=; b=p65J2Xyy7nT7YH
	ClaQTpXhwV0+aiTk6zK8DQnSMyUzWbIJxS5eXHoIjk2plb14WPBnVuaHwhwd2CU0dr50EPPWKRRnp
	icvtYqiSgMwQsp+HzpMb2OLKN/5n0zg6nvp47RrDsPwwmqds/aGbYYLl2CRSAT6YHPG/wmdPtC/Zf
	DWDcL8IuaEqzgb0nWqVPZv7DEQbN0czBBEXOdQwlN30qT+UNyWgkoO6JZjPBjB0EsH0ORM1szfeG6
	3hDtGzHXac6fQn71h+95CVJ4GBhxDp/PnPVm5CGj4m3jFk6oD3oWPwky90yNyCoSW02eDnk4xDzxy
	THmNBxGFw9Ej8J4pxRXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vghg5-0000000E0nM-472h;
	Fri, 16 Jan 2026 11:07:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vghg3-0000000E0m6-1XZS;
	Fri, 16 Jan 2026 11:07:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dzSr+vK27hutzJjP42tJFaeLCI9FsTxETKHO6P3r+0c=; b=B8+VwbhHy4P6pCRNKtlLFwEdMp
	lhd0dxCpyuWrkYSuFEtmsiURAqSkvL/WinKpjy116YeztW7MJT+o53mT7hYGinbXb5rz0fm+m9zJB
	lpJIK6pM6ETLCiX9v0Ye98LU9ruBQ2DKWyE434g2tIDq9H3jryobySsbYWr/2GIoRxH1Abn+g8hZT
	r5idEIyofm7OiqISbU3v7vIeP2AYgduIoNS5Wda1NnflUaC+71XIa06q52eiFHb6AQo+F6BTZxa4J
	ycJZXdXCjQe4yMpDNmnHmpGfL6QSHpA2JnpU4S3oUhc7a9WJGOTUixQKFBC9CE6mEqdKJuj/qRLPh
	BubXjh/g==;
Received: from i53875a97.versanet.de ([83.135.90.151] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vghfn-002cBj-LC; Fri, 16 Jan 2026 12:07:24 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: michael.riesch@collabora.com, Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, Frank Li <Frank.li@nxp.com>,
 Mehdi Djait <mehdi.djait@linux.intel.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] media: dt-bindings: add rockchip mipi csi-2 receiver
Date: Fri, 16 Jan 2026 12:07:22 +0100
Message-ID: <5173450.iZASKD2KPV@diego>
In-Reply-To: <aWoOzn_d7ixgbzj4@kekkonen.localdomain>
References: <20251114-rockchip-mipi-receiver-v4-0-a9c86fecd052@collabora.com>
 <20251114-rockchip-mipi-receiver-v4-1-a9c86fecd052@collabora.com>
 <aWoOzn_d7ixgbzj4@kekkonen.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_030739_433052_57CC1AB2 
X-CRM114-Status: GOOD (  22.94  )
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

QW0gRnJlaXRhZywgMTYuIEphbnVhciAyMDI2LCAxMToxMToyNiBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIFNha2FyaSBBaWx1czoKPiBIaSBNaWNoYWVsLAo+IAo+IE9uIFRo
dSwgSmFuIDE1LCAyMDI2IGF0IDA3OjI2OjA3UE0gKzAxMDAsIE1pY2hhZWwgUmllc2NoIHZpYSBC
NCBSZWxheSB3cm90ZToKPiA+IEZyb206IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEBj
b2xsYWJvcmEuY29tPgo+ID4gCj4gPiBBZGQgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFJvY2tjaGlw
IE1JUEkgQ1NJLTIgUmVjZWl2ZXIuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgUmll
c2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4KPiA+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAg
Li4uL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHJrMzU2OC1taXBpLWNzaTIueWFtbCAgfCAxNDEg
KysrKysrKysrKysrKysrKysrKysrCj4gPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgIDYgKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTQ3IGlu
c2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcCxyazM1NjgtbWlwaS1jc2kyLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAscmszNTY4LW1pcGktY3Np
Mi55YW1sCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4y
YzJiZDg3NTgyZWIKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcCxyazM1NjgtbWlwaS1jc2kyLnlhbWwKPiAK
PiBJJ2QgYWRkIGEgY29tcGF0aWJsZSBzdHJpbmcgZm9yIHRoZSBiYXNlIElQIGJsb2NrIGFuZCBu
YW1lIGl0IGFjY29yZGluZ2x5LgoKcGVyc29uYWxseSwgSSB3b3VsZG4ndCBkbyB0aGF0LgoKV2hp
bGUgdGhlIFJLMzU2OC12YXJpYW50IGlzIGEgc29tZXdoYXQgc21vb3RoIGludGVncmF0aW9uIC4u
LiB0aGUgbm93Cih0ZW1wb3JhcmlseSkgb21pdHRlZCBSSzM1ODggdmFyaWFudCBvZiBhIHNpbWls
YXIgYmxvY2sgaXMgbm90LgoKSS5lLiB0aGUgUkszNTg4IGhhcyBxdWl0ZSBhIG51bWJlciBvZiB0
aG9zZSBDU0kgaG9zdHMsIHdpdGggYSBidW5jaCBvZgpyZXNvdXJjZSByb3V0aW5nIGJpdHMgYW5k
IGJvcHMgYmV0d2VlbiB0aG9zZSBDU0kgaG9zdHMgc2l0dGluZyBpbiB0aGUKUm9ja2NoaXAgIkdl
cm5hbCBSZWdpc3RlciBGaWxlcyIgKGR1bXBpbmcgZ3JvdW5kIGZvciByYW5kb20gYml0cyBhbmQg
Ym9wcykuCgpTbyB5b3UgdGhlbiBnZXQgYSBzeXNjb24gYWNjZXNzaW5nIHBlci1zb2MgcmVnaXN0
ZXJzIGFuZCBiaXRzLgoKU28gd2hpbGUgaXQgaXMgKGNvbXBhdGlibGUgdG8pIHNvbWUgU3lub3Bz
aXMgSVAgYmxvY2ssIHRoZSBpbnRlZ3JhdGlvbiB0bwptYWtlIHRoYXQgdGhpbmcgYWN0dWFsbHkg
ZG8gc29tZXRoaW5nIGlzIGhpZ2hseSBzb2Mtc3BlY2lmaWMuCgpUaGF0J3MgYWxzbyB3aHkgdGhl
IGZvciBleGFtcGxlIHRoZSBkdy1oZG1pL2RzaSBJUHMgZG9uJ3QgdXNlIGEgY29tbW9uCmNvbXBh
dGlibGUgWzBdIFsxXSBbMl0gWzNdIFs0XQoKClswXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9hbWxvZ2ljLG1lc29uLWR3LWhkbWkueWFt
bApbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9y
dmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvYWxsd2lubmVyLHN1bjhpLWE4M3QtZHctaGRtaS55YW1sClsyXSBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJl
ZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9oaXNpbGljb24vZHct
ZHNpLnR4dApbM10gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsZHctaGRtaS55YW1sCls0XSBodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQv
dHJlZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9y
b2NrY2hpcCxkdy1taXBpLWRzaS55YW1sCgoKPiA+ICsgICAgc29jIHsKPiA+ICsgICAgICAgIGlu
dGVycnVwdC1wYXJlbnQgPSA8JmdpYz47Cj4gPiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwy
PjsKPiA+ICsgICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+ID4gKwo+ID4gKyAgICAgICAgY3Np
OiBjc2lAZmRmYjAwMDAgewo+ID4gKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAs
cmszNTY4LW1pcGktY3NpMiI7Cj4gCj4gVGhpcyB3b3VsZCBiZWNvbWUgZS5nLgo+IAo+ICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LW1pcGktY3NpMiIsICJzbnBzLGR3
LW1pcGktY3NpMnJ4IjsKPiAKPiBTZWUgbXkgY29tbWVudHMgb24gdGhlIGRyaXZlciBwYXRjaCBh
cyB3ZWxsLgoKSW4gdGhlIFBDSWUgYXJlYSwgd2UgaGF2ZSAgcm9ja2NoaXAscmszNTY4LXBjaWUg
YW5kIHJvY2tjaGlwLHJrMzU2OC1wY2llLWVwCmZvciBhIHNpbWlsYXIgY29tYm8uCgpGb3IgQ1NJ
IHRoZSByZWNlaXZlciBpcyB0aGUgdmFzdGx5IG1vcmUgY29tbW9uIHRoaW5nIHRvIGRvLiBTbyBp
ZiBhbnl0aGluZywKSSdkIGdvIHdpdGggImZvby1jc2kyIiB2cy4gImZvby1jc2kyLWRldmljZSIs
IGlmIHNvbWVib2R5IHJlYWxseSBkZXZlbG9wcyBhCiJjYW1lcmEiIFNvQywgd2l0aCBhIGZ1bGx5
IGZlYXR1cmVkIERULWJhc2VkIE9TIGluIHRoZSBmdXR1cmUgOy0pIC4KCkhlaWtvCgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
