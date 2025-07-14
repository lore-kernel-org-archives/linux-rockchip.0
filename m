Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89B2BC83F1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jul 2025 15:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANdpakZxHAtrKTH19hSGuCzh7o7LWCf/4mUuNnncjkk=; b=fAKMwTCHgJUmex
	96eGFb9rexFWYjx8NAjoAbXwH0IH6KU0RVaIjXgrhhdWFj2tHO4MHLZD+W17qSOvo3+ZKxCfcGpvr
	SLd/8PliecazYYdLbIgSzgzo1Q1Oi7yPXyDiv/6szxZ12rp10O80qNfPAcRlP8eN5fu1hWPCg73oq
	+JzT5FNItS/Z1LwMKA3q8CD8emV4781Pq2um7aCJygFONss69NzhL2NPRBcv47hyIQHvyCBhBErFV
	PZgf7TaztDfrDKvcWH0O/k2fwJH9EMWnZwEUD33I6d4j6fs8V0Wklxx+DOnNEKGnaP/zqaeLYVzkZ
	txmDPScatovL7imFZBiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubLJJ-00000002iyS-1FgC;
	Mon, 14 Jul 2025 15:41:45 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubKcN-00000002XGU-2Dcn;
	Mon, 14 Jul 2025 14:57:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1752505021; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=jTzafjthuIJN+sbR9JzbeSjM2+8zqD+8kpumWfzcbI7b7qvfXEB+oGFUAudVd8EA6YDyt5u8O6eIX/R9G/L18GjaXdxxGIQscUjko/mb09N3YmjG78W2Fc+mFuSC+p92EB7E/Ii98Lxo3R8L32bmOOeoG2I/imQ4yZlC8QBAD4Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1752505021; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ZEz0MjyPjjmaHK4rHi3lzcnI88V95Ez+JAIUJe7tNHU=; 
	b=Akm6xFiVTE9SCFtCFddQhMkPdTzJqbg0pVQ4e03instTx2KpfgUSdCiAMnQrxiV33zJ/sOTQVthWJeGVK9VyZ/jw30lpirOUL1aCEFuWOFCOF6VivWmxyVtquP9IBBJh92lHXcRTFTzzm8RhV1uUnfR4i+6kKBz8cNkGFnbxJkI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1752505021;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ZEz0MjyPjjmaHK4rHi3lzcnI88V95Ez+JAIUJe7tNHU=;
	b=YD9rSLEc2B3JX/3+g/USbXM3omX8JSQy3SohZ8n2vQ2U3qbK5EOe3JBk7apxP9d4
	gYUN9WgeXDXm3WGUsQqG/zpXKFam7TqgOcnD2g9iJOmc/Ef7nJ8ynlSLyVlCNoqWLnV
	I3tkx0yC2ST9x3vqQNUeP2BwQ1tXnn5FuqU/LIhI=
Received: by mx.zohomail.com with SMTPS id 1752505018618941.5183600008951;
	Mon, 14 Jul 2025 07:56:58 -0700 (PDT)
Message-ID: <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
Date: Mon, 14 Jul 2025 16:56:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, jgg@ziepe.ca, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <aHTzPwTob8_5rtBS@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_075723_630655_EB9ECE07 
X-CRM114-Status: GOOD (  23.84  )
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

CkxlIDE0LzA3LzIwMjUgw6AgMTQ6MDgsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gSGksCj4K
PiBPbiBUaHUsIEp1bCAxMCwgMjAyNSBhdCAxMDoyNDo0NEFNICswMjAwLCBCZW5qYW1pbiBHYWln
bmFyZCB3cm90ZToKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvdnNpLWlvbW11LmMgYi9k
cml2ZXJzL2lvbW11L3ZzaS1pb21tdS5jCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4
IDAwMDAwMDAwMDAwMC4uMTUzMjJiOTkyOWFmCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJp
dmVycy9pb21tdS92c2ktaW9tbXUuYwo+PiBAQCAtMCwwICsxLDc4MSBAQAo+PiArLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+PiArLyogQ29weXJpZ2h0IChDKSAyMDI1
IENvbGxhYm9yYSBMdGQuCj4+ICsgKgo+PiArICogSU9NTVUgQVBJIGZvciBWZXJpc2lsaWNvbgo+
PiArICoKPj4gKyAqIE1vZHVsZSBBdXRob3JzOglZYW5kb25nIExpbiA8eWFuZG9uZy5saW5Acm9j
ay1jaGlwcy5jb20+Cj4+ICsgKgkJCVNpbW9uIFh1ZSA8eHhtQHJvY2stY2hpcHMuY29tPgo+PiAr
ICoJCQlCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4K
Pj4gKyAqLwo+PiArCj4+ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4+ICsjaW5jbHVkZSA8bGlu
dXgvY29tcGlsZXIuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+PiArI2luY2x1ZGUg
PGxpbnV4L2RldmljZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXBwaW5nLmg+Cj4+ICsj
aW5jbHVkZSA8bGludXgvZXJybm8uaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9pbml0Lmg+Cj4+ICsj
aW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvaW8uaD4KPj4g
KyNpbmNsdWRlIDxsaW51eC9pb21tdS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2xpc3QuaD4KPj4g
KyNpbmNsdWRlIDxsaW51eC9tbS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+PiAr
I2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvb2ZfaW9tbXUuaD4KPj4g
KyNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KPj4gKyNpbmNs
dWRlIDxsaW51eC9zbGFiLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KPj4gKwo+
PiArI2luY2x1ZGUgImlvbW11LXBhZ2VzLmgiCj4+ICsKPj4gK3N0cnVjdCB2c2lfaW9tbXUgewo+
PiArCXN0cnVjdCBkZXZpY2UgKmRldjsKPj4gKwl2b2lkIF9faW9tZW0gKnJlZ3M7Cj4+ICsJc3Ry
dWN0IGNsa19idWxrX2RhdGEgKmNsb2NrczsKPj4gKwlpbnQgbnVtX2Nsb2NrczsKPj4gKwlzdHJ1
Y3QgaW9tbXVfZGV2aWNlIGlvbW11Owo+PiArCXN0cnVjdCBsaXN0X2hlYWQgbm9kZTsgLyogZW50
cnkgaW4gdnNpX2lvbW11X2RvbWFpbi5pb21tdXMgKi8KPj4gKwlzdHJ1Y3QgaW9tbXVfZG9tYWlu
ICpkb21haW47IC8qIGRvbWFpbiB0byB3aGljaCBpb21tdSBpcyBhdHRhY2hlZCAqLwo+PiArCXNw
aW5sb2NrX3QgbG9jazsKPj4gKwlpbnQgaXJxOwo+PiArfTsKPj4gKwo+PiArc3RydWN0IHZzaV9p
b21tdV9kb21haW4gewo+PiArCXN0cnVjdCBsaXN0X2hlYWQgaW9tbXVzOwo+PiArCXN0cnVjdCBk
ZXZpY2UgKmRldjsKPj4gKwl1MzIgKmR0Owo+PiArCWRtYV9hZGRyX3QgZHRfZG1hOwo+PiArCXN0
cnVjdCBpb21tdV9kb21haW4gZG9tYWluOwo+PiArCXU2NCAqcHRhOwo+PiArCWRtYV9hZGRyX3Qg
cHRhX2RtYTsKPj4gKwlzcGlubG9ja190IGxvY2s7Cj4+ICt9Owo+PiArCj4+ICtzdGF0aWMgc3Ry
dWN0IGlvbW11X2RvbWFpbiB2c2lfaWRlbnRpdHlfZG9tYWluOwo+PiArCj4+ICsjZGVmaW5lIE5V
TV9EVF9FTlRSSUVTCTEwMjQKPj4gKyNkZWZpbmUgTlVNX1BUX0VOVFJJRVMJMTAyNAo+PiArI2Rl
ZmluZSBQVF9TSVpFCQkoTlVNX1BUX0VOVFJJRVMgKiBzaXplb2YodTMyKSkKPj4gKwo+PiArI2Rl
ZmluZSBTUEFHRV9TSVpFCUJJVCgxMikKPj4gKwo+PiArLyogdnNpIGlvbW11IHJlZ3MgYWRkcmVz
cyAqLwo+PiArI2RlZmluZSBWU0lfTU1VX0NPTkZJRzFfQkFTRQkJCTB4MWFjCj4+ICsjZGVmaW5l
IFZTSV9NTVVfQUhCX0VYQ0VQVElPTl9CQVNFCQkweDM4MAo+PiArI2RlZmluZSBWU0lfTU1VX0FI
Ql9DT05UUk9MX0JBU0UJCTB4Mzg4Cj4+ICsjZGVmaW5lIFZTSV9NTVVfQUhCX1RMQl9BUlJBWV9C
QVNFX0xfQkFTRQkweDM4Qwo+PiArCj4+ICsvKiBNTVUgcmVnaXN0ZXIgb2Zmc2V0cyAqLwo+PiAr
I2RlZmluZSBWU0lfTU1VX0ZMVVNIX0JBU0UJCTB4MTg0Cj4+ICsjZGVmaW5lIFZTSV9NTVVfQklU
X0ZMVVNICQlCSVQoNCkKPj4gKwo+PiArI2RlZmluZSBWU0lfTU1VX1BBR0VfRkFVTFRfQUREUgkJ
MHgzODAKPj4gKyNkZWZpbmUgVlNJX01NVV9TVEFUVVNfQkFTRQkJMHgzODQJLyogSVJRIHN0YXR1
cyAqLwo+PiArCj4+ICsjZGVmaW5lIFZTSV9NTVVfQklUX0VOQUJMRQkJQklUKDApCj4+ICsKPj4g
KyNkZWZpbmUgVlNJX01NVV9PVVRfT0ZfQk9VTkQJCUJJVCgyOCkKPj4gKy8qIElycSBtYXNrICov
Cj4+ICsjZGVmaW5lIFZTSV9NTVVfSVJRX01BU0sJCTB4Nwo+PiArCj4+ICsjZGVmaW5lIFZTSV9E
VEVfUFRfQUREUkVTU19NQVNLCQkweGZmZmZmZmMwCj4+ICsjZGVmaW5lIFZTSV9EVEVfUFRfVkFM
SUQJCUJJVCgwKQo+PiArCj4+ICsjZGVmaW5lIFZTSV9QQUdFX0RFU0NfTE9fTUFTSwkJMHhmZmZm
ZjAwMAo+PiArI2RlZmluZSBWU0lfUEFHRV9ERVNDX0hJX01BU0sJCUdFTk1BU0tfVUxMKDM5LCAz
MikKPj4gKyNkZWZpbmUgVlNJX1BBR0VfREVTQ19ISV9TSElGVAkJKDMyIC0gNCkKPiBIb3cgZG9l
cyB0aGlzIHBhZ2UtdGFibGUgZm9ybWF0IHJlbGF0ZSB0byB0aGUgb25lIHN1cHBvcnRlZCBhbHJl
YWR5IGJ5Cj4gcm9ja2NoaXAtaW9tbXUuYz8gRnJvbSBhIHF1aWNrIGdsYW5jZSwgSSBzdXNwZWN0
IHRoaXMgaXMgYSBkZXJpdmF0aXZlCj4gYW5kIHNvIGlkZWFsbHkgd2UnZCBiZSBhYmxlIHRvIGhh
dmUgYSBjb21tb24gaW1wbGVtZW50YXRpb24gb2YgdGhlCj4gcGFnZS10YWJsZSBjb2RlIHdoaWNo
IGNhbiBiZSB1c2VkIGJ5IGJvdGggb2YgdGhlIGRyaXZlcnMuCj4KPiBTaW1pbGFybHk6CgpObyB0
aGV5IGNvbWVzIGZyb20gZGlmZmVyZW50IElQIHByb3ZpZGVycywgdGhpcyBvbmUgaXMgZnJvbSBW
ZXJpc2lsaWNvbi4KSSBhZ3JlZSB0aGV5IGxvb2tzIHZlcnkgc2ltaWxhciBhbmQgbXkgZmlyc3Qg
YXR0ZW1wdCB3YXMgdG8gYWRkIGl0IGludG8Kcm9ja2NoaXAtaW9tbXUgY29kZSBidXQgd2hlbiBk
b2luZyBpdCBJIHJlYWxpemUgdGhhdCByZWdpc3RlcnMgYWRkcmVzc2VzCndoZXJlIGFsbCBkaWZm
ZXJlbnQgc28gSSBoYWQgdG8gY29kZSBhbGwgdGhlIGZ1bmN0aW9ucyB0d2ljZS4KClJlZ2FyZHMs
CkJlbmphbWluCgo+Cj4+ICtzdGF0aWMgdm9pZCB2c2lfaW9tbXVfZG9tYWluX2ZyZWUoc3RydWN0
IGlvbW11X2RvbWFpbiAqZG9tYWluKQo+PiArewo+PiArCXN0cnVjdCB2c2lfaW9tbXVfZG9tYWlu
ICp2c2lfZG9tYWluID0gdG9fdnNpX2RvbWFpbihkb21haW4pOwo+PiArCXVuc2lnbmVkIGxvbmcg
ZmxhZ3M7Cj4+ICsJaW50IGk7Cj4+ICsKPj4gKwlzcGluX2xvY2tfaXJxc2F2ZSgmdnNpX2RvbWFp
bi0+bG9jaywgZmxhZ3MpOwo+PiArCj4+ICsJV0FSTl9PTighbGlzdF9lbXB0eSgmdnNpX2RvbWFp
bi0+aW9tbXVzKSk7Cj4+ICsKPj4gKwlmb3IgKGkgPSAwOyBpIDwgTlVNX0RUX0VOVFJJRVM7IGkr
Kykgewo+PiArCQl1MzIgZHRlID0gdnNpX2RvbWFpbi0+ZHRbaV07Cj4+ICsKPj4gKwkJaWYgKHZz
aV9kdGVfaXNfcHRfdmFsaWQoZHRlKSkgewo+PiArCQkJcGh5c19hZGRyX3QgcHRfcGh5cyA9IHZz
aV9kdGVfcHRfYWRkcmVzcyhkdGUpOwo+PiArCQkJdTMyICpwYWdlX3RhYmxlID0gcGh5c190b192
aXJ0KHB0X3BoeXMpOwo+PiArCj4+ICsJCQlkbWFfdW5tYXBfc2luZ2xlKHZzaV9kb21haW4tPmRl
diwgcHRfcGh5cywKPj4gKwkJCQkJIFNQQUdFX1NJWkUsIERNQV9UT19ERVZJQ0UpOwo+PiArCQkJ
aW9tbXVfZnJlZV9wYWdlcyhwYWdlX3RhYmxlKTsKPj4gKwkJfQo+PiArCX0KPj4gKwo+PiArCWRt
YV91bm1hcF9zaW5nbGUodnNpX2RvbWFpbi0+ZGV2LCB2c2lfZG9tYWluLT5kdF9kbWEsCj4+ICsJ
CQkgU1BBR0VfU0laRSwgRE1BX1RPX0RFVklDRSk7Cj4+ICsJaW9tbXVfZnJlZV9wYWdlcyh2c2lf
ZG9tYWluLT5kdCk7Cj4+ICsKPj4gKwlkbWFfdW5tYXBfc2luZ2xlKHZzaV9kb21haW4tPmRldiwg
dnNpX2RvbWFpbi0+cHRhX2RtYSwKPj4gKwkJCSBTUEFHRV9TSVpFLCBETUFfVE9fREVWSUNFKTsK
Pj4gKwlpb21tdV9mcmVlX3BhZ2VzKHZzaV9kb21haW4tPnB0YSk7Cj4+ICsKPj4gKwlzcGluX3Vu
bG9ja19pcnFyZXN0b3JlKCZ2c2lfZG9tYWluLT5sb2NrLCBmbGFncyk7Cj4+ICsKPj4gKwlrZnJl
ZSh2c2lfZG9tYWluKTsKPj4gK30KPiBpcyBhbG1vc3QgYSBjYXJib24gY29weSBvZiBya19pb21t
dV9kb21haW5fZnJlZSgpLCBzbyBpdCBzZWVtcyB0aGF0Cj4gdGhlcmUncyByb29tIGZvciBjb2Rl
IHJlLXVzZSBldmVuIGJleW9uZCB0aGUgcGFnZS10YWJsZSBzdXBwb3J0Lgo+Cj4gSSB0aGluayB0
aGF0IGFsc28gbWVhbnMgd2UnbGwgd2FudCBIZWlrbydzIEFjayBiZWZvcmUgd2UgbWVyZ2UgYW55
dGhpbmcuCj4KPiBXaWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
