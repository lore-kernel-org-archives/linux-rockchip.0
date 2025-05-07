Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A28C3ABCA
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 May 2025 17:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdT9X0KVX1eLzXxbxLwfrX335Hsk7ahwCnRU94dJq2U=; b=ylooHQhJTrXLP9
	vs0qwXWOO+O1CL4rbe3HGuThH0xKI/cqF8o1BnzMctADT0tOh9CjtQvbzza/Y/ROqGYmy2YzXeFkx
	uYj4DjoDYneUjwnn+zUFuu5WX5DT+RRAvmXOycFxhWq/8Hg7DUIw/p7zrHHkvVECGMoWVB8w48GDn
	GZsV7QjgbdE6yOAWyhYnUttvOQgusqTgbaZ0nuI3CZuNZbS0YHHgUFDPW2rz+kwmMH/WTZkoTMlLS
	jO7w/6rzkryTh9eZw1PZAPM9Ijs3gQ+QLqE5kos+yzfAMA4KgqeKf5zRMxiLm/2CKLZIM/+5KpGNC
	6Qn0PDbif4oQHYqUhHxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCiXY-0000000GJmu-0Tf2;
	Wed, 07 May 2025 17:26:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uChkv-0000000GB9G-0RDa;
	Wed, 07 May 2025 16:36:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 69E31629E5;
	Wed,  7 May 2025 16:36:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5089C4CEE2;
	Wed,  7 May 2025 16:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746635784;
	bh=cjO4ygzINjwIC1ncU+oe4aI5LkAeIM5Tar8FVF/MIo8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W4xVl3aSH4fNvgokVYKqSMtjFz8SUI1ZllOCWtTjUmLBm+mzmmK79sTUQgS/Z7/8h
	 vUR24xkBtrdqW6gDOYL/p/7PhStwZupg3enNxZoAiEfJ5rrfJHqKjElqf1+gxfbxOC
	 sklrsBJ7ynRb7IfS6eHq0aWNLlqY1MiE4ngk6mhc8wBhQUVbhihA7ZiMdIqKl7lbbE
	 jnhNQvqZJrEqEdsTzAzoTgKh+HWWiWn65umxq8q4ezBMENpkAyX5bx0vAAP3LT/W1c
	 YXGglVvg3MoiU+ZDLlk+bOZXdsT+CLuWhLATlFRubj/lFyAqFngYhVzmu+7i06CAO/
	 lSfNYb9vACEQA==
Received: by pali.im (Postfix)
	id 8C20E5F1; Wed,  7 May 2025 18:36:20 +0200 (CEST)
Date: Wed, 7 May 2025 18:36:20 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org,
	yue.wang@Amlogic.com, neil.armstrong@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
Message-ID: <20250507163620.53v5djmhj3ywrge2@pali>
References: <20250506173439.292460-1-18255117159@163.com>
 <20250506173439.292460-4-18255117159@163.com>
 <20250506174110.63ayeqc4scmwjj6e@pali>
 <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
 <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
User-Agent: NeoMutt/20180716
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

T24gV2VkbmVzZGF5IDA3IE1heSAyMDI1IDIzOjA2OjUxIEhhbnMgWmhhbmcgd3JvdGU6Cj4gT24g
MjAyNS81LzcgMjM6MDMsIEhhbnMgWmhhbmcgd3JvdGU6Cj4gPiBPbiAyMDI1LzUvNyAwMTo0MSwg
UGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiA+IE9uIFdlZG5lc2RheSAwNyBNYXkgMjAyNSAwMTozNDoz
OSBIYW5zIFpoYW5nIHdyb3RlOgo+ID4gPiA+IFRoZSBBYXJkdmFyayBQQ0llIGNvbnRyb2xsZXIg
ZW5mb3JjZXMgYSBmaXhlZCA1MTJCIHBheWxvYWQgc2l6ZSB2aWEKPiA+ID4gPiBQQ0lfRVhQX0RF
VkNUTF9QQVlMT0FEXzUxMkIsIG92ZXJyaWRpbmcgaGFyZHdhcmUgY2FwYWJpbGl0aWVzIGFuZCBQ
Q0llCj4gPiA+ID4gY29yZSBuZWdvdGlhdGlvbnMuCj4gPiA+ID4gCj4gPiA+ID4gUmVtb3ZlIGV4
cGxpY2l0IE1QUyBvdmVycmlkZXMgKFBDSV9FWFBfREVWQ1RMX1BBWUxPQUQgYW5kCj4gPiA+ID4g
UENJX0VYUF9ERVZDVExfUEFZTE9BRF81MTJCKS4gTVBTIGlzIG5vdyBkZXRlcm1pbmVkIGJ5IHRo
ZSBQQ0kgY29yZQo+ID4gPiA+IGR1cmluZyBkZXZpY2UgaW5pdGlhbGl6YXRpb24sIGxldmVyYWdp
bmcgcm9vdCBwb3J0IGNvbmZpZ3VyYXRpb25zIGFuZAo+ID4gPiA+IGRldmljZS1zcGVjaWZpYyBj
YXBhYmlsaXRpZXMuCj4gPiA+ID4gCj4gPiA+ID4gQWxpZ25pbmcgQWFyZHZhcmsgd2l0aCB0aGUg
dW5pZmllZCBNUFMgZnJhbWV3b3JrIGVuc3VyZXMgY29uc2lzdGVuY3ksCj4gPiA+ID4gYXZvaWRz
IGFydGlmaWNpYWwgY29uc3RyYWludHMsIGFuZCBhbGxvd3MgdGhlIGhhcmR3YXJlIHRvIG9wZXJh
dGUgYXQKPiA+ID4gPiBpdHMgbWF4aW11bSBzdXBwb3J0ZWQgcGF5bG9hZCBzaXplIHdoaWxlIGFk
aGVyaW5nIHRvIFBDSWUKPiA+ID4gPiBzcGVjaWZpY2F0aW9ucy4KPiA+ID4gPiAKPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBIYW5zIFpoYW5nIDwxODI1NTExNzE1OUAxNjMuY29tPgo+ID4gPiA+IC0t
LQo+ID4gPiA+IMKgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMgfCAyIC0t
Cj4gPiA+ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4gCj4gPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPiA+
ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPiA+ID4gPiBpbmRl
eCBhMjk3OTZjY2U0MjAuLmQ4ODUyODkyOTk0YSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+ID4gPiA+IEBAIC01NDksOSArNTQ5LDcgQEAgc3Rh
dGljIHZvaWQgYWR2a19wY2llX3NldHVwX2h3KHN0cnVjdAo+ID4gPiA+IGFkdmtfcGNpZSAqcGNp
ZSkKPiA+ID4gPiDCoMKgwqDCoMKgIHJlZyA9IGFkdmtfcmVhZGwocGNpZSwgUENJRV9DT1JFX1BD
SUVYUF9DQVAgKyBQQ0lfRVhQX0RFVkNUTCk7Cj4gPiA+ID4gwqDCoMKgwqDCoCByZWcgJj0gflBD
SV9FWFBfREVWQ1RMX1JFTEFYX0VOOwo+ID4gPiA+IMKgwqDCoMKgwqAgcmVnICY9IH5QQ0lfRVhQ
X0RFVkNUTF9OT1NOT09QX0VOOwo+ID4gPiA+IC3CoMKgwqAgcmVnICY9IH5QQ0lfRVhQX0RFVkNU
TF9QQVlMT0FEOwo+ID4gPiA+IMKgwqDCoMKgwqAgcmVnICY9IH5QQ0lfRVhQX0RFVkNUTF9SRUFE
UlE7Cj4gPiA+ID4gLcKgwqDCoCByZWcgfD0gUENJX0VYUF9ERVZDVExfUEFZTE9BRF81MTJCOwo+
ID4gPiA+IMKgwqDCoMKgwqAgcmVnIHw9IFBDSV9FWFBfREVWQ1RMX1JFQURSUV81MTJCOwo+ID4g
PiA+IMKgwqDCoMKgwqAgYWR2a193cml0ZWwocGNpZSwgcmVnLCBQQ0lFX0NPUkVfUENJRVhQX0NB
UCArIFBDSV9FWFBfREVWQ1RMKTsKPiA+ID4gPiAtLSAKPiA+ID4gPiAyLjI1LjEKPiA+ID4gPiAK
PiA+ID4gCj4gPiA+IFBsZWFzZSBkbyBub3QgcmVtb3ZlIHRoaXMgY29kZS4gSXQgaXMgcmVxdWly
ZWQgcGFydCBvZiB0aGUKPiA+ID4gaW5pdGlhbGl6YXRpb24gb2YgdGhlIGFhcmR2YXJrIFBDSSBj
b250cm9sbGVyIGF0IHRoZSBzcGVjaWZpYyBwaGFzZSwKPiA+ID4gYXMgZGVmaW5lZCBpbiB0aGUg
QXJtYWRhIDM3MDAgRnVuY3Rpb25hbCBTcGVjaWZpY2F0aW9uLgo+ID4gPiAKPiA+ID4gVGhlcmUg
d2VyZSByZXBvcnRlZCBtb3JlIGlzc3VlcyB3aXRoIHRob3NlIEFybWFkYSBQQ0llIGNvbnRyb2xs
ZXJzIGZvcgo+ID4gPiB3aGljaCB3ZXJlIGFscmVhZHkgc2VudCBwYXRjaGVzIHRvIG1haWxpbmcg
bGlzdCBpbiBsYXN0IDUgeWVhcnMuIEJ1dAo+ID4gPiB1bmZvcnR1bmF0ZWx5IG5vdCBhbGwgZml4
ZXMgd2VyZSB0YWtlbiAvIGFwcGxpZWQgeWV0Lgo+ID4gCj4gPiBIaSBQYWxpLAo+ID4gCj4gPiBJ
IHJlcGxpZWQgdG8geW91IGluIHZlcnNpb24gdjIuCj4gPiAKPiA+IElzIHRoZSBtYXhpbXVtIE1Q
UyBzdXBwb3J0ZWQgYnkgQXJtYWRhIDM3MDAgNTEyIGJ5dGVzPwoKSUlSQyB5ZXMsIDUxMi1ieXRl
IG1vZGUgaXMgc3VwcG9ydGVkLiBBbmQgSSB0aGluayBpbiBwYXN0IEkgd2FzIHRlc3RpbmcKc29t
ZSBQQ0llIGVuZHBvaW50IGNhcmQgd2hpY2ggcmVxdWlyZWQgNTEyLWJ5dGUgbG9uZyBwYXlsb2Fk
IGFuZCBkaWQgbm90CndvcmtlZCBpbiAyNTYtYnl0ZSBsb25nIG1vZGUgKG5vdCBzdXJlIGlmIHRo
ZSBjYXJkIHdhcyBub3QgYWJsZSB0byBzcGxpdAp0cmFuc2FjdGlvbiBvciBzb21ldGhpbmcgb3Ro
ZXIgd2FzIGJyb2tlbiwgaXQgaXMgcXVpdGUgbG9uZ2VyIHRpbWUpLgoKPiA+IFdoYXQgYXJlIHRo
ZSBkZWZhdWx0IHZhbHVlcyBvZiBEZXZDYXAuTVBTIGFuZCBEZXZDdGwuTVBTPwoKRG8geW91IG1l
YW4gdmFsdWVzIGluIHRoZSBQQ0ktdG8tUENJIGJyaWRnZSBkZXZpY2Ugb2YgUENJZSBSb290IFBv
cnQKdHlwZT8KCkFhcmR2YXJrIGNvbnRyb2xsZXIgZG9lcyBub3QgaGF2ZSB0aGUgcmVhbCBIVyBQ
Q0ktdG8tUENJIGJyaWRnZSBkZXZpY2UuClRoZXJlIGlzIG9ubHkgaW4ta2VybmVsIGVtdWxhdGlv
biBkcml2ZXJzL3BjaS9wY2ktYnJpZGdlLWVtdWwuYyB3aGljaApjcmVhdGUgZmFrZSBrZXJuZWwg
UENJIGRldmljZSBpbiB0aGUgaGllcmFyY2h5IHRvIG1ha2Uga2VybmVsIGFuZAp1c2Vyc3BhY2Ug
aGFwcHkuIFllcywgdGhpcyBpcyBkZXZpYXRpb24gZnJvbSB0aGUgUENJZSBzdGFuZGFyZCBidXQg
d2VsbCwKYnVnZ3kgSFcgaXMgYWxzbyBIVy4KCkFuZCBzYW1lIGFwcGxpZXMgZm9yIHRoZSBwY2kt
bXZlYnUuYyBkcml2ZXIgZm9yIG9sZGVyIE1hcnZlbGwgUENJZSBIVy4KCj4gPiBCZWNhdXNlIHRo
ZSBkZWZhdWx0IHZhbHVlIG9mIERldkN0bC5NUFMgaXMgbm90IDUxMiBieXRlcywgaXQgbmVlZHMg
dG8gYmUKPiA+IGNvbmZpZ3VyZWQgaGVyZSwgcmlnaHQ/Cj4gPiAKPiA+IElmIGl0J3MgbXkgZ3Vl
c3MsIFJLMzU4OCBhbHNvIGhhcyB0aGUgc2FtZSByZXF1aXJlbWVudHMgYXMgeW91LCBqdXN0Cj4g
PiBsaWtlIHRoZSBmaXJzdCBwYXRjaCBJIHN1Ym1pdHRlZC4KPiA+IAo+ID4gUGxlYXNlIHRha2Ug
YSBsb29rIGF0IHRoZSBjb21tdW5pY2F0aW9uIGhpc3Rvcnk6Cj4gPiBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGNpL3BhdGNoLzIwMjUwNDE2MTUxOTI2LjE0MDIw
Mi0xLTE4MjU1MTE3MTU5QDE2My5jb20vCj4gQW5kIHRoaXM6Cj4gaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXBjaS9wYXRjaC8yMDI1MDQyNTA5NTcwOC4zMjY2Mi0y
LTE4MjU1MTE3MTU5QDE2My5jb20vCgpUaGVzZSBjaGFuZ2VzIGFyZSByZWZlcnJpbmcgdGhlIHRv
IHJvb3QgcG9ydHMgUENJIGRldmljZXMsIHdoaWNoIGFyZSBub3QKYXBwbGljYWJsZSBmb3IgYWFy
ZHZhcmsgUENJZSBjb250cm9sbGVyLgoKPiA+IAo+ID4gUGxlYXNlIHRlc3QgaXQgdXNpbmcgcGF0
Y2ggMS8zIG9mIHRoaXMgc2VyaWVzLiBJZiB0aGVyZSBhcmUgYW55Cj4gPiBwcm9ibGVtcywgcGxl
YXNlIGxldCBtZSBrbm93Lgo+ID4gCj4gPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IEhhbnMKPiAK
ClNvcnJ5LCBidXQgSSBzdG9wcGVkIGRvaW5nIGFueSB0ZXN0aW5nIG9mIHRoZSBhYXJkdmFyayBk
cml2ZXIgd2l0aCB0aGUKbWFpbmxpbmUga2VybmVsIGFmdGVyIFBDSSBtYWludGFpbmVycyBzdG9w
cGVkIHRha2luZyBmaXhlcyBmb3IgdGhlCmRyaXZlciBhbmQgc3RvcHBlZCByZXNwb25kaW5nLgoK
SSdtIG5vdCBnb2luZyB0byBkZWJ1ZyBzYW1lIGlzc3VlcyBhZ2Fpbiwgd2hpY2ggSSBoYXZlIGFu
YWx5emVkLApwcmVwYXJlZCBmaXhlcywgc2VudCBwYXRjaGVzIGFuZCBzZWUgbm8gcHJvZ3Jlc3Mg
dGhlcmUuCgpTZWVtcyB0aGF0IHRoZXJlIGlzIGEgc3RhdHVzIHF1bywgYW5kIEknbSBub3QgZ29p
bmcgdG8gY2hhbmdlIGl0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
