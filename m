Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C068EC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 19:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9nUBdUfEV232mx7/fSzw/YiWWyhW/Nrcgkuhi3nQSw=; b=q9Z3yJAKhCt/Yl
	5Q+OjkktoWfz8pkkzU0H3wS7yidQhINRrx8GU13TXPN2LnwOaHb2KGLdJUAsQbguJL/Gs6QGt7A0v
	dRtsXJrHR4CGmegYGsTeD6isbwcgZl0SUHF6mMHa8nUwQbJNEVoNP0Cda5S4uxHR5qBu90kos2S0F
	JnMpUkKbxeoReKggMnEaljpsp5HCmB2RdSp/H/V+tobkx/ws0xypOLFBv/5ZbIS84o49l/BSdEFcT
	7/Dy54RO8hiVb4insDcFOmnmRMaDpDusca4pIzPpaN8XKOHAMqWX8HTp4W6G2C4gsoVmAdBIbUH5p
	fRLQKJO/2DeCiyaPvOeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRIzL-001N8i-Pt; Mon, 07 Mar 2022 19:25:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRIzI-001N7r-CA
 for linux-rockchip@lists.infradead.org; Mon, 07 Mar 2022 19:25:45 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 74264332;
 Mon,  7 Mar 2022 20:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1646681141;
 bh=dyuboutjHd1c2rGzLWKoRv634oPAsaabNo2cKHBGys4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MEWw+WCb+x4qJU9GvXZ1vRPBnnSW1zv+ijLTHeJymTFHDDrV2zzBTQe4i8p4lMkqU
 7oFw1N0NP3irPwuKmxQuasZB7/pRusMIPPKeqdC88SVlUfpb8dClpGQ7ztpAa6mi6p
 U07nhh8wVaxeJRLtI3sRC8W7P9dMFLpSYAxMy86I=
Date: Mon, 7 Mar 2022 21:25:27 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 01/17] media: rkisp1: capture: Initialize entity
 before video device
Message-ID: <YiZcJys8+GiXWhgE@pendragon.ideasonboard.com>
References: <20220304171925.1592-1-laurent.pinchart@ideasonboard.com>
 <20220304171925.1592-2-laurent.pinchart@ideasonboard.com>
 <4f76307485579893114ae4fb9e07cdeb83fd9383.camel@ndufresne.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f76307485579893114ae4fb9e07cdeb83fd9383.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_112544_612901_8143B1D9 
X-CRM114-Status: GOOD (  20.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgTmljb2xhcywKCk9uIE1vbiwgTWFyIDA3LCAyMDIyIGF0IDAyOjE1OjMyUE0gLTA1MDAsIE5p
Y29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gSGkgTGF1cmVudCwKPiAKPiBMZSB2ZW5kcmVkaSAwNCBt
YXJzIDIwMjIgw6AgMTk6MTkgKzAyMDAsIExhdXJlbnQgUGluY2hhcnQgYSDDqWNyaXTCoDoKPiA+
IFRoZSBtZWRpYV9lbnRpdHkgZW1iZWRkZWQgaW4gdGhlIHZpZGVvX2RldmljZSBuZWVkcyB0byBi
ZSBpbml0aWFsaXplZAo+ID4gYmVmb3JlIHJlZ2lzdGVyaW5nIHRoZSB2aWRlb19kZXZpY2UuIERv
IHNvLgo+IAo+IFdlJ3ZlIHNlZW4gdGhlIHNhbWUgYnVnIGluIE1USyB2Y29kZWMgdG9wb2xvZ3ku
IEFueSBpZGVhIGlmIHRoYXQgY291bGQgYmUgY2F0Y2gKPiB0aGlzIGF0IGxvd2VyIGxldmVsIHRv
IHByZXZlbnQgaW52YWxpZCBwYXRoIGJlaW5nIHBvcHVsYXRlZCBpbiB0aGUgbWVkaWEKPiBjb250
cm9sbGVyIG92ZXIgYW5kIG92ZXIgPwoKSSB0aGluayB0aGUgcGFkIHNob3VsZCBiZSBtb3ZlZCB0
byB0aGUgdmlkZW9fZGV2aWNlIHN0cnVjdHVyZSBhbmQKaW5pdGlhbGl6ZWQgdW5jb25kaXRpb25h
bGx5IGludGVybmFsbHkuIEl0IG1ha2VzIGxpdHRsZSBzZW5zZSB0byBmb3JjZQpkcml2ZXJzIHRv
IGRvIHRoaXMgbWFudWFsbHkuCgo+ID4gU2lnbmVkLW9mZi1ieTogTGF1cmVudCBQaW5jaGFydCA8
bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IERhZm5h
IEhpcnNjaGZlbGQgPGRhZm5hQGZhc3RtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9wbGF0Zm9y
bS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYyAgIHwgMTcgKysrKysrKysrKy0tLS0t
LS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
PiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtp
c3AxL3JraXNwMS1jYXB0dXJlLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jr
aXNwMS9ya2lzcDEtY2FwdHVyZS5jCj4gPiBpbmRleCBjOTVjMDBhOTExODAuLjljMTFmMmI4ZTVm
NSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3Ax
L3JraXNwMS1jYXB0dXJlLmMKPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPiA+IEBAIC0xMzcyLDIyICsxMzcyLDI1IEBAIHN0
YXRpYyBpbnQgcmtpc3AxX3JlZ2lzdGVyX2NhcHR1cmUoc3RydWN0IHJraXNwMV9jYXB0dXJlICpj
YXApCj4gPiAgCj4gPiAgCXZkZXYtPnF1ZXVlID0gcTsKPiA+ICAKPiA+ICsJcmV0ID0gbWVkaWFf
ZW50aXR5X3BhZHNfaW5pdCgmdmRldi0+ZW50aXR5LCAxLCAmbm9kZS0+cGFkKTsKPiA+ICsJaWYg
KHJldCkKPiA+ICsJCXJldHVybiByZXQ7Cj4gPiArCj4gPiAgCXJldCA9IHZpZGVvX3JlZ2lzdGVy
X2RldmljZSh2ZGV2LCBWRkxfVFlQRV9WSURFTywgLTEpOwo+ID4gIAlpZiAocmV0KSB7Cj4gPiAg
CQlkZXZfZXJyKGNhcC0+cmtpc3AxLT5kZXYsCj4gPiAgCQkJImZhaWxlZCB0byByZWdpc3RlciAl
cywgcmV0PSVkXG4iLCB2ZGV2LT5uYW1lLCByZXQpOwo+ID4gLQkJcmV0dXJuIHJldDsKPiA+ICsJ
CWdvdG8gZXJyb3I7Cj4gPiAgCX0KPiA+ICsKPiA+ICAJdjRsMl9pbmZvKHY0bDJfZGV2LCAicmVn
aXN0ZXJlZCAlcyBhcyAvZGV2L3ZpZGVvJWRcbiIsIHZkZXYtPm5hbWUsCj4gPiAgCQkgIHZkZXYt
Pm51bSk7Cj4gPiAgCj4gPiAtCXJldCA9IG1lZGlhX2VudGl0eV9wYWRzX2luaXQoJnZkZXYtPmVu
dGl0eSwgMSwgJm5vZGUtPnBhZCk7Cj4gPiAtCWlmIChyZXQpIHsKPiA+IC0JCXZpZGVvX3VucmVn
aXN0ZXJfZGV2aWNlKHZkZXYpOwo+ID4gLQkJcmV0dXJuIHJldDsKPiA+IC0JfQo+ID4gLQo+ID4g
IAlyZXR1cm4gMDsKPiA+ICsKPiA+ICtlcnJvcjoKPiA+ICsJbWVkaWFfZW50aXR5X2NsZWFudXAo
JnZkZXYtPmVudGl0eSk7Cj4gPiArCXJldHVybiByZXQ7Cj4gPiAgfQo+ID4gIAo+ID4gIHN0YXRp
YyB2b2lkCgotLSAKUmVnYXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
