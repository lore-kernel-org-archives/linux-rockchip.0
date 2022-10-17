Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C171EC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxvCMp9zWSc5rqdm3ro5DTkbDplDbAhqgpgcTRUJzlY=; b=SbsjHSCKahuQ3f
	Qk3zG4gV2NQpAszKVCGaQMDo1DltnROUTYAT9iw0AbZ+ejZ1FkAXlG9s2+njsqGKuRMBRIYEpItxb
	XCiAAHH9e+6/NpmxJ18fDYtrIP4lSzld4TrYKDUldrjNGWKJH0OE2clF3QFStDf4M7vuu9TLPFSIe
	txu5fZWGCVBr365kQIMD5ghZp9XdbX4jdcxSBMQ8TlfVn52Hjqy+iLd0rBTI2hKDjJztRVtSnVr6R
	j1/VqddYbV11QLELs559ikDjWtXh0Uf46U96yh0DviYg0Q4Olgl9hXzknS+3rJZeC2NItzezQbgxj
	pHlQtZStwMP4icQHtCgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPLG-00BZj6-1a; Mon, 17 Oct 2022 12:35:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKU-00BZJz-1D; Mon, 17 Oct 2022 12:34:51 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKN-00087p-Rh; Mon, 17 Oct 2022 14:34:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Quentin Schulz <foss+kernel@0leil.net>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] add support for Theobroma Systems PX30-µQ7 (Ringneck) with Haikou devkit
Date: Mon, 17 Oct 2022 14:34:37 +0200
Message-Id: <166601006780.173248.13442138641347947363.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930-upstream-ringneck-v2-0-6671694b6934@theobroma-systems.com>
References: <20220930-upstream-ringneck-v2-0-6671694b6934@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053450_086034_DD1488AD 
X-CRM114-Status: GOOD (  11.83  )
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

T24gTW9uLCAxNyBPY3QgMjAyMiAxMjowMToxNCArMDIwMCwgUXVlbnRpbiBTY2h1bHogd3JvdGU6
Cj4gVGhlIFBYMzAtdVE3IChSaW5nbmVjaykgU29NIGlzIGEgwrVRc2V2ZW4tY29tcGF0aWJsZSAo
NDBtbXg3MG1tLCBNWE0tMjMwCj4gY29ubmVjdG9yKSBzeXN0ZW0tb24tbW9kdWxlIGZyb20gVGhl
b2Jyb21hIFN5c3RlbXNbMV0sIGZlYXR1cmluZyB0aGUKPiBSb2NrY2hpcCBQWDMwLgo+IAo+IEl0
IHByb3ZpZGVzIHRoZSBmb2xsb3dpbmcgZmVhdHVyZSBzZXQ6Cj4gKiB1cCB0byA0R0IgRERSNAo+
ICogdXAgdG8gMTI4R0Igb24tbW9kdWxlIGVNTUMgKHdpdGggOC1iaXQgMS44ViBpbnRlcmZhY2Up
Cj4gKiBTRCBjYXJkIChvbiBhIGJhc2Vib2FyZCkgdmlhIGVkZ2UgY29ubmVjdG9yCj4gKiBGYXN0
IEV0aGVybmV0IHdpdGggb24tbW9kdWxlIFRJIERQODM4MjVJIFBIWQo+ICogTUlQSS1EU0kvTFZE
Uwo+ICogTUlQSS1DU0kKPiAqIFVTQgo+IC0gMXggVVNCIDIuMCBkdWFsLXJvbGUKPiAtIDN4IFVT
QiAyLjAgaG9zdAo+ICogb24tbW9kdWxlIFNUTTMyIENvcnRleC1NMCBjb21wYW5pb24gY29udHJv
bGxlciwgaW1wbGVtZW50aW5nOgo+IC0gbG93LXBvd2VyIFJUQyBmdW5jdGlvbmFsaXR5IChJU0wx
MjA4IGVtdWxhdGlvbikKPiAtIGZhbiBjb250cm9sbGVyIChBTUM2ODIxIGVtdWxhdGlvbikKPiAt
IFVTQjwtPkNBTiBicmlkZ2UgY29udHJvbGxlcgo+ICogb24tbW9kdWxlIEVzcHJlc3NpZiBFU1Az
MiBmb3IgQmx1ZXRvb3RoICsgMi40R0h6IFdpRmkKPiAqIG9uLW1vZHVsZSBOWFAgU0UwNXggU2Vj
dXJlIEVsZW1lbnQKPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMl0gYXJtNjQ6IGR0
czogcm9ja2NoaXA6IGFkZCBQWDMwLcK1UTcgKFJpbmduZWNrKSBTb00gd2l0aCBIYWlrb3UgYmFz
ZWJvYXJkCiAgICAgIGNvbW1pdDogYzQ4NGNmOTNmNjFiNGI5ODJmODhlOWU4NmRjY2I3MDQ3ZTFm
MmIzZApbMi8yXSBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogYWRkIFRoZW9icm9tYSBTeXN0
ZW1zIFBYMzAtwrVRNyAoUmluZ25lY2spIHdpdGggSGFpa291CiAgICAgIGNvbW1pdDogZjNmZjFk
MTJiYjJmNmViZGJkMTJmMGNhZmMwMmZlMTcwYmFkNmU3ZgoKQmVzdCByZWdhcmRzLAotLSAKSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
