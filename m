Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CC28C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 12:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U98JJp6ElwOhrpvYmAu2CvMDimRgf9NbptXSZMeg73E=; b=3cB4ngrMNUbCio
	yauTN4ZZTYYMtt1cfyObdAzhk0LFgEcA96W9idLL3KeLJ703WVjPRg1kpHm7gGN5uf+BkE8rS377m
	UC/I5vlyKs6ucE2+fjS+quqISms9bBNOh1QR9MpFeZ11rhhUsxZscLdqBiMjGkT1Vha0edXpxMp25
	bGEqoCNW1IuKFNLwOlaTYE5nY6au3cibvKJWHq3D6WQK0Po/FeuIn1g06kok45iW5ZHT5Qn6pVIx/
	WzQhF14J4z5DbLFuRVFNzmiW1hmocn3SYWE0lQXuBauJDBaEQcFkAx+6twfE15YYLP0NjZNfI2EfI
	j4VeyBxQC9yGnkg6WtrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDNGK-00000003f6D-3TkA;
	Fri, 09 May 2025 12:55:36 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDMTS-00000003X1B-26OO;
	Fri, 09 May 2025 12:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
	Content-Type; bh=9Szx3j0XFQEI/UBZs807hBKYHQ3bAc/qN60fFOlHrtI=;
	b=WE6X6Oe68i2pgvx5xNscRvtTNl3LlOetrwoJA5hDiunh5b9eEwaidFRfleV8n5
	v+bysff+v0rPSbJOT1Hby7e3FKVCp67ea45gyvg7e2SS/6cmVlmS44czvB2v+aia
	fsKZBlcG59+ToQhiA3BZFRmj7Ad0b8FgffcspENpFqbac=
Received: from [192.168.142.52] (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wD3_5EM7x1oPsfZAA--.35294S2;
	Fri, 09 May 2025 20:03:27 +0800 (CST)
Message-ID: <78abe899-e529-49e8-9a16-a2657db666e4@163.com>
Date: Fri, 9 May 2025 20:03:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
 heiko@sntech.de, yue.wang@amlogic.com, neil.armstrong@linaro.org,
 robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20250506173439.292460-1-18255117159@163.com>
 <20250506173439.292460-4-18255117159@163.com>
 <20250506174110.63ayeqc4scmwjj6e@pali>
 <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
 <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
 <20250507163620.53v5djmhj3ywrge2@pali>
 <oy5wlkvp7nrg65hmbn6cwjcavkeq7emu65tsh4435gxllyb437@7ai23qsmpesy>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <oy5wlkvp7nrg65hmbn6cwjcavkeq7emu65tsh4435gxllyb437@7ai23qsmpesy>
X-CM-TRANSID: _____wD3_5EM7x1oPsfZAA--.35294S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCrW8WFWktr1rAF45Kw13twb_yoWrWFykpF
	y3XF1FyFs8Jr13CFnFqa1kKry3tasrKryrXrn8Gry3AF9IqryUGFy2yr4rua47Xr1xCF1j
	yr1YqrWSvF1Yy3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07URc_hUUUUU=
X-Originating-IP: [222.71.101.198]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiWwdIo2gd5xbcqQAAsG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_050506_913454_BB18AC11 
X-CRM114-Status: GOOD (  24.02  )
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

CgpPbiAyMDI1LzUvOSAxNTowOCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+IE9uIFdl
ZCwgTWF5IDA3LCAyMDI1IGF0IDA2OjM2OjIwUE0gKzAyMDAsIFBhbGkgUm9ow6FyIHdyb3RlOgo+
PiBPbiBXZWRuZXNkYXkgMDcgTWF5IDIwMjUgMjM6MDY6NTEgSGFucyBaaGFuZyB3cm90ZToKPj4+
IE9uIDIwMjUvNS83IDIzOjAzLCBIYW5zIFpoYW5nIHdyb3RlOgo+Pj4+IE9uIDIwMjUvNS83IDAx
OjQxLCBQYWxpIFJvaMOhciB3cm90ZToKPj4+Pj4gT24gV2VkbmVzZGF5IDA3IE1heSAyMDI1IDAx
OjM0OjM5IEhhbnMgWmhhbmcgd3JvdGU6Cj4+Pj4+PiBUaGUgQWFyZHZhcmsgUENJZSBjb250cm9s
bGVyIGVuZm9yY2VzIGEgZml4ZWQgNTEyQiBwYXlsb2FkIHNpemUgdmlhCj4+Pj4+PiBQQ0lfRVhQ
X0RFVkNUTF9QQVlMT0FEXzUxMkIsIG92ZXJyaWRpbmcgaGFyZHdhcmUgY2FwYWJpbGl0aWVzIGFu
ZCBQQ0llCj4+Pj4+PiBjb3JlIG5lZ290aWF0aW9ucy4KPj4+Pj4+Cj4+Pj4+PiBSZW1vdmUgZXhw
bGljaXQgTVBTIG92ZXJyaWRlcyAoUENJX0VYUF9ERVZDVExfUEFZTE9BRCBhbmQKPj4+Pj4+IFBD
SV9FWFBfREVWQ1RMX1BBWUxPQURfNTEyQikuIE1QUyBpcyBub3cgZGV0ZXJtaW5lZCBieSB0aGUg
UENJIGNvcmUKPj4+Pj4+IGR1cmluZyBkZXZpY2UgaW5pdGlhbGl6YXRpb24sIGxldmVyYWdpbmcg
cm9vdCBwb3J0IGNvbmZpZ3VyYXRpb25zIGFuZAo+Pj4+Pj4gZGV2aWNlLXNwZWNpZmljIGNhcGFi
aWxpdGllcy4KPj4+Pj4+Cj4+Pj4+PiBBbGlnbmluZyBBYXJkdmFyayB3aXRoIHRoZSB1bmlmaWVk
IE1QUyBmcmFtZXdvcmsgZW5zdXJlcyBjb25zaXN0ZW5jeSwKPj4+Pj4+IGF2b2lkcyBhcnRpZmlj
aWFsIGNvbnN0cmFpbnRzLCBhbmQgYWxsb3dzIHRoZSBoYXJkd2FyZSB0byBvcGVyYXRlIGF0Cj4+
Pj4+PiBpdHMgbWF4aW11bSBzdXBwb3J0ZWQgcGF5bG9hZCBzaXplIHdoaWxlIGFkaGVyaW5nIHRv
IFBDSWUKPj4+Pj4+IHNwZWNpZmljYXRpb25zLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEhhbnMgWmhhbmcgPDE4MjU1MTE3MTU5QDE2My5jb20+Cj4+Pj4+PiAtLS0KPj4+Pj4+ICDCoCBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIHwgMiAtLQo+Pj4+Pj4gIMKgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4+Pj4+PiBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPj4+Pj4+IGluZGV4IGEyOTc5NmNjZTQyMC4uZDg4
NTI4OTI5OTRhIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2kt
YWFyZHZhcmsuYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZh
cmsuYwo+Pj4+Pj4gQEAgLTU0OSw5ICs1NDksNyBAQCBzdGF0aWMgdm9pZCBhZHZrX3BjaWVfc2V0
dXBfaHcoc3RydWN0Cj4+Pj4+PiBhZHZrX3BjaWUgKnBjaWUpCj4+Pj4+PiAgwqDCoMKgwqDCoCBy
ZWcgPSBhZHZrX3JlYWRsKHBjaWUsIFBDSUVfQ09SRV9QQ0lFWFBfQ0FQICsgUENJX0VYUF9ERVZD
VEwpOwo+Pj4+Pj4gIMKgwqDCoMKgwqAgcmVnICY9IH5QQ0lfRVhQX0RFVkNUTF9SRUxBWF9FTjsK
Pj4+Pj4+ICDCoMKgwqDCoMKgIHJlZyAmPSB+UENJX0VYUF9ERVZDVExfTk9TTk9PUF9FTjsKPj4+
Pj4+IC3CoMKgwqAgcmVnICY9IH5QQ0lfRVhQX0RFVkNUTF9QQVlMT0FEOwo+Pj4+Pj4gIMKgwqDC
oMKgwqAgcmVnICY9IH5QQ0lfRVhQX0RFVkNUTF9SRUFEUlE7Cj4+Pj4+PiAtwqDCoMKgIHJlZyB8
PSBQQ0lfRVhQX0RFVkNUTF9QQVlMT0FEXzUxMkI7Cj4+Pj4+PiAgwqDCoMKgwqDCoCByZWcgfD0g
UENJX0VYUF9ERVZDVExfUkVBRFJRXzUxMkI7Cj4+Pj4+PiAgwqDCoMKgwqDCoCBhZHZrX3dyaXRl
bChwY2llLCByZWcsIFBDSUVfQ09SRV9QQ0lFWFBfQ0FQICsgUENJX0VYUF9ERVZDVEwpOwo+Pj4+
Pj4gLS0gCj4+Pj4+PiAyLjI1LjEKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFBsZWFzZSBkbyBub3QgcmVt
b3ZlIHRoaXMgY29kZS4gSXQgaXMgcmVxdWlyZWQgcGFydCBvZiB0aGUKPj4+Pj4gaW5pdGlhbGl6
YXRpb24gb2YgdGhlIGFhcmR2YXJrIFBDSSBjb250cm9sbGVyIGF0IHRoZSBzcGVjaWZpYyBwaGFz
ZSwKPj4+Pj4gYXMgZGVmaW5lZCBpbiB0aGUgQXJtYWRhIDM3MDAgRnVuY3Rpb25hbCBTcGVjaWZp
Y2F0aW9uLgo+Pj4+Pgo+Pj4+PiBUaGVyZSB3ZXJlIHJlcG9ydGVkIG1vcmUgaXNzdWVzIHdpdGgg
dGhvc2UgQXJtYWRhIFBDSWUgY29udHJvbGxlcnMgZm9yCj4+Pj4+IHdoaWNoIHdlcmUgYWxyZWFk
eSBzZW50IHBhdGNoZXMgdG8gbWFpbGluZyBsaXN0IGluIGxhc3QgNSB5ZWFycy4gQnV0Cj4+Pj4+
IHVuZm9ydHVuYXRlbHkgbm90IGFsbCBmaXhlcyB3ZXJlIHRha2VuIC8gYXBwbGllZCB5ZXQuCj4+
Pj4KPj4+PiBIaSBQYWxpLAo+Pj4+Cj4+Pj4gSSByZXBsaWVkIHRvIHlvdSBpbiB2ZXJzaW9uIHYy
Lgo+Pj4+Cj4+Pj4gSXMgdGhlIG1heGltdW0gTVBTIHN1cHBvcnRlZCBieSBBcm1hZGEgMzcwMCA1
MTIgYnl0ZXM/Cj4+Cj4+IElJUkMgeWVzLCA1MTItYnl0ZSBtb2RlIGlzIHN1cHBvcnRlZC4gQW5k
IEkgdGhpbmsgaW4gcGFzdCBJIHdhcyB0ZXN0aW5nCj4+IHNvbWUgUENJZSBlbmRwb2ludCBjYXJk
IHdoaWNoIHJlcXVpcmVkIDUxMi1ieXRlIGxvbmcgcGF5bG9hZCBhbmQgZGlkIG5vdAo+PiB3b3Jr
ZWQgaW4gMjU2LWJ5dGUgbG9uZyBtb2RlIChub3Qgc3VyZSBpZiB0aGUgY2FyZCB3YXMgbm90IGFi
bGUgdG8gc3BsaXQKPj4gdHJhbnNhY3Rpb24gb3Igc29tZXRoaW5nIG90aGVyIHdhcyBicm9rZW4s
IGl0IGlzIHF1aXRlIGxvbmdlciB0aW1lKS4KPj4KPj4+PiBXaGF0IGFyZSB0aGUgZGVmYXVsdCB2
YWx1ZXMgb2YgRGV2Q2FwLk1QUyBhbmQgRGV2Q3RsLk1QUz8KPj4KPj4gRG8geW91IG1lYW4gdmFs
dWVzIGluIHRoZSBQQ0ktdG8tUENJIGJyaWRnZSBkZXZpY2Ugb2YgUENJZSBSb290IFBvcnQKPj4g
dHlwZT8KPj4KPj4gQWFyZHZhcmsgY29udHJvbGxlciBkb2VzIG5vdCBoYXZlIHRoZSByZWFsIEhX
IFBDSS10by1QQ0kgYnJpZGdlIGRldmljZS4KPj4gVGhlcmUgaXMgb25seSBpbi1rZXJuZWwgZW11
bGF0aW9uIGRyaXZlcnMvcGNpL3BjaS1icmlkZ2UtZW11bC5jIHdoaWNoCj4+IGNyZWF0ZSBmYWtl
IGtlcm5lbCBQQ0kgZGV2aWNlIGluIHRoZSBoaWVyYXJjaHkgdG8gbWFrZSBrZXJuZWwgYW5kCj4+
IHVzZXJzcGFjZSBoYXBweS4gWWVzLCB0aGlzIGlzIGRldmlhdGlvbiBmcm9tIHRoZSBQQ0llIHN0
YW5kYXJkIGJ1dCB3ZWxsLAo+PiBidWdneSBIVyBpcyBhbHNvIEhXLgo+Pgo+PiBBbmQgc2FtZSBh
cHBsaWVzIGZvciB0aGUgcGNpLW12ZWJ1LmMgZHJpdmVyIGZvciBvbGRlciBNYXJ2ZWxsIFBDSWUg
SFcuCj4+Cj4gCj4gT2guIFRoZW4gdGhpcyBwYXRjaCBpcyBub3QgZ29pbmcgdG8gY2hhbmdlIHRo
ZSBNUFMgc2V0dGluZyBvZiB0aGUgcm9vdCBidXMuIEJ1dAo+IHRoYXQgYWxzbyBtZWFucyB0aGF0
IHRoZXJlIGlzIGEgZGV2aWF0aW9uIGluIHdoYXQgdGhlIFBDSSBjb3JlIGV4cGVjdHMgZm9yIGEK
PiByb290IHBvcnQgYW5kIHdoYXQgaXMgYWN0dWFsbHkgcHJvZ3JhbW1lZCBpbiB0aGUgaHcuCj4g
Cj4gRXZlbiBpbiB0aGlzIE1QUyBjYXNlLCBpZiB0aGUgUENJIGNvcmUgZGVjaWRlcyB0byBzY2Fs
ZSBkb3duIHRoZSBNUFMgdmFsdWUgb2YKPiB0aGUgcm9vdCBwb3J0LCB0aGVuIGl0IHdvbid0IGJl
IGNoYW5nZWQgaW4gdGhlIGh3IGFuZCB0aGUgaHcgd2lsbCBjb250aW51ZSB0bwo+IHdvcmsgd2l0
aCA1MTJCPyBTaG91bGRuJ3QgdGhlIGNvbnRyb2xsZXIgZHJpdmVyIGNoYW5nZSB0aGUgaHcgdmFs
dWVzIGJhc2VkIG9uCj4gdGhlIHZhbHVlcyBwcm9ncmFtbWVkIGJ5IFBDSSBjb3JlIG9mIHRoZSBl
bXVsIGJyaWRnZT8KPiAKPiBCdXQgdW50aWwgdGhhdCBpcyBmaXhlZCwgdGhpcyBwYXRjaCBzaG91
bGQgYmUgZHJvcHBlZC4KPiAKCkRlYXIgTWFuaSwKCkkgd2lsbCBkcm9wIHRoaXMgcGF0Y2ggaW4g
dGhlIG5leHQgdmVyc2lvbi4KCkJlc3QgcmVnYXJkcywKSGFucwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
