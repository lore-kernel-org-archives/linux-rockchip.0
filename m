Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03180C52D73
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 17:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ze9d9FZooKWeak+V6+4uGSZAp3b1pSkISxXT/4uz448=; b=X71Uf3gTjEafnVr2Lz0R0jszis
	Wf9zs9GPhrFaqsJRPUUD0Ncu4JCWTYPXNb5LRa8NG45/xV5cRihzir1Yjrc/9bjBjBxWELMh0+pr6
	IkSm68ZOWdlMMHRhcsx2byJsmaQ1zZZwPiFnEVrZlZB+zoFZdVFZP4Nn+erEXnbVO6DWzS+zLp8XL
	rx3n8dggDI1JWJnXl6e+4CAixBgJ7/PJ7QvyvV+2gXeIzGQld/Gno48Pj6KYzFyAez0QUFNe+Mlbj
	strPOEbukPNldOtGP3KxywZf62iOYGCmlkdBS6SSIg9cENKbBTOxzuDYLpz6vPpDNnNREYepatwbT
	0kvbiK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkWj-00000005qFV-2TyQ;
	Wed, 07 Aug 2024 17:32:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkW9-00000005q9V-3iMT;
	Wed, 07 Aug 2024 17:32:11 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723051927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MUNN0AugEZ1zPnIu0ewnWkrGOsYCX84PMrFL5jeb/Zc=;
	b=AeSpDEItCSMqhZdwouuVi3u6JOcbGyrpEG0X8dpagAL5NtxFRX/x6W636AyRv56IWhlECN
	s48UEFjA+FONFfb7Q/3BoUorCOOGsT3AnV0A+AXNe2WdHx/TQiACct0E60jAGzc8hwOTMA
	J8icx/RkkH0Wj+kFsdvm3Xy/zQwJ7mkAXSRZHx8ZR0kumDyYlhyUx73skUGI5xmOSr7KNu
	QVOTkPKbClTwgJBXYnjWyAZVqwcuRsdlsZbdRs81B1ryfX83HcIZCjbX4oZ6hdBj99TwZv
	CZaDgUUGzgMKmDtYgfIsCpLcJsDzHQ2NPEJVeoxGC4NflXbUvwS16l5c0eT0EQ==
Date: Wed, 07 Aug 2024 19:32:07 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Florian Klink <flokli@flokli.de>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Muhammed Efe Cetin
 <efectn@protonmail.com>, FUKAUMI Naoki <naoki@radxa.com>, =?UTF-8?Q?Ta?=
 =?UTF-8?Q?m=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi
 on orangepi-5-plus
In-Reply-To: <q7db4syvuz3qsssgznjnwujm25gzmxdf7n5dzjhmmwsaxssk5e@5ecftp23wc7p>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <20240807170030.1747381-1-flokli@flokli.de>
 <c1cd51655f783d9ec2f6f068590c2a35@manjaro.org> <4364452.rE2NhlSrgm@diego>
 <q7db4syvuz3qsssgznjnwujm25gzmxdf7n5dzjhmmwsaxssk5e@5ecftp23wc7p>
Message-ID: <c54832e02d1dbf7597a2c2d57e665e1a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_103210_287924_B9A3B352 
X-CRM114-Status: GOOD (  15.95  )
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

T24gMjAyNC0wOC0wNyAxOToyOCwgRmxvcmlhbiBLbGluayB3cm90ZToKPiBPbiBXZWQsIEF1ZyAw
NywgMjAyNCBhdCAwNzoxNzo0OVBNIEdNVCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+IEFtIE1p
dHR3b2NoLCA3LiBBdWd1c3QgMjAyNCwgMTk6MTU6MDMgQ0VTVCBzY2hyaWViIERyYWdhbiBTaW1p
YzoKPj4+IE9uIDIwMjQtMDgtMDcgMTk6MDAsIEZsb3JpYW4gS2xpbmsgd3JvdGU6Cj4+PiA+IFRo
aXMgZm9sbG93cyB0aGUgc2FtZSBsb2dpYyBhcyA4MmQ0MGIxNDFhNGMgKCJhcm02NDogZHRzOiBy
b2NrY2hpcDogYWRkCj4+PiA+IHJma2lsbCBub2RlIGZvciBNLjIgS2V5IEUgV2lGaSBvbiByb2Nr
LTViIikuCj4+PiA+Cj4+PiA+IE9uIHRoZSBvcmFuZ2VwaS01LXBsdXMsIHRoZXJlJ3MgYWxzbyBh
IEdQSU8gcGluIGNvbm5lY3RpbmcgdGhlIFdpRmkKPj4+ID4gZW5hYmxlIHNpZ25hbCBpbnNpZGUg
dGhlIE0uMiBLZXkgRSBzbG90Lgo+Pj4gPgo+Pj4gPiBUaGUgZXhhY3QgR1BJTyBQSU4gY2FuIGJl
IHZhbGlkYXRlZCBpbiB0aGUgQXJtYmlhbiByay01LjEwLXJrcjQga2VybmVsCj4+PiA+IHJrMzU4
OC1vcmFuZ2VwaS01LXBsdXMuZHRzaSBmaWxlIFsxXSwgd2hpY2ggY29udGFpbnMgYSBgd2lmaV9k
aXNhYmxlYAo+Pj4gPiBub2RlIHJlZmVyZW5jaW5nIFJLX1BDNCBvbiAmZ3BpbzAuCj4+PiA+Cj4+
PiA+IFNpZ25lZC1vZmYtYnk6IEZsb3JpYW4gS2xpbmsgPGZsb2tsaUBmbG9rbGkuZGU+Cj4+PiA+
IFRlc3RlZC1ieTogRmxvcmlhbiBLbGluayA8Zmxva2xpQGZsb2tsaS5kZT4KPj4+ID4gTGluazoK
Pj4+ID4gaHR0cHM6Ly9naXRodWIuY29tL2FybWJpYW4vbGludXgtcm9ja2NoaXAvYmxvYi85ZmJl
MjNjOWRhMjRmMjM2YzYwMDlmNDJkM2YwMmMxZmZiODRjMTY5L2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHMKPj4+ID4gWzFdCj4+PiAKPj4+IFVu
Zm9ydHVuYXRlbHksIHRoaXMgaXNuJ3QgaG93IHRoZSAiTGluazogLi4uIiB0YWcgaXMgdG8gYmUg
dXNlZCwgb3IgCj4+PiBob3cKPj4+IGEgcmVmZXJlbmNlIGlzIHRvIGJlIHByb3ZpZGVkLiAgUGxl
YXNlIHNlZSB0aGUgcGF0Y2ggc3VibWlzc2lvbiAKPj4+IGxpbmtlZAo+Pj4gYmVsb3cgZm9yIGEg
Y29ycmVjdCBleGFtcGxlIG9mIHByb3ZpZGluZyBsaW5rcyBhcyByZWZlcmVuY2VzLgo+Pj4gCj4+
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC80NDQ5ZjdkNGVlYWQ3ODcz
MDgzMDBlMmQxZDM3Yjg4YzlkMTQ0NmIyLjE3MTczMDg4NjIuZ2l0LmRzaW1pY0BtYW5qYXJvLm9y
Zy9ULyN1Cj4+IAo+PiBwbGVhc2UgYWxzbyBkb24ndCBwb3N0IHYyIHBhdGNoZXMgYXMgcmVwbGll
cyB0byB2MS4KPj4gSW5zdGVhZCBzdGFydCBhIG5ldyBtYWlsIHRocmVhZCBwbGVhc2UuCj4+IAo+
PiBBIGxvdCBvZiB0b29saW5nIGNhbm5vdCByZWFsbHkgZmluZCB0aGUgY29ycmVjdCB2ZXJzaW9u
IGluIHN1Y2gKPj4gbXVsdGl2ZXJzaW9uIHRocmVhZHMuCj4gCj4gc29ycnkgZm9yIHRoZSBub2lz
ZS4gSSBzZW50IGEgdjMsIGFkZHJlc3NpbmcgdGhlIHJlcXVlc3RlZCBjaGFuZ2VzLCBhcyAKPiBh
Cj4gbmV3IHRocmVhZC4KPiAKPiBTb21ld2hhdCBvZmZ0b3BpYyBmb3IgdGhpcyBwYXRjaCwgYnV0
IGl0J2QgYmUgZ3JlYXQgaWYKPiBwcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sIGNvdWxk
IGluY2x1ZGU6Cj4gCj4gIC0gQSBtZW50aW9uIG9mIHRoZSBrZXJuZWwgcXVvdGF0aW9uIHN0eWxl
IGZvciBjb21taXQgaWRzIGFuZCBzdWJqZWN0cwo+IAkgYW5kIGhvdyB0byBwcm9kdWNlIHRoZW0K
PiAgLSBBIHN0eWxlZ3VpZGUgZm9yIGhvdyB0byBsaW5rIHRvIHJlZmVyZW5jZXMKPiAgLSBBbiBh
Y3RpdmUgZGlzY291cmFnZW1lbnQgZnJvbSB1c2luZyAtLWluLXJlcGx5LXRvIGZvciB2MiAod2hp
Y2gKPiAJIGRpZmZlcnMgZnJvbSB3aGF0IGBnaXQgc2VuZC1lbWFpbGAgcHJvcG9zZXMpLgoKSSdk
IHN1Z2dlc3QgdGhhdCB5b3UgZ28gYWhlYWQgYW5kIHdoaXAgdXAgYSBuZXcgcGF0Y2ggdGhhdCBh
ZGRzIHRob3NlCnNwZWNpZmljIGluc3RydWN0aW9ucyB0byB0aGUgZG9jdW1lbnRhdGlvbi4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
