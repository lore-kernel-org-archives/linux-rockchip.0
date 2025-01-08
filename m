Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A744E77188
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 22:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AYOa3hnieNOvFaFmoBkHc5VajpLVuIu8xBobjTz48U=; b=PweLI8LfYZNBFP
	g5P3meIHSSZkL+E+whncaCSH6B5QhTvy5v7v91lUaFQBdi1LvYxqnYmhFHVdn4AEKy2ZGq5faHUua
	z9s9shlyFgjWDOw09UdFwfwk/ZrKVUG8OM5177m3eCsvEwyigt+yLJa1JwXa5sS1jB/YGmIDHkHPo
	/UUrU1CAf791viETEVu0Y+m1/UXSmixjxnVy5ugxRSJ2Y/5jyJRi7pbcJuITmI+y7s/+2vwhD/Nbg
	Bnz/os4JZieTfwE4Fluy533sH3/uw5WaiVDvYtRg/MI2oAIfLj0TxgjG59ICKlroTLzE1O+ebNBj9
	DeCkogm87DZevYNCAYeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVeYP-0000000A1Ns-468o;
	Wed, 08 Jan 2025 22:29:33 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVeXC-0000000A18Q-2BWq;
	Wed, 08 Jan 2025 22:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736375248;
	bh=fx6RebTflN5sUpcLPzMyFKE1whwyihOXnOMDCyNB4aw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MllPfKZIFqZfcF9PxUfy+xoUsCoJ0Rp8Ddhu0XmxSFOMLr9Y3xVdvmi24djPCmX+E
	 l1mv4iOXLIM1ZduDbmjOZhctaJiR1b3k+rQLtbZoAAROiRQq4/ZVf4j690v9XLF1Gp
	 sEGelu5qr1cDBR7s92RpDHx1694JUaWA2lwa44a6ReOoy80UNGenZoyxKEWYTMqD82
	 5MwiuiNrAOSHK5oReCiAuKHqCPya4n2vHGeDmye5rl8LbaGDvxoVl1wD9q9jV/lZAO
	 k4SserqUbp9m6tVvCobIp823ZiksiOOjxXcZS/VkhPpq0bP2bduRzuwMMXoa4pVnUW
	 epvv6Hv+O4zQQ==
Received: from [192.168.1.90] (unknown [82.76.59.196])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B874D17E35E8;
	Wed,  8 Jan 2025 23:27:27 +0100 (CET)
Message-ID: <66aca370-04c3-4b2b-83ff-8bef3ca0cea6@collabora.com>
Date: Thu, 9 Jan 2025 00:27:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] drm/rockchip: vop2: Improve display modes handling
 on RK3588 HDMI0
To: Maxime Ripard <mripard@kernel.org>
Cc: Andy Yan <andyshrk@163.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20241211-vop2-hdmi0-disp-modes-v2-0-471cf5001e45@collabora.com>
 <1820767.5KxKD5qtyk@diego>
 <a4ex3s23r4k6wehyoaw3aylpcexfrclrxxykjpabhdfne2jgmu@ii6riiiga2zj>
 <1756448.izSxrag8PF@diego>
 <20241217-ubiquitous-refreshing-finch-aceade@houat>
 <c45ff74a-c9a4-4cf1-8530-04087e06b07a@collabora.com>
 <20241217-zealous-boisterous-llama-52bfcc@houat>
 <2ba24dc6-b6e7-4964-af84-a5374903ce36@collabora.com>
 <8dff095.1555.193d768ad5e.Coremail.andyshrk@163.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <8dff095.1555.193d768ad5e.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_142818_702195_58C043C3 
X-CRM114-Status: GOOD (  31.97  )
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

SGkgTWF4aW1lLAoKT24gMTIvMTgvMjQgMzozNiBBTSwgQW5keSBZYW4gd3JvdGU6Cj4gCj4gSGks
Cj4gCj4g5ZyoIDIwMjQtMTItMTggMDA6NTk6NTfvvIwiQ3Jpc3RpYW4gQ2lvY2FsdGVhIiA8Y3Jp
c3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+IOWGmemBk++8mgo+PiBPbiAxMi8xNy8yNCA2
OjUzIFBNLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+Pj4gT24gVHVlLCBEZWMgMTcsIDIwMjQgYXQg
MDY6MzY6NDFQTSArMDIwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+Pj4+IE9uIDEyLzE3
LzI0IDU6MDAgUE0sIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4+Pj4+IE9uIFdlZCwgRGVjIDExLCAy
MDI0IGF0IDA3OjAxOjE1UE0gKzAxMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4+Pj4gQW0g
TWl0dHdvY2gsIDExLiBEZXplbWJlciAyMDI0LCAxODo0Nzo0NCBDRVQgc2NocmllYiBNYXhpbWUg
UmlwYXJkOgo+Pj4+Pj4+IE9uIFdlZCwgRGVjIDExLCAyMDI0IGF0IDA2OjIzOjAzUE0gKzAxMDAs
IEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4+Pj4+PiBBbSBNaXR0d29jaCwgMTEuIERlemVtYmVy
IDIwMjQsIDE4OjA3OjU3IENFVCBzY2hyaWViIE1heGltZSBSaXBhcmQ6Cj4+Pj4+Pj4+PiBPbiBX
ZWQsIERlYyAxMSwgMjAyNCBhdCAxMjoxNTowN1BNICswMjAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEg
d3JvdGU6Cj4+Pj4+Pj4+Pj4gVGhlIFJLMzU4OCBzcGVjaWZpYyBpbXBsZW1lbnRhdGlvbiBpcyBj
dXJyZW50bHkgcXVpdGUgbGltaXRlZCBpbiB0ZXJtcwo+Pj4+Pj4+Pj4+IG9mIGhhbmRsaW5nIHRo
ZSBmdWxsIHJhbmdlIG9mIGRpc3BsYXkgbW9kZXMgc3VwcG9ydGVkIGJ5IHRoZSBjb25uZWN0ZWQK
Pj4+Pj4+Pj4+PiBzY3JlZW5zLCBlLmcuIDI1NjB4MTQ0MEA3NUh6LCAyMDQ4eDExNTJANjBIeiwg
MTAyNHg3NjhANjBIeiBhcmUganVzdCBhCj4+Pj4+Pj4+Pj4gZmV3IG9mIHRoZW0uCj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+PiBBZGRpdGlvbmFsbHksIGl0IGRvZXNuJ3QgY29wZSB3ZWxsIHdpdGggbm9u
LWludGVnZXIgcmVmcmVzaCByYXRlcyBsaWtlCj4+Pj4+Pj4+Pj4gNTkuOTQsIDI5Ljk3LCAyMy45
OCwgZXRjLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gTWFrZSB1c2Ugb2YgSERNSTAgUEhZIFBMTCBh
cyBhIG1vcmUgYWNjdXJhdGUgRENMSyBzb3VyY2UgdG8gaGFuZGxlCj4+Pj4+Pj4+Pj4gYWxsIGRp
c3BsYXkgbW9kZXMgdXAgdG8gNEtANjBIei4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFRlc3RlZC1i
eTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+Pj4+Pj4+Pj4+IFNpZ25lZC1vZmYt
Ynk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+
Cj4+Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wMi5jIHwgMzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4+
Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
Mi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPj4+Pj4+
Pj4+PiBpbmRleCA4YjJmNTNmZmVmZGJmMWNjODczN2IzYTg2ZTYzMGEwM2E3ZmQ5MzQ4Li4zOTNm
ZTZhYTE3MGFhZWU5NjYzYzRhNmQ5OGMxY2Q2YTVlZjc5MzkyIDEwMDY0NAo+Pj4+Pj4+Pj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+Pj4+Pj4+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPj4+
Pj4+Pj4+PiBAQCAtMTU4LDYgKzE1OCw3IEBAIHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgewo+Pj4+
Pj4+Pj4+ICAJc3RydWN0IGRybV9jcnRjIGNydGM7Cj4+Pj4+Pj4+Pj4gIAlzdHJ1Y3Qgdm9wMiAq
dm9wMjsKPj4+Pj4+Pj4+PiAgCXN0cnVjdCBjbGsgKmRjbGs7Cj4+Pj4+Pj4+Pj4gKwlzdHJ1Y3Qg
Y2xrICpkY2xrX3NyYzsKPj4+Pj4+Pj4+PiAgCXVuc2lnbmVkIGludCBpZDsKPj4+Pj4+Pj4+PiAg
CWNvbnN0IHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnRfZGF0YSAqZGF0YTsKPj4+Pj4+Pj4+PiAgCj4+
Pj4+Pj4+Pj4gQEAgLTIxMiw2ICsyMTMsNyBAQCBzdHJ1Y3Qgdm9wMiB7Cj4+Pj4+Pj4+Pj4gIAlz
dHJ1Y3QgY2xrICpoY2xrOwo+Pj4+Pj4+Pj4+ICAJc3RydWN0IGNsayAqYWNsazsKPj4+Pj4+Pj4+
PiAgCXN0cnVjdCBjbGsgKnBjbGs7Cj4+Pj4+Pj4+Pj4gKwlzdHJ1Y3QgY2xrICpwbGxfaGRtaXBo
eTA7Cj4+Pj4+Pj4+Pj4gIAo+Pj4+Pj4+Pj4+ICAJLyogb3B0aW9uYWwgaW50ZXJuYWwgcmdiIGVu
Y29kZXIgKi8KPj4+Pj4+Pj4+PiAgCXN0cnVjdCByb2NrY2hpcF9yZ2IgKnJnYjsKPj4+Pj4+Pj4+
PiBAQCAtMjIwLDYgKzIyMiw4IEBAIHN0cnVjdCB2b3AyIHsKPj4+Pj4+Pj4+PiAgCXN0cnVjdCB2
b3AyX3dpbiB3aW5bXTsKPj4+Pj4+Pj4+PiAgfTsKPj4+Pj4+Pj4+PiAgCj4+Pj4+Pj4+Pj4gKyNk
ZWZpbmUgVk9QMl9NQVhfRENMS19SQVRFCQk2MDAwMDAgLyoga0h6ICovCj4+Pj4+Pj4+Pj4gKwo+
Pj4+Pj4+Pj4+ICAjZGVmaW5lIHZvcDJfb3V0cHV0X2lmX2lzX2hkbWkoeCkJKCh4KSA9PSBST0NL
Q0hJUF9WT1AyX0VQX0hETUkwIHx8IFwKPj4+Pj4+Pj4+PiAgCQkJCQkgKHgpID09IFJPQ0tDSElQ
X1ZPUDJfRVBfSERNSTEpCj4+Pj4+Pj4+Pj4gIAo+Pj4+Pj4+Pj4+IEBAIC0xMDMzLDYgKzEwMzcs
OSBAQCBzdGF0aWMgdm9pZCB2b3AyX2NydGNfYXRvbWljX2Rpc2FibGUoc3RydWN0IGRybV9jcnRj
ICpjcnRjLAo+Pj4+Pj4+Pj4+ICAKPj4+Pj4+Pj4+PiAgCXZvcDJfY3J0Y19kaXNhYmxlX2lycSh2
cCwgVlBfSU5UX0RTUF9IT0xEX1ZBTElEKTsKPj4+Pj4+Pj4+PiAgCj4+Pj4+Pj4+Pj4gKwlpZiAo
dnAtPmRjbGtfc3JjKQo+Pj4+Pj4+Pj4+ICsJCWNsa19zZXRfcGFyZW50KHZwLT5kY2xrLCB2cC0+
ZGNsa19zcmMpOwo+Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+PiAgCWNsa19kaXNhYmxlX3VucHJlcGFy
ZSh2cC0+ZGNsayk7Cj4+Pj4+Pj4+Pj4gIAo+Pj4+Pj4+Pj4+ICAJdm9wMi0+ZW5hYmxlX2NvdW50
LS07Cj4+Pj4+Pj4+Pj4gQEAgLTIwNDksNiArMjA1NiwyNyBAQCBzdGF0aWMgdm9pZCB2b3AyX2Ny
dGNfYXRvbWljX2VuYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4+Pj4+Pj4+Pj4gIAo+Pj4+
Pj4+Pj4+ICAJdm9wMl92cF93cml0ZSh2cCwgUkszNTY4X1ZQX01JUElfQ1RSTCwgMCk7Cj4+Pj4+
Pj4+Pj4gIAo+Pj4+Pj4+Pj4+ICsJLyoKPj4+Pj4+Pj4+PiArCSAqIFN3aXRjaCB0byBIRE1JIFBI
WSBQTEwgYXMgRENMSyBzb3VyY2UgZm9yIGRpc3BsYXkgbW9kZXMgdXAKPj4+Pj4+Pj4+PiArCSAq
IHRvIDRLQDYwSHosIGlmIGF2YWlsYWJsZSwgb3RoZXJ3aXNlIGtlZXAgdXNpbmcgdGhlIHN5c3Rl
bSBDUlUuCj4+Pj4+Pj4+Pj4gKwkgKi8KPj4+Pj4+Pj4+PiArCWlmICh2b3AyLT5wbGxfaGRtaXBo
eTAgJiYgbW9kZS0+Y3J0Y19jbG9jayA8PSBWT1AyX01BWF9EQ0xLX1JBVEUpIHsKPj4+Pj4+Pj4+
PiArCQlkcm1fZm9yX2VhY2hfZW5jb2Rlcl9tYXNrKGVuY29kZXIsIGNydGMtPmRldiwgY3J0Y19z
dGF0ZS0+ZW5jb2Rlcl9tYXNrKSB7Cj4+Pj4+Pj4+Pj4gKwkJCXN0cnVjdCByb2NrY2hpcF9lbmNv
ZGVyICpya2VuY29kZXIgPSB0b19yb2NrY2hpcF9lbmNvZGVyKGVuY29kZXIpOwo+Pj4+Pj4+Pj4+
ICsKPj4+Pj4+Pj4+PiArCQkJaWYgKHJrZW5jb2Rlci0+Y3J0Y19lbmRwb2ludF9pZCA9PSBST0NL
Q0hJUF9WT1AyX0VQX0hETUkwKSB7Cj4+Pj4+Pj4+Pj4gKwkJCQlpZiAoIXZwLT5kY2xrX3NyYykK
Pj4+Pj4+Pj4+PiArCQkJCQl2cC0+ZGNsa19zcmMgPSBjbGtfZ2V0X3BhcmVudCh2cC0+ZGNsayk7
Cj4+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4+ICsJCQkJcmV0ID0gY2xrX3NldF9wYXJlbnQodnAtPmRj
bGssIHZvcDItPnBsbF9oZG1pcGh5MCk7Cj4+Pj4+Pj4+Pj4gKwkJCQlpZiAocmV0IDwgMCkKPj4+
Pj4+Pj4+PiArCQkJCQlkcm1fd2Fybih2b3AyLT5kcm0sCj4+Pj4+Pj4+Pj4gKwkJCQkJCSAiQ291
bGQgbm90IHN3aXRjaCB0byBIRE1JMCBQSFkgUExMOiAlZFxuIiwgcmV0KTsKPj4+Pj4+Pj4+PiAr
CQkJCWJyZWFrOwo+Pj4+Pj4+Pj4+ICsJCQl9Cj4+Pj4+Pj4+Pj4gKwkJfQo+Pj4+Pj4+Pj4+ICsJ
fQo+Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBJdCBzZWVtcyBwcmV0dHkgZnJhZ2ls
ZSB0byBkbyBpdCBhdCBhdG9taWNfZW5hYmxlIHRpbWUsIGV2ZW4gbW9yZSBzbwo+Pj4+Pj4+Pj4g
c2luY2UgeW91IGRvbid0IGxvY2sgdGhlIHBhcmVudCBlaXRoZXIuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4gQW55IHJlYXNvbiBub3QgdG8gZG8gaXQgaW4gdGhlIERSTSBvciBjbG9jayBkcml2ZXIgcHJv
YmUsIGFuZCBtYWtlIHN1cmUKPj4+Pj4+Pj4+IHlvdSBuZXZlciBjaGFuZ2UgdGhlIHBhcmVudCBz
b21laG93Pwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiByazM1ODggd2UgaGF2ZSAzIGRjbGtfcyBhbmQg
MiBoZG1pIGNvbnRyb2xsZXJzLiBFYWNoIHZpZGVvLXBvcnQgY2FuCj4+Pj4+Pj4+IHVzZSB0aGUg
Y2xvY2sgZ2VuZXJhdGVkIGZyb20gZWl0aGVyIHRoZSBoZG1pMHBoeSBvciBoZG1pMXBoeSwgZGVw
ZW5kaW5nCj4+Pj4+Pj4+IG9uIHdoaWNoIGhkbWktY29udHJvbGxlciBpdCB1c2VzLgo+Pj4+Pj4+
Pgo+Pj4+Pj4+PiBTbyB5b3UgYWN0dWFsbHkgbmVlZCB0byBrbm93IHdoaWNoIHZwWCB3aWxsIG91
dHB1dCB0byB3aGljaCBoZG1pWSB0byB0aGVuCj4+Pj4+Pj4+IHJlcGFyZW50IHRoYXQgZGNsayB0
byB0aGUgaGRtaXBoeSBvdXRwdXQuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGUgUm9ja2NoaXAgbm9tZW5j
bGF0dXJlIGlzbid0IHN1cGVyIG9idmlvdXMgdG8gbWUsIHNvcnJ5LiBJcyB0aGVyZSBhCj4+Pj4+
Pj4gZGF0YXNoZWV0IGZvciB0aGlzIHNvbWV3aGVyZT8gQWxzbywgZG9lcyB0aGlzIHZwWCAtPiBI
RE1JLVkgbWFwcGluZyBuZWVkCj4+Pj4+Pj4gdG8gYmUgZHluYW1pYz8KPj4+Pj4+Cj4+Pj4+PiBW
UHMgYXJlIENSVENzIGluIGRybS1sYW5ndWFnZSBhbmQgZWFjaCBvZiB0aGVtIGNhbiBkcml2ZSBh
IGRpZmZlcmluZwo+Pj4+Pj4gbnVtYmVyIG9mIG91dHB1dCBlbmNvZGVycy4gVGhvc2UgdmlkZW8t
cG9ydHMgYWxzbyBoYXZlIGRpZmZlcmluZyBvdXRwdXQKPj4+Pj4+IGNoYXJhY3RlcmlzdGljcyBp
biB0ZXJtcyBvZiBzdXBwb3J0ZWQgcmVzb2x1dGlvbiBhbmQgb3RoZXIgcHJvcGVydGllcy4KPj4+
Pj4+Cj4+Pj4+PiBUaGUgcmszNTg4IFRSTSBoYXMgbGVha2VkIGluIGEgbnVtYmVyIG9mIHBsYWNl
cywgYW5kIGlmIHlvdSBmaW5kIGEKPj4+Pj4+IFRSTS1wYXJ0MiwgdGhlcmUgaXMgYSBzZWN0aW9u
IGxhYmVsZWQgIkRpc3BsYXkgT3V0cHV0IEludGVyZmFjZSBEZXNjcmlwdGlvbiIKPj4+Pj4+IHRo
YXQgaGFzIGEgbmljZSBncmFwaGljIGZvciB0aGF0Lgo+Pj4+Pj4KPj4+Pj4+IE9yIGluIHNob3J0
Ogo+Pj4+Pj4gLSBDUlRDKFZQKTAgc3VwcG9ydHMgOEsgcmVzb2x1dGlvbiBhbmQgY2FuIGRyaXZl
IERQMCsxLCBIRE1JMCsxLCBlRFAwKzEKPj4+Pj4+ICAgW2lmIEknbSByZWFkaW5nIHRoaW5ncyBj
b3JyZWN0bHksIDhLIHRvZ2V0aGVyIHdpdGggQ1JUQzEgc29tZWhvdykKPj4+Pj4+IC0gQ1JUQyhW
UCkxIHN1cHBvcnRzIDRLIHJlc29sdXRpb24gYW5kIGNhbiBkcml2ZSBEUDArMSwgSERNSTArMSwg
ZURQMCsxCj4+Pj4+PiAtIENSVEMoVlApMiBzdXBwb3J0cyA0SyByZXNvbHV0aW9uIGFuZCBjYW4g
ZHJpdmUgRFAwKzEsIEhETUkwKzEsIGVEUDAxLCBEU0kwKzEKPj4+Pj4+IC0gQ1JUQyhWUCkzIHN1
cHBvcnRzIDJLIHJlc29sdXRpb24gYW5kIGNhbiBkcml2ZSBEU0kwKzEgYW5kIHNvbWUgQlQxMTIw
LEJUNjU2Cj4+Pj4+Pgo+Pj4+Pj4gc28gZm9yIHRoZSAzIGhpZ2hlciByZXNvbHV0aW9uIENSVENz
IHRoZXJlIGFyZSBlc3NlbnRpYWxseSA2IG9yIDggb3V0cHV0IG9wdGlvbnMKPj4+Pj4+IGRlcGVu
ZGluZyBvbiB0aGUgYm9hcmQgZGVzaWduCj4+Pj4+Cj4+Pj4+IFRoYXQncyBtdWNoIGNsZWFyZXIs
IHRoYW5rcy4gSSdtIG5vdCBlbnRpcmVseSBzdXJlIGhvdyB0aGF0IGxpbmtzIHRvIHRoZQo+Pj4+
PiBuZWVkIGZvciB0aGUgUExMIHRvIGNoYW5nZSBpdHMgcGFyZW50IGRlcGVuZGluZyBvbiB0aGUg
b3VwdXQuIERvIHlvdQo+Pj4+PiBuZWVkIHRvIGFsd2F5cyBoYXZlIGFsbCB0aGUgb3V0cHV0cyBv
biB0aGUgc2FtZSBQTEw/Cj4+Pj4KPj4+PiBPbmUgb2YgdGhlIHByb2JsZW1zIGlzIHRoYXQgdGhl
IFBIWSBQTExzIGNhbm5vdCBiZSB1c2VkIGFzIGNsb2NrIHNvdXJjZXMKPj4+PiBmb3IgcmVzb2x1
dGlvbnMgYWJvdmUgNEtANjBIeiwgd2hpbGUgVk9QMiBvbiBSSzM1ODggc3VwcG9ydHMgdXAgdG8g
OEtANjBIeiwKPj4+PiB3aGljaCBpcyBzdXBwb3NlZCB0byBiZSBoYW5kbGVkIGJ5IHRoZSBzeXN0
ZW0gQ1JVLgo+Pj4KPj4+IEJ1dCBjYW4gdGhhdCBzeXN0ZW0gQ1JVIGRyaXZlIHJlc29sdXRpb25z
IGxvd2VyIHRoYW4gNGtANjA/IElmIHNvLCB3aHkKPj4+IGRvIHdlIGJvdGhlciB3aXRoIFBIWXM/
Cj4+Cj4+IEl0IGNhbiwgYnV0IGl0J3Mgbm90IGFjY3VyYXRlIGVub3VnaCB0byBzdXBwb3J0IGFs
bCBtb2RlcywgZS5nLiB0aG9zZQo+PiBoYXZpbmcgZnJhY3Rpb25hbCByZWZyZXNoIHJhdGVzLCBh
bW9uZyBvdGhlcnMuICBUaGF0J3MgYWN0dWFsbHkgdGhlCj4+IHJlYXNvbiB3ZSdkIHdhbnQgdG8g
bWFrZSB1c2Ugb2YgdGhlIFBIWSBQTExzLgo+IAo+IE5vdCBvbmx5IHRoYXQuIEZvciByZXNvbHV0
aW9ucyBsb3dlciB0aGFuIDRrQDYwLCBpZiB3ZSB1c2Ugc3lzdGVtIGN1ciBhcyBkY2xrIHBhcmVu
dCwKPiBpdCBjYW4ndCAgc3luYyB3aXRoIEhETUkgVE1EUyBjbG9jayAsIHRoaXMgY291bGQgbGVh
ZCB0byBzdGFiaWxpdHkvY29tcGF0aWJpbGl0eSBpIGlzc3VlcywKPiB3aGljaCBtYXkgbm90IGJl
IGVhc3kgdG8gZW5jb3VudGVyLCBidXQgd2UgaGF2ZSBpbmRlZWQgZXhwZXJpZW5jZWQgdGhlbSAg
ZmV3IHRpbWVtcwo+IGluIGEgbGFyZ2UgYW1vdW50IG9mIHByb2R1Y3RpemF0aW9uIHByYWN0aWNl
LgoKQ291bGQgeW91IHBsZWFzZSBpbmRpY2F0ZSB3aGljaCB3b3VsZCBiZSB0aGUgcmVxdWlyZWQg
Y2hhbmdlcyB0byBtYWtlCnRoaXMgYWNjZXB0YWJsZSB1cHN0cmVhbSBhbmQgdW5ibG9jayB0aGUg
c2VyaWVzPwoKVGhhbmtzLApDcmlzdGlhbgoKPj4+PiBNb3Jlb3ZlciwgdGhlIDIgUExMcyBhcmUg
c2hhcmVkIGJldHdlZW4gMyBvdXQgb2YgdGhlIDQgdmlkZW8gcG9ydHMgYWxyZWFkeQo+Pj4+IG1l
bnRpb25lZCBieSBIZWlrby4gIFRoZXJlIGlzIHF1aXRlIGEgYml0IG9mIGNvbXBsZXhpdHkgaW4g
ZG93bnN0cmVhbQo+Pj4+IGRyaXZlciB0byBoYW5kbGUgYWxsIHBvc3NpYmxlIHVzZWNhc2VzIC0g
c2VlIFsxXSBmb3IgYSBicmllZiBkZXNjcmlwdGlvbiBvbgo+Pj4+IGhvdyB3YXMgdGhhdCBkZXNp
Z25lZCB0byB3b3JrLgo+Pj4KPj4+IFRoYXQncyBhIGdlbmVyaWMgYWxsb2NhdGlvbiBpc3N1ZS4g
TXVsdGlwbGUgZHJpdmVycyAodmM0IGZvciBleGFtcGxlKQo+Pj4gaGFzIHRoaXMgaXNzdWUgZm9y
IG90aGVyIGNvbXBvbmVudHMuIEl0IGNhbiBiZSBmYWlybHkgZWFzaWx5IGRlYWx0IHdpdGgKPj4+
IGF0IGF0b21pY19jaGVjayB0aW1lLgo+Pj4KPj4+IE1heGltZQo+PgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
