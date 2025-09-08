Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FF7CCAC581
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 17:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VKdZ3xLJvQOGf4vpsaAc3ziNvr2TJGmJE6EDcHRfxA=; b=gaoOl3jHccIGTL
	J8oeXJE+j4nkyKjFJf4o0OPiq38a7RFr1OYj9K6uBaFWYwpEJMnVsfNsiys/o1MC+68Ii063b6IWT
	6DoU7MNucFyscmEv/GTEKF4bjgw+gNe+ADEpxWxMRdrsmPR1gwvumRNdB0b7bucznmGD8neXjN2Ov
	B7gtSKCbXjPqJEPAQPCy+A2Vf7d1VDeb8Xo/O1x4Hv0BQNugk9FS7jSj2JZyyC8ly40n9PyESoaBl
	UPx5VgTr/mZOdI94k1sniPzOrVdxwbVwYMLqpIg5r6DZqfi3gr3w01N70qmgxI6ydg9eV3Ypa0FEt
	GY8ioRxydB8sz86uEdnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfXf-00000001AQa-3yu7;
	Mon, 08 Sep 2025 17:20:35 +0000
Received: from [90.154.21.10] (helo=mx01.omp.ru)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvcys-000000009Rp-1imH;
	Mon, 08 Sep 2025 14:36:32 +0000
Received: from [192.168.2.102] (213.87.154.55) by msexch01.omp.ru
 (10.188.4.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1258.12; Mon, 8 Sep
 2025 17:36:13 +0300
Message-ID: <6cb84280-9290-4cf1-91cf-ccece1a0bb27@omp.ru>
Date: Mon, 8 Sep 2025 17:36:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pinctrl: rockchip: fix NULL ptr deref in
 rockchip_pinctrl_parse_groups()
To: <wens@kernel.org>, Heiko Stuebner <heiko@sntech.de>
CC: Linus Walleij <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>
References: <179c9e8c-8760-41e6-aad7-7a128df60984@omp.ru>
 <6789547.RUnXabflUD@phil>
 <CAGb2v67ihFehEwSc-rX=U-KJdvao_588G8iVEoSXuJ_-gnd50w@mail.gmail.com>
Content-Language: en-US
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
In-Reply-To: <CAGb2v67ihFehEwSc-rX=U-KJdvao_588G8iVEoSXuJ_-gnd50w@mail.gmail.com>
X-Originating-IP: [213.87.154.55]
X-ClientProxiedBy: msexch01.omp.ru (10.188.4.12) To msexch01.omp.ru
 (10.188.4.12)
X-KSE-ServerInfo: msexch01.omp.ru, 9
X-KSE-AntiSpam-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 6.1.1, Database issued on: 09/08/2025 14:22:47
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 19
X-KSE-AntiSpam-Info: Lua profiles 196099 [Sep 08 2025]
X-KSE-AntiSpam-Info: Version: 6.1.1.11
X-KSE-AntiSpam-Info: Envelope from: s.shtylyov@omp.ru
X-KSE-AntiSpam-Info: LuaCore: 66 0.3.66
 fc5dda3b6b70d34b3701db39319eece2aeb510fb
X-KSE-AntiSpam-Info: {rep_avail}
X-KSE-AntiSpam-Info: {Tracking_uf_ne_domains}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: {SMTP from is not routable}
X-KSE-AntiSpam-Info: {Found in DNSBL: 213.87.154.55 in (user)
 b.barracudacentral.org}
X-KSE-AntiSpam-Info: omp.ru:7.1.1;d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;127.0.0.199:7.1.2
X-KSE-AntiSpam-Info: {Tracking_ip_hunter}
X-KSE-AntiSpam-Info: FromAlignment: s
X-KSE-AntiSpam-Info: ApMailHostAddress: 213.87.154.55
X-KSE-AntiSpam-Info: {DNS response errors}
X-KSE-AntiSpam-Info: Rate: 19
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dmarc=temperror header.from=omp.ru;spf=temperror
 smtp.mailfrom=omp.ru;dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 09/08/2025 14:26:00
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean, bases: 9/8/2025 12:29:00 PM
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: InTheLimit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_073630_455204_D5FE26E4 
X-CRM114-Status: GOOD (  10.52  )
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

T24gOS84LzI1IDg6NTMgQU0sIENoZW4tWXUgVHNhaSB3cm90ZToKWy4uLl0KCj4+IEFtIE1pdHR3
b2NoLCAzLiBTZXB0ZW1iZXIgMjAyNSwgMjE6NDg6NTQgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1l
cnplaXQgc2NocmllYiBTZXJnZXkgU2h0eWx5b3Y6Cj4+PiBJbiB0aGUgUm9ja2NoaXAgZHJpdmVy
LCByb2NrY2hpcF9waW5jdHJsX3BhcnNlX2dyb3VwcygpIGFzc3VtZXMgdGhhdCB0aGUKPj4+ICJy
b2NrY2hpcCxwaW5zIiBwcm9wZXJ0eSB3aWxsIGFsd2F5cyBiZSBwcmVzZW50IGluIHRoZSBEVCBu
b2RlIGl0IHBhcnNlcwo+Pj4gYW5kIHNvIGRvZXNuJ3QgY2hlY2sgdGhlIHJlc3VsdCBvZiBvZl9n
ZXRfcHJvcGVydHkoKSBmb3IgTlVMTC4gSWYgdGhlIERUCj4+PiBwYXNzZWQgdG8gdGhlIGtlcm5l
bCBoYXBwZW5zIHRvIGhhdmUgc3VjaCBwcm9wZXJ0eSBtaXNzaW5nLCB0aGVuIHdlIHdpbGwKPj4+
IGdldCBhIGtlcm5lbCBvb3BzIHdoZW4gdGhlIHBvaW50ZXIgaXMgZGVyZWZlcmVuY2VkIGluIHRo
ZSAqZm9yKiBsb29wIGp1c3QKPj4+IGEgZmV3IGxpbmVzIGFmdGVyIHRoZSBjYWxsLiAgSSB0aGlu
ayBpdCdzIGJldHRlciB0byBwbGF5IHNhZmUgYnkgY2hlY2tpbmcKPj4+IHRoZSBsaXN0IHZhcmlh
YmxlIGZvciBOVUxMIChhbmQgcmVwb3J0aW5nIGVycm9yIGlmIHNvKSwgbGlrZSB3ZSBjaGVjayB0
aGUKPj4+IHNpemUgdmFyaWFibGUgZm9yIHZhbGlkaXR5IGZ1cnRoZXIgZG93bi4uLgo+Pj4KPj4+
IEZvdW5kIGJ5IExpbnV4IFZlcmlmaWNhdGlvbiBDZW50ZXIgKGxpbnV4dGVzdGluZy5vcmcpIHdp
dGggdGhlIFN2YWNlIHN0YXRpYwo+Pj4gYW5hbHlzaXMgdG9vbC4KPj4+Cj4+PiBGaXhlczogZDNl
NTExNjExOWJkICgicGluY3RybDogYWRkIHBpbmN0cmwgZHJpdmVyIGZvciBSb2NrY2hpcCBTb0Nz
IikKPj4+IFNpZ25lZC1vZmYtYnk6IFNlcmdleSBTaHR5bHlvdiA8cy5zaHR5bHlvdkBvbXAucnU+
Cj4+Cj4+IEFzc3VtaW5nIHRoYXQgdGhlIERUIGlzIG91ciBmcmllbmQsIHJlYWxseSBpcyBhIGJh
ZCBhc3N1bXB0aW9uIDotKSAuCj4gCj4gSWYgdGhpcyBpcyBpbnZhbGlkLCBwZXJoYXBzIHlvdSBz
aG91bGQgbWFrZSB0aGUgInJvY2tjaGlwLHBpbnMiIHByb3BlcnR5Cj4gcmVxdWlyZWQgaW4gdGhl
IGJpbmRpbmc/CgogICBMb29raW5nIGF0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waW5jdHJsL3JvY2tjaGlwLHBpbmN0cmwudHh0CmluIDUuMTAueSwgaXQgd2FzIG1hcmtlZCBh
cyByZXF1aXJlZC4gVGhlIG1vZGVybiBZQU1MIGJpbmRpbmdzIGRvbid0IHNlZW0gdG8Kc2F5IHRo
YXQsIGF0IGxlYXN0IGV4cGxpY2l0bHkuLi4KClsuLi5dCgpNQlIsIFNlcmdleQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
