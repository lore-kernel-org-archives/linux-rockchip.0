Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 379DFE77169
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Dec 2024 01:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BXBJcaezg+pqXYGX4ZfhNRN+shOUNqdDrjQhYhEV1Y8=; b=EUQeSATriCBTOz8QM7gtmZUsit
	OzvbrV7bRJcaupArdMh9h9vZ2w45GkGgccjBaH+oCwJGXpYk4WU8oqlpOM238/b2xWWgdpuyHKw6q
	9PUErqgXm49FBgseS0pjBJ6X0q/TAiGwQoQV8lgpohtc2fUQAfrGwoXB1laFOBZ/zLmXZI6MX9yBO
	OU/KCDujWPyJj2JK6UEU9e20xW93rm+FAXHp9FeP4CRVrre73VOHBxRRpvQG35+b8/RT4ws/1Nk5i
	h7APEieZo9VQFgh5kayMJfpSC48LhS7bthRGUWWaUDev/6+AXcV4NH35kf4XPQRMVAq5y2BdS11dU
	HRRAG2AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIeFi-0000000BCGS-2KpM;
	Wed, 04 Dec 2024 01:32:30 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIeFe-0000000BCFZ-2NwZ
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Dec 2024 01:32:29 +0000
X-QQ-mid: bizesmtpip3t1733275883tnx5ffe
X-QQ-Originating-IP: teASfYra7NZMjwlWGGLXuPXJK9/eEJToD5O7UiJ39Qc=
Received: from [IPV6:240f:10b:7440:1:c275:7079 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 04 Dec 2024 09:31:18 +0800 (CST)
X-QQ-SSF: 0001000000000000000000000000000
X-QQ-GoodBg: 2
X-BIZMAIL-ID: 13518081938172122736
Message-ID: <2471CF562C95BE8C+b828c025-8d4c-423d-8cbc-4e30e07fdf32@radxa.com>
Date: Wed, 4 Dec 2024 10:31:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: use Type-C port as USB HOST
 port for Radxa ROCK 5B
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <20241130014043.12942-1-naoki@radxa.com>
 <18640241.sWSEgdgrri@diego>
 <hxctagkzzd37n7q7onvivptj5gsac5tn5gxdlvgo2fuumatjmh@ckvjcxtub26f>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <hxctagkzzd37n7q7onvivptj5gsac5tn5gxdlvgo2fuumatjmh@ckvjcxtub26f>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MDVLptrJ93rHZgmQFoMt6fCwTzIBiYDs19vZeGSxNUXUJNzjRUkXjLj2
	IPL8Byyx2691BfRidCMYN1Wjm5JeOiRJoxShRURi0kGyqJKH30WdQq24pb5G1pTnvIYwNt/
	ytLgpjAPgRzXUKkFTZzX5gYM7nc8/rcsEpeWX9SSBxhOaTkFWJ0BmIzKG+u07Z1tDg2IOzD
	6pqH+D2uou6piIH0R/kNhVF/mHnGJKQhwlrdWxS77EW0HhiStW3lG4tKrLO3uTOlDWvV0tm
	3t9p/68hnFqO1VSUiEtpdFgBxNIKL/cFxGx9i+p/WLjzWrxl8x2DNtVHQwyBEiqJfk58qP5
	dZUurb2QoNG6dmXlq4pt1OIGAYas0zES+GtfQTA+ytVXChb+ZEoGgnHsKoyAVJvVyKUX5HS
	vOPSQRSEWtpbLzUk/ucsMosnp60tjTfBkBAmrDNThIUNXcizvxhub9tqNTG7OeMTjx4/koQ
	AGR2k54Aif29+1VXUTLA4Ko9iTruFw5jp4hoando0nBD1nauluE4T/qYKJrQZGAZJwFRoXB
	a1SEZvA6QYgvG3mhZR2tR3OX3EtpEP9M37oH32y1Zzulu7UeUzKWi+WhlT1vp3fzQ9y5rIQ
	eMWKtGaghvTDh7mqnGOUAxJwES2PiIM1Bk/io5pZXGoWtAA1ZjMMy6ha8YDXfm5GUORpavo
	dbh00yyjfzXCFR69RLexAkBjkqyeDMtG9l6dovhQ69ln0DgZKVJ6an7TSNsZ5UnOUbr4jEb
	v8is8n6bjMwtZ5BtEUHAjbVao3Jo09GjS2mzM/NrlEuM45gt0Fh/WKjyzBdQfyt1YYvB2uy
	zRS1KfFv0gkT9Tzl3W4rO8EIHSIyG+BKKryXVRDRnYQPEDBQNEvsNoP8+BkPeM5nozCXT7f
	5w7eKaJRwRfOxk0CvOElypFHAozzhuWt8p4t1Qp67GDCJzLM5G2lBw==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_173227_226598_35128C45 
X-CRM114-Status: GOOD (  19.54  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, alchark@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28gYW5kIFNlYmFzdGlhbiwKCnRoYW5rIHlvdSBmb3IgeW91ciBjb21tZW50cyEKCk9u
IDEyLzQvMjQgMDI6MTEsIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+IEhpLAo+IAo+IE9uIFR1
ZSwgRGVjIDAzLCAyMDI0IGF0IDA1OjE4OjM5UE0gKzAxMDAsIEhlaWtvIFN0w7xibmVyIHdyb3Rl
Ogo+PiBBbSBTYW1zdGFnLCAzMC4gTm92ZW1iZXIgMjAyNCwgMDI6NDA6NDIgQ0VUIHNjaHJpZWIg
RlVLQVVNSSBOYW9raToKPj4+IFR5cGUtQyBwb3J0IGlzIGR1YWwtcm9sZSBVU0IgMy4wIHBvcnQu
IGFkZCB1c2JfaG9zdDBfeGhjaSBhbmQgcGh5Cj4+PiBub2RlcyB0byB1c2UgaXQgYXMgSE9TVCBw
b3J0Lgo+Pgo+PiBUaGlzIG5lZWRzIGEgYml0IG1vcmUgZXhwbGFuYXRpb24gb24gX3doeV8geW91
J3JlIHN0YXRpY2FsbHkKPj4gc2V0dGluZyB0aGlzIHRvIGhvc3QtbW9kZS4KPiAKPiBUaGUgVVNC
LUMgcG9ydCBjYW4gYmUgdXNlZCBpbiBwZXJpcGhlcmFsIG1vZGUsIHNvIHRoaXMgaXMganVzdAo+
IHdyb25nLiBBbHNvIGl0IHNob3VsZCBiZSBhZGRlZCB0b2dldGhlciB3aXRoIHRoZSBVU0IgUEQg
Y29udHJvbGxlcgo+IGZvciBwcm9wZXIgbXV4aW5nIGFuZCByb2xlIHN3aXRjaCBzdXBwb3J0LiBU
aGUgcmVhc29uIEkgaGF2ZSBub3QgeWV0Cj4gc2VuZCB0aGUgcGF0Y2ggaXMgdGhhdCB0aGlzIG5l
ZWRlZCBhIGZpeCBpbiBVLUJvb3QgZmlyc3QuCj4gCj4gTW9zdCB1c2VycyBhcmUgcG93ZXJpbmcg
dGhlaXIgUm9jayA1QnMgdmlhIHRoZSBVU0ItQyBwb3J0IGFuZCBhCj4gYmFkIGRlc2NyaXB0aW9u
IHJlc3VsdHMgaW4gdW5leHBlY3RlZCBoYXJkd2FyZSByZXNldHMgYXQgYm9vdAo+IHRpbWUuCj4g
Cj4gSSBtb3N0bHkgd2FpdGVkIGZvciB0aGUgcmMxIHRhZyB0byBoYXBwZW4gbm93IHRoYXQgVS1C
b290IHN1cHBvcnQKPiBoYXMgbGFuZGVkLiBBbHNvIEkgZXhwZWN0IHRoYXQgZXZlbiB3aXRoIGFs
bCB0aG9zZSBwcmVjYXV0aW9ucwo+IHNvbWUgcGVvcGxlIHdpbGwgc3RhcnQgc2VlaW5nIGlzc3Vl
cy4gVW5mb3J0dW5hdGVseSB0aGVyZSBhcmUKPiBtYW55IG5vbi1jb21wbGlhbnQgVVNCLVBEIHBv
d2VyIHNvdXJjZXMgOigKCkkgc2VlLiBJJ2xsIHdhaXQgcHJvcGVyIGltcGxlbWVudGF0aW9uLgpw
bGVhc2UgaWdub3JlIG15IHBhdGNoLgoKQmVzdCByZWdhcmRzLAoKLS0KRlVLQVVNSSBOYW9raQpS
YWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgoKPiAtLSBTZWJhc3RpYW4KPiAKPj4K
Pj4gSGVpa28KPj4KPj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhh
LmNvbT4KPj4+IC0tLQo+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTViLmR0cyB8IDE3ICsrKysrKysrKysrKysrKysrCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAx
NyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtcm9jay01Yi5kdHMKPj4+IGluZGV4IDBlYzQ5OTJiNDNjZC4uYzU3NzZlM2I0YWFi
IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01Yi5kdHMKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJv
Y2stNWIuZHRzCj4+PiBAQCAtODQwLDYgKzg0MCwxNCBAQCAmdHNhZGMgewo+Pj4gICAJc3RhdHVz
ID0gIm9rYXkiOwo+Pj4gICB9Owo+Pj4gICAKPj4+ICsmdTJwaHkwIHsKPj4+ICsJc3RhdHVzID0g
Im9rYXkiOwo+Pj4gK307Cj4+PiArCj4+PiArJnUycGh5MF9vdGcgewo+Pj4gKwlzdGF0dXMgPSAi
b2theSI7Cj4+PiArfTsKPj4+ICsKPj4+ICAgJnUycGh5MSB7Cj4+PiAgIAlzdGF0dXMgPSAib2th
eSI7Cj4+PiAgIH07Cj4+PiBAQCAtODgzLDYgKzg5MSwxMSBAQCAmdXNiX2hvc3QwX2VoY2kgewo+
Pj4gICAJc3RhdHVzID0gIm9rYXkiOwo+Pj4gICB9Owo+Pj4gICAKPj4+ICsmdXNiX2hvc3QwX3ho
Y2kgewo+Pj4gKwlkcl9tb2RlID0gImhvc3QiOwo+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+PiAr
fTsKPj4+ICsKPj4+ICAgJnVzYl9ob3N0MV9laGNpIHsKPj4+ICAgCXN0YXR1cyA9ICJva2F5IjsK
Pj4+ICAgfTsKPj4+IEBAIC05MDAsNiArOTEzLDEwIEBAICZ1c2JfaG9zdDJfeGhjaSB7Cj4+PiAg
IAlzdGF0dXMgPSAib2theSI7Cj4+PiAgIH07Cj4+PiAgIAo+Pj4gKyZ1c2JkcF9waHkwIHsKPj4+
ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4gK307Cj4+PiArCj4+PiAgICZ1c2JkcF9waHkxIHsKPj4+
ICAgCXN0YXR1cyA9ICJva2F5IjsKPj4+ICAgfTsKPj4+Cj4+Cj4+Cj4+Cj4+CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
