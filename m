Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E20E5C02181
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 14:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p049HFJYwiRBR8+AQTqQt7IMnza2tGQaQofAbUx+Z64=; b=T6wjqxpVhFZFLw
	ZgExptlkBiQWBvPNaCUUB4ocj04inTFTqqRtM6TKgqr9YnDzk1qd6SjIoMccwtX2NdAdUt/JoTp1M
	uhR1kFRVf0TaiJF3IpR0ukNxK858FfAqlzOqLIdxm3HQoCTYjsaDySxpPQV2hPkSaODrGax4uB8Ex
	bbjy4rGjPiSVS5lP8e0/LY5amTaWjtpFw0cOXg7GDwa8eGVUz9WxIGqd3q0AuVo3AEmY744ED8iDO
	kv/ncxHkwIpenmftoIBh0zBJ+j3xTyQqwXtPHkkfCtBMHQSCpNPxO5QsAjE0yhHsdYMjBBeVQi26K
	W4X8IrycXL20UGbK7fqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsTv-00000005l2n-1A9p;
	Mon, 20 Jan 2025 14:10:23 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsTr-00000005l1U-3f95
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 14:10:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737382218;
	bh=nmh2vniM4LQlloaRmhBX5Bk4jR4PrfWPOm+MKJGWh7M=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Qhggi1udRzll47dU7ORQvMpLPxzZMAHpBGvYBWXK4ZxQw8Mmj0OA3AkI56MT3Jf23
	 tgT+nfMJOS7DX9SAEmqJhCo4fTqTq6YVCMmOkqA/U4W3lDd6HZ8Kx/NlSdZD7RQucW
	 ERuHBdTXpaksUY8hZG2SduvRPkcPEzvLTRr5BRY1M1S5DYOMHROZCAVzfkqICOU3c/
	 Y+Eeug8jGjS4B9LajXhlHRUFt9wFqwAAi9FC4eaXnxZfyLrojBly1A9til4FBZZAwk
	 jAJkuutSvy6xcOKV2nKkQ14cOM9MZklEX28/ctAfnD1mgITYHF4We6ZKG0fbSYcY+v
	 gRymR6MwFRsDw==
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:11:e976::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 615F317E023F;
	Mon, 20 Jan 2025 15:10:17 +0100 (CET)
Message-ID: <95a8e3c6d28444750bd312ff61a3f6b0daea177a.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: HEVC: Initialize start_bit field
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 20 Jan 2025 09:10:15 -0500
In-Reply-To: <cc3b22c9-ff98-4328-9e70-4d22c29a6b0d@collabora.com>
References: <20250120081052.63224-1-benjamin.gaignard@collabora.com>
	 <cc3b22c9-ff98-4328-9e70-4d22c29a6b0d@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_061020_068686_3093B867 
X-CRM114-Status: GOOD (  13.16  )
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

TGUgbHVuZGkgMjAgamFudmllciAyMDI1IMOgIDExOjAwICswMTAwLCBCZW5qYW1pbiBHYWlnbmFy
ZCBhIMOpY3JpdMKgOgo+IExlIDIwLzAxLzIwMjUgw6AgMDk6MTAsIEJlbmphbWluIEdhaWduYXJk
IGEgw6ljcml0wqA6Cj4gPiBBbHdheXMgc2V0IHN0YXJ0X2JpdCBmaWVsZCB0byAwLCBpZiBub3Qg
aXQgY291bGQgbGVhZCB0byBjb3JydXB0ZWQgZnJhbWVzCj4gPiBzcGVjaWFsbHkgd2hlbiBkZWNv
ZGluZyBWUDkgYml0c3RyZWFtcyBhdCB0aGUgc2FtZSB0aW1lIHNpbmNlIFZQOSBkcml2ZXIKPiA+
IHNldCBpdCBmb3IgaXQgb3duIHB1cnBvc2UuCgogICAgICAgICAgICAgICBpdHMKCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xs
YWJvcmEuY29tPgo+IAo+IEkgY291bGQgYWRkIHRoaXMgdGFnOgo+IAo+IEZpeGVzOiBjYjVkZDVh
MGZhNTE4ICgibWVkaWE6IGhhbnRybzogSW50cm9kdWNlIEcyL0hFVkMgZGVjb2RlciIpCgpJIGhh
dmUgdGVzdGVkIHRoaXMgb24gSU1YOE1RIGJvYXJkIHVzaW5nIHRoZSBmb2xsb3dpbmcgR1N0cmVh
bWVyIHBpcGVsaW5lLgpCZWZvcmUgdGhlIGNoYW5nZSwgdGhlIEhFVkMgd2luZG93IHdhcyBlbnRp
cmVseSBjb3JydXB0ZWQuIFRoZSBzdHJlYW1zIGRvbid0Cm1hdHRlciBhcyBsb25nIGFzIHRoZXkg
dXNlIGJvdGggSEVWQyBhbmQgVlA5IGNvZGVjLgoKZ3N0LWxhdW5jaC0xLjAgXAogIGZpbGVzcmMg
bG9jYXRpb249aGV2Yy5tcDQgISBwYXJzZWJpbiAhIHY0bDJzbGgyNjVkZWMgISBmYWtldmlkZW9z
aW5rIFwKICBmaWxlc3JjIGxvY2F0aW9uPXZwOS5ta3YgISBwYXJzZWJpbiAhIHY0bDJzbHZwOWRl
YyAhIGZha2V2aWRlb3NpbmsKClRlc3RlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5k
dWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKCj4gCj4gPiAtLS0KPiA+ICAgZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfaGV2Y19kZWMuYyB8IDEgKwo+ID4gICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX2hldmNfZGVjLmMgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4gPiBpbmRl
eCA4NWE0NDE0M2IzNzguLjBlMjEyMTk4ZGQ2NSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX2hldmNfZGVjLmMKPiA+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX2hldmNfZGVjLmMKPiA+
IEBAIC01MTgsNiArNTE4LDcgQEAgc3RhdGljIHZvaWQgc2V0X2J1ZmZlcnMoc3RydWN0IGhhbnRy
b19jdHggKmN0eCkKPiA+ICAgCWhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfc3RyZWFtX2xlbiwg
c3JjX2xlbik7Cj4gPiAgIAloYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX3N0cm1fYnVmZmVyX2xl
biwgc3JjX2J1Zl9sZW4pOwo+ID4gICAJaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9zdHJtX3N0
YXJ0X29mZnNldCwgMCk7Cj4gPiArCWhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfc3RhcnRfYml0
LCAwKTsKPiA+ICAgCWhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfd3JpdGVfbXZzX2UsIDEpOwoK
SSd2ZSBhbHNvIGNyb3NzZWQgYWdhaW5zdCAiZGVjb2Rlcl9zd3JlZ19tYXBfZzIueGxzeCIgZG9j
dW1lbnRhdGlvbiwgaWYgeW91IGFyZQpsdWNreSB0byBoYXZlIGFjY2VzcyB0byB0aGF0LCBhbmQg
d2l0aGluIHN3cmVnNSB0aGVyZSBpcyBvbmx5IGcyX3RlbXBvcl9tdnBfZQp0aGF0IGlzIGFsc28g
c2hhcmVkLCBhbmQgaXRzIGFscmVhZHkgYmVpbmcgc2V0IGluIGJvdGggZHJpdmVycy4KClJldmll
d2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+
CgoKPiA+ICAgCj4gPiAgIAloYW50cm9fd3JpdGVfYWRkcih2cHUsIEcyX1RJTEVfU0laRVNfQURE
UiwgY3R4LT5oZXZjX2RlYy50aWxlX3NpemVzLmRtYSk7Cj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
