Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C15BBC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 08:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DlzezUgGcWukkrakAi5RAw1ceW5KrjwQp0N8slohVU=; b=l9EhNFQfP5kGjc
	SFSceysU65lL1KS/7vHnQtwWiUE85ayuzf7mN0HpLVQNhGo/XYJKN8INTXNYFiKcpUvT0RKK/uQx8
	KIrdd676wq+VJV69hml/Oxp5UDlnLJ+/cYpyYHJ1I1iKkjFJntO2BLu4pI+tN0ZKK5yjwjXPiRT5t
	F3Hi9sTs7cNU7L8W+7bSgLQUSnlPVkIP6v4Iuixn3cu7FYb+1czMzr27d4mJDZIcD2CJqYZ2mKekw
	YMmxvn/1NpMh13uvEmTLfhyJSSEfUKvReVjpRwpKsFdN3wfjBBEW/rHrGZ1tlaWuGTiLQT61f7ENN
	jEdAApAPyNCpMWa4c83A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs8J-0000000HTFZ-0vZA;
	Tue, 28 May 2024 08:24:35 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBs8G-0000000HTEh-1xya
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 08:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1716884661;
 bh=qPh1TUYouNens2NOG5rWGJXtGraotD7+jWwwz6GP7ds=;
 b=u+oFxHHpkVFzEXeLc7mOk22RSaekNUZUh0XXUoJqceI7t5Jep7dWMU3cZ7LG8Z2ybq1XOld4b
 Z6RcbRlhgJOlEozpcRSs9P8tI3SGh/M0BodCjQ/OC9173nYseoX6iXheH0vqbAVNgm3XNhTlZG0
 sfs8JKepIcqX83vlii8Qn9Hb5uxEqkyrdP4au3xLKGJ5fX11UnVVTTf/Oo3V3sA0TrEN7/6awXA
 4vkP4JjTTbEuGKmDiSg01QUmjqTG37cFednn3XBTZebhxhq/68ZhpVQuz4jSGPNrroZ26yQb5qE
 +TUP5+TOlY4+FfkJ++yK7EY0iTyWHpL0uz2WzZlArnJA==
Message-ID: <ecc0ddd7-531f-4d4b-8132-9851dae4af67@kwiboo.se>
Date: Tue, 28 May 2024 10:24:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 00/13] rockchip: Fixes and improvements for ROCK
 Pi S
To: "=?UTF-8?Q?Heiko_St=C3=BCbner?=" <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240521211029.1236094-1-jonas@kwiboo.se>
 <171684956152.1783037.15483261423757153532.b4-ty@sntech.de>
 <1750846.QkHrqEjB74@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <1750846.QkHrqEjB74@diego>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 665594b3d1d2529ec2df17a9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_012432_880555_5F395DF0 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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

SGkgSGVpa28sCgpPbiAyMDI0LTA1LTI4IDAwOjQzLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBB
bSBEaWVuc3RhZywgMjguIE1haSAyMDI0LCAwMDo0MjoxNiBDRVNUIHNjaHJpZWIgSGVpa28gU3R1
ZWJuZXI6Cj4+IE9uIFR1ZSwgMjEgTWF5IDIwMjQgMjE6MTA6MDMgKzAwMDAsIEpvbmFzIEthcmxt
YW4gd3JvdGU6Cj4+PiBUaGlzIHNlcmllcyBpbmNsdWRlIGZpeGVzIGZvciBEVCBzY2hlbWEgdmFs
aWRhdGlvbiwgZml4ZXMgYW5kIGltcHJvdmUKPj4+IHN1cHBvcnQgZm9yIG9uYm9hcmQgZmVhdHVy
ZXMgb2YgdGhlIFJhZHhhIFJPQ0sgUGkgUyBib2FyZC4KPj4+Cj4+PiBQYXRjaCAxLTIgZml4ZXMg
RFQgc2NoZW1hIHZhbGlkYXRpb24gb2YgZXRoZXJuZXQgYW5kIGF1ZGlvIGNvZGVjLgo+Pj4KPj4+
IFBhdGNoIDMgZml4ZXMgdXNlIG9mIG9uYm9hcmQgU0QgTkFORCBhbmQgZU1NQy4KPj4+Cj4+PiBb
Li4uXQo+Pgo+PiBBcHBsaWVkLCB0aGFua3MhCj4+Cj4+IFswMi8xM10gYXJtNjQ6IGR0czogcm9j
a2NoaXA6IHJrMzMwODogRml4IGNvZGVjQGZmNTYwMDAwIHJlc2V0LW5hbWVzCj4+ICAgICAgICAg
Y29tbWl0OiBjYjE2MjJkZjZhMjhlM2VhYzM0YThiOTVmZWJhMmRkMmRjNmNkODg3Cj4+IFswMy8x
M10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzMwOC1yb2NrLXBpLXM6IEZpeCBTRCBOQU5EIGFu
ZCBlTU1DIGluaXQKPj4gICAgICAgICBjb21taXQ6IDFmYjk4Yzg1NWNjZDdiYzdmNTBjN2E5NjI2
ZmJiODQ0MDQ1NDc2MGIKPj4gWzA0LzEzXSBhcm02NDogZHRzOiByb2NrY2hpcDogcmszMzA4LXJv
Y2stcGktczogQWRkIHNkbW1jIHJlbGF0ZWQgcHJvcGVydGllcwo+PiAgICAgICAgIGNvbW1pdDog
ZmMwZGFlY2NjMzg0MjMzZWFkZmE5ZDVkZGJkMDAxNTk2NTNjNmJkYwo+PiBbMDUvMTNdIGFybTY0
OiBkdHM6IHJvY2tjaGlwOiByazMzMDgtcm9jay1waS1zOiBBZGQgcGluY3RybCBmb3IgVUFSVDAK
Pj4gICAgICAgICBjb21taXQ6IDdhZmZiODZlZjYyNTgxZTM0NzVjZTNlMGE3NjQwZGExZjJlZTI5
ZjgKPj4gWzA2LzEzXSBhcm02NDogZHRzOiByb2NrY2hpcDogcmszMzA4LXJvY2stcGktczogUmVu
YW1lIExFRCByZWxhdGVkIHBpbmN0cmwgbm9kZXMKPj4gICAgICAgICBjb21taXQ6IGQyYTUyZjY3
ODg4M2ZlNGJjMDBiY2E4OTM2NmIxYmE1MDQ3NTBhYmYKPj4gWzA3LzEzXSBhcm02NDogZHRzOiBy
b2NrY2hpcDogcmszMzA4LXJvY2stcGktczogQWRkIG1kaW8gYW5kIGV0aGVybmV0LXBoeSBub2Rl
cwo+PiAgICAgICAgIGNvbW1pdDogNGI2NGVkNTEwZWQ5NDZhNGU0Y2E2ZDUxZDY1MTJiZjUzNjFm
NmEwNAo+PiBbMDgvMTNdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgT1RQIGRldmljZSBub2Rl
IGZvciBSSzMzMDgKPj4gICAgICAgICBjb21taXQ6IDM2ZDNiYmM4Y2RiZWYyZjgzMzkxZjc3MDg4
ODgyNjVhYzRjMzdhOTkKPj4gWzA5LzEzXSBkdC1iaW5kaW5nczogcG93ZXI6IHJvY2tjaGlwOiBE
b2N1bWVudCBSSzMzMDggSU8gdm9sdGFnZSBkb21haW5zCj4+ICAgICAgICAgY29tbWl0OiA1Nzll
NWI0NzYzMDc3OTdiM2ExMjYwYmVjNTQ0ZGJiYWJjY2UxZGU1Cj4+IFsxMC8xM10gc29jOiByb2Nr
Y2hpcDogaW8tZG9tYWluOiBBZGQgUkszMzA4IElPIHZvbHRhZ2UgZG9tYWlucwo+PiAgICAgICAg
IGNvbW1pdDogMDUzNmZhNmU2ZmEzZTQ4ZjRjYTExODU1YjU4NmMyNzdiZTUyNGZiZQo+PiBbMTEv
MTNdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUkszMzA4IElPIHZvbHRhZ2UgZG9tYWlucwo+
PiAgICAgICAgIGNvbW1pdDogZDE4MjliYTQ2OWQ1NzQzNzM0ZTM3ZDU5ZmVjZTczZTM2NjhhYjA4
NAo+PiBbMTIvMTNdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiByazMzMDgtcm9jay1waS1zOiBFbmFi
bGUgdGhlIGlvLWRvbWFpbnMgbm9kZQo+PiAgICAgICAgIGNvbW1pdDogMTAwYjNiZGVlNjAzNTE5
MmY2ZDRhMTg0Nzk3MGZlMDA0YmI1MDVmYgo+PiBbMTMvMTNdIGFybTY0OiBkdHM6IHJvY2tjaGlw
OiByazMzMDgtcm9jay1waS1zOiBVcGRhdGUgV0lGaS9CVCByZWxhdGVkIG5vZGVzCj4+ICAgICAg
ICAgY29tbWl0OiAxMmMzZWM4NzhjYmUzNzA5NzgyZTg1Yjg4MTI0YWJlY2MzYmI4NjE3Cj4+Cj4+
IEkndmUgc3BsaXQgdGhpcyB1cCBzbGlnaHRseS4KPj4gU29tZSBwYXRjaGVzIGZvciA2LjEwIGFz
IGZpeGVzLCBhbmQgdGhlIHJlc3QgZm9yIDYuMTEgLgo+PiBFZGl0ZWQgcGF0Y2g3IChmb3IgNi4x
MSkgdG8gYXBwbHkgd2l0aG91dCBwYXRjaDYgKDYuMTApCj4+IFRoYXQgZGlzYXBwZWFycyBkdXJp
bmcgYSBtZXJnZSBvZiB0aG9zZSBicmFuY2hlcy4KPiAKPiBhbmQgYXMgc3RhdGVkLCBwbGVhc2Ug
cmUtc2VuZCBwYXRjaDEgc2VwYXJhdGVseS4KClRoYW5rcyEsIEkgd2lsbCByZS1zZW5kIGZpcnN0
IHBhdGNoIHNob3J0bHkgOi0pCgpSZWdhcmRzLApKb25hcwoKPiAKPiBUaGFua3MKPiBIZWlrbwo+
IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
