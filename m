Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D13EE7718C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 19:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPFfV64XSEYqnUbskPhM/RuK09KLTnNFh6+3aQ90xxw=; b=rHw8ESjxIADjdA
	3L7MPbP8LmPcrr40hxi/3DuVTw5FUNnhpGzzY84NazXL5XWEzOqppPUuFe+tKz7FZD5VtvFeGnNUP
	6kOZpf0CNMvftjfLkdNw7Qnu61NsV83ZN630Ob+80c58GiCcXvDcNvw8ln2l2DQXo0wKYz02pcU+4
	Lt31Jga+2S6//E7HRQUL+4tZ+VuDlH3yltUEDwIM17DEQtKOVFX83MiLfXEQCLoXWstbznNyLqjFZ
	DOf0AIK8U+TCYjN15zH9TiieewH98uFpmnpIHxEhNR3WJ+IIqOtyzS/1PMvKTqzcTSdVsVqVJrSZP
	R/wH4Y8qI95nV3/UUzMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOMeG-00000002vHQ-0wK7;
	Thu, 19 Dec 2024 19:57:28 +0000
Received: from bout3.ijzerbout.nl ([2a01:7c8:fff8:2b8:5054:ff:fe86:f72d])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOMYj-00000002u2N-2gqO;
	Thu, 19 Dec 2024 19:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ijzerbout.nl; s=key;
	t=1734637904; bh=CLTYGlkArbh9G44nbamSYDRsT+GxW9EOzuXjgf57kew=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=S2S4Fpfx+y2RwzTH27vG7Pm6ixE0N+e0KsxNdKwNsdOcgb97FjTAIJIrvu/OM6DBR
	 ERy16mpog/gaQJwHjFF/6+r7EPRYbbcl4QwR7jusUOIyoG61Iy/XUdXOTdawQ2DZhu
	 nlcdcwJaYiMnhnIF/ND6buzeqSKdrOQj8RI2cQQNiHxLRnn3/CyzuEananaUOPIiyW
	 lj9wtTWsMpH0THnYevKFhMdoZJRRfPi8Qzy50GzI0jTIHLQ5V8QlwpNY4NVT2SqfgF
	 GPlbSPGLKkoSM2fecuswXSU1b/PomVoiQJeZr+Vz5AEW0Cp2Q4Iwac/jPDEI4BO8iN
	 DPlnn7uVBrn2jEThiYgmvVOB80UDULTb2emYsVZFAuzReteGey4zvSSzvKVu/Mzcvz
	 F8LHEf6wE5552abnvkhU/MdN/OPuG35qiwd19fK0yglFNCOccDDBke1YgkUuSicXMF
	 PxdUdTiuiDtLjP2llVQv3U5DBDonIiYc3BxuFuH485QqvkXoiqDRUbyazCGpL6u4zL
	 nvK2JSqFQoGXA/cLpfEZo5IvMEGXkEAnKTP/DqmSzJbPBGVkXRnnvYZXXTBUlr2AcC
	 Jb0evGNO9isBVdjyhr6XKuPntK8SvMzBl7vw6VdhFLKUUcIYZlaomrY0XphpQSfwvX
	 hYoP0YM6Lij67jU1554I7ki0=
Received: from [IPV6:2a10:3781:99:1:1ac0:4dff:fea7:ec3a] (racer.ijzerbout.nl [IPv6:2a10:3781:99:1:1ac0:4dff:fea7:ec3a])
	by bout3.ijzerbout.nl (Postfix) with ESMTPSA id 0DB7218010B;
	Thu, 19 Dec 2024 20:51:44 +0100 (CET)
Message-ID: <4cecc705-84ab-44d5-8725-eb973254f257@ijzerbout.nl>
Date: Thu, 19 Dec 2024 20:51:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/9] mfd: add base driver for qnap-mcu devices
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, lee@kernel.org,
 jikos@kernel.org, jic23@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jdelvare@suse.com, linux@roeck-us.net, srinivas.pandruvada@linux.intel.com,
 bentiss@kernel.org, dmitry.torokhov@gmail.com, pavel@ucw.cz,
 ukleinek@debian.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-input@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-leds@vger.kernel.org
References: <20241107114712.538976-1-heiko@sntech.de>
 <20241107114712.538976-5-heiko@sntech.de>
 <5d1ddf7e-2df5-4563-81e5-e0cfa7ef58da@ijzerbout.nl>
 <3130486.CbtlEUcBR6@diego>
Content-Language: en-US
From: Kees Bakker <kees@ijzerbout.nl>
In-Reply-To: <3130486.CbtlEUcBR6@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_115145_817678_56C0C042 
X-CRM114-Status: GOOD (  24.03  )
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

T3AgMTktMTItMjAyNCBvbSAyMDo0MyBzY2hyZWVmIEhlaWtvIFN0w7xibmVyOgo+IEhpIEtlZXMs
Cj4KPiBBbSBEb25uZXJzdGFnLCAxOS4gRGV6ZW1iZXIgMjAyNCwgMjA6MTg6MzggQ0VUIHNjaHJp
ZWIgS2VlcyBCYWtrZXI6Cj4+IE9wIDA3LTExLTIwMjQgb20gMTI6NDcgc2NocmVlZiBIZWlrbyBT
dHVlYm5lcjoKPj4+IFRoZXNlIG1pY3JvY29udHJvbGxlciB1bml0cyBhcmUgdXNlZCBpbiBuZXR3
b3JrLWF0dGFjaGVkLXN0b3JhZ2UgZGV2aWNlcwo+Pj4gbWFkZSBieSBRTkFQIGFuZCBwcm92aWRl
IGFkZGl0aW9uYWwgZnVuY3Rpb25hbGl0eSB0byB0aGUgc3lzdGVtLgo+Pj4KPj4+IFRoaXMgYWRk
cyB0aGUgYmFzZSBkcml2ZXIgdGhhdCBpbXBsZW1lbnRzIHRoZSBzZXJpYWwgcHJvdG9jb2wgdmlh
Cj4+PiBzZXJkZXYgYW5kIGFkZGl0aW9uYWxseSBob29rcyBpbnRvIHRoZSBwb3dlcm9mZiBoYW5k
bGVycyB0byB0dXJuCj4+PiBvZmYgdGhlIHBhcnRzIG9mIHRoZSBzeXN0ZW0gbm90IHN1cHBsaWVk
IGJ5IHRoZSBnZW5lcmFsIFBNSUMuCj4+Pgo+Pj4gVHVybmluZyBvZmYgKGF0IGxlYXN0IHRoZSBU
U3gzMyBkZXZpY2VzIHVzaW5nIFJvY2tjaGlwIFNvQ3MpIGNvbnNpc3RzIG9mCj4+PiB0d28gc2Vw
YXJhdGUgYWN0aW9ucy4gVHVybmluZyBvZmYgdGhlIE1DVSBhbG9uZSBkb2VzIG5vdCB0dXJuIG9m
ZiB0aGUgbWFpbgo+Pj4gU29DIGFuZCB0dXJuaW5nIG9mZiBvbmx5IHRoZSBTb0MvUE1JQyBkb2Vz
IG5vdCB0dXJuIG9mZiB0aGUgaGFyZC1kcml2ZXMuCj4+PiBBbHNvIGlmIHRoZSBNQ1UgaXMgbm90
IHR1cm5lZCBvZmYsIHRoZSBzeXN0ZW0gYWxzbyB3b24ndCBzdGFydCBhZ2FpbiB1bnRpbAo+Pj4g
aXQgaXMgdW5wbHVnZ2VkIGZyb20gcG93ZXIuCj4+Pgo+Pj4gU28gb24gc2h1dGRvd24gdGhlIE1D
VSBuZWVkcyB0byBiZSB0dXJuZWQgb2ZmIHNlcGFyYXRlbHkgYmVmb3JlIHRoZQo+Pj4gbWFpbiBQ
TUlDLgo+Pj4KPj4+IFRoZSBwcm90b2NvbCBzcG9rZW4gYnkgdGhlIE1DVSBpcyBzYWRseSBub3Qg
ZG9jdW1lbnRlZCwgYnV0IHdhcwo+Pj4gb2J0YWluZWQgYnkgbGlzdGVuaW5nIHRvIHRoZSBjaGF0
dGVyIG9uIHRoZSBzZXJpYWwgcG9ydCwgYXMgdGhhbmtmdWxseQo+Pj4gdGhlICJoYWxfYXBwIiBw
cm9ncmFtIGZyb20gUU5BUHMgZmlybXdhcmUgYWxsb3dzIHRyaWdnZXJpbmcgYWxsL21vc3QKPj4+
IE1DVSBhY3Rpb25zIGZyb20gdGhlIGNvbW1hbmQgbGluZS4KPj4+Cj4+PiBUaGUgaW1wbGVtZW50
YXRpb24gb2YgaG93IHRvIHRhbGsgdG8gdGhlIHNlcmlhbCBkZXZpY2UgZ290IHNvbWUKPj4+IGlu
c3BpcmF0aW9uIGZyb20gdGhlIHJhdmUtc3Agc2VydmRldiBkcml2ZXIuCj4+Pgo+Pj4gU2lnbmVk
LW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPj4+IC0tLQo+Pj4gICAg
TUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICB8ICAgNiArCj4+PiAgICBkcml2ZXJzL21mZC9L
Y29uZmlnICAgICAgICAgIHwgIDEzICsrCj4+PiAgICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAg
ICAgIHwgICAyICsKPj4+ICAgIGRyaXZlcnMvbWZkL3FuYXAtbWN1LmMgICAgICAgfCAzMzggKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAgIGluY2x1ZGUvbGludXgvbWZk
L3FuYXAtbWN1LmggfCAgMjYgKysrCj4+PiAgICA1IGZpbGVzIGNoYW5nZWQsIDM4NSBpbnNlcnRp
b25zKCspCj4+PiAgICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvcW5hcC1tY3UuYwo+
Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvbWZkL3FuYXAtbWN1LmgKPj4+
Cj4+PiBbLi4uXQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL3FuYXAtbWN1LmMgYi9kcml2
ZXJzL21mZC9xbmFwLW1jdS5jCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAw
MDAwMDAwMDAwLi40YmUzOWQ4YjI5MDUKPj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL2RyaXZl
cnMvbWZkL3FuYXAtbWN1LmMKPj4+IFsuLi5dCj4+PiAraW50IHFuYXBfbWN1X2V4ZWMoc3RydWN0
IHFuYXBfbWN1ICptY3UsCj4+PiArCQkgIGNvbnN0IHU4ICpjbWRfZGF0YSwgc2l6ZV90IGNtZF9k
YXRhX3NpemUsCj4+PiArCQkgIHU4ICpyZXBseV9kYXRhLCBzaXplX3QgcmVwbHlfZGF0YV9zaXpl
KQo+Pj4gK3sKPj4+ICsJdW5zaWduZWQgY2hhciByeFtRTkFQX01DVV9SWF9CVUZGRVJfU0laRV07
Cj4+PiArCXNpemVfdCBsZW5ndGggPSByZXBseV9kYXRhX3NpemUgKyBRTkFQX01DVV9DSEVDS1NV
TV9TSVpFOwo+Pj4gKwlzdHJ1Y3QgcW5hcF9tY3VfcmVwbHkgKnJlcGx5ID0gJm1jdS0+cmVwbHk7
Cj4+PiArCWludCByZXQgPSAwOwo+Pj4gKwo+Pj4gKwlpZiAobGVuZ3RoID4gc2l6ZW9mKHJ4KSkg
ewo+Pj4gKwkJZGV2X2VycigmbWN1LT5zZXJkZXYtPmRldiwgImV4cGVjdGVkIGRhdGEgdG9vIGJp
ZyBmb3IgcmVjZWl2ZSBidWZmZXIiKTsKPj4+ICsJCXJldHVybiAtRUlOVkFMOwo+Pj4gKwl9Cj4+
PiArCj4+PiArCW11dGV4X2xvY2soJm1jdS0+YnVzX2xvY2spOwo+Pj4gKwo+Pj4gKwlyZXBseS0+
ZGF0YSA9IHJ4LAo+Pj4gKwlyZXBseS0+bGVuZ3RoID0gbGVuZ3RoLAo+Pj4gKwlyZXBseS0+cmVj
ZWl2ZWQgPSAwLAo+Pj4gKwlyZWluaXRfY29tcGxldGlvbigmcmVwbHktPmRvbmUpOwo+Pj4gKwo+
Pj4gKwlxbmFwX21jdV93cml0ZShtY3UsIGNtZF9kYXRhLCBjbWRfZGF0YV9zaXplKTsKPj4+ICsK
Pj4+ICsJc2VyZGV2X2RldmljZV93YWl0X3VudGlsX3NlbnQobWN1LT5zZXJkZXYsIG1zZWNzX3Rv
X2ppZmZpZXMoUU5BUF9NQ1VfVElNRU9VVF9NUykpOwo+Pj4gKwo+Pj4gKwlpZiAoIXdhaXRfZm9y
X2NvbXBsZXRpb25fdGltZW91dCgmcmVwbHktPmRvbmUsIG1zZWNzX3RvX2ppZmZpZXMoUU5BUF9N
Q1VfVElNRU9VVF9NUykpKSB7Cj4+PiArCQlkZXZfZXJyKCZtY3UtPnNlcmRldi0+ZGV2LCAiQ29t
bWFuZCB0aW1lb3V0XG4iKTsKPj4+ICsJCXJldCA9IC1FVElNRURPVVQ7Cj4+PiArCX0gZWxzZSB7
Cj4+PiArCQl1OCBjcmMgPSBxbmFwX21jdV9jc3VtKHJ4LCByZXBseV9kYXRhX3NpemUpOwo+PiBI
ZXJlIGByeGAgaXMgc3RpbGwgbm90IGluaXRpYWxpemVkLgo+IFRoZSBNQ1Ugd29ya3MgaW4gYSB3
YXkgdGhhdCBhIHNlbnQgY29tbWFuZCBhbHdheXMgY2F1c2VzICJyZXBseV9kYXRhX3NpemUiCj4g
Ynl0ZXMgdG8gYmUgcmV0dXJuZWQuCj4KPiBTbyBmb3IgZWFjaCBxbmFwX21jdV93cml0ZSgpIGFi
b3ZlIHdlIGtub3cgdGhhdCB0aGlzIGFtb3VudCBvZiBieXRlcyBoYXMKPiBiZWVuIHJldHVybmVk
IChhbmQgdGh1cyB3cml0dGVuIGludG8gcngpIGlmIHRoZSBjb21wbGV0aW9uIGFib3ZlIGZpbmlz
aGVzCj4gc3VjZXNzZnVsbHkuCj4KPiAicngiIGlzIGFzc2lnbmVkIHRvIHJlcGx5LT5kYXRhIGFi
b3ZlIChzYW1lIGFzIHRoZSBleHBlY3RlZCByZWNlaXZlZCBzaXplKS4KPiBXaGVuIGNoYXJhY3Rl
cnMgYXJlIHJlY2VpdmVkIG9uIHRoZSBzZXJpYWwgbGluZSwgdGhpcyB3aWxsIHRyaWdnZXIKPiBx
bmFwX21jdV9yZWNlaXZlX2J1ZigpIGZyb20gdGhlIHNlcmRldiBhbmQgdGh1cyBmaWxsIHRob3Nl
IGVsZW1lbnRzIGluIHJ4Lgo+Cj4gU28gaWYgd2UgbGFuZCBhdCB0aGUgcW5hcF9tY3VfY3N1bSgp
IGNhbGwsIHdlIGRvIGhhdmUgcmVjZWl2ZWQgdGhlIGV4cGVjdGVkCj4gYW1vdW50IG9mIGJ5dGVz
IGZyb20gdGhlIHNlcmRldiBhbmQgdGh1cyByeCBpcyBmaWxsZWQgYWNjb3JkaW5nbHkuCj4KPiBJ
ZiB3ZSBkb24ndCByZWNlaXZlIHRoZSBuZWVkZWQgYW1vdW50IG9mIGJ5dGVzLCB3ZSBlbmQgdXAg
aW4gdGhlIHRpbWVvdXQKPiBhYm92ZSB0aGF0Lgo+Cj4gV2hhdCBkaWQgSSBtaXNzPwpTb3JyeSwg
bXkgZmF1bHQuIEkgbWlzc2VkIHRoZSBlc3NlbnRpYWwgcGFydCBvZiB0aGUgZXh0ZXJuYWwgZXZl
bnQgKGV4dGVybmFsCmZvciB0aGlzIGZ1bmN0aW9uIHRoYXQgaXMpLgpUaGFua3MgZm9yIGV4cGxh
aW5pbmcuCj4KPgo+IEhlaWtvCj4KPj4+ICsKPj4+ICsJCWlmIChjcmMgIT0gcnhbcmVwbHlfZGF0
YV9zaXplXSkgewo+Pj4gKwkJCWRldl9lcnIoJm1jdS0+c2VyZGV2LT5kZXYsCj4+PiArCQkJCSJJ
bnZhbGlkIENoZWNrc3VtIHJlY2VpdmVkXG4iKTsKPj4+ICsJCQlyZXQgPSAtRUlPOwo+Pj4gKwkJ
fSBlbHNlIHsKPj4+ICsJCQltZW1jcHkocmVwbHlfZGF0YSwgcngsIHJlcGx5X2RhdGFfc2l6ZSk7
Cj4+PiArCQl9Cj4+PiArCX0KPj4+ICsKPj4+ICsJbXV0ZXhfdW5sb2NrKCZtY3UtPmJ1c19sb2Nr
KTsKPj4+ICsJcmV0dXJuIHJldDsKPj4+ICt9Cj4+PiArRVhQT1JUX1NZTUJPTF9HUEwocW5hcF9t
Y3VfZXhlYyk7Cj4+Pgo+Cj4KPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
