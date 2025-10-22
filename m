Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7741FCCD1BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 00:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aY0Pm8L3B7eqrmaIjp1LkWo5i0pMQb0LlGR8P2votgE=; b=kq0Ly9Ec4mru3A
	shQYzonRthc6Jg42uKMogXMjHKkY5TdWGSoL57F9Nj0ZIVyk6TkB5OuFsypPHifvEehRgsSk2bdGk
	2xNi7XA893KZCiyQ2HBfUJf9TEmBIJX5DJxI1373oChE98giBJt9pXk9pg2q2vRHpaVTOdly/awFi
	WQznqGGBEwq3GkAQrRkRvmiT7jk/osBJDl7tIRnLdi4VcHOII9yunQTfraEgT3L6UnlADULq7SKwv
	ChoUaKNHkV6ycj1Yc/X2WGg0w+1pIq/LgTo61HrUH4tDfNWjCP2tZZGHtxgLcmsGbcdM2JTILH0P9
	lzScT+Tq+e5OO07HeyVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBMtV-0000000143d-1BGe;
	Wed, 22 Oct 2025 00:40:01 +0000
Received: from mail-m15599.qiye.163.com ([101.71.155.99])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBMtS-0000000142P-1Hfh
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 00:40:00 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26b656875;
	Wed, 22 Oct 2025 08:39:53 +0800 (GMT+08:00)
Message-ID: <7a1e7da3-226a-4ee9-a3f8-fa4051f833ad@rock-chips.com>
Date: Wed, 22 Oct 2025 08:39:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Adrian Hunter <adrian.hunter@intel.com>,
 linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org,
 Hugh Cole-Baker <sigmaris@gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Change DLL_STRBIN_TAPNUM_DEFAULT
 to 0x4
To: Dragan Simic <dsimic@manjaro.org>, Ulf Hansson <ulf.hansson@linaro.org>
References: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
 <1066e578-f543-4233-b556-ae458c9327a1@gmail.com>
 <84a6b292-868d-c202-6e60-28f21390cc09@manjaro.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <84a6b292-868d-c202-6e60-28f21390cc09@manjaro.org>
X-HM-Tid: 0a9a095ba8b909cckunm7b21616170c274
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlIQlZNH09JShpDHkgdTk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=H6SDK0mkxM20sW3T7dPYlGrULNknEI0veGQeZIlyUo1MxbT1s4Nal1aF1cnSW5UiArz9AxXLiPpf051zbe74L6jmhFdzDTsV2sLfOd5sXXQaxXvGjBJ0/UZ4X2KmXQ4hUu09GfSiO6hvyA/ViyVCBsUNn9b/yHLkneZEHub9+5Y=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=MhuVrIb5PU98+HkpNJ24nNLmeJaLKAXov2SZm29nDKU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_173958_865223_4C7C29B5 
X-CRM114-Status: GOOD (  15.48  )
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

CuWcqCAyMDI1LzEwLzIyIOaYn+acn+S4iSA0OjI0LCBEcmFnYW4gU2ltaWMg5YaZ6YGTOgo+IEhl
bGxvIEh1Z2ggYW5kIFNoYXduLgo+IAo+IE9uIFR1ZXNkYXksIE9jdG9iZXIgMjEsIDIwMjUgMjI6
MDQgQ0VTVCwgSHVnaCBDb2xlLUJha2VyIDxzaWdtYXJpc0BnbWFpbC5jb20+IHdyb3RlOgo+PiBP
biAyMC8xMC8yMDI1IDAyOjQ5LCBTaGF3biBMaW4gd3JvdGU6Cj4+PiBzdHJiaW4gc2lnbmFsIGRl
bGF5IHVuZGVyIDB4OCBjb25maWd1cmF0aW9uIGlzIG5vdCBzdGFibGUgYWZ0ZXIgbWFzc2l2ZQo+
Pj4gdGVzdC4gVGhlIHJlY29tbWFuZGF0aW9uIG9mIGl0IHNob3VsZCBiZSAweDQuCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+PiAt
LS0KPj4+Cj4+PiAgIGRyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jIHwgMiArLQo+
Pj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMgYi9kcml2
ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+Pj4gaW5kZXggZWViZDQ1My4uNWI2MTQw
MSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jCj4+
PiArKysgYi9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+Pj4gQEAgLTk0LDcg
Kzk0LDcgQEAKPj4+ICAgI2RlZmluZSBETExfVFhDTEtfVEFQTlVNX0RFRkFVTFQJMHgxMAo+Pj4g
ICAjZGVmaW5lIERMTF9UWENMS19UQVBOVU1fOTBfREVHUkVFUwkweEEKPj4+ICAgI2RlZmluZSBE
TExfVFhDTEtfVEFQTlVNX0ZST01fU1cJQklUKDI0KQo+Pj4gLSNkZWZpbmUgRExMX1NUUkJJTl9U
QVBOVU1fREVGQVVMVAkweDgKPj4+ICsjZGVmaW5lIERMTF9TVFJCSU5fVEFQTlVNX0RFRkFVTFQJ
MHg0Cj4+PiAgICNkZWZpbmUgRExMX1NUUkJJTl9UQVBOVU1fRlJPTV9TVwlCSVQoMjQpCj4+PiAg
ICNkZWZpbmUgRExMX1NUUkJJTl9ERUxBWV9OVU1fU0VMCUJJVCgyNikKPj4+ICAgI2RlZmluZSBE
TExfU1RSQklOX0RFTEFZX05VTV9PRkZTRVQJMTYKPj4KPj4gVGhpcyBwYXRjaCBnZXRzIHRoZSBG
b3Jlc2VlIEEzQTQ0NCBlTU1DIG9uIG15IE5hbm9QQy1UNiBib2FyZCB0byB3b3JrIHJlbGlhYmx5
Cj4+IGluIEhTNDAwIEVuaGFuY2VkIFN0cm9iZSBtb2RlOyBiZWZvcmUgdGhpcyBwYXRjaCBpdCB3
b3VsZCBzdWZmZXIgZnJvbSBJL08KPj4gZXJyb3JzIGluIEhTNDAwIG1vZGUgYXMgZGlzY3Vzc2Vk
IGluIHRoZSBvdGhlciB0aHJlYWQgWzFdLgo+Pgo+PiBUZXN0ZWQtYnk6IEh1Z2ggQ29sZS1CYWtl
ciA8c2lnbWFyaXNAZ21haWwuY29tPgoKVGhhbmtzIGZvciB0ZXN0aW5nIGFuZCBjb21maXJtaW5n
IGl0IHdvcmtzIGFzIGV4cGVjdGVkLgpJIHRoaW5rIHRoaXMgcGF0Y2ggYWxzbyBuZWVkIHRvIGJl
IGJhY2twb3J0ZWQuIFNvIFVsZiwKY291bGQgeW91IHBsZWFzZSBoZWxwIGFkZCBmaXhlcyB0YWcg
aWYgdGhlIHBhdGNoIGxvb2tzIGdvb2QKdG8geW91LCB0byBhdm9pZCBhIHYyIGp1c3QgZm9yIGFk
ZGluZyB0aGlzLiA6KQoKRml4ZXM6IDA4ZjNkZmY3OTlkNCAoIm1tYzogc2RoY2ktb2YtZHdjbXNo
YzogYWRkIHJvY2tjaGlwIHBsYXRmb3JtIApzdXBwb3J0IikKCj4gCj4gVGhvc2UgYXJlIGdyZWF0
IHJlc3VsdHMsIHRoYW5rcyBmb3IgdGhlIHRlc3RpbmcsIEh1Z2ghICBPZiBjb3Vyc2UsCj4gaHVn
ZSB0aGFua3MgdG8gU2hhd24gZm9yIGZpeGluZyB0aGUgcm9vdCBjYXVzZSBvZiB0aGUgaXNzdWUs
IHdoaWNoCj4gYXZvaWRlZCB0aGUgbmVlZCBmb3IgaGF2aW5nIGEgcXVlc3Rpb25hYmxlIEhTMjAw
IHF1aXJrIGRlc2NyaWJlZAo+IGluIHRoZSBhYm92ZS1tZW50aW9uZWQgbGludXgtcm9ja2NoaXAg
dGhyZWFkLiBbMV0KPiAKPj4gWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC81MjUzNzAwNS1iOGEzLWMyMDItNzcwYy01OTllZmM2YTRkMTdAbWFuamFyby5vcmcvVC8K
PiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
