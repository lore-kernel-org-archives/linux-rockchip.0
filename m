Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8BC6C369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 16:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seI6zVAyA2ZjMJbk7eJLWahPyoTWJbQlb9DqklV/26Q=; b=MU2tWOjkHAWbLI
	F1P6GJJu7UseA2se6KgA+hOpXI7kO+XYuj/XhC5wCZgconLnNy/2BHDYnREd/qYfuyPNacKrprNDK
	Pnhtf95mx/m1/bZXB1invSQn7T025K/euwPqJw7y7DZ14h+C4Pls/ukkHP8EfQYKirNeooC2eokIG
	ScbHB2Vo1EvNQCLxdtYImJNoQMlALrEiLanUjLJ/OB0HIsNCwKuOglKLwtQg6nOiObF4uKAO4y6ke
	1GFlcoxdrFx41VDqi2DWjcQLXMMn65fKy+4g4TzKpvnuOlrQwEngF3QZQ6bMlDAxUK3KTmb2HoMyT
	BmLq3F82F5g2HscOUKNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8LeA-00000000A9t-2rC9;
	Fri, 25 Apr 2025 16:11:26 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8JvW-0000000HQ1o-1VgC;
	Fri, 25 Apr 2025 14:21:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=XQYBdxu34VR0VSrWEORHz7bVPlHkrPo4i9PmBo0cNQk=;
	b=KzhEE2qm1q8ynq7e9nb+3UmJpHkBwLvvsVuNDVfC9TNpQr811xVeXyqrM3y6Xc
	YkpjliF9RF3VLsHI0ZKmn5iULR6+VIOGHXlKIeRZ94WGqpI5dzZg3GR8n1T62qD8
	3zhebkc3/wl2bWEkSCnn7tYDCiYQPeFPU7HTs33oCDcMk=
Received: from [192.168.71.89] (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wA3mC0vmgto4FqxCQ--.32274S2;
	Fri, 25 Apr 2025 22:20:32 +0800 (CST)
Message-ID: <a6e097e4-6d57-4db2-a541-ebd9e4a9856b@163.com>
Date: Fri, 25 Apr 2025 22:20:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] PCI: Remove redundant MPS configuration
To: neil.armstrong@linaro.org, lpieralisi@kernel.org, kw@linux.com,
 bhelgaas@google.com, heiko@sntech.de, thomas.petazzoni@bootlin.com,
 manivannan.sadhasivam@linaro.org, yue.wang@Amlogic.com
Cc: pali@kernel.org, robh@kernel.org, jingoohan1@gmail.com,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250425095708.32662-1-18255117159@163.com>
 <20250425095708.32662-3-18255117159@163.com>
 <e6752451-4492-4ae2-9bad-3865c4945dbe@linaro.org>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <e6752451-4492-4ae2-9bad-3865c4945dbe@linaro.org>
X-CM-TRANSID: _____wA3mC0vmgto4FqxCQ--.32274S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZr4kXF4UKrW7KrW3CryfWFg_yoW5XrWUpF
	W3uF4SyF48Jr4rWFsFyan5CFWftasIkr9rJr9xGr1xuF9FyFsrJFyayFWF9a4xZr42gFnY
	yr1Fg347C3Z8tF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UGoGdUUUUU=
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiWxI6o2gLk-CiIQABsS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_072114_783052_1EFD2DAC 
X-CRM114-Status: GOOD (  12.07  )
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

CgpPbiAyMDI1LzQvMjUgMTk6NTksIG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6Cj4g
T24gMjUvMDQvMjAyNSAxMTo1NywgSGFucyBaaGFuZyB3cm90ZToKPj4gV2l0aCB0aGUgUENJIGNv
cmUgbm93IGNlbnRyYWxseSBjb25maWd1cmluZyByb290IHBvcnQgTVBTIHRvCj4+IGhhcmR3YXJl
LXN1cHBvcnRlZCBtYXhpbXVtcyAodmlhIDEyOCA8PCBwY2llX21wc3MpIGR1cmluZyBob3N0IHBy
b2JpbmcsCj4+IHBsYXRmb3JtLXNwZWNpZmljIE1QUyBhZGp1c3RtZW50cyBhcmUgcmVkdW5kYW50
LiBUaGlzIHBhdGNoIHJlbW92ZXMgdGhlCj4+IGN1c3RvbSB0aGUgY29uZmlndXJhdGlvbiBvZiB0
aGUgbWF4IHBheWxvYWQgbG9naWMgdG8gYWxpZ24gd2l0aCB0aGUKPj4gc3RhbmRhcmRpemVkIGlu
aXRpYWxpemF0aW9uIGZsb3cuCj4+Cj4+IEJ5IGVsaW1pbmF0aW5nIHJlZHVuZGFudCBjb2RlLCB0
aGlzIGNoYW5nZSBwcmV2ZW50cyBjb25mbGljdHMgd2l0aCBnbG9iYWwKPj4gUENJZSBoaWVyYXJj
aHkgdHVuaW5nIHBvbGljaWVzIGFuZCByZWR1Y2VzIG1haW50ZW5hbmNlIG92ZXJoZWFkLiBUaGUg
Cj4+IE1lc29uCj4+IGRyaXZlciBub3cgZnVsbHkgcmVsaWVzIG9uIHRoZSBjb3JlIFBDSSBmcmFt
ZXdvcmsgZm9yIE1QUyBjb25maWd1cmF0aW9uLAo+PiBlbnN1cmluZyBjb25zaXN0ZW5jeSBhY3Jv
c3MgdGhlIFBDSWUgdG9wb2xvZ3kgd2hpbGUgcHJlc2VydmluZwo+PiBoYXJkd2FyZS1zcGVjaWZp
YyBNUlJTIGhhbmRsaW5nLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBIYW5zIFpoYW5nIDwxODI1NTEx
NzE1OUAxNjMuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
LW1lc29uLmMgfCAxNyAtLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaS1hYXJkdmFyay5jwqAgfMKgIDIgLS0KPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaS1tZXNvbi5jIAo+PiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1tZXNvbi5j
Cj4+IGluZGV4IGRiOTQ4MmExMTNlOS4uMTI2ZjM4ZWQ0NTNkIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbWVzb24uYwo+PiArKysgYi9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2ktbWVzb24uYwo+PiBAQCAtMjYxLDIyICsyNjEsNiBAQCBzdGF0aWMg
aW50IG1lc29uX3NpemVfdG9fcGF5bG9hZChzdHJ1Y3QgCj4+IG1lc29uX3BjaWUgKm1wLCBpbnQg
c2l6ZSkKPj4gwqDCoMKgwqDCoCByZXR1cm4gZmxzKHNpemUpIC0gODsKPj4gwqAgfQo+PiAtc3Rh
dGljIHZvaWQgbWVzb25fc2V0X21heF9wYXlsb2FkKHN0cnVjdCBtZXNvbl9wY2llICptcCwgaW50
IHNpemUpCj4+IC17Cj4+IC3CoMKgwqAgc3RydWN0IGR3X3BjaWUgKnBjaSA9ICZtcC0+cGNpOwo+
PiAtwqDCoMKgIHUzMiB2YWw7Cj4+IC3CoMKgwqAgdTE2IG9mZnNldCA9IGR3X3BjaWVfZmluZF9j
YXBhYmlsaXR5KHBjaSwgUENJX0NBUF9JRF9FWFApOwo+PiAtwqDCoMKgIGludCBtYXhfcGF5bG9h
ZF9zaXplID0gbWVzb25fc2l6ZV90b19wYXlsb2FkKG1wLCBzaXplKTsKPj4gLQo+PiAtwqDCoMKg
IHZhbCA9IGR3X3BjaWVfcmVhZGxfZGJpKHBjaSwgb2Zmc2V0ICsgUENJX0VYUF9ERVZDVEwpOwo+
PiAtwqDCoMKgIHZhbCAmPSB+UENJX0VYUF9ERVZDVExfUEFZTE9BRDsKPj4gLcKgwqDCoCBkd19w
Y2llX3dyaXRlbF9kYmkocGNpLCBvZmZzZXQgKyBQQ0lfRVhQX0RFVkNUTCwgdmFsKTsKPj4gLQo+
PiAtwqDCoMKgIHZhbCA9IGR3X3BjaWVfcmVhZGxfZGJpKHBjaSwgb2Zmc2V0ICsgUENJX0VYUF9E
RVZDVEwpOwo+PiAtwqDCoMKgIHZhbCB8PSBQQ0lFX0NBUF9NQVhfUEFZTE9BRF9TSVpFKG1heF9w
YXlsb2FkX3NpemUpOwo+PiAtwqDCoMKgIGR3X3BjaWVfd3JpdGVsX2RiaShwY2ksIG9mZnNldCAr
IFBDSV9FWFBfREVWQ1RMLCB2YWwpOwo+PiAtfQo+PiAtCj4+IMKgIHN0YXRpYyB2b2lkIG1lc29u
X3NldF9tYXhfcmRfcmVxX3NpemUoc3RydWN0IG1lc29uX3BjaWUgKm1wLCBpbnQgc2l6ZSkKPj4g
wqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBkd19wY2llICpwY2kgPSAmbXAtPnBjaTsKPj4gQEAg
LTM4MSw3ICszNjUsNiBAQCBzdGF0aWMgaW50IG1lc29uX3BjaWVfaG9zdF9pbml0KHN0cnVjdCBk
d19wY2llX3JwIAo+PiAqcHApCj4+IMKgwqDCoMKgwqAgcHAtPmJyaWRnZS0+b3BzID0gJm1lc29u
X3BjaV9vcHM7Cj4+IC3CoMKgwqAgbWVzb25fc2V0X21heF9wYXlsb2FkKG1wLCBNQVhfUEFZTE9B
RF9TSVpFKTsKPj4gwqDCoMKgwqDCoCBtZXNvbl9zZXRfbWF4X3JkX3JlcV9zaXplKG1wLCBNQVhf
UkVBRF9SRVFfU0laRSk7Cj4gCj4gU2VlbXMgeW91IGNhbiBhbHNvIHJlbW92ZSBtZXNvbl9zZXRf
bWF4X3JkX3JlcV9zaXplKCkgc2luY2UgaXQncwo+IGRvbmUgYnkgcGNpZV93cml0ZV9tcnJzKCkK
CgpEZWFyIG5laWwsCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHJlcGx5IGFuZCByZW1p
bmRlci4KCkkgd2FudCB0byB3YWl0IGZvciB0aGUgcmVzdWx0IG9mIHRoZSBmaXJzdCBwYXRjaCBk
aXNjdXNzaW9uLCBhbmQgdGhlbiAKc2VlIGlmIHdlIG5lZWQgdG8gcmVtb3ZlIG1lc29uX3NldF9t
YXhfcmRfcmVxX3NpemUoKS4KCkJlc3QgcmVnYXJkcywKSGFucwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
