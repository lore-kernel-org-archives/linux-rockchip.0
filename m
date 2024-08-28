Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA3A0C5472D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 07:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjQ/xe1XHCJOQaEDcJKe7KVYaARs2xm8MK3MeFbBQiA=; b=GY5QT/yHe1RKv6
	eurY+FarxS3emfDuk9FbOUbisYF8yANsT44IhT/IM1QoJih9ghy/ZoR4dBUrHGVBQjiLdCIEB/J39
	4oyQMTfeHBzFEnnK/AdQx9TOqZbgXxHw5lN4lsKmdNGnSHmZ7rvSUXNsNcL2fwRngS5QE+fnu99c9
	dXbYq1abUGO/G4ZEjH/vY3VWHa4UYPwt+cBx7QoOg+OOW9RNYZkzWgNBOCeIVe63pkAbE6+dELbJk
	nF/HSkkfxFeCQ6m68WbVZiccXdAP+p1v0wyXxRpaoEwZnl4N/iOLaSnzmutUMbLUCDDZSOWbI+P0Z
	zJrBRidUO+t+MOsD6EvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjCoH-0000000ECmi-3mEw;
	Wed, 28 Aug 2024 07:09:42 +0000
Received: from mail-m155105.qiye.163.com ([101.71.155.105])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjCoE-0000000ECkz-15eh;
	Wed, 28 Aug 2024 07:09:40 +0000
DKIM-Signature: a=rsa-sha256;
	b=T6pw5TjzhkZeoM9+vE5+txJeWtc6GR/CltdCCFq6j32BF3wX15KG8FSgGvtpKX6Sgw+G51nl9HND1vNQSVM7DAKy1ZwVYJNqDk5aRfp7pMU6GybiGtnbMJUWwo6NcSxWq5bxAJkE5XQiKya8Fb/7gGLqXd/cPNtrcmH+r0nMpN0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=VRUuy/rQsF1UW0Wpg+PnWZ4+AI6Wx/jDa7V8CDPYisg=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.33.28] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 6D59F6E0AE8;
	Wed, 28 Aug 2024 15:09:08 +0800 (CST)
Message-ID: <c5726963-69a6-47d8-a576-86cebd481ef2@rock-chips.com>
Date: Wed, 28 Aug 2024 15:09:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jon Lin <jon.lin@rock-chips.com>
Subject: Re: [PATCH] spi: rockchip: Avoid redundant clock disable in pm
 operation
To: Brian Norris <briannorris@chromium.org>
Cc: broonie@kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
References: <20240825035422.900370-1-jon.lin@rock-chips.com>
 <Zs0BRsNdZdI69aXM@google.com>
 <27302919-5bcd-4bcd-bdad-02aa48e628e9@rock-chips.com>
 <CA+ASDXMjN7dVUQWgfMULcD2KgF448-q=Ue2+MYUftK6Ra8MWhw@mail.gmail.com>
In-Reply-To: <CA+ASDXMjN7dVUQWgfMULcD2KgF448-q=Ue2+MYUftK6Ra8MWhw@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlKT1ZMS0JCHkgfGEIdHxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
X-HM-Tid: 0a9197d1194609d5kunm6d59f6e0ae8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kzo6KBw6TDIxHhcUMClMKTcr
	DDZPCwNVSlVKTElPQ0lDQk9CTktMVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFIQkpLNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_000938_806221_C42A5C2A 
X-CRM114-Status: GOOD (  22.07  )
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

T24gMjAyNC84LzI3IDEwOjU5LCBCcmlhbiBOb3JyaXMgd3JvdGU6Cj4gT24gTW9uLCBBdWcgMjYs
IDIwMjQgYXQgNjozM+KAr1BNIEpvbiBMaW4gPGpvbi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3Rl
Ogo+PiBPbiAyMDI0LzgvMjcgNjoyNywgQnJpYW4gTm9ycmlzIHdyb3RlOgo+Pj4gSXQgc2VlbXMg
bGlrZSB5b3UnZCByZWFsbHkgYmUgc2VydmVkIHdlbGwgYnkKPj4+IHBtX3J1bnRpbWVfZm9yY2Vf
e3N1c3BlbmQscmVzdW1lfSgpIGhlcmUsIGFuZCBpbiBmYWN0LCB0aGF0J3Mgd2hhdCB0aGlzCj4+
PiBkcml2ZXIgdXNlZCB0byB1c2UgYmVmb3JlIHRoZSBicmVha2luZyBjaGFuZ2UgKGNvbW1pdAo+
Pj4gZTg4MjU3NWVmYzc3KS4gV2h5IGFyZW4ndCB5b3UganVzdCBnb2luZyBiYWNrIHRvIHVzaW5n
IGl0PyAoVGhpcyBpcyB0aGUKPj4+IGtpbmQgb2YgdGhpbmcgSSBtaWdodCBleHBlY3QgaW4geW91
ciBjb21taXQgbWVzc2FnZSAtLSByZWFzb25pbmcgYXMgdG8KPj4+IHdoeSB5b3UncmUgZG9pbmcg
d2hhdCB5b3UncmUgZG9pbmcuKQo+Pj4KPj4+IEFuZCBpbiBmYWN0LCBJIGFscmVhZHkgc3VibWl0
dGVkIGEgcGF0Y2ggdGhhdCByZXNvbHZlcyB0aGUgYWJvdmUgcHJvYmxlbQo+Pj4gYW5kIGRvZXMg
ZXhhY3RseSB0aGF0Ogo+Pj4KPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDgy
MzIxNDIzNS4xNzE4NzY5LTEtYnJpYW5ub3JyaXNAY2hyb21pdW0ub3JnLwo+Pj4gW1BBVENIXSBz
cGk6IHJvY2tjaGlwOiBSZXNvbHZlIHVuYmFsYW5jZWQgcnVudGltZSBQTSAvIHN5c3RlbSBQTSBo
YW5kbGluZwo+Pj4KPj4+IERvIHlvdSBzZWUgYW55IHByb2JsZW0gd2l0aCBpdD8KPj4+Cj4+Cj4+
IEkgaGF2ZSByZXZpZXdlZCB5b3VyIHN1Ym1pc3Npb24gYW5kIGFsdGhvdWdoIHRoZSBjb2RlIGhh
cyBiZWVuCj4+IHNpbXBsaWZpZWQsIHRoZSBleGVjdXRpb24gZWZmaWNpZW5jeSBoYXMgZGVjcmVh
c2VkLiBTbyBhbHRob3VnaCBpdCBpcyBhCj4+IGNvbW1vbmx5IHVzZWQgcHJvY2Vzc2luZyBzb2x1
dGlvbiBmb3IgU1BJIFVwc3RyZWFtLCBJIHN0aWxsIGhvcGUgdG8KPj4gcmV0YWluIGEgbW9yZSBl
ZmZpY2llbmN5IGFwcHJvYWNoIGFzIEkgc3VibWl0dGVkLgo+IAo+IFdoYXQgZG8geW91IG1lYW4g
YnkgImVmZmljaWVuY3kiPyBZb3UgbWVhbiBiZWNhdXNlIHRoZXJlJ3MKPiBpbmRpcmVjdGlvbiwg
dmlhIHRoZSBQTSBydW50aW1lIGZyYW1ld29yaz8gSWYgc28sIEkgZG91YnQgdGhhdCdzIGEKPiBw
cmlvcml0eSBmb3IgdGhpcyBwaWVjZSBvZiBmdW5jdGlvbmFsaXR5IC0tIHNpbXBsaWNpdHkgaXMg
bW9yZQo+IGltcG9ydGFudCB0aGFuIGEgZnVuY3Rpb24gY2FsbCBvciB0d28gd2hlbiB0YWxraW5n
IGFib3V0IHN5c3RlbQo+IHN1c3BlbmQuCj4gCgpZb3VyIGNvZGUgaXMgZmluZSwgYW5kIEkgaGF2
ZSB0ZXN0ZWQgaXQgbG9jYWxseS4gVGhlIGludGVyZmFjZSAKc2ltcGxpZmljYXRpb24gaXMgaW5k
ZWVkIGluIGxpbmUgd2l0aCB0aGUgZGlyZWN0aW9uIG9mIGNvbW11bml0eSAKZGV2ZWxvcG1lbnQs
IGFuZCB5b3VyIHNvbHV0aW9uIGNhbiBiZSB1c2VkIGFzIGEgc29sdXRpb24uCgo+IEFkZGl0aW9u
YWxseSwgc2ltcGxpY2l0eSBoYXMgYWRkaXRpb25hbCBiZW5lZml0cyAtLSBpdCBoZWFkcyBvZmYK
PiBxdWVzdGlvbnMgdGhhdCB5b3VyIG1vcmUgY29tcGxleCBjb2RlIGRvZXNuJ3QgYWRkcmVzcy4g
Rm9yIGV4YW1wbGUsCj4gYXJlIHJ1bnRpbWUgUE0gYW5kIHN5c3RlbSBQTSBtdXR1YWxseSBleGNs
dXNpdmU/IERvIHdlIGhhdmUgdG8KPiBjb29yZGluYXRlIHdpdGggYW55IHBlbmRpbmcgYXV0b3N1
c3BlbmQ/IChSZWFkaW5nIHRocm91Z2gKPiBodHRwczovL2RvY3Mua2VybmVsLm9yZy9wb3dlci9y
dW50aW1lX3BtLmh0bWwsIEkgYmVsaWV2ZSB0aGVzZSBhcmUgbm90Cj4gYWN0dWFsbHkgY29uY2Vy
bnMsIGJ1dCBpdCdzIHJlYWxseSBub3Qgb2J2aW91cyBhbmQgdGFrZXMgYSBiaXQgb2YKPiByZWFk
aW5nLikgQnV0IHlvdXIgcGF0Y2ggbWFrZXMgaXQgbW9yZSBsaWtlbHkgdGhhdCBydW50aW1lIGFu
ZCBzeXN0ZW0KPiBQTSBzdGF0ZXMgZ2V0IG91dCBvZiBzeW5jLgo+IAo+IEFueXdheSwgaWYgdGhl
IHBhdGNoZXMgcmVhbGx5IGFyZSBlcXVpdmFsZW50LCBJIHN1cHBvc2UgaXQgY2FuIGJlIHRoZQo+
IG1haW50YWluZXIncyBjaG9pY2UgYXMgdG8gd2hpY2ggaXMgcHJlZmVyYWJsZS4KPiAKPiBCcmlh
bgo+IAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
