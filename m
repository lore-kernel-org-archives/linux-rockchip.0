Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 400EBC3ABC0
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 May 2025 17:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qx2nfDzKMjGouTdfflEyut/C0l60WtGpJ3gek/H64Bw=; b=DXoldbg9wvKMQU
	LG1Kf26moRdecFkaRqKq+6mWWkXsnba6Zd7mY7+83CmTrMXrSj/dEnZVp7BScRJCyUOsrbzaJdILY
	Jmw2QX/jqql9QasQQj7LEGomFD1uLvPRnVIakOPU+RFZTjllSbfFJj2jDS40jmKLJp/o0oPBZ1R13
	q068/FfF3/Gjo58a6rF1IxYGtmgSjUXtKHJlUm+npaYuXi144a9SvAdRcmdl5Gfu77pDmpK/nO137
	EWyJYrg0n79UQ7iBtM7S9/bd+po/X5/rSfF1HbbTOsI0LEs2b6DBfdHvTzUL8PTGEIbR5Lanhrlxg
	wf0Te2c942Vl1z5D5Ibg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCiXt-0000000GKS8-2Ka6;
	Wed, 07 May 2025 17:27:01 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uChwf-0000000GCUn-2IJh;
	Wed, 07 May 2025 16:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=RFAmY2MKwdKHgLamuSXh1FUsHEdiYUg60MVKfaCdvoY=;
	b=U5n41a6szOt5DII0T5tNRMzSMBxAfvlaz7pd1kkkbJQ2ygpLyNRh27HYXcZSTV
	vL8FjA4B20MJ+/DYgoFSxHnELfuqfrOYDHt+LR6BaaIlcLzRs1vHuc9uQrgVItEt
	HkQ4DKQp6KKOhl81obXX6BAhTMMyYo+1zuMMJh3NJO6oU=
Received: from [192.168.71.93] (unknown [])
	by gzga-smtp-mtada-g0-1 (Coremail) with SMTP id _____wCnwFuQjhtonhXNFA--.39420S2;
	Thu, 08 May 2025 00:47:13 +0800 (CST)
Message-ID: <b364eed2-047d-4c74-9f30-45291305bc4b@163.com>
Date: Thu, 8 May 2025 00:47:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 Niklas Cassel <cassel@kernel.org>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
 heiko@sntech.de, manivannan.sadhasivam@linaro.org, yue.wang@Amlogic.com,
 neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250506173439.292460-1-18255117159@163.com>
 <20250506173439.292460-4-18255117159@163.com>
 <20250506174110.63ayeqc4scmwjj6e@pali>
 <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
 <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
 <20250507163620.53v5djmhj3ywrge2@pali>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <20250507163620.53v5djmhj3ywrge2@pali>
X-CM-TRANSID: _____wCnwFuQjhtonhXNFA--.39420S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxuryxWFW7uF13Gw1kGr1fXrb_yoWruF4fpF
	W3XF4rAF47Jr15CF1Iq3Wvkry5tasrKry5XrZ8G343AF9Iqa45JFy2yr4rua47Xr4SkF12
	yry5XrWIvFn0yaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07Um38nUUUUU=
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiOgRGo2gbjGJKowAAsv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_094833_939923_9C2C7B65 
X-CRM114-Status: GOOD (  26.40  )
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

CgpPbiAyMDI1LzUvOCAwMDozNiwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gT24gV2VkbmVzZGF5IDA3
IE1heSAyMDI1IDIzOjA2OjUxIEhhbnMgWmhhbmcgd3JvdGU6Cj4+IE9uIDIwMjUvNS83IDIzOjAz
LCBIYW5zIFpoYW5nIHdyb3RlOgo+Pj4gT24gMjAyNS81LzcgMDE6NDEsIFBhbGkgUm9ow6FyIHdy
b3RlOgo+Pj4+IE9uIFdlZG5lc2RheSAwNyBNYXkgMjAyNSAwMTozNDozOSBIYW5zIFpoYW5nIHdy
b3RlOgo+Pj4+PiBUaGUgQWFyZHZhcmsgUENJZSBjb250cm9sbGVyIGVuZm9yY2VzIGEgZml4ZWQg
NTEyQiBwYXlsb2FkIHNpemUgdmlhCj4+Pj4+IFBDSV9FWFBfREVWQ1RMX1BBWUxPQURfNTEyQiwg
b3ZlcnJpZGluZyBoYXJkd2FyZSBjYXBhYmlsaXRpZXMgYW5kIFBDSWUKPj4+Pj4gY29yZSBuZWdv
dGlhdGlvbnMuCj4+Pj4+Cj4+Pj4+IFJlbW92ZSBleHBsaWNpdCBNUFMgb3ZlcnJpZGVzIChQQ0lf
RVhQX0RFVkNUTF9QQVlMT0FEIGFuZAo+Pj4+PiBQQ0lfRVhQX0RFVkNUTF9QQVlMT0FEXzUxMkIp
LiBNUFMgaXMgbm93IGRldGVybWluZWQgYnkgdGhlIFBDSSBjb3JlCj4+Pj4+IGR1cmluZyBkZXZp
Y2UgaW5pdGlhbGl6YXRpb24sIGxldmVyYWdpbmcgcm9vdCBwb3J0IGNvbmZpZ3VyYXRpb25zIGFu
ZAo+Pj4+PiBkZXZpY2Utc3BlY2lmaWMgY2FwYWJpbGl0aWVzLgo+Pj4+Pgo+Pj4+PiBBbGlnbmlu
ZyBBYXJkdmFyayB3aXRoIHRoZSB1bmlmaWVkIE1QUyBmcmFtZXdvcmsgZW5zdXJlcyBjb25zaXN0
ZW5jeSwKPj4+Pj4gYXZvaWRzIGFydGlmaWNpYWwgY29uc3RyYWludHMsIGFuZCBhbGxvd3MgdGhl
IGhhcmR3YXJlIHRvIG9wZXJhdGUgYXQKPj4+Pj4gaXRzIG1heGltdW0gc3VwcG9ydGVkIHBheWxv
YWQgc2l6ZSB3aGlsZSBhZGhlcmluZyB0byBQQ0llCj4+Pj4+IHNwZWNpZmljYXRpb25zLgo+Pj4+
Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBIYW5zIFpoYW5nIDwxODI1NTExNzE1OUAxNjMuY29tPgo+
Pj4+PiAtLS0KPj4+Pj4gIMKgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMg
fCAyIC0tCj4+Pj4+ICDCoCAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPj4+
Pj4gYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4+Pj4+IGluZGV4IGEy
OTc5NmNjZTQyMC4uZDg4NTI4OTI5OTRhIDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpLWFhcmR2YXJrLmMKPj4+Pj4gQEAgLTU0OSw5ICs1NDksNyBAQCBzdGF0aWMgdm9pZCBh
ZHZrX3BjaWVfc2V0dXBfaHcoc3RydWN0Cj4+Pj4+IGFkdmtfcGNpZSAqcGNpZSkKPj4+Pj4gIMKg
wqDCoMKgwqAgcmVnID0gYWR2a19yZWFkbChwY2llLCBQQ0lFX0NPUkVfUENJRVhQX0NBUCArIFBD
SV9FWFBfREVWQ1RMKTsKPj4+Pj4gIMKgwqDCoMKgwqAgcmVnICY9IH5QQ0lfRVhQX0RFVkNUTF9S
RUxBWF9FTjsKPj4+Pj4gIMKgwqDCoMKgwqAgcmVnICY9IH5QQ0lfRVhQX0RFVkNUTF9OT1NOT09Q
X0VOOwo+Pj4+PiAtwqDCoMKgIHJlZyAmPSB+UENJX0VYUF9ERVZDVExfUEFZTE9BRDsKPj4+Pj4g
IMKgwqDCoMKgwqAgcmVnICY9IH5QQ0lfRVhQX0RFVkNUTF9SRUFEUlE7Cj4+Pj4+IC3CoMKgwqAg
cmVnIHw9IFBDSV9FWFBfREVWQ1RMX1BBWUxPQURfNTEyQjsKPj4+Pj4gIMKgwqDCoMKgwqAgcmVn
IHw9IFBDSV9FWFBfREVWQ1RMX1JFQURSUV81MTJCOwo+Pj4+PiAgwqDCoMKgwqDCoCBhZHZrX3dy
aXRlbChwY2llLCByZWcsIFBDSUVfQ09SRV9QQ0lFWFBfQ0FQICsgUENJX0VYUF9ERVZDVEwpOwo+
Pj4+PiAtLSAKPj4+Pj4gMi4yNS4xCj4+Pj4+Cj4+Pj4KPj4+PiBQbGVhc2UgZG8gbm90IHJlbW92
ZSB0aGlzIGNvZGUuIEl0IGlzIHJlcXVpcmVkIHBhcnQgb2YgdGhlCj4+Pj4gaW5pdGlhbGl6YXRp
b24gb2YgdGhlIGFhcmR2YXJrIFBDSSBjb250cm9sbGVyIGF0IHRoZSBzcGVjaWZpYyBwaGFzZSwK
Pj4+PiBhcyBkZWZpbmVkIGluIHRoZSBBcm1hZGEgMzcwMCBGdW5jdGlvbmFsIFNwZWNpZmljYXRp
b24uCj4+Pj4KPj4+PiBUaGVyZSB3ZXJlIHJlcG9ydGVkIG1vcmUgaXNzdWVzIHdpdGggdGhvc2Ug
QXJtYWRhIFBDSWUgY29udHJvbGxlcnMgZm9yCj4+Pj4gd2hpY2ggd2VyZSBhbHJlYWR5IHNlbnQg
cGF0Y2hlcyB0byBtYWlsaW5nIGxpc3QgaW4gbGFzdCA1IHllYXJzLiBCdXQKPj4+PiB1bmZvcnR1
bmF0ZWx5IG5vdCBhbGwgZml4ZXMgd2VyZSB0YWtlbiAvIGFwcGxpZWQgeWV0Lgo+Pj4KPj4+IEhp
IFBhbGksCj4+Pgo+Pj4gSSByZXBsaWVkIHRvIHlvdSBpbiB2ZXJzaW9uIHYyLgo+Pj4KPj4+IElz
IHRoZSBtYXhpbXVtIE1QUyBzdXBwb3J0ZWQgYnkgQXJtYWRhIDM3MDAgNTEyIGJ5dGVzPwo+IAo+
IElJUkMgeWVzLCA1MTItYnl0ZSBtb2RlIGlzIHN1cHBvcnRlZC4gQW5kIEkgdGhpbmsgaW4gcGFz
dCBJIHdhcyB0ZXN0aW5nCj4gc29tZSBQQ0llIGVuZHBvaW50IGNhcmQgd2hpY2ggcmVxdWlyZWQg
NTEyLWJ5dGUgbG9uZyBwYXlsb2FkIGFuZCBkaWQgbm90Cj4gd29ya2VkIGluIDI1Ni1ieXRlIGxv
bmcgbW9kZSAobm90IHN1cmUgaWYgdGhlIGNhcmQgd2FzIG5vdCBhYmxlIHRvIHNwbGl0Cj4gdHJh
bnNhY3Rpb24gb3Igc29tZXRoaW5nIG90aGVyIHdhcyBicm9rZW4sIGl0IGlzIHF1aXRlIGxvbmdl
ciB0aW1lKS4KPiAKPj4+IFdoYXQgYXJlIHRoZSBkZWZhdWx0IHZhbHVlcyBvZiBEZXZDYXAuTVBT
IGFuZCBEZXZDdGwuTVBTPwo+IAo+IERvIHlvdSBtZWFuIHZhbHVlcyBpbiB0aGUgUENJLXRvLVBD
SSBicmlkZ2UgZGV2aWNlIG9mIFBDSWUgUm9vdCBQb3J0Cj4gdHlwZT8KPiAKPiBBYXJkdmFyayBj
b250cm9sbGVyIGRvZXMgbm90IGhhdmUgdGhlIHJlYWwgSFcgUENJLXRvLVBDSSBicmlkZ2UgZGV2
aWNlLgo+IFRoZXJlIGlzIG9ubHkgaW4ta2VybmVsIGVtdWxhdGlvbiBkcml2ZXJzL3BjaS9wY2kt
YnJpZGdlLWVtdWwuYyB3aGljaAo+IGNyZWF0ZSBmYWtlIGtlcm5lbCBQQ0kgZGV2aWNlIGluIHRo
ZSBoaWVyYXJjaHkgdG8gbWFrZSBrZXJuZWwgYW5kCj4gdXNlcnNwYWNlIGhhcHB5LiBZZXMsIHRo
aXMgaXMgZGV2aWF0aW9uIGZyb20gdGhlIFBDSWUgc3RhbmRhcmQgYnV0IHdlbGwsCj4gYnVnZ3kg
SFcgaXMgYWxzbyBIVy4KPiAKPiBBbmQgc2FtZSBhcHBsaWVzIGZvciB0aGUgcGNpLW12ZWJ1LmMg
ZHJpdmVyIGZvciBvbGRlciBNYXJ2ZWxsIFBDSWUgSFcuCj4gCj4+PiBCZWNhdXNlIHRoZSBkZWZh
dWx0IHZhbHVlIG9mIERldkN0bC5NUFMgaXMgbm90IDUxMiBieXRlcywgaXQgbmVlZHMgdG8gYmUK
Pj4+IGNvbmZpZ3VyZWQgaGVyZSwgcmlnaHQ/Cj4+Pgo+Pj4gSWYgaXQncyBteSBndWVzcywgUksz
NTg4IGFsc28gaGFzIHRoZSBzYW1lIHJlcXVpcmVtZW50cyBhcyB5b3UsIGp1c3QKPj4+IGxpa2Ug
dGhlIGZpcnN0IHBhdGNoIEkgc3VibWl0dGVkLgo+Pj4KPj4+IFBsZWFzZSB0YWtlIGEgbG9vayBh
dCB0aGUgY29tbXVuaWNhdGlvbiBoaXN0b3J5Ogo+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wcm9qZWN0L2xpbnV4LXBjaS9wYXRjaC8yMDI1MDQxNjE1MTkyNi4xNDAyMDItMS0xODI1
NTExNzE1OUAxNjMuY29tLwo+PiBBbmQgdGhpczoKPj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wcm9qZWN0L2xpbnV4LXBjaS9wYXRjaC8yMDI1MDQyNTA5NTcwOC4zMjY2Mi0yLTE4MjU1
MTE3MTU5QDE2My5jb20vCj4gCj4gVGhlc2UgY2hhbmdlcyBhcmUgcmVmZXJyaW5nIHRoZSB0byBy
b290IHBvcnRzIFBDSSBkZXZpY2VzLCB3aGljaCBhcmUgbm90Cj4gYXBwbGljYWJsZSBmb3IgYWFy
ZHZhcmsgUENJZSBjb250cm9sbGVyLgo+IAo+Pj4KPj4+IFBsZWFzZSB0ZXN0IGl0IHVzaW5nIHBh
dGNoIDEvMyBvZiB0aGlzIHNlcmllcy4gSWYgdGhlcmUgYXJlIGFueQo+Pj4gcHJvYmxlbXMsIHBs
ZWFzZSBsZXQgbWUga25vdy4KPj4+Cj4+Pgo+Pj4gQmVzdCByZWdhcmRzLAo+Pj4gSGFucwo+Pgo+
IAo+IFNvcnJ5LCBidXQgSSBzdG9wcGVkIGRvaW5nIGFueSB0ZXN0aW5nIG9mIHRoZSBhYXJkdmFy
ayBkcml2ZXIgd2l0aCB0aGUKPiBtYWlubGluZSBrZXJuZWwgYWZ0ZXIgUENJIG1haW50YWluZXJz
IHN0b3BwZWQgdGFraW5nIGZpeGVzIGZvciB0aGUKPiBkcml2ZXIgYW5kIHN0b3BwZWQgcmVzcG9u
ZGluZy4KPiAKPiBJJ20gbm90IGdvaW5nIHRvIGRlYnVnIHNhbWUgaXNzdWVzIGFnYWluLCB3aGlj
aCBJIGhhdmUgYW5hbHl6ZWQsCj4gcHJlcGFyZWQgZml4ZXMsIHNlbnQgcGF0Y2hlcyBhbmQgc2Vl
IG5vIHByb2dyZXNzIHRoZXJlLgo+IAo+IFNlZW1zIHRoYXQgdGhlcmUgaXMgYSBzdGF0dXMgcXVv
LCBhbmQgSSdtIG5vdCBnb2luZyB0byBjaGFuZ2UgaXQuCgpEZWFyIE5pa2xhcywKCkRvIHlvdSBo
YXZlIGFueSBvcGluaW9uIG9uIFBhbGkncyByZXBseT8gU2hvdWxkIHBhdGNoIDMvMyBiZSBkaXNj
YXJkZWQ/CgpCZWF0IHJlZ2FyZHMsCkhhbnMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
