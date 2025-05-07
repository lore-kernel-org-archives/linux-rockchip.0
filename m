Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D530CC3ABC0
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 May 2025 15:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BooDFD8g+duHn3P7rIuir6GGbSJi5lD73ox2YVrTg6I=; b=2bbK6tFGXfOC8S
	ohDu0U4JwQQpmh5cXsDXUAP4Vb2D+qTuG4+yH1h9WLi5mOX42nKk4XJtbHoejVInwvEMDm6IFGa2h
	2/p0YogK0skK/fpIEC4/V6/PRijKNko1Pj5xqbkSauR6ZKYUe60Bsjegx/ZPGHfaBK9bBYcQ0UXVR
	ZUH/ca8jVxgo+Ro5zxJAq3AowmgXWfLqWUVG5EmtKuJb3bdy62DwmgoFk0YD/Ygq+6YuzVC+Wej7k
	9EiqrIpMK7UwWaSYspkF/m4YndNzRs/LpSmVnQPyGpk43wL6QdL4K73mZhKPFxLqHgBx7F7rdAmo6
	ywRyhgc/lkB5iSGF3FGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCgt0-0000000G0YQ-1V80;
	Wed, 07 May 2025 15:40:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCgNT-0000000Ftxa-3cga;
	Wed, 07 May 2025 15:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Aak4bhl7i7wNtq2KK490ptM/CCcwRR/GDiQ+3JaJM8M=; b=Lbr112MEAgHxThbyXpRqHWTH3t
	yCNS2Pl0iKjZmY1qpLzcW/PilQP9TRwmORdByTmTdUj+437HOE84/Jucz7ZcMWcBwO8lGcSYAX5Fb
	ORsnHpAMtcf3tXMwcc76dN6gWfYU38J0Mv8WPBoVRvVO5GqgqpTKMSqa1PrEHxOGV/JtMT0mPjYQz
	GWViaG9AMy16MsyZgu/89ACvIQy8latNjihndtnzuOWvk4AbTj3lF1sL9gOi5jbYRVNDGwWxjDkjT
	7ng8SCcVBG9G2LS8rXedCxrXkpE4AejcNiQTogJLfZJ08doqomTYEGLPt1sGPmZTe+iZzGz0XMz+G
	qqmxTVNA==;
Received: from m16.mail.163.com ([117.135.210.3])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCgNP-0000000Fruo-30hd;
	Wed, 07 May 2025 15:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=Aak4bhl7i7wNtq2KK490ptM/CCcwRR/GDiQ+3JaJM8M=;
	b=iZbyWhy0qCtoFQqwnzANJzhS41G7lBZ5OIu7giRsfv1/lfwgSi+kogsMPKGqIb
	zwUNGs4RUA+qijCGO+txyFwzDZ2kF+N2oP51+PWl7EwSVAyUYQZAtgO+546rhhnP
	sp0M+yLFIqxzMr7/JAu+5zujfjYUUBX0qS4X/41Mjs9L4=
Received: from [192.168.71.93] (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wCXGekLdxto_mATFA--.15890S2;
	Wed, 07 May 2025 23:06:52 +0800 (CST)
Message-ID: <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
Date: Wed, 7 May 2025 23:06:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
From: Hans Zhang <18255117159@163.com>
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
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
Content-Language: en-US
In-Reply-To: <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
X-CM-TRANSID: _____wCXGekLdxto_mATFA--.15890S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxJw1DZw1xCw45tw43Cw43Awb_yoW5Ary8pF
	W3XF4rAFWaqr15C3W7Xa1vgryYgasFkFy5W398G343AF9Igw1UGFy2kF4rua47Jr4IkF4j
	vry3t3ySv3WYyaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UBSoXUUUUU=
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDx9Go2gbdD5DvQABsz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_160804_332037_E77E6C0D 
X-CRM114-Status: GOOD (  19.11  )
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

CgpPbiAyMDI1LzUvNyAyMzowMywgSGFucyBaaGFuZyB3cm90ZToKPiAKPiAKPiBPbiAyMDI1LzUv
NyAwMTo0MSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4+IE9uIFdlZG5lc2RheSAwNyBNYXkgMjAyNSAw
MTozNDozOSBIYW5zIFpoYW5nIHdyb3RlOgo+Pj4gVGhlIEFhcmR2YXJrIFBDSWUgY29udHJvbGxl
ciBlbmZvcmNlcyBhIGZpeGVkIDUxMkIgcGF5bG9hZCBzaXplIHZpYQo+Pj4gUENJX0VYUF9ERVZD
VExfUEFZTE9BRF81MTJCLCBvdmVycmlkaW5nIGhhcmR3YXJlIGNhcGFiaWxpdGllcyBhbmQgUENJ
ZQo+Pj4gY29yZSBuZWdvdGlhdGlvbnMuCj4+Pgo+Pj4gUmVtb3ZlIGV4cGxpY2l0IE1QUyBvdmVy
cmlkZXMgKFBDSV9FWFBfREVWQ1RMX1BBWUxPQUQgYW5kCj4+PiBQQ0lfRVhQX0RFVkNUTF9QQVlM
T0FEXzUxMkIpLiBNUFMgaXMgbm93IGRldGVybWluZWQgYnkgdGhlIFBDSSBjb3JlCj4+PiBkdXJp
bmcgZGV2aWNlIGluaXRpYWxpemF0aW9uLCBsZXZlcmFnaW5nIHJvb3QgcG9ydCBjb25maWd1cmF0
aW9ucyBhbmQKPj4+IGRldmljZS1zcGVjaWZpYyBjYXBhYmlsaXRpZXMuCj4+Pgo+Pj4gQWxpZ25p
bmcgQWFyZHZhcmsgd2l0aCB0aGUgdW5pZmllZCBNUFMgZnJhbWV3b3JrIGVuc3VyZXMgY29uc2lz
dGVuY3ksCj4+PiBhdm9pZHMgYXJ0aWZpY2lhbCBjb25zdHJhaW50cywgYW5kIGFsbG93cyB0aGUg
aGFyZHdhcmUgdG8gb3BlcmF0ZSBhdAo+Pj4gaXRzIG1heGltdW0gc3VwcG9ydGVkIHBheWxvYWQg
c2l6ZSB3aGlsZSBhZGhlcmluZyB0byBQQ0llIAo+Pj4gc3BlY2lmaWNhdGlvbnMuCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogSGFucyBaaGFuZyA8MTgyNTUxMTcxNTlAMTYzLmNvbT4KPj4+IC0tLQo+
Pj4gwqAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYyB8IDIgLS0KPj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIAo+Pj4gYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4+PiBpbmRleCBhMjk3OTZjY2U0MjAuLmQ4ODUyODkyOTk0
YSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMK
Pj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPj4+IEBAIC01
NDksOSArNTQ5LDcgQEAgc3RhdGljIHZvaWQgYWR2a19wY2llX3NldHVwX2h3KHN0cnVjdCBhZHZr
X3BjaWUgCj4+PiAqcGNpZSkKPj4+IMKgwqDCoMKgwqAgcmVnID0gYWR2a19yZWFkbChwY2llLCBQ
Q0lFX0NPUkVfUENJRVhQX0NBUCArIFBDSV9FWFBfREVWQ1RMKTsKPj4+IMKgwqDCoMKgwqAgcmVn
ICY9IH5QQ0lfRVhQX0RFVkNUTF9SRUxBWF9FTjsKPj4+IMKgwqDCoMKgwqAgcmVnICY9IH5QQ0lf
RVhQX0RFVkNUTF9OT1NOT09QX0VOOwo+Pj4gLcKgwqDCoCByZWcgJj0gflBDSV9FWFBfREVWQ1RM
X1BBWUxPQUQ7Cj4+PiDCoMKgwqDCoMKgIHJlZyAmPSB+UENJX0VYUF9ERVZDVExfUkVBRFJROwo+
Pj4gLcKgwqDCoCByZWcgfD0gUENJX0VYUF9ERVZDVExfUEFZTE9BRF81MTJCOwo+Pj4gwqDCoMKg
wqDCoCByZWcgfD0gUENJX0VYUF9ERVZDVExfUkVBRFJRXzUxMkI7Cj4+PiDCoMKgwqDCoMKgIGFk
dmtfd3JpdGVsKHBjaWUsIHJlZywgUENJRV9DT1JFX1BDSUVYUF9DQVAgKyBQQ0lfRVhQX0RFVkNU
TCk7Cj4+PiAtLSAKPj4+IDIuMjUuMQo+Pj4KPj4KPj4gUGxlYXNlIGRvIG5vdCByZW1vdmUgdGhp
cyBjb2RlLiBJdCBpcyByZXF1aXJlZCBwYXJ0IG9mIHRoZQo+PiBpbml0aWFsaXphdGlvbiBvZiB0
aGUgYWFyZHZhcmsgUENJIGNvbnRyb2xsZXIgYXQgdGhlIHNwZWNpZmljIHBoYXNlLAo+PiBhcyBk
ZWZpbmVkIGluIHRoZSBBcm1hZGEgMzcwMCBGdW5jdGlvbmFsIFNwZWNpZmljYXRpb24uCj4+Cj4+
IFRoZXJlIHdlcmUgcmVwb3J0ZWQgbW9yZSBpc3N1ZXMgd2l0aCB0aG9zZSBBcm1hZGEgUENJZSBj
b250cm9sbGVycyBmb3IKPj4gd2hpY2ggd2VyZSBhbHJlYWR5IHNlbnQgcGF0Y2hlcyB0byBtYWls
aW5nIGxpc3QgaW4gbGFzdCA1IHllYXJzLiBCdXQKPj4gdW5mb3J0dW5hdGVseSBub3QgYWxsIGZp
eGVzIHdlcmUgdGFrZW4gLyBhcHBsaWVkIHlldC4KPiAKPiBIaSBQYWxpLAo+IAo+IEkgcmVwbGll
ZCB0byB5b3UgaW4gdmVyc2lvbiB2Mi4KPiAKPiBJcyB0aGUgbWF4aW11bSBNUFMgc3VwcG9ydGVk
IGJ5IEFybWFkYSAzNzAwIDUxMiBieXRlcz8gV2hhdCBhcmUgdGhlIAo+IGRlZmF1bHQgdmFsdWVz
IG9mIERldkNhcC5NUFMgYW5kIERldkN0bC5NUFM/Cj4gCj4gQmVjYXVzZSB0aGUgZGVmYXVsdCB2
YWx1ZSBvZiBEZXZDdGwuTVBTIGlzIG5vdCA1MTIgYnl0ZXMsIGl0IG5lZWRzIHRvIGJlIAo+IGNv
bmZpZ3VyZWQgaGVyZSwgcmlnaHQ/Cj4gCj4gSWYgaXQncyBteSBndWVzcywgUkszNTg4IGFsc28g
aGFzIHRoZSBzYW1lIHJlcXVpcmVtZW50cyBhcyB5b3UsIGp1c3QgCj4gbGlrZSB0aGUgZmlyc3Qg
cGF0Y2ggSSBzdWJtaXR0ZWQuCj4gCj4gUGxlYXNlIHRha2UgYSBsb29rIGF0IHRoZSBjb21tdW5p
Y2F0aW9uIGhpc3Rvcnk6Cj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xp
bnV4LXBjaS9wYXRjaC8yMDI1MDQxNjE1MTkyNi4xNDAyMDItMS0xODI1NTExNzE1OUAxNjMuY29t
LwpBbmQgdGhpczoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXBj
aS9wYXRjaC8yMDI1MDQyNTA5NTcwOC4zMjY2Mi0yLTE4MjU1MTE3MTU5QDE2My5jb20vCgo+IAo+
IFBsZWFzZSB0ZXN0IGl0IHVzaW5nIHBhdGNoIDEvMyBvZiB0aGlzIHNlcmllcy4gSWYgdGhlcmUg
YXJlIGFueSAKPiBwcm9ibGVtcywgcGxlYXNlIGxldCBtZSBrbm93Lgo+IAo+IAo+IEJlc3QgcmVn
YXJkcywKPiBIYW5zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
