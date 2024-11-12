Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED8F2D597B3
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 22:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyRmEAV3x7Ode94zcdRv7c9WiKS121rihkVHmkSUaLQ=; b=2nQ4xB63whr14b
	Im3ycIwDtRoJ+nVZIHYTfTo1n2CulfxCKN7Lf8wj5zGpjsmg/wQQmiKp3dsGG2YRf3PmXfGo/5wbc
	xIWGQws6bDb/ZN/tG1lWwYrFLUD41SmVk807OnSM6vY6wmIV7fjvcvL/NcsgIdNCe+bHP7ZmzxJEr
	lEXtRD0RH5TVbY4ByPEd/CwFKyAeGlWug033FxSpaQLoFVdnlR4syw/VlMlO1U8okiDCwsN0ADDER
	N24D7YVkPnO8OERlucS5pLs7KqcrugOOLiegYLFsCEK+cDbbAgcuJvuh0AyyUM4uADKeIu/ayhg+m
	UJKRMOUFSyJgRfmkwF9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAzXe-00000005ASM-49jv;
	Tue, 12 Nov 2024 22:39:23 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAzVs-00000005AG2-00yk
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 22:37:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1731451040;
 bh=qr1E10NHWK23nMA2ivVLEsm+o2F/x5CKrKT5ga72x0I=;
 b=SjLdnDGx51puzyqQxY55STmDjYKEtmejc/azXDWAyXbU+obv6ECmBz3GG1aWwqhzHZ/XsotDe
 FEKSVvTgnKtC71okD+EhRpGbJuxjjHtBqz/LC3biXoffPrjVIRKvcyOLFaWH0Vi/WuaEZVEzvus
 CyE6gGtiaBju27kydY/BN1SjCCSNdHF4xJLmzeNYCocH7qIuAX/IBb6/WM6Oszmk1yDqxq1p/zX
 t+wmN2FTJcTIFzxBA0FM8nsPdD9stPibg8XIEwtxes3WsTi5BNlJDgIJ1WRqsuZYq9qxKPSxQz3
 9+56pr+4aX2dhpH1OLWTQ5Ca0jptMo94qKBnc9B4IJwg==
Message-ID: <e9ff5387-b3c1-41a7-b251-a12789d25a70@kwiboo.se>
Date: Tue, 12 Nov 2024 23:37:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add supported UHS-I rates to
 sdmmc0 on rock-3b
To: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-2-tszucs@linux.com>
 <c89c2f16-ffb0-4b61-a962-9705f9f1e0e2@kwiboo.se>
 <CA+GksrJzkxffSQbuseGFL0=2PDxV+TRevX0-NOkc6FNYLmNgYA@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CA+GksrJzkxffSQbuseGFL0=2PDxV+TRevX0-NOkc6FNYLmNgYA@mail.gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6733d89e9402f7538d197676
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_143732_108335_83E49EC8 
X-CRM114-Status: GOOD (  28.76  )
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

SGkgVGFtw6FzLAoKT24gMjAyNC0xMS0xMiAxNTozNiwgVGFtw6FzIFN6xbFjcyB3cm90ZToKPiBI
aSBKb25hcywKPiAKPiBUaGFuayB5b3UgZm9yIHBvaW50aW5nIHRoaXMgb3V0ISBJIGhhdmVuJ3Qg
bm90aWNlZCB0aGlzIGJlZm9yZS4gSSd2ZQo+IGRvbmUgc29tZSB0ZXN0aW5nIGFuZCBJIGJlbGll
dmUgSSBhbSBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUgeW91Cj4gZGVzY3JpYmVkLCBhbHRo
b3VnaCBJIGNhbm5vdCBjb25maXJtIHRoZSByZWFzb24uCj4gVGhlIG9ubHkgb2NjYXNpb24gSSBl
bmNvdW50ZXIgYW55IHByb2JsZW1zIGlzIHdoZW4gYSBVSFMgU0QgY2FyZCBvcgo+IFNESU8gZGV2
aWNlIGlzIGNvbm5lY3RlZCB0byBzZG1tYzAgZHVyaW5nIGJvb3R1cC4gU29tZXRpbWVzIHRoZSBk
ZXZpY2UKPiBpcyByZWNvZ25pemVkIGFzIEhTIG9ubHkuIE9idmlvdXNseSBubyB0dW5pbmcgdmFs
dWUgcmVwb3J0ZWQuIEFsc28sCj4gc2RtbWMyIGN1dHMgb3V0IGNvbXBsZXRlbHkuIEknbSBib290
aW5nIGZyb20gZU1NQyBhbmQgd2hlbiB0aGUgU0QgY2FyZAo+IGlzIHJlbW92ZWQgaW4gdGhpcyBz
dGF0ZSBJIGxvc2UgbXkgcm9vdGZzLiBDZXJ0YWlubHksIHRoaXMgbmVlZHMgbW9yZQo+IGF0dGVu
dGlvbiBidXQgaXQgc2VlbXMgdG8gYmUgdW5yZWxhdGVkIHRvIHRoZSBjaGFuZ2VzIGhlcmUuCj4g
Cj4gSSBuZWVkIG1vcmUgdGltZSB0byBjaGVjayBidXQgYXJlIHlvdSBzdXJlIHRoaXMgU0QgY2Fy
ZCBkdXJpbmcgYm9vdHVwCj4gaXNzdWUgaXMgZ29uZSB3aXRoIFVIUy1JIGRpc2FibGVkPwoKWWVz
LCB0aGUgaXNzdWUgaXMgdGhhdCB0aGUgaW8gdm9sdGFnZSBkb21haW4gbXVzdCBiZSBjb25maWd1
cmVkIHRvIG1hdGNoCnRoZSBpbyBzaWduYWwgdm9sdGFnZSB1c2VkLCBhbmQgdG8gdXNlIHVocyB0
aGUgdm9sdGFnZSBjaGFuZ2VzIGZyb20gM3YzCnRvIDF2OC4gQ2F1c2luZyBhIG1pc3MtbWF0Y2gg
YmV0d2VlbiBpbyB2b2x0YWdlIGRvbWFpbiBjb25maWcgYW5kIHRoZQpyZWd1bGF0b3Igdm9sdGFn
ZSB1c2VkIGR1cmluZyBpbml0aWFsIHByb2JlLCB1bmxlc3MgaW8tZG9tYWluIGRyaXZlcgpoYXBw
ZW5zIHRvIGJlIGZ1bGx5IGxvYWRlZCBiZWZvcmUgbW1jIGRldmljZXMgYXJlIHByb2JlZC4KCj4g
Cj4gQWxzbywgaW4gZXZlcnkgb3RoZXIgY2FzZSwgd2hlbiB5b3UgY29ubmVjdCBhbnkgZGV2aWNl
IHRvIHNkbW1jMCBhZnRlcgo+IGJvb3R1cCwgcGVyZm9ybWFuY2UgYW5kIHN0YWJpbGl0eSBpcyBw
ZXJmZWN0Lgo+IEludGVyZXN0aW5nbHkgSSBhbHNvIGRvbid0IGV4cGVyaWVuY2UgdGhpcyBiZWhh
dmlvciB3aXRoIGFuIGVNTUMKPiBkZXZpY2UgYW5kIC8gb3IgYW4gU0RJTyBkZXZpY2UgY29ubmVj
dGVkIHRvIHNkbW1jMiBkdXJpbmcgYm9vdHVwLiBPbmx5Cj4gc2RtbWMwIGlzIHByb2JsZW1hdGlj
IGFuZCBvbmx5IGR1cmluZyBib290dXAuCgpZZXMsIGFzIHlvdSBoYXZlIGRpc2NvdmVyZWQsIGlu
c2VydGluZyB0aGUgc2QtY2FyZCBhZnRlciBzeXN0ZW0gaGFzCmJvb3RlZCBhbmQgaW8tZG9tYWlu
IGRyaXZlciBoYXMgYmVlbiBsb2FkZWQsIGV2ZXJ5dGhpbmcgY2FuIHdvcmsgYXMKZXhwZWN0ZWQg
d2l0aCB1aHMgc3BlZWRzLgoKVW50aWwgdGhpcyBwcm9iZSByYWNlIGNvbmRpdGlvbiBoYXMgYmVl
biBzb2x2ZWQgYm9vdGluZyB3aXRoIGEgc2QtY2FyZAppbnNlcnRlZCBtYXkgb3IgbWF5IG5vdCBy
ZXN1bHQgaW4gd3JvbmcgdHVuaW5nIG9yIG90aGVyIHJlbGF0ZWQgaXNzdWVzLgoKQmVjYXVzZSBv
ZiB0aGlzIEkgYWR2aWNlIG5vdCB0byBlbmFibGUgdWhzIG1vZGUgZm9yIHNkbW1jMCBhdCB0aGlz
IHRpbWUuCgpSZWdhcmRzLApKb25hcwoKPiAKPiBBbnkgbW9yZSB0aG91Z2h0cyBvbiB0aGlzIGFy
ZSB2ZXJ5IHdlbGNvbWUuCj4gCj4gS2luZCByZWdhcmRzLAo+IFRhbWFzCj4gCj4gCj4gCj4gVGFt
w6FzIFN6xbFjcwo+IHRzenVjc0BsaW51eC5jb20KPiAKPiBPbiBNb24sIE5vdiAxMSwgMjAyNCBh
dCA4OjAw4oCvUE0gSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPiB3cm90ZToKPj4KPj4g
SGkgVGFtw6FzLAo+Pgo+PiBPbiAyMDI0LTExLTExIDE5OjE3LCBUYW3DoXMgU3rFsWNzIHdyb3Rl
Ogo+Pj4gQWRkIGFsbCBzdXBwb3J0ZWQgVUhTLUkgcmF0ZXMgdG8gc2RtbWMwIGFuZCBhbGxvdyAy
MDAgTUh6IG1heGltdW0gY2xvY2sgdG8KPj4+IGJlbmVmaXQgbW9kZXJuIFNEIGNhcmRzLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRzenVjc0BsaW51eC5jb20+Cj4+PiAt
LS0KPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8
IDYgKysrKysrCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4+PiBp
bmRleCAzZDBjMWNjZmFhNzkuLjI0MmFmNTMzN2NkZiAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4+PiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+Pj4gQEAgLTY3MCw4ICs2
NzAsMTQgQEAgJnNkbW1jMCB7Cj4+PiAgICAgICBidXMtd2lkdGggPSA8ND47Cj4+PiAgICAgICBj
YXAtc2QtaGlnaHNwZWVkOwo+Pj4gICAgICAgZGlzYWJsZS13cDsKPj4+ICsgICAgIG1heC1mcmVx
dWVuY3kgPSA8MjAwMDAwMDAwPjsKPj4+ICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4+PiAgICAgICBwaW5jdHJsLTAgPSA8JnNkbW1jMF9idXM0ICZzZG1tYzBfY2xrICZzZG1tYzBf
Y21kICZzZG1tYzBfZGV0PjsKPj4+ICsgICAgIHNkLXVocy1zZHIxMjsKPj4+ICsgICAgIHNkLXVo
cy1zZHIyNTsKPj4+ICsgICAgIHNkLXVocy1zZHI1MDsKPj4+ICsgICAgIHNkLXVocy1zZHIxMDQ7
Cj4+PiArICAgICBzZC11aHMtZGRyNTA7Cj4+Cj4+IFRoZXJlIGlzIGFuIGlzc3VlIHdpdGggaW8t
ZG9tYWluIGRyaXZlciBub3QgYWx3YXlzIGJlaW5nIHByb2JlZCBiZWZvcmUKPj4gbW1jIGRyaXZl
ciwgdGhpcyB0eXBpY2FsbHkgcmVzdWx0IGluIGlvLWRvbWFpbiBiZWluZyBjb25maWd1cmVkIHdy
b25nLAo+PiBhbmQgbW1jIHR1bmluZyBoYXBwZW4gYmVmb3JlIGlvLWRvbWFpbiBpcyBjb3JyZWN0
bHkgY29uZmlndXJlZC4KPj4KPj4gWW91IGNhbiB1c3VhbGx5IG9ic2VydmUgdGhpcyBieSBsb29r
aW5nIGF0IHRoZSB0dW5pbmcgdmFsdWUgZHVyaW5nIGJvb3QKPj4gYW5kIGNvbXBhcmluZyBpdCB0
byB0aGUgdHVuaW5nIHZhbHVlIGFmdGVyIHJlbW92aW5nIGFuZCByZS1pbnNlcmluZyBhCj4+IHNk
LWNhcmQuCj4+Cj4+IEJlY2F1c2Ugb2YgdGhpcyB1aHMgbW9kZXMgd2FzIGxlZnQgb3V0IGZyb20g
aW5pdGlhbCBEVCBzdWJtaXNzaW9uLCBzb21lCj4+IGNhcmRzIHdpbGwgd29yayBvdGhlcnMgd29u
dCwgc2QtdWhzLXNkcjUwIGlzIGtub3duIHRvIGJlIHdvcmtpbmcgd2l0aAo+PiBtb3N0IGNhcmRz
IGV2ZW4gd2l0aCB0aGUgcHJvYmUgb3JkZXIgaXNzdWUuCj4+Cj4+IEFsc28gSSB0aG91Z2h0IHRo
YXQgbG93ZXIgc3BlZWRzIHdoZXJlIGltcGxpZWQ/Cj4+Cj4+IFJlZ2FyZHMsCj4+IEpvbmFzCj4+
Cj4+PiAgICAgICB2bW1jLXN1cHBseSA9IDwmdmNjM3YzX3NkPjsKPj4+ICAgICAgIHZxbW1jLXN1
cHBseSA9IDwmdmNjaW9fc2Q+Owo+Pj4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+PgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
