Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0D70CCFA1D
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 12:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=B5JyfiiOEzfyevbIMILCOHj4M65RdDQhHX1RxXNqiNQ=; b=HtqML0Ti72734h
	h/3rraSKdG16zbOyhXshg5TSmAONYOALfxAFs8lFkiGcN7Z5dFuIPZEZCQh04FcTsGsBxgBuZhQv4
	qBtiKoAez9J/2Dc9kbnDbWDj7d130w0sySY55yFgbK/np08Cz0VoTD8Bwawi3OVcijrwLPVz32oO9
	sf0NQfk9qHP4SMnN1JhrwA2TdZw2yXt8XYATuFo+185anZeCVes0vXMfX+KwjlgsdfiQv0lm+aOWr
	/ZtlQPis2p/VJmFnVbSFY4Qxg4sy36dEmC57wU+OVhioftWmYcQ2Sw3hSay3GNt7iXQdi6lYV0w7k
	or5vNacn+w2oIHPFWaXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGz6X-0000000FROC-0k6f;
	Thu, 06 Nov 2025 12:28:41 +0000
Received: from mail-m1973190.qiye.163.com ([220.197.31.90])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTVG3-00000001MsW-0Wxm;
	Mon, 23 Jun 2025 00:42:00 +0000
Received: from DESKTOP-SN9UGS1 (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1987adbf8;
	Mon, 23 Jun 2025 08:41:44 +0800 (GMT+08:00)
Date: Mon, 23 Jun 2025 08:41:44 +0800
From: "xxm@rock-chips.com" <xxm@rock-chips.com>
To: robin.murphy <robin.murphy@arm.com>, 
	joro <joro@8bytes.org>, 
	will <will@kernel.org>, 
	heiko <heiko@sntech.de>
Cc: iommu <iommu@lists.linux.dev>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-rockchip <linux-rockchip@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: =?utf-8?B?5Zue5aSNOiBSZTogW1BBVENIXSBpb21tdS9yb2NrY2hpcDogcHJldmVudCBpb21tdXMgZGVhZCBsb29wIHdoZW4gdHdvIG1hc3RlcnMgc2hhcmUgb25lIElPTU1V?=
References: <20250620073945.572523-1-xxm@rock-chips.com>, 
	<340d76b8-c3a6-4116-ae51-ac4e4ee6a994@arm.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.25.301[cn]
Mime-Version: 1.0
Message-ID: <202506230841445347043@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUNJHlYYTRpLTRpNGE5LTUhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a979a3bddab03ackunma08b86cd1b6046a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OE06KTo5DDEzCi4ITxUaIj8w
	TREKFC1VSlVKTE5LTUhCSEtOSkpNVTMWGhIXVQMDFjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lBWU5D
	VUlJVUxVSkpPWVdZCAFZQU9LSEM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=N2o1DUUNJO2OZFiwUvHWww+EiZsX+VCs5xwPWdyLGqmb85zvdLqcAyX3wORnh97ayVcJS8XqvgdxHGsTMvo/LyW3xVIfCYFaL2K562aV7T8kfOQOAcngWGBBxdoduI4KKC0AwwBExjvatfGbxKbnEPYBCXDj00RlYD0jS4CU4a8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GEGAcyCqUXkwXqEOUaiQZ782N2IguRzssxIsxDn790c=;
	h=date:mime-version:subject:message-id:from;
X-Bad-Reply: References but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_174159_631580_1A6AA68F 
X-CRM114-Status: GOOD (  12.56  )
X-Mailman-Approved-At: Thu, 06 Nov 2025 04:28:36 -0800
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

SGkgUm9iaW4sCgoKPk9uIDIwMjUtMDYtMjAgODozOSBhbSwgU2ltb24gWHVlIHdyb3RlOgoKCgo+
PiBXaGVuIHR3byBtYXN0ZXJzIHNoYXJlIGFuIElPTU1VLCBjYWxsaW5nIG9wcy0+b2ZfeGxhdGUg
ZHVyaW5nCgoKCj4+IHRoZSBzZWNvbmQgbWFzdGVyJ3MgZHJpdmVyIGluaXQgbWF5IG92ZXJ3cml0
ZSBpb21tdS0+ZG9tYWluIHNldAoKCgo+PiBieSB0aGUgZmlyc3QuIFRoaXMgY2F1c2VzIHRoZSBj
aGVjayBpZiAoaW9tbXUtPmRvbWFpbiA9PSBkb21haW4pCgoKCj4+IGluIHJrX2lvbW11X2F0dGFj
aF9kZXZpY2UoKSB0byBmYWlsLCByZXN1bHRpbmcgaW4gdGhlIHNhbWUKCgoKPj4gaW9tbXUtPm5v
ZGUgYmVpbmcgYWRkZWQgdHdpY2UgdG8gJnJrX2RvbWFpbi0+aW9tbXVzLCB3aGljaCBjYW4KCgoK
Pj4gbGVhZCB0byBhbiBpbmZpbml0ZSBsb29wIGluIHN1YnNlcXVlbnQgJnJrX2RvbWFpbi0+aW9t
bXVzIG9wZXJhdGlvbnMuCgoKCj4KCgoKPkluZGVlZCB0aGlzIGlzIGEgcHJvcGVydHkgb2YgdGhl
IElPTU1VIGluc3RhbmNlIGl0c2VsZiBzbyBpdCByZWFsbHkgCgoKCj5zaG91bGQgYmUgaW5pdGlh
bGlzZWQgYmVmb3JlIHJlZ2lzdHJhdGlvbiwgaXJyZXNwZWN0aXZlIG9mIGNsaWVudCAKCgoKPmRl
dmljZXMuIEZXSVcsIGlmIGl0J3MgcG9zc2libGUgdG8gdGFrZSBhbiB1bmV4cGVjdGVkIAoKCgo+
UktfTU1VX0lSUV9QQUdFX0ZBVUxUIGltbWVkaWF0ZWx5IGFmdGVyIHJlcXVlc3RpbmcgdGhlIElS
USAoZS5nLiBpbiBhIAoKCgo+a2R1bXAga2VybmVsIGFmdGVyIGEgY3Jhc2ggd2l0aCB0aGUgaGFy
ZHdhcmUgc3RpbGwgcnVubmluZykgdGhlbiBJIHRoaW5rIAoKCgo+dGhlIGN1cnJlbnQgY29kZSBj
b3VsZCBwcm9iYWJseSBlbmQgdXAgZGVyZWZlcmVuY2luZyBOVUxMIGluIAoKCgo+cmVwb3J0X2lv
bW11X2ZhdWx0KCkgYXMgd2VsbC4KCgpUaGFua3MgIGZvciB5b3VyIHJldmlldyBhbmQgY2xlYXIg
ZXhwbGFuYXRpb24sIEkgd2lsbCBhZGQgdGhlIGluZm9ybWF0aW9uIGFzIHlvdSBzdWdnZXN0ZWQu
CgpTaW1vbiBYdWUKCj4KCgoKPlJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBo
eUBhcm0uY29tPgoKCgo+CgoKCj5BbmQgcHJvYmFibHkgYWxzbzoKCgoKPgoKCgo+Q2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcKCgoKPkZpeGVzOiAyNWMyMzI1NTc1Y2MgKCJpb21tdS9yb2NrY2hp
cDogQWRkIG1pc3Npbmcgc2V0X3BsYXRmb3JtX2RtYV9vcHMgCgoKCj5jYWxsYmFjayIpCgoKCj4K
CgoKPlRoYW5rcywKCgoKPlJvYmluLgoKCgo+CgoKCj4+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIFh1
ZSA8eHhtQHJvY2stY2hpcHMuY29tPgoKCgo+PiAtLS0KCgoKPj7CoMKgIGRyaXZlcnMvaW9tbXUv
cm9ja2NoaXAtaW9tbXUuYyB8IDMgKystCgoKCj4+wqDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgoKCj4+IAoKCgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIGIvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5j
CgoKCj4+IGluZGV4IDIyZjc0YmEzM2EwZS4uZTZiYjNjNzg0MDE3IDEwMDY0NAoKCgo+PiAtLS0g
YS9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKCgoKPj4gKysrIGIvZHJpdmVycy9pb21t
dS9yb2NrY2hpcC1pb21tdS5jCgoKCj4+IEBAIC0xMTU3LDcgKzExNTcsNiBAQCBzdGF0aWMgaW50
IHJrX2lvbW11X29mX3hsYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwKCgoKPj7CoMKgIAkJcmV0dXJu
IC1FTk9NRU07CgoKCj4+wqDCoCAKCgoKPj7CoMKgIAlkYXRhLT5pb21tdSA9IHBsYXRmb3JtX2dl
dF9kcnZkYXRhKGlvbW11X2Rldik7CgoKCj4+IC0JZGF0YS0+aW9tbXUtPmRvbWFpbiA9ICZya19p
ZGVudGl0eV9kb21haW47CgoKCj4+wqDCoCAJZGV2X2lvbW11X3ByaXZfc2V0KGRldiwgZGF0YSk7
CgoKCj4+wqDCoCAKCgoKPj7CoMKgIAlwbGF0Zm9ybV9kZXZpY2VfcHV0KGlvbW11X2Rldik7CgoK
Cj4+IEBAIC0xMTk1LDYgKzExOTQsOCBAQCBzdGF0aWMgaW50IHJrX2lvbW11X3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCgoKCj4+wqDCoCAJaWYgKCFpb21tdSkKCgoKPj7CoMKg
IAkJcmV0dXJuIC1FTk9NRU07CgoKCj4+wqDCoCAKCgoKPj4gKwlpb21tdS0+ZG9tYWluID0gJnJr
X2lkZW50aXR5X2RvbWFpbjsKCgoKPj4gKwoKCgo+PsKgwqAgCXBsYXRmb3JtX3NldF9kcnZkYXRh
KHBkZXYsIGlvbW11KTsKCgoKPj7CoMKgIAlpb21tdS0+ZGV2ID0gZGV2OwoKCgo+PsKgwqAgCWlv
bW11LT5udW1fbW11ID0gMDsKCgoKPgoKCgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
