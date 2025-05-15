Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CA85C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 11:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/tZcYUaKlMup/kvMsQYiexX/1Y7o2rTVRMxGVHNWrE=; b=i9Kw9XVxP43cK4
	AWVCPxskAzhnN7GPsv7p08P77iXIi5T35lYNo10CkH0iBTmBY4BVFzamw7aidZSNnSYgEYTG6VTb4
	K2QnUHgHfoggOuFLd7Eg9e1xoBs/u4RTzKFwcRzi2szk9zSwF3z/vWPIXD45VDpkaXhKJy1t5Rk5f
	1YY3zFnZkx7xGukmHHJJwB5jDDoTAgtZ6E4KJmuyiU1XUuOoiSKuVllIb0gBa+5ctO1PZ28j4q+N/
	f8ZgKh7RDC5LScFFa/wGW+n14pdyxeAim1YDnC7Zvi2s8+K9o6YC6guxtJ15WEZkWiqVSNjX+RpuM
	NazkpVARjoRlHDU3Oy2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFX2S-00000000RbE-2sjE;
	Thu, 15 May 2025 11:46:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFX0Q-00000000RBY-2CTp;
	Thu, 15 May 2025 11:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4EIg5oOs7ULbz83N09ZfXxoK0Xg+DnktC4ZDSGogzJ0=; b=geJHtel/NTEFLCETukj4rEru8f
	DTcZfviPipN15Ne5XDBQH8OUbGglWEzeo30JTmc/NxYBd8B2Jwg8Z/YMY2mo32dq6LSJbjG4ZHShg
	zAYen0uU7oRU1wdt+XxzqVn9F3dQhLqF8lGawb/3OV2F7wpAXttMVVieGreabNCKeuB/UlmrUrGKG
	rTkkNogBaE54a2XY0j95OxPeMmyOxcdC4Cueiy5aSACulINIA2cd2msTbgKF7YcSPRVfpVvBcNqmD
	a04Hn7lckIgU5AdmUTdV7BGlD6jNOOkwCsI4NacH0Mk0v7WF42ooxarWhvnl0/fc5TUjl5i1S4D5e
	wiQIqPUg==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uFX0K-0003eK-ND; Thu, 15 May 2025 13:44:00 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
Date: Thu, 15 May 2025 13:43:59 +0200
Message-ID: <3784948.RUnXabflUD@diego>
In-Reply-To: <20250425-onboard_usb_dev-v2-2-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
 <20250425-onboard_usb_dev-v2-2-4a76a474a010@thaumatec.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_044406_579019_10BB6890 
X-CRM114-Status: GOOD (  19.93  )
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

QW0gRnJlaXRhZywgMjUuIEFwcmlsIDIwMjUsIDE3OjE4OjA3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTHVrYXN6IEN6ZWNob3dza2k6Cj4gVGhlIEN5cHJlc3MgSFgzIGh1
YnMgdXNlIGRpZmZlcmVudCBkZWZhdWx0IFBJRCB2YWx1ZSBkZXBlbmRpbmcKPiBvbiB0aGUgdmFy
aWFudC4gVXBkYXRlIGNvbXBhdGlibGVzIGxpc3QuCj4gQmVjYXN1c2UgYWxsIGh1YiB2YXJpYW50
cyB1c2UgdGhlIHNhbWUgZHJpdmVyIGRhdGEsIGFsbG93IHRoZQo+IGR0IG5vZGUgdG8gaGF2ZSB0
d28gY29tcGF0aWJsZXM6IGxlZnRtb3N0IHdoaWNoIG1hdGNoZXMgdGhlIEhXCj4gZXhhY3RseSwg
YW5kIHRoZSBzZWNvbmQgb25lIGFzIGZhbGxiYWNrLgo+IAo+IEZpeGVzOiAxZWNhNTFmNThhMTAg
KCJkdC1iaW5kaW5nczogdXNiOiBBZGQgYmluZGluZyBmb3IgQ3lwcmVzcyBIWDMgVVNCIDMuMCBm
YW1pbHkiKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgNi42Cj4gQ2M6IHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmcgIyBCYWNrcG9ydCBvZiB0aGUgcGF0Y2ggKCJkdC1iaW5kaW5nczogdXNi
OiB1c2ItZGV2aWNlOiByZWxheCBjb21wYXRpYmxlIHBhdHRlcm4gdG8gYSBjb250YWlucyIpIGZy
b20gbGlzdDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtdXNiLzIwMjUwNDE4LWR0LWJp
bmRpbmctdXNiLWRldmljZS1jb21wYXRpYmxlcy12Mi0xLWIzMDI5ZjE0ZTgwMEBjaGVycnkuZGUv
Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyBCYWNrcG9ydCBvZiB0aGUgcGF0Y2ggaW4g
dGhpcyBzZXJpZXMgZml4aW5nIHByb2R1Y3QgSUQgaW4gb25ib2FyZF9kZXZfaWRfdGFibGUgaW4g
ZHJpdmVycy91c2IvbWlzYy9vbmJvYXJkX3VzYl9kZXYuYyBkcml2ZXIKPiBTaWduZWQtb2ZmLWJ5
OiBMdWthc3ogQ3plY2hvd3NraSA8bHVrYXN6LmN6ZWNob3dza2lAdGhhdW1hdGVjLmNvbT4KCkxv
b2tpbmcgYXQgbGludXgtbmV4dCwgaXQgc2VlbXMgbGlrZSBwYXRjaDEgb2YgdGhpcyBzZXJpZXMg
d2FzIGFwcGxpZWQgWzBdLgpUaGUgZ2VuZXJhbCBjb252ZW50aW9uIHdvdWxkIGJlIGZvciB0aGUg
YmluZGluZyAodGhpcyBwYXRjaCkgYWxzbyBnb2luZwp0aHJvdWdoIGEgZHJpdmVyIHRyZWUuCgpJ
IGd1ZXNzIEkgX2NvdWxkXyBhcHBseSBpdCB0b2dldGhlciB3aXRoIHRoZSBib2FyZC1sZXZlbCBw
YXRjaGVzLCBidXQKZm9yIHRoYXQgd291bGQgbmVlZCBhbiBBY2sgZnJvbSBHcmVnIC4KCkBHcmVn
LCBkbyB5b3Ugd2FudCB0byBtZXJnZSB0aGlzIHBhdGNoID8KCgpUaGFua3MgYSBsb3QKSGVpa28K
CgoKWzBdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25l
eHQvbGludXgtbmV4dC5naXQvY29tbWl0Lz9pZD05ZjY1N2E5MjgwNWNmYzk4ZTExY2Y1ZGE5ZThm
NGUwMmVjZmYyMjYwCgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvY3lwcmVz
cyxoeDMueWFtbCAgICAgICAgICB8IDE5ICsrKysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvY3lwcmVzcyxoeDMueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvY3lwcmVzcyxoeDMueWFtbAo+
IGluZGV4IDEwMzNiN2E0YjhmOTUzNDI0Y2MzZDMxZDU2MTk5MmMxN2YzNTk0YjIuLmQ2ZWFjMTIx
MzIyOGQyYWNiNTBlYmM5NTlkMWZmMTUxMzRjNWE5MWMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jeXByZXNzLGh4My55YW1sCj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jeXByZXNzLGh4My55YW1sCj4gQEAg
LTE0LDkgKzE0LDIyIEBAIGFsbE9mOgo+ICAKPiAgcHJvcGVydGllczoKPiAgICBjb21wYXRpYmxl
Ogo+IC0gICAgZW51bToKPiAtICAgICAgLSB1c2I0YjQsNjUwNAo+IC0gICAgICAtIHVzYjRiNCw2
NTA2Cj4gKyAgICBvbmVPZjoKPiArICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgLSB1c2I0YjQs
NjUwNAo+ICsgICAgICAgICAgLSB1c2I0YjQsNjUwNgo+ICsgICAgICAtIGl0ZW1zOgo+ICsgICAg
ICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gdXNiNGI0LDY1MDAKPiArICAgICAgICAg
ICAgICAtIHVzYjRiNCw2NTA4Cj4gKyAgICAgICAgICAtIGNvbnN0OiB1c2I0YjQsNjUwNAo+ICsg
ICAgICAtIGl0ZW1zOgo+ICsgICAgICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgICAgIC0gdXNi
NGI0LDY1MDIKPiArICAgICAgICAgICAgICAtIHVzYjRiNCw2NTAzCj4gKyAgICAgICAgICAgICAg
LSB1c2I0YjQsNjUwNwo+ICsgICAgICAgICAgICAgIC0gdXNiNGI0LDY1MGEKPiArICAgICAgICAg
IC0gY29uc3Q6IHVzYjRiNCw2NTA2Cj4gIAo+ICAgIHJlZzogdHJ1ZQo+ICAKPiAKPiAKCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
