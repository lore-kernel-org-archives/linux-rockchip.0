Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A7F7C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zsR7UOTY5AzOwHZDQhB/gmaFJdF7LMY0IOyP/mz5GU=; b=yO3y7fcKTRHfQ3
	GaazMCOmzGQJ30DivmrN8qhObxhr39zHKS57eIsVJbH9yhSOksE9/lCJjBq+U9DweHNY50k7Fk9k4
	wBm8ebud+EUiXlR/K736aCoYzDUiFOBGqzUfuAdOhVEJzNciRwaV8QAPd9X7V2cfAcrk7L/vbS87G
	xTOpTCJF+8WsLmwyZR2de8Qgn+Mh9SgK6bYDEsaW2zK6JyEnyYWbJIeuT7YnGlX1Yj5WFsQ760ilz
	G4MhmtTT2UAKIYlVpkpVzOtDrcHEX05nyG1brFcRkCv7b2dEAqYe0nXv4bQP2ZawM1MVDY7IEefMo
	RRvh8HqALjDmLJjlv1JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCMyh-000000053Ka-3XSy;
	Wed, 29 May 2024 17:20:43 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCMyc-000000053H9-2Nqp;
	Wed, 29 May 2024 17:20:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1717003228; x=1717608028; i=seb-dev@web.de;
	bh=LnvUL3j+FhUIYu1ECockb+0k/yEHuOso9bE/McckZ2Y=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=kna8nhGaGMg6V5WETmO60PwrliEoYDpnqxoaCkZ31vDdwRTxJ3w0yyuXeZyqV0ZI
	 CSuLJBOeWHES8ndKvBpjU3VbXb9UMiGc5cAOp2Bksbd72ZnvxeU2FZc9stCm0Mf1W
	 I7m2/xPMyT39eabhSTIb7bJUTru259PwC/5k5XrFxloM4DtxgO/7tpc5gVKKXyakh
	 p0sG8FulGevW3yJ9h6Ar13ogmIR1R2TnlG/hhFZ0gYlKDXYOMHVc1khKwprh3qDDw
	 4/1fTtDZbiN3mKoCPWkfQmlM3d9svSzy//+jLVh3iql0cOJBrRqxZZxrfbmEUwR6f
	 lcTbmwL5i7ibH/S0GQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.24] ([84.155.184.248]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MUl9B-1s3BtN2SfJ-00QwGU; Wed, 29
 May 2024 19:20:28 +0200
Message-ID: <ebd69de8-5c97-487e-b86a-8afdcde49a6d@web.de>
Date: Wed, 29 May 2024 19:20:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add CM3588 NAS board
To: Dragan Simic <dsimic@manjaro.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240526214340.8459-1-seb-dev@web.de>
 <20240526214820.9381-1-seb-dev@web.de>
 <9f40c748-691b-4a03-bbd6-54870f46bf05@kwiboo.se>
 <29e5cf31-3d9a-469a-befa-41a5aa2fe8b3@web.de>
 <bccd8879a19ceacfd92a41e7533b324c@manjaro.org>
From: Sebastian Kropatsch <seb-dev@web.de>
In-Reply-To: <bccd8879a19ceacfd92a41e7533b324c@manjaro.org>
X-Provags-ID: V03:K1:hOpgXAHojh64+byf+dXx6/yojN2mCvobytSvKX4N1UvJOQJ3bWi
 5QmnxAI1ZQ3Mqy07BGdu6CuZa4ovU721gwe7yKEHSqZxfnkF9YGvvaevEOAS8xrBuAijeoD
 Pe33+pj2nIoPaCOxgUv4bAslZlOBFWc4oObksZ2jV6f3jJbV6cvI2AaHVZOG+0ifeJ29vu7
 XnyVJf3e+FGCQZ8aOhAxA==
UI-OutboundReport: notjunk:1;M01:P0:AWu6vFBFlaM=;iS1IlLJHaAyDKPqsIyiWaZlG9iZ
 thspF47GX2usRA858C/sGhaax0Uygs+xMCeaKF0ehVcSpam+FvfJlJY8TkJCtKF8hR4mGDUtc
 /4LMkbGQ7gpRmjF9sDoKtqxfp0yfvjVJQFsHKQhINcxtFVpXu71BVJc17NvyGxZH6M6HsUxiM
 E9jqU+pJAOInJd0BOutE8UyzDY3FRV5bKAI7cDGjjIofsB+nek+37JOAEoI8faGZDgbHB+f8E
 Bq51n4wWDbg0/98OhjZBpfwhcVlsxQnZBz0uJLNgg+EFHXLf1fgsC5/eOR7d20nOSOo7q6Utq
 5E3ibIASn/yJX3cZvFOxniVPpD3wG1kOKRHBs/0bwnZbZKWIexs4C1XoA2ZUZ2THKtAIo6ipL
 PQvwQ41pT8KX6PAN9YEV7CkSkh1DcgQTMVDYymiP/qbo/BPP8Ng+4ZPqgwLMwFZRaUFbsIPDv
 U84gguIDvIB4YXw3LE+SsJ9L9vZTrXn614Fi/0JauA8lo5FaSE7DlJLmKgj17y6undLOaOHqv
 NNTQH7w6eiABoJ9cwOoX3o1FqdNByEkKt0jVfPTnjKAmXmVuZkLMkvUFlFpr6ezIwGXpKqRE6
 jswOT7vlTjB00g8BziSoQKAouLS8MBahgykDqDuNgirocupdV4g0zwhwrpd8ldMKTIqqrgHeu
 bCIVRjT3CoLzc3g8+x6Ko2WlW4Cwq9A3H4jAhd/zVwn7pkiImvsFuQWYlAWkYXY7nNjXP+F/N
 aP0i6ktWYbELG/G8oDqH+USmlqFOKWnuGOd916BfjJILxeggarbY+Lmu2JPaUN1dHrZhw5mqV
 LxKxYt++K6JXOVcfWYqgSsV+v2sz1Rq8qj6WwAbtsVwoY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_102039_134521_1499D82A 
X-CRM114-Status: GOOD (  18.50  )
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

SGkgRHJhZ2FuLAoKQW0gMjkuMDUuMjAyNCB1bSAwMjoxMCBzY2hyaWViIERyYWdhbiBTaW1pYzoK
PiBIZWxsbyBTZWJhc3RpYW4sCj4KPiBPbiAyMDI0LTA1LTI4IDE5OjIyLCBTZWJhc3RpYW4gS3Jv
cGF0c2NoIHdyb3RlOgo+PiBBbSAyNy4wNS4yMDI0IHVtIDIxOjAyIHNjaHJpZWIgSm9uYXMgS2Fy
bG1hbjoKPj4+IE9uIDIwMjQtMDUtMjYgMjM6NDgsIFNlYmFzdGlhbiBLcm9wYXRzY2ggd3JvdGU6
Cj4+Pj4gVGhlIENNMzU4OCBOQVMgYnkgRnJpZW5kbHlFbGVjIHBhaXJzIHRoZSBDTTM1ODggY29t
cHV0ZSBtb2R1bGUsCj4+Pj4gYmFzZWQgb24KPj4+PiB0aGUgUm9ja2NoaXAgUkszNTg4IFNvQywg
d2l0aCB0aGUgQ00zNTg4IE5BUyBLaXQgY2FycmllciBib2FyZC4KPj4+Pgo+Pj4+IFsuLi5dCj4+
Pj4KPj4+PiBQQ0llIGJpZnVyY2F0aW9uIGlzIHVzZWQgdG8gaGFuZGxlIGFsbCBmb3VyIE0uMiBz
b2NrZXRzIGF0IFBDSWUgMy4wIHgxCj4+Pj4gc3BlZWQuIERhdGEgbGFuZSBtYXBwaW5nIGluIHRo
ZSBEVCBpcyBkb25lIGxpa2UgZGVzY3JpYmVkIGluIGNvbW1pdAo+Pj4+IGY4MDIwZGZiMzExZCAo
InBoeTogcm9ja2NoaXAtc25wcy1wY2llMzogZml4IGJpZnVyY2F0aW9uIG9uIHJrMzU4OCIpLgo+
Pj4+Cj4+Pj4gVGhpcyBkZXZpY2UgdHJlZSBpbmNsdWRlcyBzdXBwb3J0IGZvciBlTU1DLCBTRCBj
YXJkLCBldGhlcm5ldCwgYWxsIFVTQjIKPj4+PiBhbmQgVVNCMyBwb3J0cywgYWxsIGZvdXIgTS4y
IHNsb3RzLCBHUFUsIFJUQywgYnV6emVyLCBVQVJUIGRlYnVnZ2luZyBhcwo+Pj4+IHdlbGwgYXMg
dGhlIGJ1dHRvbnMgYW5kIExFRHMuCj4+Pj4gVGhlIEdQSU9zIGFyZSBsYWJlbGVkIGFjY29yZGlu
ZyB0byB0aGUgc2NoZW1hdGljcy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBL
cm9wYXRzY2ggPHNlYi1kZXZAd2ViLmRlPgo+Pj4+IC0tLQo+Pj4+IMKgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSArCj4+Pj4g
wqAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1jbTM1ODgtbmFzLmR0c8KgwqAgfCAxMjY5
Cj4+Pj4gKysrKysrKysrKysrKysrKysKPj4+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEyNzAgaW5z
ZXJ0aW9ucygrKQo+Pj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1jbTM1ODgtbmFzLmR0cwo+Pj4KPj4+IEJlY2F1c2UgdGhlIENNMzU4
OCBpcyBhIFNvTSBhbmQgdGhlIE5BUyBpcyBhIGNhcnJpZXIgYm9hcmQgdGhpcyBzaG91bGQKPj4+
IHByb2JhYmx5IGJlIHNwbGl0IGluIHR3bywgY20zNTg4LmR0c2kgYW5kIGNtMzU4OC1uYXMuZHRz
Lgo+Pgo+PiBJIHRob3VnaHQgYWJvdXQgdGhpcyBiZWZvcmUgc3VibWl0dGluZy4gTXkgcmVhc29u
IGZvciBub3Qgc3BsaXR0aW5nIHRoaXMKPj4gaW50byB0d28gZmlsZXMgZm9yIG5vdyB3YXMgdGhh
dCBhcyBmYXIgYXMgSSBrbm93IHRoaXMgYm9hcmQgaXMgdGhlIG9ubHkKPj4gY29tYmluYXRpb24g
Zm9yIHRoZSBDTSwgbWF5YmUgbm8gb3RoZXIgZGF1Z2h0ZXIgYm9hcmQgd2lsbCBldmVyIGdldAo+
PiByZWxlYXNlZC4gSWYgYW5vdGhlciBjYXJyaWVyIGJvYXJkIGNvbXBhdGlibGUgd2l0aCB0aGUg
Q00zNTg4IGlzCj4+IHJlbGVhc2VkLCB0aGUgc3BsaXR0aW5nIGNvdWxkIGJlIGRvbmUgYXQgdGhh
dCBwb2ludCBpbiB0aW1lLgo+Pgo+PiBCdXQgc2luY2UgYm90aCB5b3UgYW5kIEhlaWtvIHByZWZl
ciB0byBoYXZlIGl0IHNwbGl0LCBJIHdpbGwgZmlndXJlIG91dAo+PiBhIHdheSBob3cgYW5kIHdo
aWNoIHBhcnRzIHdpbGwgaGF2ZSB0byBzcGxpdCB1cCB0byB0aGUgQ00gc28gd2UgY2FuCj4+IGhh
dmUgdHdvIGZpbGVzIGluIHRoZSBlbmQuIEkgZ3Vlc3MgbW9zdCB0aGluZ3Mgd2lsbCBnbyBpbnRv
IHRoZSBOQVMgZHRzCj4+IGFueXdheS4KPj4KPj4gSSdsbCBoYXZlIGEgbG9vayBob3cgb3RoZXIg
Um9ja2NoaXAgY29tcHV0ZSBtb2R1bGVzIHdpdGggc3BsaXQgZGV2aWNlCj4+IHRyZWVzIHdlcmUg
ZG9uZSBpbiB0aGUgcGFzdCBhbmQgb3JpZW50IG15c2VsZiBieSB0aGF0Lgo+Cj4gSSBhbHNvIHN1
cHBvcnQgdGhlIERUIHNwbGl0IGJldHdlZW4gdGhlIFNvTSBhbmQgdGhlIGNhcnJpZXIgYm9hcmQs
Cj4gZXZlbiBpZiB0aGVyZSBhcmUgY3VycmVudGx5IG5vIG1vcmUgY2FycmllciBib2FyZHMgYXZh
aWxhYmxlIGZvcgo+IHRoZSBwYXJ0aWN1bGFyIFNvTS7CoCBUaGF0IG1heSBzZWVtIHJlZHVuZGFu
dCwgYnV0IGl0IHJlZmxlY3RzIHRoZQo+IG5hdHVyZSBvZiB0aGUgaGFyZHdhcmUgc2V0dXAsIGlu
IHdoaWNoIHRoZSBTb00gcGx1Z3MgaW50byB0aGUgY2Fycmllcgo+IGJvYXJkLsKgIFRoaXMgZm9s
bG93cyB0aGUgcHJpbmNpcGxlIG9mIHRoZSBEVCBkZXNjcmliaW5nIGhhcmR3YXJlLgoKRm9sbG93
aW5nIHRoZSBwcmluY2lwbGUgb2YgdGhlIERUIGRlc2NyaWJpbmcgdGhlIGhhcmR3YXJlIGRvZXMg
bWFrZQpzZW5zZSwgdGhhdCdzIGEgdmVyeSBnb29kIGV4cGxhbmF0aW9uIQpJJ2xsIHRyeSB0byBm
b2xsb3cgdXAgd2l0aCB0aGlzIGluIGEgdjIgaW4gdGhlIG5leHQgZmV3IGRheXMuCgpUaGFuayB5
b3UsClNlYmFzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
