Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC6DBC54734
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 11:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYQMjqJe+OtXSpsevT0uOP5j/fZOicTW1S/3HtVpLZI=; b=TUaXInh/V1nJ/n
	ZBJk6gazmrY7+RN+LEt40sNBsneMNpdbdm0lg3vKT4QzaTf0lbxwblJ3ER7mN7xTUbID0CrIoQjFE
	nRFXT9UB6eiFuxsaDkb7KuT95V1jB718haCi1B01uBd17Lj388hSwsi28/piBbyrpcgPUazx7QUKs
	M44/FMPvdZCkl+avWtNWHOLssEVsM72MhEu7xRgE6Dfo9hz6SORZZ6K8Auo6N9rX5DH+LOSV1nzaD
	11daHam+sKYGtGkKbZgGJ5c2pgbV9s8nkZdSt8JS1cYXI43B4J++hJG+O9h1h1FVhQqq5F+55PNzd
	Zv85OlHT3W+LiSgo7Jow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siuep-0000000B5V9-2Wzm;
	Tue, 27 Aug 2024 11:46:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siudD-0000000B52M-02oS;
	Tue, 27 Aug 2024 11:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xLXPfKWDxExyWqYh9vtXpPA+hwYuofc+hgQ3XeMgQEI=; b=R8RN5EotjK+Krdq8wnD52auW0j
	zVu8/mHLkhcE3xaGIpM1UcXdL1qZEHnT/6q4HEPw/9lPNFT1pYIcJNkU6QLanbEgsRZAqz+57p8qM
	O5iIxC67NNogtyNOu74OCzmRoBPvcqoNLrpp3aVMXmI+Z9uBem3zmeCyf7z19OmfivaCWxgSE1KGb
	3Oke7WuMtYI4WG1jglXzaN+TUKSKJ/xzS7kX+F8RjNXs5Gp/qjSMOmd06vY4Ox28QL66toCcYxMKL
	/kntGsR1sO4xOyaXzTaDE6zJ6aDafl4VLjUM3kfN7DDvvKZ8k09B6pYm2+MQ0gf45TonWZ5rVxH6l
	vORb+vJg==;
Received: from dynamic-176-006-142-117.176.6.pool.telefonica.de ([176.6.142.117] helo=[127.0.0.1])
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1siud9-0005QN-9R; Tue, 27 Aug 2024 13:44:59 +0200
Date: Tue, 27 Aug 2024 13:44:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
CC: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
User-Agent: K-9 Mail for Android
In-Reply-To: 1ec02fa5-4b11-424b-a595-c715b62d105e@kwiboo.se
References: <20240826205538.1066103-1-jonas@kwiboo.se> <66ccebeb.d40a0220.356790.58caSMTPIN_ADDED_BROKEN@mx.google.com> <b69e5a0a-acf9-412c-90b4-ebe00c7e07d4@kernel.org> 1ec02fa5-4b11-424b-a595-c715b62d105e@kwiboo.se
Message-ID: <99731A50-58FA-4829-9785-339051E791B2@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_044503_208190_7A2FC0AB 
X-CRM114-Status: GOOD (  14.42  )
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

CgpBbSAyNy4gQXVndXN0IDIwMjQgMTM6Mjk6MzQgTUVTWiBzY2hyaWViIEpvbmFzIEthcmxtYW4g
PGpvbmFzQGt3aWJvby5zZT46Cj5IaSBLcnp5c3p0b2YsCj4KPk9uIDIwMjQtMDgtMjcgMDg6NTIs
IEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIDI2LzA4LzIwMjQgMjI6NTUsIEpvbmFz
IEthcmxtYW4gd3JvdGU6Cj4+PiBUaGUgSGFyZGtlcm5lbCBPRFJPSUQtTTFTIGlzIGEgc2luZ2xl
LWJvYXJkIGNvbXB1dGVyIGJhc2VkIG9uIFJvY2tjaGlwCj4+PiBSSzM1NjYgU29DLiBJdCBmZWF0
dXJlcyBlLmcuIDQvOCBHQiBMUEREUjQgUkFNLCA2NCBHQiBlTU1DLCBTRC1jYXJkLAo+Pj4gR2JF
IExBTiwgSERNSSAyLjAsIE0uMiBOVk1lIGFuZCBVU0IgMi4wLzMuMC4KPj4+Cj4+PiBBZGQgZGV2
aWNldHJlZSBiaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHRoZSBIYXJka2VybmVsIE9EUk9JRC1N
MVMgYm9hcmQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dp
Ym9vLnNlPgo+Pj4gLS0tCj4+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9yb2NrY2hpcC55YW1sCj4+PiBpbmRleCBmMDhlOWYyZjVkZmMuLjllMjlhNWVjYzk0ZCAx
MDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1sCj4+PiBAQCAtNTk4LDYgKzU5OCwxMSBAQCBwcm9wZXJ0aWVzOgo+Pj4g
ICAgICAgICAgICAtIGNvbnN0OiBoYXJka2VybmVsLHJrMzU2OC1vZHJvaWQtbTEKPj4+ICAgICAg
ICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTY4Cj4+PiAgCj4+PiArICAgICAgLSBkZXNjcmlw
dGlvbjogSGFyZGtlcm5lbCBPZHJvaWQgTTFTCj4+PiArICAgICAgICBpdGVtczoKPj4+ICsgICAg
ICAgICAgLSBjb25zdDogaGFyZGtlcm5lbCxyazM1NjYtb2Ryb2lkLW0xcwo+PiAKPj4gaGFyZGtl
cm5lbCxvZHJvaWQtbTFzCj4+IAo+PiBXaHkgYWRkaW5nIFNvQyBuYW1lIHRvIHRoZSBib2FyZD8g
Q2FuIGl0IGJlIE9kcm9pZCBNMVMgd2l0aCBSSzM1Njg/Cj4KPk5vLCB0aGUgTTFTIChyazM1NjYp
IGlzIGEgdmFyaWFudCBvZiB0aGUgTTEgKHJrMzU2OCkgd2l0aCBsZXNzIGZlYXR1cmVzCj5hbmQg
dGhlIHNtYWxsZXIgU29DIHBhY2thZ2UsIGZ1bGx5IGFncmVlIHRoYXQgaGFyZGtlcm5lbCxvZHJv
aWQtbTFzIGlzCj5iZXR0ZXIsIHdpbGwgdXNlIGl0IGluIGEgdjIuCj4KPkkgbWFpbmx5IHdhbnRl
ZCB0byBrZWVwIGl0IGNvbnNpc3RlbnQgdG8gb3RoZXIgSGFyZGtlcm5lbCBPZHJvaWQgYm9hcmRz
Lgo+LSBoYXJka2VybmVsLHJrMzMyNi1vZHJvaWQtZ28yCj4tIGhhcmRrZXJuZWwscmszMzI2LW9k
cm9pZC1nbzItdjExCj4tIGhhcmRrZXJuZWwscmszMzI2LW9kcm9pZC1nbzMKPi0gcm9ja2NoaXAs
cmszNTY4LW9kcm9pZC1tMSAoaGFyZGtlcm5lbCxyazM1Njgtb2Ryb2lkLW0xKQo+Cj5JZiB5b3Ug
YWdyZWUgdG8gYSB2ZW5kb3IgcHJlZml4IGNoYW5nZSBvZiByb2NrY2hpcCxyazM1Njgtb2Ryb2lk
LW0xLAo+bWF5YmUgd2UgY2FuIGFsc28gZHJvcCB0aGUgc29jIG5hbWUgZnJvbSB0aGF0IGNvbXBh
dGlibGUgYXQgdGhlIHNhbWUKPnRpbWU/IEUuZy4gY2hhbmdlIGl0IHRvIGhhcmRrZXJuZWwsb2Ry
b2lkLW0xLgoKSSdkIGFsc28gYWdyZWUgd2l0aCBnb2luZyB3aXRoIGNvbXBhdGlibGVzIHdpdGhv
dXQgdGhlIHNvYyBuYW1lIGluIGl0LiBJdCBpcyBhbiBBQkkgYnJlYWsgYnV0IEkgdGhpbmsgZXhj
ZXB0IHRoZSBjaHJvbWUgZGV2aWNlcyBubyBvdGhlciBib2FyZCBhY3R1YWxseSB1c2VzIHRoYXQg
cGFydCBvZiB0aGUgY29tcGF0aWJsZSA/CgoKPlJlZ2FyZHMsCj5Kb25hcwo+Cj4+IAo+PiAKPj4g
QmVzdCByZWdhcmRzLAo+PiBLcnp5c3p0b2YKPj4gCj4KCi0tIApEaWVzZSBOYWNocmljaHQgd3Vy
ZGUgdm9uIG1laW5lbSBBbmRyb2lkLUdlcsOkdCBtaXQgSy05IE1haWwgZ2VzZW5kZXQuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
