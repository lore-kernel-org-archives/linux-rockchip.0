Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E116FF8850
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 01:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+Othb/rm5PJ4rMuAyfD3ZPEF7bnC5V/SSuUc82Z6NA=; b=n6mafZsrisf+FP
	5txQHkBdRp6SPw0QGSaz02F56LyeofkK7HFDn+TY//0qjL8QeS546F0NL95JnUkXHbQSq4aSTk5/P
	Ay4TRmewHxdRHkjZLQznR532YjhAWeO1Vjdi4sB0ixvDIcofqGzWvlT0jAa3A9GecxftEq4fxOJIr
	pNUAaqzqOgvlY85Z6/PfKwMF/DbPMJkI8Ou1eIf094JfbqYf7ik6L4rgymynGy1LgyBYGuqF3etZH
	2y4+k+VaN984PuwF6OzKatH/LSMBJCetl9Q+OzUalzXpwpnktKnIr9f5ODLj7EwW/gA7j/yByveXi
	jh41qbOYPbIFnnpfnp7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHAeG-0000000G0V1-2Ojk;
	Mon, 27 Apr 2026 01:20:32 +0000
Received: from mail-m6099.netease.com ([210.79.60.99])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHAeD-0000000G0UE-1QZ1;
	Mon, 27 Apr 2026 01:20:31 +0000
Received: from [172.16.12.43] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3c3462145;
	Mon, 27 Apr 2026 09:20:24 +0800 (GMT+08:00)
Message-ID: <2af2f6a1-9b3b-4be5-b842-dcf29621e7ec@rock-chips.com>
Date: Mon, 27 Apr 2026 09:20:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/6] pwm: Add rockchip PWMv4 driver
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Lee Jones <lee@kernel.org>, William Breathitt Gray <wbg@kernel.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Alexey Charkov <alchark@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20260420-rk3576-pwm-v5-0-ae7cfbbe5427@collabora.com>
 <20260420-rk3576-pwm-v5-3-ae7cfbbe5427@collabora.com>
 <4592b323-bebd-4242-ae31-892a51b5b3be@rock-chips.com>
 <ae4MCRE_hGJ-VcBQ@monoceros>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <ae4MCRE_hGJ-VcBQ@monoceros>
X-HM-Tid: 0a9dcc85f48b03a3kunm09663e0d16a152
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCS0kdVhodSk4fTBoYGB4aHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=bN5zx+rtmrL/sfaeiN+vg4O5kxMPAdyyupG2fp4MJaav5iTPpC3+Md9GiDIwaAEa20itdarD/TrppKYVToPHo/R9mZIVkQzwHk0zzW7y0APT8DmguCFa2GcaMdME/F662c9RLqfWIX+kk0dx0he8C4S8WCAeOMp5f3/CgfSwlPs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=LIIi6TlLlORarJbE8L0nD/XYuT5XrhpXxkOCrf081b0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_182029_977962_BB165A3F 
X-CRM114-Status: GOOD (  20.03  )
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

SGkgVXdlLAoKT24gNC8yNi8yMDI2IDk6MDYgUE0sIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+
IEhlbGxvLAo+IAo+IGZpcnN0IG9mIGFsbCB0aGFua3MgZm9yIHlvdXIgZXh0ZW5zaXZlIHRlc3Rp
bmcsIHZlcnkgYXBwcmVjaWF0ZWQuCj4gCj4gT24gU3VuLCBBcHIgMjYsIDIwMjYgYXQgMDU6NDQ6
NDZQTSArMDgwMCwgRGFtb24gRGluZyB3cm90ZToKPj4gT24gNC8yMC8yMDI2IDk6NTIgUE0sIE5p
Y29sYXMgRnJhdHRhcm9saSB3cm90ZToKPj4+IFRoZSBSb2NrY2hpcCBSSzM1NzYgYnJpbmdzIHdp
dGggaXQgYSBuZXcgUFdNIElQLCBpbiBkb3duc3RyZWFtIGNvZGUKPj4+IHJlZmVycmVkIHRvIGFz
ICJ2NCIuIFRoaXMgbmV3IElQIGlzIGRpZmZlcmVudCBlbm91Z2ggZnJvbSB0aGUgcHJldmlvdXMK
Pj4+IFJvY2tjaGlwIElQIHRoYXQgSSBmZWx0IGl0IG5lY2Vzc2FyeSB0byBhZGQgYSBuZXcgZHJp
dmVyIGZvciBpdCwgaW5zdGVhZAo+Pj4gb2Ygc2hvZWhvcm5pbmcgaXQgaW4gdGhlIG9sZCBvbmUu
Cj4+Pgo+Pj4gQWRkIHRoaXMgbmV3IGRyaXZlciwgYmFzZWQgb24gdGhlIFBXTSBjb3JlJ3Mgd2F2
ZWZvcm0gQVBJcy4gSXRzIHBsYXRmb3JtCj4+PiBkZXZpY2UgaXMgcmVnaXN0ZXJlZCBieSB0aGUg
cGFyZW50IG1mcHdtIGRyaXZlciwgZnJvbSB3aGljaCBpdCBhbHNvCj4+PiByZWNlaXZlcyBhIGxp
dHRsZSBwbGF0Zm9ybSBkYXRhIHN0cnVjdCwgc28gdGhhdCBtZnB3bSBjYW4gZ3VhcmFudGVlIHRo
YXQKPj4+IGFsbCB0aGUgcGxhdGZvcm0gZGV2aWNlIGRyaXZlcnMgc3ByZWFkIGFjcm9zcyBkaWZm
ZXJlbnQgc3Vic3lzdGVtcyBmb3IKPj4+IHRoaXMgc3BlY2lmaWMgaGFyZHdhcmUgSVAgZG8gbm90
IGludGVyZmVyZSB3aXRoIGVhY2ggb3RoZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTmljb2xh
cyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KPj4gVGVzdGVk
LWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+Pgo+PiBUaGUgY29u
dGludW91cyBtb2RlIG9mIGFsbCBQV00gY2hhbm5lbHMgaGFzIGJlZW4gcHJlbGltaW5hcmlseSB0
ZXN0ZWQKPj4gYW5kIHZlcmlmaWVkIHdvcmtpbmcgb24gdGhlIFJLMzU3NiBJb1QgYm9hcmQuCj4+
Cj4+IEkgaGF2ZSB0ZXN0ZWQgd2l0aCBzZXZlcmFsIHR5cGljYWwgcGVyaW9kIGFuZCBkdXR5IGN5
Y2xlIGNvbmZpZ3VyYXRpb25zLgo+Pgo+PiBGb2xsb3dpbmcgVXdlJ3Mgc3VnZ2VzdGlvbiBbMF0s
IEkgYWxzbyB0ZXN0ZWQgd2l0aCBsaWJwd20gdXNpbmcgY29tbWFuZHMKPj4gc2ltaWxhciB0byB0
aGUgZm9sbG93aW5nOgo+Pgo+PiAuL3B3bXNldCAtYyAwIC1wIDAgLVAgMTAwMDAwMCAtRCA1MDAw
MDAgLXMgNTAwMAo+IAo+IFRoaXMgb25lIGlzIGdvb2QgaWYgeW91IGhhdmUgYW4gb3NjaWxsb3Nj
b3BlIChvciBzb21ldGhpbmcgc2ltaWxhcikgdG8KPiB2ZXJpZnkgdGhlIG91dHB1dC4gV2l0aG91
dCB0aGF0IChvciBhZGRpdGlvbmFsbHkpIHB3bXRlc3RwZXJmIGNyZWF0ZXMgYQo+IHNlcmllcyBv
ZiByZXF1ZXN0cyB0aGF0IGluIGNvbWJpbmF0aW9uIHdpdGggUFdNX0RFQlVHIHNob3VsZCB1bmNv
dmVyCj4gcm91bmRpbmcgZXJyb3JzIGluIHRoZSAudG9odyBhbmQgLmZyb21odyBjYWxsYmFja3Mu
CgpBaGEsIHRoaXMgaXMgbXkgb3ZlcnNpZ2h0LiBJIGRpZCBub3QgZWxhYm9yYXRlIG9uIG15IHZl
cmlmaWNhdGlvbiAKbWV0aG9kcy4gOy0pCgpJIGhhdmUgYWRvcHRlZCB0aHJlZSB3YXlzIHRvIGNv
bXBsZXRlIHRoZSB0ZXN0OgoKMS4gTWVhc3VyZSB0aGUgb3V0cHV0IHdhdmVmb3JtIG9mIGVhY2gg
Y2hhbm5lbCB3aXRoIGEgc2ltcGxlIGxvZ2ljIAphbmFseXplciwgS2luc3QgTEEyMDE2LgoyLiBS
ZWFkIHJlbGV2YW50IHJlZ2lzdGVycyB0byB2ZXJpZnkgdGhhdCB0aGUgY29uZmlndXJlZCBwZXJp
b2QgYW5kIGR1dHkgCnZhbHVlcyBtYXRjaCBleHBlY3RhdGlvbnMuCjMuIENvbm5lY3QgdGhlIFBX
TSBjb250aW51b3VzIG91dHB1dCBwaW5zIHRvIGNhcHR1cmUgaW5wdXQgcGlucyAKZGlyZWN0bHks
IHRvIGNvbmZpcm0gdGhlIGNhcHR1cmUgbWVhc3VyZW1lbnQgcmVzdWx0cy4KCj4gCj4gQSBnb29k
IHNldCBvZiBjYWxscyB0aGVuIGlzOgo+IAo+IAlwd210ZXN0cGVyZiAtcCAuLi4gLWMgLi4uIC1Q
IDUwMDAwIC1TMQo+IAlwd210ZXN0cGVyZiAtcCAuLi4gLWMgLi4uIC1QIDUwMDAwIC1TMSAtSQo+
IAo+IAlwd210ZXN0cGVyZiAtcCAuLi4gLWMgLi4uIC1QIDUwMDAwIC1TLTEKPiAJcHdtdGVzdHBl
cmYgLXAgLi4uIC1jIC4uLiAtUCA1MDAwMCAtUy0xIC1JCj4gCj4gKEFzc3VtaW5nIHRoYXQgNTAw
MDAgaXMgYSBzZW5zaWJsZSBwZXJpb2QgZm9yIHRoZSBkZXZpY2UgdW5kZXIgdGVzdC4pCj4gCgpP
a2F5LCBJIHdpbGwgbG9vayBpbnRvIHRoaXMgdG9vbCBhbmQgcnVuIHRoZXNlIGNvbW1hbmRzIHRv
IGNvbmR1Y3QgbW9yZSAKaW4tZGVwdGggdmVyaWZpY2F0aW9uLgoKPiBBbmQgeWVzLCBJIGtub3cs
IEkgbmVlZCB0byBkb2N1bWVudCB0aGF0IHVzaW5nIHNvbWV0aGluZyBtb3JlIHBlcm1hbmVudAo+
IHRoYW4gYSBtYWlsaW5nIGxpc3QgcG9zdC4KPiAKCkJlc3QgcmVnYXJkcywKRGFtb24KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
