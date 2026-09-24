Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C5EC98304
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 03:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDlM2OxBqQjeFwhrmpYPiQsYcDXtqDzeZ8pACvzIM5c=; b=l8RGCdt4LtqbnB
	CeUZFbPUebQy7haPtTOpIMVJMDWrNpdUfwjNhdIKrYgt+/IQ+1vMlpUjQp6qT2fTw9Iths1Ff1rY3
	slKh9RllM4qDW0Gsq1ud/50U2vMIS8i0To22rtM9HZNHg5peUH1aCeJChE0i7678rorYkEZKbRFmQ
	j1+NiYUARdqCkyMsH4eQQEQ2oOlO/uRkeuMFq7RbnblWsIIsdZ2RqPFyQrUATNDmZewLp8K3BcTFK
	0XhSNBIPr48MYmxEzGesfgD51OJURveCuRgG1rcCIXq8Cc7u1VnQDl6V1A92qs9yEld6zsUtx+kjq
	U6UFvok16aKkcJXds8Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9a7j-00000009wJi-48qq;
	Thu, 24 Sep 2026 03:27:51 +0000
Received: from mail-m93230.xmail.ntesmail.com ([103.126.93.230])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9a7g-00000009wIe-3VKb
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 03:27:50 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ef5fe4e7;
	Thu, 24 Sep 2026 11:27:44 +0800 (GMT+08:00)
Message-ID: <c531d929-24a3-4b5b-b329-a11b0191baf9@rock-chips.com>
Date: Thu, 24 Sep 2026 11:27:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Diederik de Haas <diederik@cknow-tech.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v3 0/3] Small INTx fixes for Rockchip's dwc based PCIe
 controller driver
To: Niklas Cassel <cassel@kernel.org>
References: <1790044622-164744-1-git-send-email-shawn.lin@rock-chips.com>
 <DLMKWV1AH8TZ.2R3JK2NPM4KZB@cknow-tech.com>
 <08329b2b-449a-4036-8e82-ad67d0d037ee@rock-chips.com>
 <arPvcQIu46N_gTmB@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <arPvcQIu46N_gTmB@ryzen>
X-HM-Tid: 0aa0d174730803a4kunmabe36c1150bb7c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCQh1NVhkYTUNNHRpJQ0tJQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=SKP7ccLQWc33EiBC8F8/NJaKmN3/XEbN5/J3rG4yrcrHfH2lmAhzYVil6h74oaLY2ExwCJn8oTT3WizjF+Y01eA19ydHQnIwIOPt5RfF9iW6a5PouEn9Z1DRXqCKhKm4/4Ytst4X0IhW+u50Qk1tJrgIHMtFqP+5HpAnBtpn6+A=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=v+qqOE+xh9kXPgV1iezB4P8lSaYSSVqLNw4Hghtva1E=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_202749_090409_916DC535 
X-CRM114-Status: GOOD (  28.12  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTmlrbGFzCgrlnKggMjAyNi8wOS8yMyDmmJ/mnJ/kuIkgMjM6MjUsIE5pa2xhcyBDYXNzZWwg
5YaZ6YGTOgo+IEhlbGxvIFNoYXduLCBEaWVkZXJpaywKPiAKPiBPbiBXZWQsIFNlcCAyMywgMjAy
NiBhdCAwNToyMTo1OVBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4+Pgo+Pj4gSSBidWlsZCBh
IGtlcm5lbCB3aXRoIHRoaXMgcGF0Y2ggc2V0ICg3LjN+cmM0LTIpIGFuZCBnb3Qgc2V2ZXJhbCB3
YXJuaW5ncwo+Pj4gbGlrZSB0aGlzLCBzaG9ydGx5IGZvbGxvd2VkIGJ5IGEgc3RhY2sgdHJhY2U6
Cj4+Cj4+IFNhc2hpa28gYWxyZWFkeSByZXBvcnR0ZWQgc29tZSB2YWxpZCBjb25jZXJuIGFyb3Vu
ZCB0aGlzLCBhbmQgSSdsbCBwbGFuCj4+IHRvIHJld29yayB0aGlzIHNlcmllcyBhIGJpdCBsYXRl
ci4gVGhhbmtzIGZvciByZXBvcnRpbmcgdGhpcy4KPiAKPiBKdXN0IHRoaW5raW5nIG91dCBsb3Vk
Ogo+IAo+IFBhdGNoIDEvMyBpbiB0aGlzIHNlcmllcyBmaXhlcyBhIHJlZ3Jlc3Npb24sIHNvIGl0
IHNob3VsZCBiZSBwaWNrZWQgdXAgYXMKPiBzb29uIGFzIHBvc3NpYmxlLgo+IAoKVGhhbmsgeW91
IGZvciB5b3VyIGRldGFpbGVkIGFuYWx5c2lzIGFuZCB2YWx1YWJsZSBzdWdnZXN0aW9ucy4KCk15
IG9yaWdpbmFsIGludGVudGlvbiB3YXMgdG8gcHJvdmlkZSBhIG1pbmltYWwgZml4IGZvciB0aGUg
cmVncmVzc2lvbiAKaW50cm9kdWNlZCBkdXJpbmcgdGhlIG1lcmdlIHdpbmRvdy4gSG93ZXZlciwg
YWZ0ZXIgU2FzaGlrbydzIHJldmlldywgCnNvbWUgZXhpc3RpbmcgcHJvYmxlbXMgKGV2ZW4gaWYg
b25seSB0aGVvcmV0aWNhbCkgd2VyZSBwb2ludGVkIG91dCwgc28gCnRoZSBzZXJpZXMgZ3JldyBp
bnRvIHRocmVlIHBhdGNoZXMuCgpJIGFncmVlIHdpdGggeW91ciByZWFzb25pbmc6IHBhdGNoIDEg
Zml4ZXMgYSByZWFsIHJlZ3Jlc3Npb24gYW5kIHNob3VsZCAKYmUgcGlja2VkIHVwIGFzIHNvb24g
YXMgcG9zc2libGUsIHdoaWxlIHBhdGNoZXMgMiBhbmQgMyBjYW4gYmUgaGFuZGxlZCAKc2VwYXJh
dGVseS4gR2l2ZW4gdGhhdCB3ZSBhcmUgYXBwcm9hY2hpbmcgLXJjNSBhbmQgSSB3aWxsIGhhdmUg
dHdvIApjb25zZWN1dGl2ZSBuYXRpb25hbCBob2xpZGF5cyBpbiB0aGUgY29taW5nIHdlZWtzLCBJ
IG1heSBiZSB1bmFibGUgdG8gCmFjY2VzcyBteSBkZXZlbG9wbWVudCBlcXVpcG1lbnQgZm9yIGFi
b3V0IHR3byB3ZWVrcy4gVGhlcmVmb3JlLCBJIHBsYW4gCnRvIHJldmlzZSBwYXRjaCAxIGJhc2Vk
IG9uIHlvdXIgc3VnZ2VzdGlvbiAobW92aW5nIHRoZSBjb2RlIGJlZm9yZSAKZHdfcGNpZV9ob3N0
X2luaXQoKSkgYW5kIHNlbmQgaXQgb3V0IHByb21wdGx5LgoKPiBQYXRjaCAyLzMgaXMgY29udmVy
dGluZyB0aGUgcmVzb3VyY2VzIHRvIGJlIGRldmljZSBtYW5hZ2VkLgo+IEhvd2V2ZXIsIGFmdGVy
IHBhdGNoIDEvMyAoaWYgdGhlIG1vdmVkIGNvZGUgaXMgY2FsbGVkIF9iZWZvcmVfCj4gZHdfcGNp
ZV9ob3N0X2luaXQoKSkgdGhlIG9ubHkgdGhpbmcgbGVmdCBhZnRlciBkd19wY2llX2hvc3RfaW5p
dCgpIGlzIHRoZQo+IFBDSUVfQ0xJRU5UX0lOVFJfTUFTS19NSVNDIHdyaXRlLgo+IAo+IEkuZS4g
dGhlcmUgaXMgbm8gZXJyb3IgcmV0dXJuIHJlbWFpbnMgdGhhdCB3b3VsZCBuZWVkIGEgZHdfcGNp
ZV9ob3N0X2RlaW5pdCgpLgo+IAo+IFNvIHRoZXJlIGlzIG5vIHN0cmljdCBuZWVkIHRvIGNvbnZl
cnQgdG8gZGV2bV8oKS4KPiBZb3UgY2FuIGRvIHNvLCBidXQgdGhhdCBzaG91bGQgYmUgaW4gYSBz
ZXBhcmF0ZSBzZXJpZXMgSU1PLgo+IAo+IAo+IEluIGZhY3QsIERpZWRlcmlrJ3MgbGF0ZXIgd2Fy
bmluZ3MgYXJlIGEgcmVzdWx0IG9mIFBhdGNoIDIvMyB3aGljaCByZXBsYWNlZAo+IGlycV9kb21h
aW5fY3JlYXRlX2xpbmVhcigpIHdpdGggZGV2bV9pcnFfZG9tYWluX2luc3RhbnRpYXRlKCk6Cj4g
Cj4gICAgIGVycm9yOiBod2lycSAweDAgaXMgdG9vIGxhcmdlIGZvciA6cGNpZUBmZTE1MDAwMDps
ZWdhY3ktaW50ZXJydXB0LWNvbnRyb2xsZXIKPiAgICAgV0FSTklORzoga2VybmVsL2lycS9pcnFk
b21haW4uYzo2NzYgYXQgaXJxX2RvbWFpbl9hc3NvY2lhdGVfbG9ja2VkKzB4MTE4LzB4MWEwCj4g
Cj4gCj4gVGhlIGZpeCBzZWVtcyB0byBiZSB0byBhZGQgLmh3aXJxX21heCA9IFBDSV9OVU1fSU5U
WCwgdG8KPiByb2NrY2hpcF9wY2llX2luaXRfaXJxX2RvbWFpbigpOgo+IAo+IFRoZSBmaXggaXMg
b25lIGxpbmUgaW4gcm9ja2NoaXBfcGNpZV9pbml0X2lycV9kb21haW4oKSA6Cj4gCQkJCS5zaXpl
ID0gUENJX05VTV9JTlRYLAo+IAkJCQkuaHdpcnFfbWF4ID0gUENJX05VTV9JTlRYLAo+IAo+IAo+
IAo+IFBhdGNoIDMvMyBsb29rcyBsaWtlIGEgdGhlb3JldGljYWwgcHJvYmxlbSB0aGF0IFNhc2hp
a28gZm91bmQuCj4gCj4gSXMgdGhlIHVuZGVybHlpbmcgcHJvYmxlbSByZWFsPyBJdCdzIHBsYXVz
aWJsZSwgYnV0IG5vYm9keSBoYXMgcmVwcm9kdWNlZCBpdC4KPiBGb3IgaXQgdG8gaGFwcGVuLCB0
aGUgY29udHJvbGxlcidzIGxlZ2FjeSBJUlEgb3V0cHV0IGhhcyB0byBiZSBhc3NlcnRlZCB3aGls
ZQo+IGNsb2NrcyBhcmUgZ2F0ZWQuIFR3byB3YXlzIHRoYXQgY291bGQgaGFwcGVuOgo+IAo+IC0g
VGhlIG91dHB1dCB3YXMgaGlnaCB3aGVuIGNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKCkgZnJv
emUgdGhlIGxvZ2ljLgo+IC0gQSBkZXZpY2Ugd2FzIHN0aWxsIGFzc2VydGluZyBJTlR4IHdoZW4g
YW4gQUVSLSBvciBzeXNmcy10cmlnZ2VyZWQgcmVzZXQKPiAgICBzdG9wcGVkIHRoZSBsaW5rLgo+
IAo+IFBhdGNoIDMvMyBpcyBub3QgZW5vdWdoIHRob3VnaDoKPiAKPiBkaXNhYmxlX2lycSgpIG5l
dmVyIG1hc2tzIHRoaXMgY2hhaW5lZCBJUlEgaW4gaGFyZHdhcmUsIHNvCj4gcm9ja2NoaXBfcGNp
ZV9pbnR4X2hhbmRsZXIoKSBjYW4gc3RpbGwgcnVuIGFuZCByZWFkIHRoZSB1bmNsb2NrZWQgQVBC
Lgo+IAo+IFRoaXMgaXMgdGhlIGtpbmQgb2YgY2FzZSBJUlFfRElTQUJMRV9VTkxBWlkgZXhpc3Rz
IGZvciwgYWNjb3JkaW5nIHRvIHRoZQo+IGNvbW1lbnQgYWJvdmUgaXJxX2Rpc2FibGUoKS4KPiAK
PiBNaW5pbWFsIGFtZW5kIG9mIHBhdGNoIDMvMyBhcyBpdCBjdXJyZW50bHkgbG9va3M6Cj4gCj4g
dHVybiBvZmYgbGF6eSBkaXNhYmxlIGZvciB0aGlzIGxpbmUgd2hlbiB0aGUgY2hhaW5lZCBoYW5k
bGVyIGlzIGluc3RhbGxlZDoKPiAJaXJxX3NldF9zdGF0dXNfZmxhZ3Mocm9ja2NoaXAtPmludHhf
aXJxLCBJUlFfRElTQUJMRV9VTkxBWlkpOwo+IAlpcnFfc2V0X2NoYWluZWRfaGFuZGxlcl9hbmRf
ZGF0YShyb2NrY2hpcC0+aW50eF9pcnEsCj4gCQkJCQkgcm9ja2NoaXBfcGNpZV9pbnR4X2hhbmRs
ZXIsIHJvY2tjaGlwKTsKPiAKPiBTdWNoIHRoYXQgaXJxX2Rpc2FibGUoKSBtYXNrcyB0aGUgY2hh
aW5lZCBJUlEuCj4gCj4gRG8gd2Ugd2FudCBwYXRjaCAzLzM/IFByb2JhYmx5Li4gYnV0IHRoaXMg
cmFjZSBzZWVtcyB2ZXJ5IHNtYWxsLi4uCj4gcHJvYmFibHkgbW9zdCBpbXBvcmVudCB0byBnZXQg
cGF0Y2ggMSAod2l0aCB0aGUgY29kZSBtb3ZlIF9iZWZvcmVfCj4gZHdfcGNpZV9ob3N0X2luaXQo
KSkgYWNjZXB0ZWQgQVNBUCwgYXMgaXQgY3VycmVudGx5IGlzIGNhdXNpbmcgcHJvYmxlbXMKPiBm
b3IgRGllZGVyaWsuCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IE5pa2xhcwo+IAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
