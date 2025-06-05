Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2EDAC5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 12:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XctXQ88oYbmrzaVZBThPYtVoNNaGUIqlUALtcBS0zoc=; b=KBA+YEVYqXNpDs
	LZctc/rmb0SDJWzn2GTcYJkDp+1WVHeYEuJhDj1iIvCNGS7sTT6b6oz/OuwG2saART49LGqjhBwSz
	dd7KtsYb7HozmOgQfmhvgPBqAOW/9TE1bUYzz3C7cB2F30nifzq3aDLJCrNtlQJOJMDM+yTcrJzQ2
	XNyqRURhKRmn829J1PyKJKmlXdjB1RazAStQm6pQX2QEv+mbqDIST2LfPN/Hln5/oz/ojTh7d0wos
	UPRRLg6dqS3HFo7LmNIJ5gUJW9ze4xytU8gpLpZ4TcNdT84eSsrFBO4lUfBk4a9QB7c+eB3tDFm0h
	bufqjnaa6w6M/VcLgAQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9zC-0000000FW94-3Lac;
	Thu, 05 Jun 2025 12:46:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9z9-0000000FW7Z-3Rpw
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 12:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=zEGbwu8CAS5JLPO6lzSDuFQRGHhN4eZGAp30aub2LVY=; b=pVSTaLFQN70Jt+PegzbmdZ87ZC
	2BAAllzSeLXD15J2UJWzsl/RjHCLLfJ4115xKArCsliXQUiON3EKtAoOzaMKaRkoeefXHwqlPquqs
	kkrCWJFyQ6D6DyNHRdCpAqnACnmi+QsEMveXqFGyCWdbFeTlS2pxyHN8T+SypZ7t5r2Gmlg8/p/SM
	mpNpvPZfHAoW0nEfrwzFP+vkFXOLjkpPhEcvbMgiRcexKkwkRQSGTRjd9ZARL2c8HEhh1mkzscaGu
	QswcuPfOixwfF2jihGbI3/xjqBwB8ACDwwm2OidgTE0MDWemE/DVXGVdeCBoJwPN2XsGi28YTgCld
	F4a3qogw==;
Received: from i53875ad6.versanet.de ([83.135.90.214] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uN9yr-0001m5-GX; Thu, 05 Jun 2025 14:46:01 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, tzimmermann@suse.de, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, javierm@redhat.com,
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling
 hl055fhav028c
Date: Thu, 05 Jun 2025 14:46:00 +0200
Message-ID: <2932680.yaVYbkx8dN@diego>
In-Reply-To: <DAEKVTXT0FHB.TOVX7BU9ZYXA@cknow.org>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-4-macroalpha82@gmail.com>
 <DAEKVTXT0FHB.TOVX7BU9ZYXA@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054619_878934_10B92C74 
X-CRM114-Status: GOOD (  21.74  )
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

QW0gRG9ubmVyc3RhZywgNS4gSnVuaSAyMDI1LCAxMzo1NDo1MCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIERpZWRlcmlrIGRlIEhhYXM6Cj4gT24gVHVlIEp1biAzLCAyMDI1
IGF0IDk6MzkgUE0gQ0VTVCwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgo+ID4gRnJvbTogQ2hyaXMgTW9y
Z2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+Cj4gPiBBZGQgc3VwcG9ydCBmb3IgdGhl
IEh1aWxpbmcgaGwwNTVmaGF2MDI4YyBwYW5lbCBhcyB1c2VkIG9uIHRoZQo+ID4gR2FtZWZvcmNl
IEFjZSBoYW5kaGVsZCBnYW1pbmcgY29uc29sZS4gVGhpcyBwYW5lbCB1c2VzIGEgSGltYXggSFg4
Mzk5Qwo+ID4gZGlzcGxheSBjb250cm9sbGVyIGFuZCByZXF1aXJlcyBhIHNwYXJzZWx5IGRvY3Vt
ZW50ZWQgdmVuZG9yIHByb3ZpZGVkCj4gPiBpbml0IHNlcXVlbmNlLiBUaGUgZGlzcGxheSByZXNv
bHV0aW9uIGlzIDEwODB4MTkyMCBhbmQgaXMgNzBtbSBieSAxMjdtbQo+ID4gYXMgc3RhdGVkIGlu
IHRoZSBtYW51ZmFjdHVyZXIncyBkb2N1bWVudGF0aW9uLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6
IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtaGltYXgtaHg4Mzk0LmMgfCAxNDIgKysrKysrKysrKysr
KysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE0MiBpbnNlcnRpb25zKCspCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1oaW1heC1oeDgzOTQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1oaW1heC1oeDgzOTQuYwo+ID4gaW5kZXggZmY5
OTRiZjBlM2NjLi4xNmU0NTBiMTU2YjcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cGFuZWwvcGFuZWwtaGltYXgtaHg4Mzk0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5l
bC9wYW5lbC1oaW1heC1oeDgzOTQuYwo+ID4gQEAgLTQ3Nyw2ICs0NzcsMTQ3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaHg4Mzk0X3BhbmVsX2Rlc2MgbWNocF9hYzQwdDA4YV9kZXNjID0gewo+ID4g
IAkuaW5pdF9zZXF1ZW5jZSA9IG1jaHBfYWM0MHQwOGFfaW5pdF9zZXF1ZW5jZSwKPiA+ICB9Owo+
ID4gPHNuaXA+Cj4gPiArCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
IGhsMDU1ZmhhdjAyOGNfbW9kZSA9IHsKPiA+ICsJLmhkaXNwbGF5CT0gMTA4MCwKPiA+ICsJLmhz
eW5jX3N0YXJ0CT0gMTA4MCArIDMyLAo+ID4gKwkuaHN5bmNfZW5kCT0gMTA4MCArIDMyICsgOCwK
PiA+ICsJLmh0b3RhbAkJPSAxMDgwICsgMzIgKyA4ICsgMzIsCj4gPiArCS52ZGlzcGxheQk9IDE5
MjAsCj4gPiArCS52c3luY19zdGFydAk9IDE5MjAgKyAxNiwKPiA+ICsJLnZzeW5jX2VuZAk9IDE5
MjAgKyAxNiArIDIsCj4gPiArCS52dG90YWwJCT0gMTkyMCArIDE2ICsgMiArIDE0LAo+IAo+IFNo
b3VsZG4ndCB0aGlzIGJlICdzLzE0LzE2LycgPwoKQ291bGQgeW91IGdpdmUgYSByZWFzb24gZm9y
IHdoeSB5b3UgdGhpbmsgc28gcGxlYXNlLCBzbyB0aGF0IHdlCmRvbid0IGRhbmNlIGFyb3VuZCB0
aGUgcGVyY2VpdmVkIHByb2JsZW0gdG9vIGxvbmcgOi0pIC4KClRoZSBmcm9udC1wb3JjaCAvIGJh
Y2stcG9yY2ggdmFsdWVzIGFyZSBub3QgZ2VuZXJhbGx5IGlkZW50aWNhbAp0aGF0IGlzIG1vcmUg
YSByYW5kb20gZXZlbnQuCgpHcmFiYmluZyBhIHJhbmRvbSBwYW5lbCBsaWtlIHRoZSBwYW5lbC1s
ZWFkdGVrLWx0azA1MGgzMTQ2dy5jCnlvdSdsbCBzZWUgdGhlIHZhbHVlcyBub3QgbWF0Y2hpbmcu
CgpTbyB0aG9zZSB0aW1pbmcgdmFsdWVzIGFyZSBzcGVjaWZpYyB0byB0aGUgcGFuZWwgYW5kIGlu
IHRoZSBjb21tb24KY2FzZSBub3QgaWRlbnRpY2FsLgoKCkhlaWtvCgo+IAo+IENoZWVycywKPiAg
IERpZWRlcmlrCj4gCj4gPiArCS5jbG9jawkJPSAxMzQ5MjAsCj4gPiArCS5mbGFncwkJPSBEUk1f
TU9ERV9GTEFHX05IU1lOQyB8IERSTV9NT0RFX0ZMQUdfTlZTWU5DLAo+ID4gKwkud2lkdGhfbW0J
PSA3MCwKPiA+ICsJLmhlaWdodF9tbQk9IDEyNywKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgaHg4Mzk0X3BhbmVsX2Rlc2MgaGwwNTVmaGF2MDI4Y19kZXNjID0gewo+ID4g
KwkubW9kZSA9ICZobDA1NWZoYXYwMjhjX21vZGUsCj4gPiArCS5sYW5lcyA9IDQsCj4gPiArCS5t
b2RlX2ZsYWdzID0gTUlQSV9EU0lfTU9ERV9WSURFTyB8IE1JUElfRFNJX01PREVfVklERU9fQlVS
U1QsCj4gPiArCS5mb3JtYXQgPSBNSVBJX0RTSV9GTVRfUkdCODg4LAo+ID4gKwkuaW5pdF9zZXF1
ZW5jZSA9IGhsMDU1ZmhhdjAyOGNfaW5pdF9zZXF1ZW5jZSwKPiA+ICt9Owo+ID4gKwo+ID4gIHN0
YXRpYyBpbnQgaHg4Mzk0X2VuYWJsZShzdHJ1Y3QgZHJtX3BhbmVsICpwYW5lbCkKPiA+ICB7Cj4g
PiAgCXN0cnVjdCBoeDgzOTQgKmN0eCA9IHBhbmVsX3RvX2h4ODM5NChwYW5lbCk7Cj4gPiBAQCAt
NjgzLDYgKzgyNCw3IEBAIHN0YXRpYyB2b2lkIGh4ODM5NF9yZW1vdmUoc3RydWN0IG1pcGlfZHNp
X2RldmljZSAqZHNpKQo+ID4gIAo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IGh4ODM5NF9vZl9tYXRjaFtdID0gewo+ID4gIAl7IC5jb21wYXRpYmxlID0gImhhbm5zdGFyLGhz
ZDA2MGJodzQiLCAuZGF0YSA9ICZoc2QwNjBiaHc0X2Rlc2MgfSwKPiA+ICsJeyAuY29tcGF0aWJs
ZSA9ICJodWlsaW5nLGhsMDU1ZmhhdjAyOGMiLCAuZGF0YSA9ICZobDA1NWZoYXYwMjhjX2Rlc2Mg
fSwKPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJwb3draWRkeSx4NTUtcGFuZWwiLCAuZGF0YSA9ICZw
b3draWRkeV94NTVfZGVzYyB9LAo+ID4gIAl7IC5jb21wYXRpYmxlID0gIm1pY3JvY2hpcCxhYzQw
dDA4YS1taXBpLXBhbmVsIiwgLmRhdGEgPSAmbWNocF9hYzQwdDA4YV9kZXNjIH0sCj4gPiAgCXsg
Lyogc2VudGluZWwgKi8gfQo+IAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
