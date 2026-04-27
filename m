Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B38BFF8850
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 00:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIBP2SL+xDNaUj3OG/OETPHvVuMK6+fz7bKLsNt76SA=; b=TGLBmG6w7AnHMl
	fi7uziHmgzCFQPoMk7yJQAyAf4AeuS7tsYmTQU9tV4y7zZsD+ZKPpor7d4nosbVDz03WJH9VdJy1K
	IQU+zwDF3rz2Khaf0RzEyGSeRXFYMQWNjgwEqJVqgBqjW2eR9cIDUAG8kIRUfsx5DN6HWv/Eg6u3L
	9nVLE6IY9FSXDGovImI0VHUMT7GBKfy3fn/g2a4sgoon4rzYJ+8tGtyEXmULntGacpGO6G0SOVavm
	dZxy5ovqy8WTqJk5RhnmfTTIN3sHa2ytZJZDOZCqrdrbRoLe+ZecQTvXdJLJ5bGg7N1c/tgKZOWTN
	vaLyrA7JRW7sImFcaQmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHA3b-0000000Fyjs-1pqj;
	Mon, 27 Apr 2026 00:42:39 +0000
Received: from mail-m478512530.xmail.ntesmail.com ([47.85.125.30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHA3X-0000000FyjL-2Fv7;
	Mon, 27 Apr 2026 00:42:38 +0000
Received: from [172.16.12.17] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3c3314299;
	Mon, 27 Apr 2026 08:42:18 +0800 (GMT+08:00)
Message-ID: <8b8ea5e8-4e1a-41e7-b377-0a4246609cf4@rock-chips.com>
Date: Mon, 27 Apr 2026 08:42:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong
 <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix TX detect RX
 termination errata
To: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
References: <1774423383-36599-1-git-send-email-shawn.lin@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1774423383-36599-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9dcc63143c09cckunmc5962bd51746c4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCHkpKVkweGh9LGEpKSh8fS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=IjSoo2P0FJMHK5MMBUpKSypXR5a7rsvOxpIZmjilqnCPppzaDlEiEnBbJbfk1AEDCEVyqAlY2QkIpJMDEs4dEMUgqtSrCXN2sDqlya/nXN42m+uu5Q1UgpM3OI89eYqZkSJQ1HEAQUp1YHWyvEIzZi+oSd95GnWwRwCi6YqNWmo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3HoksNeI6ZtKSz9ycILX9bag3CMDi7LUrvjdbGKG7Jc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_174236_896774_67BD5C40 
X-CRM114-Status: GOOD (  17.50  )
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

UGluZy4uLgoK5ZyoIDIwMjYvMDMvMjUg5pif5pyf5LiJIDE1OjIzLCBTaGF3biBMaW4g5YaZ6YGT
Ogo+IFNvbWUgUEhZIHJldmlzaW9ucyBtYXkgZmFpbCB0byBkZXRlY3QgdGhlIHBlZXIgUlgncyB0
ZXJtaW5hdGlvbgo+IHJlc2lzdG9yIChSVEVSTSkgdW5kZXIgY2VydGFpbiBjcml0aWNhbCB0ZW1w
ZXJhdHVyZSBjb25kaXRpb25zLgo+IFRoaXMgY2F1c2VzIFRYIGRldGVjdGlvbiBmYWlsdXJlcyBv
biBQQ0llIGxpbmtzLgo+IAo+IEFkZCBhIHdvcmthcm91bmQgdG8gZm9yY2UgdGhlIFJURVJNIGRl
dGVjdGlvbiByZWFkeSBzaWduYWwgZm9yCj4gYWZmZWN0ZWQgUEhZIHJldmlzaW9ucy4gVGhpcyBl
bnN1cmVzIHJlbGlhYmxlIFRYLXRvLVJYIHRlcm1pbmF0aW9uCj4gZGV0ZWN0aW9uIGFjcm9zcyBh
bGwgb3BlcmF0aW5nIHRlbXBlcmF0dXJlIHJhbmdlcy4KPiAKPiBUaGUgZml4IGFwcGxpZXMgdG8g
UkszNTYyLCBSSzM1NjgsIFJLMzU3NiBhbmQgUkszNTg4IFNvQ3Mgd2hpY2ggc2hhcmUKPiB0aGUg
c2FtZSBQSFkgSVAgd2l0aCB0aGlzIGhhcmR3YXJlIGVycmF0YS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAKPiAgIGRyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jIHwgMTkgKysrKysr
KysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21i
cGh5LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHku
Ywo+IGluZGV4IGI2MGQ2YmYuLjc2ZDQ5OTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiArKysgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+IEBAIC0xMDYsNiArMTA2LDkg
QEAKPiAgICNkZWZpbmUgUkszNTY4X1BIWVJFRzE4CQkJCTB4NDQKPiAgICNkZWZpbmUgUkszNTY4
X1BIWVJFRzE4X1BMTF9MT09QCQkweDMyCj4gICAKPiArI2RlZmluZSBSSzM1NjhfUEhZUkVHMjYJ
CQkJMHg2NAo+ICsjZGVmaW5lIFJLMzU2OF9QSFlSRUcyNl9GT1JDRV9SVEVSTV9ERVRfUkRZCUJJ
VCg1KQo+ICsKPiAgICNkZWZpbmUgUkszNTY4X1BIWVJFRzMwCQkJCTB4NzQKPiAgICNkZWZpbmUg
UkszNTY4X1BIWVJFRzMwX0dBVEVfVFhfUENLX1NFTCAgICAgICAgIEJJVCg3KQo+ICAgI2RlZmlu
ZSBSSzM1NjhfUEhZUkVHMzBfR0FURV9UWF9QQ0tfRExZX1BMTF9PRkYgQklUKDcpCj4gQEAgLTE5
Myw2ICsxOTYsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9jZmcgewo+ICAgCXVuc2lnbmVk
IGludCBudW1fcGh5czsKPiAgIAl1bnNpZ25lZCBpbnQgcGh5X2lkc1szXTsKPiAgIAljb25zdCBz
dHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9ncmZjZmcgKmdyZmNmZzsKPiArCWJvb2wgZm9yY2Vfcnh0
ZXJtX2RldF9yZHk7Cj4gICAJaW50ICgqY29tYnBoeV9jZmcpKHN0cnVjdCByb2NrY2hpcF9jb21i
cGh5X3ByaXYgKnByaXYpOwo+ICAgfTsKPiAgIAo+IEBAIC0yNjQsNiArMjY4LDE3IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfY29tYnBoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiAgIAo+ICAgCXN3
aXRjaCAocHJpdi0+dHlwZSkgewo+ICAgCWNhc2UgUEhZX1RZUEVfUENJRToKPiArCQkvKgo+ICsJ
CSAqIEhhcmR3YXJlIEVycmF0YTogVFggZmFpbHMgdG8gZGV0ZWN0IHBlZXIgUlggdGVybWluYXRp
b24uCj4gKwkJICogU29tZSBQSFkgcmV2aXNpb25zIG1heSBmYWlsIHRvIGRldGVjdCByZW1vdGUg
UlgncyBSVEVSTQo+ICsJCSAqIChyZWNlaXZlciB0ZXJtaW5hdGlvbiByZXNpc3RvcikgdW5kZXIg
Y2VydGFpbiBjcml0aWNhbAo+ICsJCSAqIHRlbXBlcmF0dXJlIGNvbmRpdGlvbnMuIFNldCBmb3Jj
ZSBydGVybSBkZXRlY3QgcmVhZHkgdG8KPiArCQkgKiBmaXggaXQuCj4gKwkJICovCj4gKwkJaWYg
KHByaXYtPmNmZy0+Zm9yY2Vfcnh0ZXJtX2RldF9yZHkpCj4gKwkJCXJvY2tjaGlwX2NvbWJwaHlf
dXBkYXRlbChwcml2LCBSSzM1NjhfUEhZUkVHMjZfRk9SQ0VfUlRFUk1fREVUX1JEWSwKPiArCQkJ
CQlSSzM1NjhfUEhZUkVHMjZfRk9SQ0VfUlRFUk1fREVUX1JEWSwgUkszNTY4X1BIWVJFRzI2KTsK
PiArCQlmYWxsdGhyb3VnaDsKPiAgIAljYXNlIFBIWV9UWVBFX1VTQjM6Cj4gICAJY2FzZSBQSFlf
VFlQRV9TQVRBOgo+ICAgCWNhc2UgUEhZX1RZUEVfU0dNSUk6Cj4gQEAgLTc0NSw2ICs3NjAsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfY2ZnIHJrMzU2Ml9jb21icGh5
X2NmZ3MgPSB7Cj4gICAJfSwKPiAgIAkuZ3JmY2ZnCQk9ICZyazM1NjJfY29tYnBoeV9ncmZjZmdz
LAo+ICAgCS5jb21icGh5X2NmZwk9IHJrMzU2Ml9jb21icGh5X2NmZywKPiArCS5mb3JjZV9yeHRl
cm1fZGV0X3JkeSAgPSB0cnVlLAo+ICAgfTsKPiAgIAo+ICAgc3RhdGljIGludCByazM1NjhfY29t
YnBoeV9jZmcoc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiAqcHJpdikKPiBAQCAtOTYyLDYg
Kzk3OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9jZmcgcmszNTY4
X2NvbWJwaHlfY2ZncyA9IHsKPiAgIAl9LAo+ICAgCS5ncmZjZmcJCT0gJnJrMzU2OF9jb21icGh5
X2dyZmNmZ3MsCj4gICAJLmNvbWJwaHlfY2ZnCT0gcmszNTY4X2NvbWJwaHlfY2ZnLAo+ICsJLmZv
cmNlX3J4dGVybV9kZXRfcmR5ICA9IHRydWUsCj4gICB9Owo+ICAgCj4gICBzdGF0aWMgaW50IHJr
MzU3Nl9jb21icGh5X2NmZyhzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9wcml2ICpwcml2KQo+IEBA
IC0xMjMxLDYgKzEyNDgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlf
Y2ZnIHJrMzU3Nl9jb21icGh5X2NmZ3MgPSB7Cj4gICAJfSwKPiAgIAkuZ3JmY2ZnCQk9ICZyazM1
NzZfY29tYnBoeV9ncmZjZmdzLAo+ICAgCS5jb21icGh5X2NmZwk9IHJrMzU3Nl9jb21icGh5X2Nm
ZywKPiArCS5mb3JjZV9yeHRlcm1fZGV0X3JkeSAgPSB0cnVlLAo+ICAgfTsKPiAgIAo+ICAgc3Rh
dGljIGludCByazM1ODhfY29tYnBoeV9jZmcoc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiAq
cHJpdikKPiBAQCAtMTQxOCw2ICsxNDM2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hp
cF9jb21icGh5X2NmZyByazM1ODhfY29tYnBoeV9jZmdzID0gewo+ICAgCX0sCj4gICAJLmdyZmNm
ZwkJPSAmcmszNTg4X2NvbWJwaHlfZ3JmY2ZncywKPiAgIAkuY29tYnBoeV9jZmcJPSByazM1ODhf
Y29tYnBoeV9jZmcsCj4gKwkuZm9yY2Vfcnh0ZXJtX2RldF9yZHkgID0gdHJ1ZSwKPiAgIH07Cj4g
ICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJvY2tjaGlwX2NvbWJwaHlf
b2ZfbWF0Y2hbXSA9IHsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
