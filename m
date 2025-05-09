Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 461DCC3ABC9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 21:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUT2uba6zVs3XwraSkS/uYid2jVOfphYP5g4wtfu1kQ=; b=LTvHjRGjLSFKmV
	8sycbtIO+GopBUowcnakUngLanPmj8ehGlCi2tY9ledXyoDAXRCXggn+dfqCgmv1E+s5R2Ut+C0Nb
	f+oFmKw1JijhItWzJyb2VjudqJClOjLibmH7kwSXm+AXe7wkHBf2xskExwj7jZvFdmOZpPRnk2uXj
	Zdnv23PTlNxLWJ4ZQwTSMXS3AJQmocHfF0f47DAX8Y5O08b0VDtjrNtQ3eruNcbJCBlaY2l9SDdml
	pFY7vkG/+5Rh4YW7sZcRSxUCxarj2SEfTLIyTx7hx26JD91amvHxAV4agDH6R3Rc5NKK5OtGyWFKI
	/EC/YeAjMoPqj+bLtE9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDVc0-000000050Vg-1wDB;
	Fri, 09 May 2025 21:50:32 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDVbw-000000050Uv-3E2D
	for linux-rockchip@lists.infradead.org;
	Fri, 09 May 2025 21:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1746827425;
 bh=Q/4hTUTysjyHMdWQYAFUoh8JWnAIFyUM8sIjXoykTqA=;
 b=TTGsgQ1VI2XKJHsyiJzv5yQj2rMDDBAJMnJl4RwJ534eySxwCaTWa2Swm4PkjWdyQTS49CDpx
 ue3w5jEbdtfL8Sl4b/TiMUjcxZNnrI2+Q8yLopfXLm+dLfJ0+/DVs7cWgATlCtDLlX02fbl8NKB
 vy4ESLUS4zVuh+KJQMjknDb78/cLU1Yi2TBEhsot70j81C7ArrYf/CiSiqxqUdD3trpakaTE8+k
 zQRhZBlVKfqH1VyiCgoBaI2R1BTu8Jzl4MSOtmdLqU/ywvnCILODeHrbEFtKuIqdVsXqw0qgOlk
 9JOUD9PZwG5+4N93mxG/CU/lWE6Jgp6o0FCiV1oLQWBg==
X-Forward-Email-ID: 681e789856028bab66256880
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <36fb3b11-9a1d-4849-9333-5ef26a217106@kwiboo.se>
Date: Fri, 9 May 2025 23:50:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] rockchip: Enable Ethernet controller on Radxa E20C
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250509202402.260038-1-jonas@kwiboo.se>
 <2728051.BddDVKsqQX@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <2728051.BddDVKsqQX@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_145029_476242_C2F7FB64 
X-CRM114-Status: GOOD (  15.87  )
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

SGkgSGVpa28sCgpPbiAyMDI1LTA1LTA5IDIzOjQwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBB
bSBGcmVpdGFnLCA5LiBNYWkgMjAyNSwgMjI6MjM6NTYgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1l
cnplaXQgc2NocmllYiBKb25hcyBLYXJsbWFuOgo+PiBUaGUgUm9ja2NoaXAgUkszNTI4IGhhcyB0
d28gRXRoZXJuZXQgY29udHJvbGxlcnMsIG9uZSAxMDAvMTAgTUFDIHRvIGJlCj4+IHVzZWQgd2l0
aCB0aGUgaW50ZWdyYXRlZCBQSFkgYW5kIGEgc2Vjb25kIDEwMDAvMTAwLzEwIE1BQyB0byBiZSB1
c2VkCj4+IHdpdGggYW4gZXh0ZXJuYWwgRXRoZXJuZXQgUEhZLgo+Pgo+PiBUaGlzIHNlcmllcyBh
ZGQgZGV2aWNlIHRyZWUgbm9kZXMgZm9yIHRoZSBFdGhlcm5ldCBjb250cm9sbGVycyBmb3VuZCBp
bgo+PiBSSzM1MjggYW5kIGVuYWJsZSB0aGUgTEFOIGludGVyZmFjZSBvbiBSYWR4YSBFMjBDLgo+
Pgo+PiBUaGlzIGluY2x1ZGUgYSBnbWFjMCBub2RlIGZvciB0aGUgMTAwLzEwIE1BQyBhbmQgaXRz
IHJlbGF0ZWQgaW50ZWdyYXRlZAo+PiBQSFkgbm9kZSB0aGF0IG9ubHkgaGF2ZSByZWNpdmVkIGxp
bWl0ZWQgdGVzdGluZy4gSSBoYXZlIG5vIGJvYXJkIHRoYXQKPj4gZXhwb3NlIGFuIEV0aGVybmV0
IHBvcnQgZm9yIHRoZSBnbWFjMCBhbmQgdGhlIGludGVncmF0ZWQgUEhZLiBIb3dldmVyLAo+PiB0
aGUgUEhZIGNhbiBiZSBpZGVudGlmaWVkIG9uIGFkZHIgMHgyIGFzIDAwNDQuMTQwMCBhbmQgaW4g
dmVuZG9yIGtlcm5lbAo+PiB0aGlzIHJlbGF0ZSB0byB0aGUgUm9ja2NoaXAgUks2MzAgUEhZLiBB
IHByb3BlciBQSFkgZHJpdmVyIHdpbGwgYmUKPj4gbmVlZGVkIHRvIHN1cHBvcnQgYW55IHJlYWwg
dXNlIG9mIGdtYWMwLgo+Pgo+PiBDaGFuZ2VzIGluIHYzOgo+PiAtIFJlYmFzZSBvbiB0b3Agb2Yg
bGF0ZXN0IG1taW5kL2Zvci1uZXh0Cj4+Cj4+IENoYW5nZXMgaW4gdjI6Cj4+IC0gU3BsaXQgZnJv
bSB0aGUgIkFkZCBHTUFDIHN1cHBvcnQgZm9yIFJLMzUyOCIgZHJpdmVyIHNlcmllcyBbMV0KPiAK
PiBzcGxpdCBmcm9tIC4uLiB3YXMgdGhhdCBzZXJpZXMgbWVyZ2VkIGFscmVhZHk/CgpZZXMsIHNv
cnJ5IGZvciBub3QgYmVpbmcgbW9yZSBjbGVhciwgdGhlIGR0LWJpbmRpbmdzIGFuZCBkcml2ZXIg
aGFzIGJlZW4KbWVyZ2VkIGFuZCBpcyBhbHJlYWR5IGluY2x1ZGVkIGluIHY2LjE1LXJjMS4KCmh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMTc0MjkxNTQ0MDc2LjYwOTY0OC44NTk0NzgyOTQzNDcy
MTkwNjk0LmdpdC1wYXRjaHdvcmstbm90aWZ5QGtlcm5lbC5vcmcKClJlZ2FyZHMsCkpvbmFzCgo+
IAo+IFRoZSBsaW5rZWQgbG9yZS10aHJlYWQgb25seSB0YWxrcyBhYm91dCB0aGUgc2VyaWVzIG5l
ZWRpbmcgdG8gYmUgcmVwb3N0ZWQuCj4gCj4gCj4gSGVpa28KPiAKPj4gLSBBZGQgZXRoZXJuZXQt
cGh5QDIgZm9yIHRoZSBpbnRlZ3JhdGVkIFBIWQo+PiAtIFJlYmFzZSBvbiB0b3Agb2YgdGhlICJT
dXBwb3J0IEkyQyBjb250cm9sbGVycyBpbiBSSzM1MjgiIHNlcmllcyBbMl0KPj4KPj4gWzFdIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTAzMDkyMzI2MjIuMTQ5ODA4NC0xLWpvbmFzQGt3
aWJvby5zZQo+PiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDMwOTA3MDYwMy4z
NTI1NC0xLXppeWFvQGRpc3Jvb3Qub3JnCj4+Cj4+IEpvbmFzIEthcmxtYW4gKDIpOgo+PiAgIGFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgR01BQyBub2RlcyBmb3IgUkszNTI4Cj4+ICAgYXJtNjQ6
IGR0czogcm9ja2NoaXA6IEVuYWJsZSBFdGhlcm5ldCBjb250cm9sbGVyIG9uIFJhZHhhIEUyMEMK
Pj4KPj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTIwYy5kdHMgICB8ICAz
MCArKysrKwo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRzaSAgICAg
IHwgMTA1ICsrKysrKysrKysrKysrKysrKwo+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMzUgaW5zZXJ0
aW9ucygrKQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
