Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADF69C369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 15:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2alOG8RMCa7MWdhm5qFMN10IRo7sVafF/4KhVtDhcfc=; b=Atn9dfj13bsjQd
	weWWguCsUHs5n0M6XoyJFHxQ3dVUjPS37aoQsYhkMG3sfws61CYATzH0aP1CHTIDcei53m8ZhZKBi
	rahKZLcDcJMlkNq8ON6KoVV16lkiv9xZVEa1SJ3BrGYk9xy2+MRcci/kv3qqeLRdKju4d20KtL52X
	lgdo4jq7azt9Va6kJbvG1Eic+IV/JOIFyc8iE0cH4TktGcfvb0RzP31QTD33aOexaxPzYg8TubMfp
	s7iJv/+KFtUX/upf0s31VuVbmRKVgw5B+KuUNd+TEs+pabtt6oCwzPAQICF1dvD+QjApamqFttc+1
	BKM+LFsoBnRhCT6szePQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8h5Q-00000002Cf7-2K1E;
	Sat, 26 Apr 2025 15:05:00 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8h3W-00000002CRa-2CYl;
	Sat, 26 Apr 2025 15:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=2NTP26rZSO4aLxowU1tMWp58BMiXt/URHc+KIhHuxrE=;
	b=MTNfI1bjj/6sOwjhpxl6bkmPC/+LTUKOPSiUAIeVV8nKWRz27uFqb1sJ+lDGtQ
	63MoHFbayfTFrFSrFK+NANLTRI56wf+0T1ppXgIdKpVkRgIFTswtZJ8DfmcNUM85
	eMNUYZOx0YDL/JumkNNFBNzS8YHXDrsFhuJdclLcPClrM=
Received: from [192.168.71.89] (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wBXbM5v9QxolMNQCw--.59638S2;
	Sat, 26 Apr 2025 23:02:08 +0800 (CST)
Message-ID: <5e2844cc-8359-4b87-a8ce-eb5ebb85f8ff@163.com>
Date: Sat, 26 Apr 2025 23:02:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] PCI: Remove redundant MPS configuration
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
 heiko@sntech.de, thomas.petazzoni@bootlin.com,
 manivannan.sadhasivam@linaro.org, yue.wang@Amlogic.com,
 neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250425095708.32662-1-18255117159@163.com>
 <20250425095708.32662-3-18255117159@163.com>
 <20250425181345.bybgcht5tweyg43k@pali>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <20250425181345.bybgcht5tweyg43k@pali>
X-CM-TRANSID: _____wBXbM5v9QxolMNQCw--.59638S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZryUGr4UtrWfAw1rGF18Grg_yoW8Wr4xpa
	13XFs3JF4Fqr15uF17Ja10gr1fXasIkFy5Xws8GFW3Za4aqw1UGFy2krs0kasrXr4v9F17
	Za42v3ySyanxtaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UmYL9UUUUU=
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDxM6o2gLzK+LogABst
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_080302_958063_69DE318A 
X-CRM114-Status: GOOD (  10.16  )
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

CgpPbiAyMDI1LzQvMjYgMDI6MTMsIFBhbGkgUm9ow6FyIHdyb3RlOgo+IE9uIEZyaWRheSAyNSBB
cHJpbCAyMDI1IDE3OjU3OjA4IEhhbnMgWmhhbmcgd3JvdGU6Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9wY2ktYWFyZHZhcmsuYwo+PiBpbmRleCBhMjk3OTZjY2U0MjAuLmQ4ODUyODkyOTk0YSAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+PiArKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4+IEBAIC01NDksOSArNTQ5
LDcgQEAgc3RhdGljIHZvaWQgYWR2a19wY2llX3NldHVwX2h3KHN0cnVjdCBhZHZrX3BjaWUgKnBj
aWUpCj4+ICAgCXJlZyA9IGFkdmtfcmVhZGwocGNpZSwgUENJRV9DT1JFX1BDSUVYUF9DQVAgKyBQ
Q0lfRVhQX0RFVkNUTCk7Cj4+ICAgCXJlZyAmPSB+UENJX0VYUF9ERVZDVExfUkVMQVhfRU47Cj4+
ICAgCXJlZyAmPSB+UENJX0VYUF9ERVZDVExfTk9TTk9PUF9FTjsKPj4gLQlyZWcgJj0gflBDSV9F
WFBfREVWQ1RMX1BBWUxPQUQ7Cj4+ICAgCXJlZyAmPSB+UENJX0VYUF9ERVZDVExfUkVBRFJROwo+
PiAtCXJlZyB8PSBQQ0lfRVhQX0RFVkNUTF9QQVlMT0FEXzUxMkI7Cj4+ICAgCXJlZyB8PSBQQ0lf
RVhQX0RFVkNUTF9SRUFEUlFfNTEyQjsKPj4gICAJYWR2a193cml0ZWwocGNpZSwgcmVnLCBQQ0lF
X0NPUkVfUENJRVhQX0NBUCArIFBDSV9FWFBfREVWQ1RMKTsKPj4gICAKPj4gLS0gCj4+IDIuMjUu
MQo+Pgo+IAo+IFBsZWFzZSBkbyBub3QgcmVtb3ZlIHRoaXMgY29kZS4gSXQgaXMgcmVxdWlyZWQg
cGFydCBvZiB0aGUKPiBpbml0aWFsaXphdGlvbiBvZiB0aGUgYWFyZHZhcmsgUENJIGNvbnRyb2xs
ZXIgYXQgdGhlIHNwZWNpZmljIHBoYXNlLAo+IGFzIGRlZmluZWQgaW4gdGhlIEFybWFkYSAzNzAw
IEZ1bmN0aW9uYWwgU3BlY2lmaWNhdGlvbi4KCkhpIFBhbGksCgpUaGlzIHNlcmllcyBvZiBwYXRj
aGVzIGlzIGRpc2N1c3NpbmcgdGhlIGluaXRpYWxpemF0aW9uIG9mIERldkN0bC5NUFMgYnkgCnRo
ZSBSb290IFBvcnQuIFBsZWFzZSBsb29rIGF0IHRoZSBmaXJzdCBwYXRjaCBJIHN1Ym1pdHRlZC4g
SWYgdGhlcmUgaXMgYSAKcmVhc29uYWJsZSBtZXRob2QgaW4gdGhlIGVuZCwgRGV2Q3RsLk1QUyB3
aWxsIGFsc28gYmUgY29uZmlndXJlZCAKc3VjY2Vzc2Z1bGx5LiBUaGUgUENJZSBtYWludGFpbmVy
IHdpbGwgZ2l2ZSB0aGUgcmV2aWV3IG9waW5pb25zLiBQbGVhc2UgCnJlc3QgYXNzdXJlZCB0aGF0
IGl0IHdpbGwgbm90IGFmZmVjdCB0aGUgZnVuY3Rpb25zIG9mIHRoZSBhYXJkdmFyayBQQ0kgCmNv
bnRyb2xsZXIuCgpSb2NrY2hpcCdzIFJLMzU4OCBhbHNvIGhhcyB0aGUgc2FtZSBwcm9ibGVtLgoK
Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1wY2kvcGF0Y2gvMjAy
NTA0MTYxNTE5MjYuMTQwMjAyLTEtMTgyNTUxMTcxNTlAMTYzLmNvbS8KCkJlc3QgcmVnYXJkcywK
SGFucwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
