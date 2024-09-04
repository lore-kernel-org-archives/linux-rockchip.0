Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5FB3CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 14:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Ra8uMmrnjdJLKnA+MZ2YXZSzV1d8YwmkA7ejORzTJU=; b=hvFyByIhdQ6zqR
	iZwO3poawklITFyvC9Urjw0whnEh3QZ/84Vu1DrM+w27smnq/Jsj7qIIcgMBJY/uHTVOVIoUxyoP6
	PljKF+uwN0MbtZqbaEnXpO1enVNjb3RxG9yWlPue2Clrr6GshSZLcGX9OeEBijmtHmBo3vhCEFPp1
	YeaOm+OS82UGL6t3noN30e4ixXddsY3lv+cPgp+5CfIyaDxxPY+e1Yq02fQ1H1E3xbY4NsRLoHKb3
	+bnjmykVFdZJuUp0x38wWVoQtDswDObvh2+u+RpyRTS5OjazsWeklOZDyIqfbT+ZR3jlYrkAX5Cnb
	Bt4tTG2HHeFqY6vsIWBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqvC-00000004loY-3dHN;
	Wed, 04 Sep 2024 14:23:46 +0000
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqtK-00000004lPZ-3Zgn
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 14:21:52 +0000
Received: from eig-obgw-6006a.ext.cloudfilter.net ([10.0.30.182])
	by cmsmtp with ESMTPS
	id lqt7sekwdumtXlqtJsSH1q; Wed, 04 Sep 2024 14:21:49 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lqtDsDtyahkuglqtFs9m98; Wed, 04 Sep 2024 14:21:46 +0000
X-Authority-Analysis: v=2.4 cv=GKMOEPNK c=1 sm=1 tr=0 ts=66d86cfa
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=VwQbUJbxAAAA:8 a=5z-885-_BntmAJspvxsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Vc5HhuzT3Av9fGfJ5nOnIXbI/0nWjEfr5GgHCVIutXM=; b=K+lEcxMGxC2la7g5JCvwz9aAEI
	oapjg5BiLwwfPyGKs4lnKYoL5hTVfVhEvaI9kaQiUJIDGcLnUlzpGlU0VfVQ26ndkdBEzayjf32hh
	VmnOPuHK/efoBgIB/tnyCTY5hNTsrHLavYEYkJz+KIJpcmlcNGJLrALMSBIbCgoclQ10rtmQKoz6T
	u6086Q/lQMV25D+BATv7E/F707FtNwBFhzfDJWN+ztfT9t/gTr+eRIEnrWHCvvmnwebIrCPHkJKvB
	W/MvVD/TEPhUWC+83ANQ1n7l2gkQ8AyC5EVNQexAKgbWfBcmAL0buVk0Js83VgYUhc+/edD4/LRHx
	Gqy+7aCQ==;
Received: from [122.165.245.213] (port=53678 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slqtB-003lg7-2A;
	Wed, 04 Sep 2024 19:51:41 +0530
Message-ID: <c387b2df-4a49-434f-b660-765599f9ec0d@linumiz.com>
Date: Wed, 4 Sep 2024 19:51:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/8] ARM: dts: rockchip: Add watchdog node for RV1126
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <20240903105245.715899-5-karthikeyan@linumiz.com> <6440792.jCCqRG4XHG@diego>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <6440792.jCCqRG4XHG@diego>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slqtB-003lg7-2A
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:53678
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 13
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfMIWGr7OHUF2BW02piRGIV9SmIBzuBFV9wD66hn9n0hTYI0yJAFegKkhNFUDf2iL6SZ+S1Oq6gJV5T8kn33stuvEflCBHUYroShmx2fEyKhWUDD9Dq9Z
 rlTzPl1mkoJ+nVdpYaVc0GpwAu30pC6Iw7fgcywNXzd3GzpC2ETaXzBnlDfjeXw5JnRIkdUfjtT8IG/NtKOz7WwBs0mlDqeK69xurJD+RO3J1sBR7KrS3oiR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_072150_933789_CD9023DC 
X-CRM114-Status: GOOD (  10.71  )
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

CgpPbiA5LzQvMjQgMTQ6NDEsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERpZW5zdGFnLCAz
LiBTZXB0ZW1iZXIgMjAyNCwgMTI6NTI6NDEgQ0VTVCBzY2hyaWViIEthcnRoaWtleWFuIEtyaXNo
bmFzYW15Ogo+PiBBZGQgd2F0Y2hkb2cgbm9kZSBmb3IgUm9ja2NoaXAgUlYxMTI2Cj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEthcnRoaWtleWFuIEtyaXNobmFzYW15IDxrYXJ0aGlrZXlhbkBsaW51bWl6
LmNvbT4KPiAKPiB0aGlzIG5lZWRzIGEgc2VwYXJhdGUgcGF0Y2ggZm9yIGFkZGluZyBhIHdhdGNo
ZG9nIGNvbXBhdGlibGUgdG8KPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc25wcyxkdy13ZHQueWFtbCNuMzMKPiAKPiBzZWUgZm9yIGV4
YW1wbGUKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90
b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9pZD1kY2Q2MTVlZTZmZDM2NTFhYjAzNTczNjRjNGNm
NjViMTE0OGE0MGJlCj4gCj4gVGhhbmtzCj4gSGVpa28KPiAKQWRkaXRpb25hbCBwYXRjaCBmb3Ig
Y29tcGF0aWJsZSBzdHJpbmcsIEdvdCBpdC4gSSB3aWxsIGFkZGVkIGluIHRoZSBuZXh0IAp2ZXJz
aW9uLiBUaGFua3MuCj4+IC0tLQo+Pgo+PiBOb3RlczoKPj4gICAgICB2MjoKPj4gICAgICAtIE5v
IGNoYW5nZQo+Pgo+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5kdHNpIHwg
OCArKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPj4KPj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5kdHNpIGIvYXJjaC9h
cm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LmR0c2kKPj4gaW5kZXggYWJmNDQyODA0ZDI3Li4y
ODM5ODU2MDg0MjggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2
MTEyNi5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5kdHNp
Cj4+IEBAIC01NDQsNiArNTQ0LDE0IEBAIHRpbWVyMDogdGltZXJAZmY2NjAwMDAgewo+PiAgIAkJ
Y2xvY2stbmFtZXMgPSAicGNsayIsICJ0aW1lciI7Cj4+ICAgCX07Cj4+ICAgCj4+ICsJd2R0OiB3
YXRjaGRvZ0BmZjY4MDAwMCB7Cj4+ICsJCWNvbXBhdGlibGUgPSAic25wcyxkdy13ZHQiOwo+PiAr
CQlyZWcgPSA8MHhmZjY4MDAwMCAweDEwMD47Cj4+ICsJCWNsb2NrcyA9IDwmY3J1IFBDTEtfV0RU
PjsKPj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDMyIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+
PiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArCX07Cj4+ICsKPj4gICAJaTJzMDogaTJzQGZm
ODAwMDAwIHsKPj4gICAJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscnYxMTI2LWkycy10ZG0iOwo+
PiAgIAkJcmVnID0gPDB4ZmY4MDAwMDAgMHgxMDAwPjsKPj4KPiAKPiAKPiAKPiAKCkJlc3QgUmVn
YXJkcywKS2FydGhpa2V5YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
