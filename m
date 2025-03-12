Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DE7FC28B2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 06:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rk8PRhO3XUWUhvQsbm5y1f04z1DaNfhyJ5ZLwJtOhGU=; b=mhZZussAg3V/EN
	zFymszjQzs5jg1b2LU3c8yVcV6iqib2r47P8jYTB2a4UirkX7yV4cSZIvwHPP9xpoi0CI66cDJkmx
	+1RMAwIKUob4RhhAjoEbc9gA4em6rEfkSQ7H97k+OyFqUsvarcjHZPyqhCyTPFJmkwHYJCnuNgnjg
	OQKYfu/0ZEnycbOuIdRHCRBjX5QIZ0WTlw4waJFjHMYSWVSmWsUV+2L7Bv+NIjWM544g9NewDLGk8
	pggOXpCpjJKvBw+zhkqLnW9YSD1nJolro9Q1/j/IoBNh+IkIM4YtP8eNPumb+Drb4w3srm9idUUdc
	FEEYCdS+4oEKtTkvII8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsFBY-00000007YmB-0ed5;
	Wed, 12 Mar 2025 06:03:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsFBV-00000007YkS-367J
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 06:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=1TX2UkdheGKH/mIHBh+0F8cDwKmjcarJeonTvtYCnbk=; b=T0+U2t3iZwWsl0jzzugcrIRWJV
	q0Z++Vigx0eRo/joU6S5nFyqXF6ZdgEMWqPiEuxEk/efNcxGgUaCRHdzNNstqrMyKEAijN0EYwwT/
	53LXVvVGfxdi3qvpdTvX8EZPn85rM/8ivlY89vNlw9GHLG1p6dNvGNofT2Z5/2JE7UqR8uBG7366t
	PznC3bVqT2a3JxHBO1bcfMUmc+Dj3AwQUUXYfJcJRoFu2R5mJust9p4OUcNMe/fQBVOBcT7+qbPqd
	PWHnSTx/AE7fi+lh8lJElYtlQXV+AGWamtXCrTjVpvKFJWTUmOSSAXqsQwigXQ27SXPCcbgE2T3AB
	SQW6KZeg==;
Received: from ip-185-104-138-51.ptr.icomera.net ([185.104.138.51] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tsFBG-0005Jt-SD; Wed, 12 Mar 2025 07:03:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>,
 kever.yang@rock-chips.com
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip clock changes for 6.15 #1
Date: Wed, 12 Mar 2025 07:03:00 +0100
Message-ID: <2216284.irdbgypaU6@phil>
In-Reply-To: <33a5e73e9c3919dd0554f9dcbee8b733.sboyd@kernel.org>
References: <8574162.T7Z3S40VBb@phil> <33a5e73e9c3919dd0554f9dcbee8b733.sboyd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_230317_798462_00ABC45E 
X-CRM114-Status: GOOD (  16.31  )
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

SGkgU3RlcGhlbiwKCkFtIERpZW5zdGFnLCAxMS4gTcOkcnogMjAyNSwgMTk6MDU6NTAgTUVaIHNj
aHJpZWIgU3RlcGhlbiBCb3lkOgo+IFF1b3RpbmcgSGVpa28gU3R1ZWJuZXIgKDIwMjUtMDMtMDgg
MTA6MjM6MzkpCj4gPiBIaSBNaWtlLCBTdGVwaGVuLAo+ID4gCj4gPiBwbGVhc2UgZmluZCBiZWxv
dyBhIHB1bGwtcmVxdWVzdCB3aXRoIFJvY2tjaGlwIGNsb2NrIGNoYW5nZSBmb3IgNi4xNQo+ID4g
VGhlIG5ldyB5ZWFyIHN0YXJ0ZWQgd2l0aCBhIGZsdXJyeSBvZiBhY3Rpdml0eSBpdCBzZWVtcyA6
LSkgLgo+ID4gCj4gPiAKPiA+IFBsZWFzZSBwdWxsLgo+ID4gCj4gPiBUaGFua3MKPiA+IEhlaWtv
Cj4gPiAKPiA+IAo+ID4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCAyMDE0Yzk1
YWZlY2VlM2U3NmNhNGE1Njk1NmE5MzZlMjMyODNmMDViOgo+ID4gCj4gPiAgIExpbnV4IDYuMTQt
cmMxICgyMDI1LTAyLTAyIDE1OjM5OjI2IC0wODAwKQo+ID4gCj4gPiBhcmUgYXZhaWxhYmxlIGlu
IHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPiA+IAo+ID4gICBnaXQ6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0IHRhZ3MvdjYu
MTUtcm9ja2NoaXAtY2xrMQo+ID4gCj4gPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8g
Zjg2M2Q0Y2M3OWE3ZTJmOGM3MzRkMWZhYzg0ZGMyNzU4MDVmNDFjNzoKPiA+IAo+ID4gICBjbGs6
IHJvY2tjaGlwOiBBZGQgY2xvY2sgY29udHJvbGxlciBmb3IgdGhlIFJLMzU2MiAoMjAyNS0wMy0w
MiAxNzo1MTo1MSArMDEwMCkKPiA+IAo+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IAo+IFRoYW5rcy4gUHVsbGVkIGlu
dG8gY2xrLW5leHQKPiAKPiBEaWQgeW91IHNlZSB0aGlzIHdhcm5pbmc/Cj4gCj4gZHJpdmVycy9j
bGsvcm9ja2NoaXAvcnN0LXJrMzU2Mi5jOjIxOjU3OiBlcnJvcjogaW5pdGlhbGl6ZWQgZmllbGQg
b3ZlcndyaXR0ZW4gWy1XZXJyb3I9b3ZlcnJpZGUtaW5pdF0KPiAgICAyMSB8ICNkZWZpbmUgUksz
NTYyX0REUkNSVV9SRVNFVF9PRkZTRVQoaWQsIHJlZywgYml0KSBbaWRdID0gKDB4MjAwMDAqNCAr
IHJlZyAqIDE2ICsgYml0KQo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gZHJpdmVycy9jbGsvcm9ja2NoaXAvcnN0LXJr
MzU2Mi5jOjI2Njo5OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ1JLMzU2Ml9ERFJDUlVf
UkVTRVRfT0ZGU0VUJwo+ICAgMjY2IHwgICAgICAgICBSSzM1NjJfRERSQ1JVX1JFU0VUX09GRlNF
VChTUlNUX1BfRERSX1BIWSwgMCwgOCksCj4gICAgICAgfCAgICAgICAgIF5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+Cj4gZHJpdmVycy9jbGsvcm9ja2NoaXAvcnN0LXJrMzU2Mi5jOjIxOjU3OiBu
b3RlOiAobmVhciBpbml0aWFsaXphdGlvbiBmb3IgJ3JrMzU2Ml9yZWdpc3Rlcl9vZmZzZXRbMTcz
XScpCj4gICAgMjEgfCAjZGVmaW5lIFJLMzU2Ml9ERFJDUlVfUkVTRVRfT0ZGU0VUKGlkLCByZWcs
IGJpdCkgW2lkXSA9ICgweDIwMDAwKjQgKyByZWcgKiAxNiArIGJpdCkKPiAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+IGRy
aXZlcnMvY2xrL3JvY2tjaGlwL3JzdC1yazM1NjIuYzoyNjY6OTogbm90ZTogaW4gZXhwYW5zaW9u
IG9mIG1hY3JvICdSSzM1NjJfRERSQ1JVX1JFU0VUX09GRlNFVCcKPiAgIDI2NiB8ICAgICAgICAg
UkszNTYyX0REUkNSVV9SRVNFVF9PRkZTRVQoU1JTVF9QX0REUl9QSFksIDAsIDgpLAo+ICAgICAg
IHwgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IGNjMTogYWxsIHdhcm5pbmdz
IGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCgoKaW50ZXJlc3RpbmdseSwgdGhpcyBkaWQgbm90IHR1
cm4gdXAgaW4gbXkgYnVpbGQgdGVzdC4KQnV0IHRoYXQgc3BsYXQgaXMgcmVhbGx5IGhlbHBmdWwg
dG9vLCBiZWNhdXNlIGl0IG1hZGUgaXQgZWFzeSB0byBzZWUKdGhhdCBvbmUgb2YgdGhlIGlkcyBp
cyBkb3VibGVkIGluIHRoZSBkdC1iaW5kaW5nIGhlYWRlci4KCmluY2x1ZGUvZHQtYmluZGluZ3Mv
cmVzZXQvcm9ja2NoaXAscmszNTYyLWNydS5oOgoKI2RlZmluZSBTUlNUX1BfRERSX0hXTFAJCTE3
MwojZGVmaW5lIFNSU1RfUF9ERFJfUEhZCQkJMTczCgoKSSdsbCBmaXggdXAgdGhlIGRvdWJsZSBp
ZC4KCgpPdXQgb2YgY3VyaW9zaXR5LCB3aGF0IHRvb2xjaGFpbiB3YXMgdGhhdD8KCgpUaGFua3MK
SGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
