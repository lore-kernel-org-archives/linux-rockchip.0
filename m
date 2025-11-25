Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C27D1D1036B
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 23:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx0KWJhPO6cWfwJfBq1j4mUYrm2fg/tfcp2toPpcdjM=; b=Wbln1zftoaA+cc
	k82jcfHzFlCw6PYnvbRQILksO4OakOin/tyFh7toIoMwkqrVDwzJT9Ge9eq1+Xh8F2KUxTCy4L61i
	7f2m2XrguJgAA803C/bzGIzNz9HA5OWPpuE6b4iO1w1IzRmNNIcFkx77nGb4/F9v+WYACR5CDETr/
	SPC5G7qOXiV1NpVLdsv2oRBI9r588yGNCqJNCMsktWKmk1nDnqVOPLZbTP3mcyaGb2woiZh3gYlRm
	tfymvzJXBY2gwGZKTMH8SoDO2TXEImeEUkujER6UB1GGfihPiCaQrK5+oxvdufS+s1tGEP6sDT2mw
	oCT4fk9c0xBFvqul0TqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO2ZO-0000000E4Gw-2axK;
	Tue, 25 Nov 2025 23:35:38 +0000
Received: from mail-m25495.xmail.ntesmail.com ([103.129.254.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO2ZL-0000000E4G8-3LjV
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 23:35:37 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ae2864cd;
	Wed, 26 Nov 2025 07:35:32 +0800 (GMT+08:00)
Message-ID: <ac6e55f4-faa6-4c41-a141-976fe0b15507@rock-chips.com>
Date: Wed, 26 Nov 2025 07:35:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 2/2] mmc: sdhci-of-dwcmshc: reduce CIT for better
 performance
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1762933460-204066-1-git-send-email-shawn.lin@rock-chips.com>
 <1762933460-204066-2-git-send-email-shawn.lin@rock-chips.com>
 <7b05327d-fc76-471e-9148-3dfc0cd17623@rock-chips.com>
 <CAPDyKFrx_5cnyFeLRhoia2aHK9Cxo+fp_kKhyQ526xE02_+vSA@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKFrx_5cnyFeLRhoia2aHK9Cxo+fp_kKhyQ526xE02_+vSA@mail.gmail.com>
X-HM-Tid: 0a9abd5f52fe09cckunmf13488f44d8cf7
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUJOQlZLHRgZSh8YHxkfH0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=MunjuvEo0wMP3WyIy2lDC+tzeWxHZrTG2ZQO3a6ttnyC2xRrZS1oNf9M++wXlUbPnaOfl/hdV/z2sM7//4vwZnGearFIdY9kZk4RqgKZnjndJtZBDWNXU5/5vCWC5SBUTfZ5WNFWkxBG+IFH5C03xP9YB6xEhbCsyVfeKipt4Zo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1fMDqlNLtATTA3YPhw1Ncna3hJAtBCXlyyomumBazcY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_153536_068005_52886AE3 
X-CRM114-Status: GOOD (  14.73  )
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

CgrlnKggMjAyNS8xMS8yNiDmmJ/mnJ/kuIkgMDowMiwgVWxmIEhhbnNzb24g5YaZ6YGTOgo+IE9u
IFR1ZSwgMjUgTm92IDIwMjUgYXQgMTQ6NTgsIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hp
cHMuY29tPiB3cm90ZToKPj4KPj4g5ZyoIDIwMjUvMTEvMTIg5pif5pyf5LiJIDE1OjQ0LCBTaGF3
biBMaW4g5YaZ6YGTOgo+Pj4gQ1FIQ0lfU1NDMS5DSVQgaW5kaWNhdGVzIHRvIHRoZSBDUUUgdGhl
IHBvbGxpbmcgcGVyaW9kIHRvIHVzZSBmb3IKPj4+IHBlcmlvZGljIFNFTkRfUVVFVUVfU1RBVFVT
IChDTUQxMykgcG9sbGluZy4gU29tZSBlTU1DcyBoYXZlIG9ubHkgb25lCj4+PiBoYXJkd2FyZSBx
dWV1ZSwgYW5kIENNRDEzIGNhbiBvbmx5IHF1ZXJ5IG9uZSBzbG90IGF0IGEgdGltZSBmb3IgZGF0
YQo+Pj4gdHJhbnNtaXNzaW9uLCB3aGljaCBjYW5ub3QgYmUgcHJvY2Vzc2VkIGluIHBhcmFsbGVs
LiBNb2RpZnlpbmcgdGhlCj4+PiBDTUQxMyBxdWVyeSBpbnRlcnZhbCBjYW4gaW5jcmVhc2UgdGhl
IHF1ZXJ5IGZyZXF1ZW5jeSBhbmQgaW1wcm92ZQo+Pj4gcmFuZG9tIHdyaXRlIHBlcmZvcm1hbmNl
Lgo+Pj4KPj4KPj4gUGluZy4uLgo+Pgo+PiBBZHJhaW4gYWNrZWQgdGhlc2UgdHdvIHBhdGNoZXMs
IHNvIHdpbGwgdGhlbSBiZSBjYW5kaWRhdGVzIGZvciA2LjE5Cj4+IGdpdmVuIHRoZSBtZXJnZSB3
aW5kb3dzIGlzIGNvbWluZyBzb29uPwo+IAo+IExvb2tzIGxpa2UgSSBzaW1wbHkgZmFpbGVkIHRv
IHNlZSB0aGVtLiBQb3NzaWJseSBiZWNhdXNlIHRoZXJlIHdhcwo+IGNvdmVyLWxldHRlciwgd2hp
Y2ggbWFrZXMgaXQgaGFyZGVyIGZvciBtZSB0byBmb2xsb3cgYWxsIHRoZSBkaWZmZXJlbnQKPiBz
ZXJpZXMuCj4gCj4gQW55d2F5LCBJIHRyaWVkIHRvIGFwcGx5IHRoZW0sIGJ1dCB0aGVyZSBhcmUg
Y29uZmxpY3RzIHRoYXQgSSBhbSBub3QKPiBzdXJlIEkgY2FuIHJlc29sdmUgZWFzaWx5IGJ5IG15
c2VsZi4gV291bGQgeW91IG1pbmQgZG9pbmcgYSByZS1iYXNlCj4gYW5kIHBvc3QgYSBuZXcgdmVy
c2lvbiwgdGhlbiBJIGNhbiBhcHBseSB0aGVtIGFzYXAuCj4gCgpUaGFua3MgVWxmLiBJIGp1c3Qg
ZGlkIGEgcmViYXNlIG9uIHRvcCBvZiBsaW51eC1uZXh0IGFuZCBwb3N0ZWQgYSBuZXcKdmVyc2lv
blsxXS4KClsxXSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzE3NjQxMTMyMDAtMjM3Mjc5
LTEtZ2l0LXNlbmQtZW1haWwtc2hhd24ubGluQHJvY2stY2hpcHMuY29tLwoKCj4gS2luZCByZWdh
cmRzCj4gVWZmZQo+IAo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5A
cm9jay1jaGlwcy5jb20+Cj4+PiAtLS0KPj4+Cj4+PiAgICBkcml2ZXJzL21tYy9ob3N0L2NxaGNp
LmggICAgICAgICAgICB8IDEgKwo+Pj4gICAgZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Nt
c2hjLmMgfCA1ICsrKysrCj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L2NxaGNpLmggYi9kcml2ZXJzL21t
Yy9ob3N0L2NxaGNpLmgKPj4+IGluZGV4IGNlMTg5YTEuLjM2Njg4NTYgMTAwNjQ0Cj4+PiAtLS0g
YS9kcml2ZXJzL21tYy9ob3N0L2NxaGNpLmgKPj4+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvY3Fo
Y2kuaAo+Pj4gQEAgLTkzLDYgKzkzLDcgQEAKPj4+ICAgIC8qIHNlbmQgc3RhdHVzIGNvbmZpZyAx
ICovCj4+PiAgICAjZGVmaW5lIENRSENJX1NTQzEgICAgICAgICAgICAgICAgICAweDQwCj4+PiAg
ICAjZGVmaW5lIENRSENJX1NTQzFfQ0JDX01BU0sgICAgICAgICBHRU5NQVNLKDE5LCAxNikKPj4+
ICsjZGVmaW5lIENRSENJX1NTQzFfQ0lUX01BU0sgICAgICAgICAgR0VOTUFTSygxNSwgMCkKPj4+
Cj4+PiAgICAvKiBzZW5kIHN0YXR1cyBjb25maWcgMiAqLwo+Pj4gICAgI2RlZmluZSBDUUhDSV9T
U0MyICAgICAgICAgICAgICAgICAgMHg0NAo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hv
c3Qvc2RoY2ktb2YtZHdjbXNoYy5jIGIvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hj
LmMKPj4+IGluZGV4IGUyNzZhNGUuLmNhZDUxNjUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21t
Yy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+Pj4gKysrIGIvZHJpdmVycy9tbWMvaG9zdC9zZGhj
aS1vZi1kd2Ntc2hjLmMKPj4+IEBAIC02MzEsNiArNjMxLDExIEBAIHN0YXRpYyB2b2lkIHJrMzV4
eF9zZGhjaV9jcWVfcHJlX2VuYWJsZShzdHJ1Y3QgbW1jX2hvc3QgKm1tYykKPj4+ICAgICAgICBz
dHJ1Y3QgZHdjbXNoY19wcml2ICpkd2NfcHJpdiA9IHNkaGNpX3BsdGZtX3ByaXYocGx0Zm1faG9z
dCk7Cj4+PiAgICAgICAgdTMyIHJlZzsKPj4+Cj4+PiArICAgICAvKiBTZXQgU2VuZCBTdGF0dXMg
Q29tbWFuZCBJZGxlIFRpbWVyIHRvIDEwLjY2dXMgKDI1NiAqIDEgLyAyNCkgKi8KPj4+ICsgICAg
IHJlZyA9IHNkaGNpX3JlYWRsKGhvc3QsIGR3Y19wcml2LT52ZW5kb3Jfc3BlY2lmaWNfYXJlYTIg
KyBDUUhDSV9TU0MxKTsKPj4+ICsgICAgIHJlZyA9IChyZWcgJiB+Q1FIQ0lfU1NDMV9DSVRfTUFT
SykgfCAweDAxMDA7Cj4+PiArICAgICBzZGhjaV93cml0ZWwoaG9zdCwgcmVnLCBkd2NfcHJpdi0+
dmVuZG9yX3NwZWNpZmljX2FyZWEyICsgQ1FIQ0lfU1NDMSk7Cj4+PiArCj4+PiAgICAgICAgcmVn
ID0gc2RoY2lfcmVhZGwoaG9zdCwgZHdjX3ByaXYtPnZlbmRvcl9zcGVjaWZpY19hcmVhMiArIENR
SENJX0NGRyk7Cj4+PiAgICAgICAgcmVnIHw9IENRSENJX0VOQUJMRTsKPj4+ICAgICAgICBzZGhj
aV93cml0ZWwoaG9zdCwgcmVnLCBkd2NfcHJpdi0+dmVuZG9yX3NwZWNpZmljX2FyZWEyICsgQ1FI
Q0lfQ0ZHKTsKPj4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
