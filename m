Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2708E7718B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 00:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+F/rfhAeBiFKvR4j2E98ssrmS/FamHo1O05kmyHrIY=; b=eaS7LMnxafmnmz
	Xfd3h1QqG2hjrNsQNS9rTU4V0cNWQUF+ygvDAQFrKEnPoJPfB+7AnCANOH/jvRSnzQNbqytQKCZB2
	hoFVAYuqHgtrwvef04pw2+hmz841mp2PR14KoqBkeOyE4sqyIhjWeSMKPI2YP93IUsh1p6F3YwnHV
	1MjszSvH1ucxtpX5DdoMPTGCaUXkhFiPiJWlon/4JvDlmoreCkE/L7c70U0ZJrX6N7YDxd5286n78
	X4UQZQ3Dk3S0IwLT199bQt4iRhYCU/z3VtgDOmuCHwahyjEB0zFgGPYh/G4wdsZ3uyalWhjCgJZN6
	aYDed641k59Mm1jGopPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQbx0-0000000EYhd-3ccf;
	Thu, 26 Dec 2024 00:42:06 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQbwx-0000000EYex-2QD7
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 00:42:06 +0000
X-QQ-mid: bizesmtpip4t1735173695tiwqr0c
X-QQ-Originating-IP: 79ZxKSJvoqeVWDbeizzyhVD9v3D8Jb2HG7ib6aonO0U=
Received: from [IPV6:240f:10b:7440:1:d8d9:4d7d ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 26 Dec 2024 08:41:29 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8662033335659054945
Message-ID: <8D3886B0B9726004+4aa129f3-0141-4b62-8566-3e0971a617ca@radxa.com>
Date: Thu, 26 Dec 2024 09:41:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
To: Dragan Simic <dsimic@manjaro.org>
Cc: Alexey Charkov <alchark@gmail.com>, heiko@sntech.de, robh@kernel.org,
 conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com,
 tim@feathertop.org, kever.yang@rock-chips.com,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org
References: <20241224210912.2121-1-naoki@radxa.com>
 <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
 <4FAC0C844CFF6787+c12ba0e7-c1da-4fe7-aa0f-79340b9ff81a@radxa.com>
 <28cff8b07bc271da3672076b32f13b44@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <28cff8b07bc271da3672076b32f13b44@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Nlna3a5R+peuVEC16lOge95pS6u/wvEyKDlSESZkz9h3Sm2GX3Bgrt89
	7Bbg2vmYJ3QVF6Zm44y+FS4O/fbCjzQfwBjwF9GfwumoFoH/yPyTtFHB45fCFXOxrV49VWC
	SXN3AUyNAY7qMLb35Wv8uTmWraPNdy+xmU0xG3VEKrVOLERY08oGjauYrRA0X61O3M8R6vD
	6rXxDYN9EM3blanVS3EkeAHJ2PrVHiVEMuXLj2ChL1eibhF3IENr/j2RndGIqedtoqcC8X3
	CpjJrGXjRcnD2PkEMYr+lLFAeEblhiWwW3PpMuaxEAniO5b1lTuwDjGKfZq8QjGhMuBIafN
	V9atsCQ6NBR0F8Mz3AD0psObAn1vFIKlWxHTmzVSiLniHITRWRJqYHqAhY8d9pJU6ynXG71
	NlqfmUXlQNLycPAZM0q1ksRoLiP04p9xzehDEREZ7ZYXnmKrI6O4UMvvAybyaZfDBqBZcZl
	ux0WBUxo/0wEnG17Kl88kh4m/C+DTPY1Lu66pJSL58SwhgsX9ZCAvOk8IsyexN95yxen2Nf
	ccKf6j+DuRnDtw5LBP/JlXhVYEnPhVJf7EA9NFszJ8Jie4QD54Lt+IvDno1wLuBC1b+gU+1
	srcxeg3IIesc22bLCMqkCXTnCQ/CwXC2TJVJc+2YjsldgYT8GTxfmTN+GgPiY9IwhDyqCQQ
	tRKvGY6ULKbwE9XyFhqmTlLkMeR+j1CozAEGYw97JZz3qhtsa2/kkbKx++4zP16/hyNvrqt
	ulQCbuuO8MPC5i6EI1ZsrPrL2rTg2xTEYlaWjIxG93VdeWdjwFZKceBB8U212DsKjxWEaRw
	5gPdmCoT2M+3bd0szvPcUHKDNWdmWdzAKE75Q17UsKYachiIJ4tdvSo5iQfk2iuGQCCAp4Q
	2oZC+pjXYZPoLZLCmcy0iwQ1sENIPTGuD6tzYG5+83iAZ9pb3L5yVGicN/wx8BrG
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_164204_188043_70CCB9CA 
X-CRM114-Status: GOOD (  23.57  )
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

SGkgRHJhZ2FuLAoKT24gMTIvMjUvMjQgMTk6MjUsIERyYWdhbiBTaW1pYyB3cm90ZToKPiBIZWxs
byBOYW9raSwKPiAKPiBPbiAyMDI0LTEyLTI1IDExOjA5LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+
PiBPbiAxMi8yNS8yNCAxNzozMiwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+PiBPbiBXZWQsIERl
YyAyNSwgMjAyNCBhdCAxMjoyMuKAr1BNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4g
d3JvdGU6Cj4+Pj4KPj4+PiBUaGUgUmFkeGEgUk9DSyA1QisgaXMgYW4gdXBncmFkZWQgdmVyc2lv
biBvZiB0aGUgUmFkeGEgUk9DSyA1Qi4KPj4+Pgo+Pj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGludHJv
ZHVjZXMgYSBzaGFyZWQgLmR0c2kgdGhhdCBjYW4gYmUgdXNlZCBvbiB0aGUKPj4+PiBuZXcgUmFk
eGEgUk9DSyA1QissIHRoZSBleGlzdGluZyBSYWR4YSBST0NLIDVCLCBhbmQgdGhlIHVwY29taW5n
IFJhZHhhCj4+Pj4gUk9DSyA1VC4KPj4+Pgo+Pj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGluY2x1ZGVz
ICJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFVTQi1DIHN1cHBvcnQgdG8KPj4+PiBST0NLIDVC
IiBieSBTZWJhc3RpYW4gUmVpY2hlbFsxXS4KPj4+Pgo+Pj4+IFsxXSBodHRwczovL3BhdGNod29y
ay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvIAo+Pj4+IHBhdGNoLzIwMjQxMjEw
MTYzNjE1LjEyMDU5NC0xLXNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20vCj4+Pj4KPj4+
PiBGVUtBVU1JIE5hb2tpICgzKToKPj4+PiDCoMKgIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlw
OiBBZGQgUmFkeGEgUk9DSyA1QisKPj4+PiDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQg
UmFkeGEgUk9DSyA1QisKPj4+PiDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBDb252ZXJ0IFJh
ZHhhIFJPQ0sgNUIgdG8gdXNlIHNoYXJlZCAuZHRzaQo+Pj4KPj4+IFRoaXMgb25lIGRvZXNuJ3Qg
bG9vayBlcXVpdmFsZW50IHRvIHRoZSBleGlzdGluZyBST0NLIDVCIGRldmljZSB0cmVlCj4+PiBh
ZnRlciB5b3VyIGNoYW5nZXMgKEkndmUgbm90aWNlZCBpbiBwYXJ0aWN1bGFyIHRoYXQgZmFuIGNv
b2xpbmcgbGV2ZWxzCj4+PiBhcmUgZGlmZmVyZW50IC0gYnV0IHRoYXQncyBqdXN0IHRoZSBwYXJ0
IEkgcmVtZW1iZXIgd2VsbCBzaW5jZSBJCj4+PiBtb2RpZmllZCBpdCBlYXJsaWVyLCB0aGVyZSBt
aWdodCBiZSBtb3JlIGRpZmZlcmVuY2VzKS4KPj4KPj4gVGhhbmtzIGZvciBwb2ludGluZyEKPj4K
Pj4+IFdvdWxkIHlvdSBtaW5kIHJlYXJyYW5naW5nIHRoZSBwYXRjaGVzIHNvIHRoYXQgdGhlIHNw
bGl0IG9mIFJPQ0sgNUIKPj4+IGR0cyBpbnRvIGEgY29tbW9uIC5kdHNpIGFuZCBwZXItYm9hcmQg
LmR0cyBhZGRpdGlvbnMgY291bGQgYmUgbWFkZQo+Pj4gb25lLXRvLW9uZSBlcXVpdmFsZW50IHdp
dGhvdXQgZnVuY3Rpb25hbCBjaGFuZ2VzLCBhbmQgdGhlbiBhZGQgUk9DSwo+Pj4gNUIrIGFuZCBh
bnkgb3RoZXIgcmVxdWlyZWQgY2hhbmdlcyBvbiB0b3Agb2YgdGhhdD8KPj4KPj4gTXkgcHJpb3Jp
dHkgZ29hbCBpcyB0byBhZGQgc3VwcG9ydCBmb3IgUk9DSyA1QisgYW5kIDVULiBUaGlzIHRpbWUs
IEkKPj4gd2lsbCBub3QgbWFrZSBhbnkgY2hhbmdlcyB0byBST0NLIDVCIHNvIGFzIG5vdCB0byBi
cmVhayBpdC4gVGhlcmVmb3JlLAo+PiBJIHdpbGwgZHJvcCBQQVRDSCAzLzMuCj4+Cj4+IChJIHdv
dWxkIGxpa2UgdG8gbWFrZSBjaGFuZ2VzIHRvIFJPQ0sgNUIgYXQgc29tZSBwb2ludC4pCj4gCj4g
SSBzZWUsIGJ1dCBJIHRoaW5rIHRoYXQganVzdCBkcm9wcGluZyB0aGUgcGF0Y2ggMy8zIHdvdWxk
bid0IGJlIHRoZQo+IGJlc3QgcG9zc2libGUgb3B0aW9uLsKgIFRoYXQgd2F5IHlvdSdkIGVuZCB1
cCB3aXRoIGEgImRhbmdsaW5nIiBkdHNpCj4gZmlsZSwgdXNlZCBieSBqdXN0IG9uZSBib2FyZCBk
dHMgZmlsZSwgd2hpY2ggaXMgYSBiaXQgc3Vib3B0aW1hbC4KClNvIHBsZWFzZSBpZ25vcmUgdGhp
cyBwYXRjaCBzZXJpZXMgdW50aWwgSSBjYW4gYWRkIFJPQ0sgNVQsIHdoaWNoIHdpbGwgCmJlIGF2
YWlsYWJsZSBzb29uLiAoTWF5YmUuLi4pCgpJJ20gc2VuZGluZyB2MiBkdWUgdG8gYSBzbWFsbCBm
aXgsIHBsZWFzZSBpZ25vcmUgaXQuCgo+IEknZCBzdWdnZXN0IHRoYXQgeW91IGFjdHVhbGx5IGRv
IGl0IHRoZSByaWdodCB3YXksIHNvIHRvIHNwZWFrLCBieQo+IGFjdHVhbGx5IGNvbnZlcnRpbmcg
dGhlIFJPQ0sgNUIgZHRzIGZpbGUgdG8gdXNlIHRoZSBzaGFyZWQgZHRzaSBmaWxlCj4gaW4gYSB3
YXkgdGhhdCBtYWtlcyB0aGUgdHJhbnNpdGlvbiBtb3JlIG9idmlvdXMgYW5kLCBhcyBhIHJlc3Vs
dCwKPiBlYXNpZXIgdG8gcmV2aWV3LCBhcyBhbHJlYWR5IHN1Z2dlc3RlZCBhYm92ZS4KCklmIEkg
aGF2ZSBlbm91Z2ggdGltZSB0byBmaXggdGhlIFJPQ0sgNUIgZHRzLCBJIHdpbGwgZG8gaXQuCgpC
ZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikg
Q28uLCBMdGQuCgo+IEFzIGFub3RoZXIgb3B0aW9uLCBJJ20gZ29pbmcgdG8gYXNrIFJhZHhhIGZv
ciBhIHNhbXBsZSBST0NLIDVCKyBib2FyZAo+IHNvb24sIGZvciBteSBSb2NrY2hpcCBTb0MgYmlu
bmluZyBwcm9qZWN0LCBhbmQgaWYgSSBhY3R1YWxseSBnZXQgaXQsCj4gSSBjb3VsZCB0YWtlIG92
ZXIgdGhpcyBzZXJpZXMsIHRvIGhlbHAgeW91IHRoYXQgd2F5IHdpdGggZ2V0dGluZyB0aGUKPiBw
YXRjaCBzZXJpZXMgaW4gYmV0dGVyIHNoYXBlLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
