Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B031CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 15:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WlCUIudjmNhdZbYlvIBgj/hVcf46eTOYgDxTMODtH0=; b=2JDy1H3buj2+Mq
	6R0Q7N6V9UCDgmAnruF9fTUn2KgN4DZ955CXLxtGo3EzIyArJE15Y9gOxYPn1mYTITBmnmsYgo9AD
	GQFrP8ZGNVAPV8dc/yi+/6EGyhGrEXhxXmPilK6UgGgHJFKuQE18aRbW56LYzHB2b1vU0+iHN/uYG
	YjxyX+K31cEEHeDLfyvrrlf+p8D79HWTTF489muInjYH0gv02/FLkjJtitQHZyV3QKAy7IW7W8898
	DaMVQ10HMUbDFsKlnbGGZ4dnB6K3M/yqsINK5l2lIiUT7c8emQAVo4C6RhpGHuZK+hZ0GgvpPXrYC
	bSF982kIGLqCT/m3yKJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZaF0-00GZj5-EB; Wed, 30 Mar 2022 15:28:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZaEx-00GZgv-4a
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 15:28:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 0F1B61F45096
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648654086;
 bh=XqP59wNQgL49UoC/qJA6H4F54qe+92UN4Pm6NzrUT+Y=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=d4ZVJbLKFH8ofeoSJ7TaFRhX6JNUT7dGadFrW94uBDCcShCX53CjdxIm4zSZEGaRU
 P9rh6Slo86It4EDl3n7U8/mSQlMqc2mdw+eVuoDZ2TciPFCzHMzp5V4nAfGhI3J0oa
 ij0QR+GFV3qNvRFmUtCNMtHJOYBtb5D/4kHhbKywN5d8K12NCGPYi60O19yEE+M03V
 5XDrwpL5qHtJcfC6C4wZ5AV+7veBl9oxjiaKgnUqWCRH6q6fVDgv4t7e/mdzVcnLHd
 12rZNSGduPN8qGwp8bK14UsPNaFvGdgWt//pZESLlqezrSUIL6u1UcHbmu9VZTqRnR
 slNt9zFRegxXQ==
Message-ID: <835323cf7278da60998c3cf7a1e3fca08a3e14d6.camel@collabora.com>
Subject: Re: [PATCH v1 24/24] media: rkvdec-h264: Don't hardcode SPS/PPS
 parameters
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 kernel@collabora.com, Alex Bee <knaerzche@gmail.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Wed, 30 Mar 2022 11:27:51 -0400
In-Reply-To: <20220329072216.gqzcp6lowpfrweb7@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-25-nicolas.dufresne@collabora.com>
 <20220329072216.gqzcp6lowpfrweb7@basti-XPS-13-9310>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_082807_336715_D6C97796 
X-CRM114-Status: GOOD (  23.36  )
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

TGUgbWFyZGkgMjkgbWFycyAyMDIyIMOgIDA5OjIyICswMjAwLCBTZWJhc3RpYW4gRnJpY2tlIGEg
w6ljcml0wqA6Cj4gSGV5IE5pY29sYXMsCj4gCj4gVGhlIHBhdGNoIHNlcmllcyBkb2Vzbid0IHNl
ZW0gdG8gYXBwbHkgb24gdGhlIGxhdGVzdCBtZWRpYSB0cmVlIG1hc3Rlcgo+IGJyYW5jaC4gTG9v
a2luZyBhdCB5b3VyIHRyZWUgSSBjYW4gc2VlIHRoYXQgeW91IGhhdmUgY29tbWl0OiBiYTJjNjcw
YQo+ICJtZWRpYTogbnhwOiBSZXN0cmljdCBWSURFT19JTVhfTUlQSV9DU0lTIHRvIEFSQ0hfTVhD
IG9yIENPTVBJTEVfVEVTVAo+IExhdXJlbnQgUGluY2hhcnQgYXV0aG9yZWQgMSB3ZWVrIGFnbyAi
Cj4gCj4gQnV0IHRoZSBjdXJyZW50IGhlYWQgb2YgdGhlIG1lZGlhIHRyZWUgaXM6IDcxZTZkMDYw
OGU0ZAo+ICJtZWRpYTogcGxhdGZvcm06IFJlbW92ZSB1bm5lY2Vzc2FyeSBwcmludCBmdW5jdGlv
biBkZXZfZXJyKCkKPiBZYW5nIExpIGF1dGhvcmVkIDEzIGRheXMgYWdvIgo+IAo+IE9uIDI4LjAz
LjIwMjIgMTU6NTksIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gPiBGcm9tOiBBbGV4IEJlZSA8
a25hZXJ6Y2hlQGdtYWlsLmNvbT4KPiA+IAo+ID4gU29tZSBTUFMvUFBTIHBhcmFtZXRlcnMgYXJl
IGN1cnJlbnRseSBoYXJkY29kZWQgaW4gdGhlIGRyaXZlcgo+ID4gZXZlbiB0aG91Z2ggc28gZG8g
ZXhpc3QgaW4gdGhlIHVhcGkgd2hpY2ggaXMgc3RhYmxlIGJ5IG5vdy4KPiAKPiBzL2V2ZW4gdGhv
dWdoIHNvL2V2ZW4gdGhvdWdoIHRoZXkvCj4gPiAKPiA+IFVzZSB0aGVtIGluc3RlYWQgb2YgaGFy
ZGNvZGluZyB0aGVtLgo+ID4gCj4gPiBDb25mb3JtYW5jZSB0ZXN0cyBoYXZlIHNob3duIHRoZXJl
IGlzIG5vIGRpZmZlcmVuY2UsIGJ1dCBpdCBtaWdodAo+ID4gaW5jcmVhc2UgZGVjb2RlciBwZXJm
b3JtYW5jZS4KPiAKPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGdyZWF0IGlmIHdlIGNvdWxkIGFkZCBz
b21lIHBlcmZvcm1hbmNlIG1ldHJpY3MgdG8KPiB0aGUgY29tbWl0IGRlc2NyaXB0aW9uIHRvIGhh
dmUgYSBtZXRyaWMgdGhhdCBmb2xsb3dpbmcgcGF0Y2hlcyBjb3VsZAo+IGNvbXBhcmUgdGhlbXNl
bHZlcyB3aXRoLgoKQWxleCwgY2FuIHlvdSBleHRlbmQgb24gdGhpcyBvbmU/IEknbSBub3Qgc3Vy
ZSBob3cgdGhpcyBjYW4gaW1wYWN0IHBlcmZvcm1hbmNlLApzbyBJIGRvdWJ0IGFueSBtaXRyaWMg
d2lsbCBiZSBzaWduaWZpY2FudC4gQ2FuIEkganVzdCBkcm9wIHRoYXQgcGFydCBvZiB0aGUKY29t
bWVudCA/Cj4gCj4gR3JlZXRpbmdzLAo+IFNlYmFzdGlhbgo+IAo+ID4gCj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gZHJpdmVycy9z
dGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jIHwgMTMgKysrKysrKy0tLS0tLQo+ID4g
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+ID4gaW5kZXggODkx
YzQ4YmY2YTUxLi45MWY2NWQ3OGU0NTMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+ID4gQEAgLTY1NSwxMyArNjU1LDE0IEBAIHN0YXRpYyB2
b2lkIGFzc2VtYmxlX2h3X3BwcyhzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LAo+ID4gCj4gPiAjZGVm
aW5lIFdSSVRFX1BQUyh2YWx1ZSwgZmllbGQpIHNldF9wc19maWVsZChod19wcy0+aW5mbywgZmll
bGQsIHZhbHVlKQo+ID4gCS8qIHdyaXRlIHNwcyAqLwo+ID4gLQlXUklURV9QUFMoMHhmLCBTRVFf
UEFSQU1FVEVSX1NFVF9JRCk7Cj4gPiAtCVdSSVRFX1BQUygweGZmLCBQUk9GSUxFX0lEQyk7Cj4g
PiAtCVdSSVRFX1BQUygxLCBDT05TVFJBSU5UX1NFVDNfRkxBRyk7Cj4gPiArCVdSSVRFX1BQUyhz
cHMtPnNlcV9wYXJhbWV0ZXJfc2V0X2lkLCBTRVFfUEFSQU1FVEVSX1NFVF9JRCk7Cj4gPiArCVdS
SVRFX1BQUyhzcHMtPnByb2ZpbGVfaWRjLCBQUk9GSUxFX0lEQyk7Cj4gPiArCVdSSVRFX1BQUygo
c3BzLT5jb25zdHJhaW50X3NldF9mbGFncyAmIDEgPDwgMykgPyAxIDogMCwgQ09OU1RSQUlOVF9T
RVQzX0ZMQUcpOwo+ID4gCVdSSVRFX1BQUyhzcHMtPmNocm9tYV9mb3JtYXRfaWRjLCBDSFJPTUFf
Rk9STUFUX0lEQyk7Cj4gPiAJV1JJVEVfUFBTKHNwcy0+Yml0X2RlcHRoX2x1bWFfbWludXM4LCBC
SVRfREVQVEhfTFVNQSk7Cj4gPiAJV1JJVEVfUFBTKHNwcy0+Yml0X2RlcHRoX2Nocm9tYV9taW51
czgsIEJJVF9ERVBUSF9DSFJPTUEpOwo+ID4gLQlXUklURV9QUFMoMCwgUVBQUklNRV9ZX1pFUk9f
VFJBTlNGT1JNX0JZUEFTU19GTEFHKTsKPiA+ICsJV1JJVEVfUFBTKCEhKHNwcy0+ZmxhZ3MgJiBW
NEwyX0gyNjRfU1BTX0ZMQUdfUVBQUklNRV9ZX1pFUk9fVFJBTlNGT1JNX0JZUEFTUyksCj4gPiAr
CQkgIFFQUFJJTUVfWV9aRVJPX1RSQU5TRk9STV9CWVBBU1NfRkxBRyk7Cj4gPiAJV1JJVEVfUFBT
KHNwcy0+bG9nMl9tYXhfZnJhbWVfbnVtX21pbnVzNCwgTE9HMl9NQVhfRlJBTUVfTlVNX01JTlVT
NCk7Cj4gPiAJV1JJVEVfUFBTKHNwcy0+bWF4X251bV9yZWZfZnJhbWVzLCBNQVhfTlVNX1JFRl9G
UkFNRVMpOwo+ID4gCVdSSVRFX1BQUyhzcHMtPnBpY19vcmRlcl9jbnRfdHlwZSwgUElDX09SREVS
X0NOVF9UWVBFKTsKPiA+IEBAIC02NzksOCArNjgwLDggQEAgc3RhdGljIHZvaWQgYXNzZW1ibGVf
aHdfcHBzKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsCj4gPiAJCSAgRElSRUNUXzhYOF9JTkZFUkVO
Q0VfRkxBRyk7Cj4gPiAKPiA+IAkvKiB3cml0ZSBwcHMgKi8KPiA+IC0JV1JJVEVfUFBTKDB4ZmYs
IFBJQ19QQVJBTUVURVJfU0VUX0lEKTsKPiA+IC0JV1JJVEVfUFBTKDB4MWYsIFBQU19TRVFfUEFS
QU1FVEVSX1NFVF9JRCk7Cj4gPiArCVdSSVRFX1BQUyhwcHMtPnBpY19wYXJhbWV0ZXJfc2V0X2lk
LCBQSUNfUEFSQU1FVEVSX1NFVF9JRCk7Cj4gPiArCVdSSVRFX1BQUyhwcHMtPnNlcV9wYXJhbWV0
ZXJfc2V0X2lkLCBQUFNfU0VRX1BBUkFNRVRFUl9TRVRfSUQpOwo+ID4gCVdSSVRFX1BQUyghIShw
cHMtPmZsYWdzICYgVjRMMl9IMjY0X1BQU19GTEFHX0VOVFJPUFlfQ09ESU5HX01PREUpLAo+ID4g
CQkgIEVOVFJPUFlfQ09ESU5HX01PREVfRkxBRyk7Cj4gPiAJV1JJVEVfUFBTKCEhKHBwcy0+Zmxh
Z3MgJiBWNEwyX0gyNjRfUFBTX0ZMQUdfQk9UVE9NX0ZJRUxEX1BJQ19PUkRFUl9JTl9GUkFNRV9Q
UkVTRU5UKSwKPiA+IC0tIAo+ID4gMi4zNC4xCj4gPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
