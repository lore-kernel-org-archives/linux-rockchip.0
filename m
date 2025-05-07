Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71241C3ABBF
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 May 2025 15:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xozFQdpCJwCvPQAF18daqLkr0iYt4ge0W2ZrGpAKnmk=; b=VnOMscNx3AMJES
	J1ibw2GJDtN6fHdbDEzNPawiTSJqzS89RGMPaWl3dL5Md/+9ut3jXmsEpQtFzn+cUxa/BSddXpukx
	dZJK4DKjqzyZxUl0JshLrSTwPMvyqeNMfE2VKiA0AhKduP6LHBssKiYPLPcnuSGfea1mxIHtszldL
	r2xNlx/jRzIHBAswCC0GTRTsdk9JM8juEsoGJ7Hz5wx779kKWVp/8F5oVxNWYKymnYWd1U2HHe+AX
	V3OHs2rMkIOcUUXqZubb1KmRBPlw/hMMGDGfh8VEiL4NLZcPsEk/Y50CiFry38Q3vA95+qtvGuiZN
	h2PYAu5bWw1x/CmQ3ZBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCgsf-0000000G0R8-19Gx;
	Wed, 07 May 2025 15:40:21 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCgJP-0000000FtGS-24Wh;
	Wed, 07 May 2025 15:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=k0lMDpw6GGwnZ5U3YF/IzgmlQ4HTA5U+5tATXwgR3Qs=;
	b=IifXHXyregvZXX/1E3gfFkBqW6jExUqOo4AyVDKpGl62oV49Y1WVapywG1Eym0
	nh3fbwhoVuV5m0FpFuusIf+fWEg+VyLi5S3XICInGT+YLkcZ4FEbGUy4GUHrHfJI
	x02Q3cH64Wkz4T89nBMZWefke0sznXDFCS67wN0KFfCcE=
Received: from [192.168.71.93] (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wA39PQrdhto7adUFA--.13565S2;
	Wed, 07 May 2025 23:03:08 +0800 (CST)
Message-ID: <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
Date: Wed, 7 May 2025 23:03:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
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
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <20250506174110.63ayeqc4scmwjj6e@pali>
X-CM-TRANSID: _____wA39PQrdhto7adUFA--.13565S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxWw4UKFWrCw4Utw4fuFW7Jwb_yoW5Xr4UpF
	W3XF4rAFWaqr15u3ZrJa1kKry5GasrKFy5Wws8GrW3CF9xK3yUGFy2kF4rCa4xJr4kKFyj
	vryaq3ySk3ZIyaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UPxhJUUUUU=
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDwVGo2gbdD5DtQAAsg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_080355_906156_726C171D 
X-CRM114-Status: GOOD (  16.71  )
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

CgpPbiAyMDI1LzUvNyAwMTo0MSwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gT24gV2VkbmVzZGF5IDA3
IE1heSAyMDI1IDAxOjM0OjM5IEhhbnMgWmhhbmcgd3JvdGU6Cj4+IFRoZSBBYXJkdmFyayBQQ0ll
IGNvbnRyb2xsZXIgZW5mb3JjZXMgYSBmaXhlZCA1MTJCIHBheWxvYWQgc2l6ZSB2aWEKPj4gUENJ
X0VYUF9ERVZDVExfUEFZTE9BRF81MTJCLCBvdmVycmlkaW5nIGhhcmR3YXJlIGNhcGFiaWxpdGll
cyBhbmQgUENJZQo+PiBjb3JlIG5lZ290aWF0aW9ucy4KPj4KPj4gUmVtb3ZlIGV4cGxpY2l0IE1Q
UyBvdmVycmlkZXMgKFBDSV9FWFBfREVWQ1RMX1BBWUxPQUQgYW5kCj4+IFBDSV9FWFBfREVWQ1RM
X1BBWUxPQURfNTEyQikuIE1QUyBpcyBub3cgZGV0ZXJtaW5lZCBieSB0aGUgUENJIGNvcmUKPj4g
ZHVyaW5nIGRldmljZSBpbml0aWFsaXphdGlvbiwgbGV2ZXJhZ2luZyByb290IHBvcnQgY29uZmln
dXJhdGlvbnMgYW5kCj4+IGRldmljZS1zcGVjaWZpYyBjYXBhYmlsaXRpZXMuCj4+Cj4+IEFsaWdu
aW5nIEFhcmR2YXJrIHdpdGggdGhlIHVuaWZpZWQgTVBTIGZyYW1ld29yayBlbnN1cmVzIGNvbnNp
c3RlbmN5LAo+PiBhdm9pZHMgYXJ0aWZpY2lhbCBjb25zdHJhaW50cywgYW5kIGFsbG93cyB0aGUg
aGFyZHdhcmUgdG8gb3BlcmF0ZSBhdAo+PiBpdHMgbWF4aW11bSBzdXBwb3J0ZWQgcGF5bG9hZCBz
aXplIHdoaWxlIGFkaGVyaW5nIHRvIFBDSWUgc3BlY2lmaWNhdGlvbnMuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEhhbnMgWmhhbmcgPDE4MjU1MTE3MTU5QDE2My5jb20+Cj4+IC0tLQo+PiAgIGRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMgfCAyIC0tCj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaS1hYXJkdmFyay5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsu
Ywo+PiBpbmRleCBhMjk3OTZjY2U0MjAuLmQ4ODUyODkyOTk0YSAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+PiArKysgYi9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4+IEBAIC01NDksOSArNTQ5LDcgQEAgc3RhdGljIHZv
aWQgYWR2a19wY2llX3NldHVwX2h3KHN0cnVjdCBhZHZrX3BjaWUgKnBjaWUpCj4+ICAgCXJlZyA9
IGFkdmtfcmVhZGwocGNpZSwgUENJRV9DT1JFX1BDSUVYUF9DQVAgKyBQQ0lfRVhQX0RFVkNUTCk7
Cj4+ICAgCXJlZyAmPSB+UENJX0VYUF9ERVZDVExfUkVMQVhfRU47Cj4+ICAgCXJlZyAmPSB+UENJ
X0VYUF9ERVZDVExfTk9TTk9PUF9FTjsKPj4gLQlyZWcgJj0gflBDSV9FWFBfREVWQ1RMX1BBWUxP
QUQ7Cj4+ICAgCXJlZyAmPSB+UENJX0VYUF9ERVZDVExfUkVBRFJROwo+PiAtCXJlZyB8PSBQQ0lf
RVhQX0RFVkNUTF9QQVlMT0FEXzUxMkI7Cj4+ICAgCXJlZyB8PSBQQ0lfRVhQX0RFVkNUTF9SRUFE
UlFfNTEyQjsKPj4gICAJYWR2a193cml0ZWwocGNpZSwgcmVnLCBQQ0lFX0NPUkVfUENJRVhQX0NB
UCArIFBDSV9FWFBfREVWQ1RMKTsKPj4gICAKPj4gLS0gCj4+IDIuMjUuMQo+Pgo+IAo+IFBsZWFz
ZSBkbyBub3QgcmVtb3ZlIHRoaXMgY29kZS4gSXQgaXMgcmVxdWlyZWQgcGFydCBvZiB0aGUKPiBp
bml0aWFsaXphdGlvbiBvZiB0aGUgYWFyZHZhcmsgUENJIGNvbnRyb2xsZXIgYXQgdGhlIHNwZWNp
ZmljIHBoYXNlLAo+IGFzIGRlZmluZWQgaW4gdGhlIEFybWFkYSAzNzAwIEZ1bmN0aW9uYWwgU3Bl
Y2lmaWNhdGlvbi4KPiAKPiBUaGVyZSB3ZXJlIHJlcG9ydGVkIG1vcmUgaXNzdWVzIHdpdGggdGhv
c2UgQXJtYWRhIFBDSWUgY29udHJvbGxlcnMgZm9yCj4gd2hpY2ggd2VyZSBhbHJlYWR5IHNlbnQg
cGF0Y2hlcyB0byBtYWlsaW5nIGxpc3QgaW4gbGFzdCA1IHllYXJzLiBCdXQKPiB1bmZvcnR1bmF0
ZWx5IG5vdCBhbGwgZml4ZXMgd2VyZSB0YWtlbiAvIGFwcGxpZWQgeWV0LgoKSGkgUGFsaSwKCkkg
cmVwbGllZCB0byB5b3UgaW4gdmVyc2lvbiB2Mi4KCklzIHRoZSBtYXhpbXVtIE1QUyBzdXBwb3J0
ZWQgYnkgQXJtYWRhIDM3MDAgNTEyIGJ5dGVzPyBXaGF0IGFyZSB0aGUgCmRlZmF1bHQgdmFsdWVz
IG9mIERldkNhcC5NUFMgYW5kIERldkN0bC5NUFM/CgpCZWNhdXNlIHRoZSBkZWZhdWx0IHZhbHVl
IG9mIERldkN0bC5NUFMgaXMgbm90IDUxMiBieXRlcywgaXQgbmVlZHMgdG8gYmUgCmNvbmZpZ3Vy
ZWQgaGVyZSwgcmlnaHQ/CgpJZiBpdCdzIG15IGd1ZXNzLCBSSzM1ODggYWxzbyBoYXMgdGhlIHNh
bWUgcmVxdWlyZW1lbnRzIGFzIHlvdSwganVzdCAKbGlrZSB0aGUgZmlyc3QgcGF0Y2ggSSBzdWJt
aXR0ZWQuCgpQbGVhc2UgdGFrZSBhIGxvb2sgYXQgdGhlIGNvbW11bmljYXRpb24gaGlzdG9yeToK
aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXBjaS9wYXRjaC8yMDI1
MDQxNjE1MTkyNi4xNDAyMDItMS0xODI1NTExNzE1OUAxNjMuY29tLwoKUGxlYXNlIHRlc3QgaXQg
dXNpbmcgcGF0Y2ggMS8zIG9mIHRoaXMgc2VyaWVzLiBJZiB0aGVyZSBhcmUgYW55IApwcm9ibGVt
cywgcGxlYXNlIGxldCBtZSBrbm93LgoKCkJlc3QgcmVnYXJkcywKSGFucwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
