Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EB7CC54E58
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 12:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VXdVaThbYFzuxRlpYIyKNLhOaZH8UI8sz50hjuXfrY=; b=cBbZ0zOjv2lvt2
	99KXamdZqCKqPt5LqcAnhRKrAAT08FqZruBYFrSbTK29Xr1+KrKrlpsvcdpCAi949v+nHW1dOTgO9
	J2B1ccqf7yVZTZ9O+Mxr/0e4NCT2DkXtL40hrNMl84CYPMGv1VCaNTKjC+5271gUG4NhLagBSlYCi
	c3Dy0yFnNvEkaabsjcXzX1xI/IFkHqbtKxcNdQCcWgmBv5NI4z1TgnpLIJyzsAZu9Ldj++Dt+xFfx
	9mitnjgeEcXvKysSq/WXq7PCBX4rQQt95BLVC9K6ZAKg1ItqbbGfw/j+yZEINdpix5DSIq3DrFY1I
	sUq/MIPE9CW4aku3eKDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6FK-00000000716-39W1;
	Fri, 15 Mar 2024 12:01:10 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6FH-000000006yo-2nGY;
	Fri, 15 Mar 2024 12:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710504059;
	bh=wo5KaJTO7g4XTsjvDT5W1hhUtD1zGfjPtDK9XkU/fsw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=1jxPqcrx/ox/m1AOEkf/cnIgOag7fS4EFgxhaRQR6tv37YpNkhmjwMdziiVEDa5Ii
	 RNa47ceM168TpFQcoHUTRQsLKpALlajcmXvRzc3Aw6eyITrsBKbWXLiIS7XmVwchyD
	 h5lL1gNiFConcL3rmgtDIyYiVK6Hc82QbbabKl1p1QQnWDyh/PcK2+4k9dGRIziPs/
	 rhPXT6O2yWCSelSqW+RmWE/S9PbgExcDvLe0LyzkQ2OUNEKrRDltU0nCcQ724VDc9W
	 hnpyxuJitqatKY1oiW2YO9yXCgvwSlEH269TMeWB26+lPF9wKOwdYMIzVLOQ1YhbCX
	 vi5pfjpYCvEEA==
Received: from [100.95.196.25] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: koike)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D3E8A378105A;
	Fri, 15 Mar 2024 12:00:53 +0000 (UTC)
Message-ID: <00b4af3b-bbb6-4057-969f-5882220858a3@collabora.com>
Date: Fri, 15 Mar 2024 09:00:50 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/11] drm/ci: uprev IGT and update testlist
To: Vignesh Raman <vignesh.raman@collabora.com>,
 dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 emma@anholt.net, robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 hamohammed.sa@gmail.com, rodrigosiqueiramelo@gmail.com,
 melissa.srw@gmail.com, mairacanal@riseup.net, mcanal@igalia.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240306030649.60269-1-vignesh.raman@collabora.com>
 <20240306030649.60269-4-vignesh.raman@collabora.com>
 <4f927c99-9ea2-424e-85a7-bd05d0817dab@collabora.com>
 <af5b6e38-306d-ae79-42af-88e6e9a32cff@collabora.com>
Content-Language: en-US
From: Helen Koike <helen.koike@collabora.com>
In-Reply-To: <af5b6e38-306d-ae79-42af-88e6e9a32cff@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_050107_930294_6462576B 
X-CRM114-Status: GOOD (  20.58  )
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

CgpPbiAxNS8wMy8yMDI0IDA4OjEyLCBWaWduZXNoIFJhbWFuIHdyb3RlOgo+IEhpIEhlbGVuLAo+
IAo+IE9uIDA3LzAzLzI0IDE5OjA1LCBIZWxlbiBLb2lrZSB3cm90ZToKPj4KPj4KPj4gT24gMDYv
MDMvMjAyNCAwMDowNiwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPj4+IFVwcmV2IElHVCBhbmQgYWRk
IGFtZCwgdjNkLCB2YzQgYW5kIHZnZW0gc3BlY2lmaWMKPj4+IHRlc3RzIHRvIHRlc3RsaXN0LiBI
YXZlIHRlc3RsaXN0LnR4dCBwZXIgZHJpdmVyCj4+PiBhbmQgaW5jbHVkZSBhIGJhc2UgdGVzdGxp
c3Qgc28gdGhhdCB0aGUgZHJpdmVyCj4+PiBzcGVjaWZpYyB0ZXN0cyB3aWxsIHJ1biBvbmx5IG9u
IHRob3NlIGhhcmR3YXJlLgo+Pj4gQWxzbyBhZGQgdGVzdGxpc3RzIHRvIHRoZSBNQUlOVEFJTkVS
UyBmaWxlLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFZpZ25lc2ggUmFtYW4gPHZpZ25lc2gucmFt
YW5AY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4KPj4+IHYzOgo+Pj4gwqDCoCAtIE5ldyBwYXRj
aCBpbiBzZXJpZXMgdG8gdXByZXYgSUdUIGFuZCB1cGRhdGUgdGVzdGxpc3QuCj4+Pgo+Pj4gdjQ6
Cj4+PiDCoMKgIC0gQWRkIHRlc3RsaXN0cyB0byB0aGUgTUFJTlRBSU5FUlMgZmlsZSBhbmQgcmVt
b3ZlIGFtZGdwdSB4ZmFpbHMgCj4+PiBjaGFuZ2VzLgo+Pj4KPj4+IC0tLQo+Pj4gwqAgTUFJTlRB
SU5FUlPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoCAxMSArKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL2dpdGxhYi1jaS55bWzC
oMKgwqDCoMKgwqDCoMKgIHzCoMKgIDIgKy0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS9pZ3Rf
cnVubmVyLnNowqDCoMKgwqDCoMKgwqDCoCB8wqAgMTIgKy0KPj4+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9jaS90ZXN0bGlzdC1hbWRncHUudHh0wqDCoCB8IDE1MSArKysrKysrKysrKysrKysrKysrKysr
Kwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LW1zbS50eHTCoMKgwqDCoMKgIHzC
oCA1MCArKysrKysrKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LXBhbmZyb3N0
LnR4dCB8wqAgMTcgKysrCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvdGVzdGxpc3QtdjNkLnR4
dMKgwqDCoMKgwqAgfMKgIDczICsrKysrKysrKysrCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kv
dGVzdGxpc3QtdmM0LnR4dMKgwqDCoMKgwqAgfMKgIDQ5ICsrKysrKysrCj4+PiDCoCBkcml2ZXJz
L2dwdS9kcm0vY2kvdGVzdGxpc3QudHh0wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA4NCArKysrKyst
LS0tLS0tCj4+PiDCoCA5IGZpbGVzIGNoYW5nZWQsIDM5OCBpbnNlcnRpb25zKCspLCA1MSBkZWxl
dGlvbnMoLSkKPj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vY2kvdGVz
dGxpc3QtYW1kZ3B1LnR4dAo+Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2Ry
bS9jaS90ZXN0bGlzdC1tc20udHh0Cj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2NpL3Rlc3RsaXN0LXBhbmZyb3N0LnR4dAo+Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC12M2QudHh0Cj4+PiDCoCBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LXZjNC50eHQKPj4+Cj4+PiBkaWZmIC0t
Z2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+Pj4gaW5kZXggM2JjN2UxMjJhMDk0Li40
ZGE2NmNhOTJmMWEgMTAwNjQ0Cj4+PiAtLS0gYS9NQUlOVEFJTkVSUwo+Pj4gKysrIGIvTUFJTlRB
SU5FUlMKPj4+IEBAIC0xNjY1LDYgKzE2NjUsOCBAQCBMOsKgwqDCoCBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4+PiDCoCBTOsKgwqDCoCBTdXBwb3J0ZWQKPj4+IMKgIFQ6wqDCoMKg
IGdpdCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MKPj4+IMKgIEY6
wqDCoMKgIERvY3VtZW50YXRpb24vZ3B1L3BhbmZyb3N0LnJzdAo+Pj4gK0Y6wqDCoMKgIGRyaXZl
cnMvZ3B1L2RybS9jaS90ZXN0bGlzdC1wYW5mcm9zdC50eHQKPj4+ICtGOsKgwqDCoCBkcml2ZXJz
L2dwdS9kcm0vY2kvdGVzdGxpc3QudHh0Cj4+Cj4+IEkgd29uZGVyIGlmIHdlIHNob3VsZCBoYXZl
IGJvdGggaGVyZSwgc2luY2UgdGhlIHNlY29uZCBpcyBub3QgdXNlZCByaWdodD8KPiAKPiBZZXMs
IHdlIG5lZWQgdG8gdXNlIGJvdGggaGVyZS4gdGVzdGxpc3QtcGFuZnJvc3QudHh0IGluY2x1ZGVz
IAo+IHRlc3RsaXN0LnR4dC4gU28gd2UgaGF2ZSBtb3ZlZCB0aGUgZHJpdmVyIHNwZWNpZmljIHRl
c3RzIHRvCj4gdGVzdGxpc3QtcGFuZnJvc3QudHh0IGFuZCBoYXZlIGEgYmFzZSB0ZXN0bGlzdC50
eHQuCj4gCj4gCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpL2lndF9ydW5uZXIu
c2ggCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9jaS9pZ3RfcnVubmVyLnNoCj4+PiBpbmRleCBmMWEw
OGI5YjE0NmYuLjc3Y2Q4MWZlNmQxYSAxMDA3NTUKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9j
aS9pZ3RfcnVubmVyLnNoCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vY2kvaWd0X3J1bm5lci5z
aAo+Pj4gQEAgLTc0LDEwICs3NCwyMCBAQCBpZiAhIGdyZXAgLXEgImNvcmVfZ2V0dmVyc2lvbiIg
Cj4+PiAvaW5zdGFsbC90ZXN0bGlzdC50eHQ7IHRoZW4KPj4+IMKgIGZpCj4+PiDCoCBzZXQgK2UK
Pj4+ICtpZiBbICIkRFJJVkVSX05BTUUiID0gImFtZGdwdSIgXTsgdGhlbgo+Pj4gK8KgwqDCoCBU
RVNUX0xJU1Q9Ii9pbnN0YWxsL3Rlc3RsaXN0LWFtZGdwdS50eHQiCj4+PiArZWxpZiBbICIkRFJJ
VkVSX05BTUUiID0gIm1zbSIgXTsgdGhlbgo+Pj4gK8KgwqDCoCBURVNUX0xJU1Q9Ii9pbnN0YWxs
L3Rlc3RsaXN0LW1zbS50eHQiCj4+PiArZWxpZiBbICIkRFJJVkVSX05BTUUiID0gInBhbmZyb3N0
IiBdOyB0aGVuCj4+PiArwqDCoMKgIFRFU1RfTElTVD0iL2luc3RhbGwvdGVzdGxpc3QtcGFuZnJv
c3QudHh0Igo+Pj4gK2Vsc2UKPj4+ICvCoMKgwqAgVEVTVF9MSVNUPSIvaW5zdGFsbC90ZXN0bGlz
dC50eHQiCj4+PiArZmkKPj4KPj4gTWF5YmUgc2ltcGxpZnkgdGhpcyB3aXRoOgo+Pgo+PiBURVNU
X0xJU1Q9Ii9pbnN0YWxsL3Rlc3RsaXN0LSREUklWRVJfTkFNRS50eHQiCj4+Cj4+IGlmIFsgISAt
ZiAiJFRFU1RfTElTVCIgXTsgdGhlbgo+PiDCoMKgwqDCoCBURVNUX0xJU1Q9Ii9pbnN0YWxsL3Rl
c3RsaXN0LnR4dCIKPj4gZmkKPiAKPiBZZXMsIHRoaXMgaXMgbXVjaCBiZXR0ZXIuIFRoYW5rcy4K
PiAKPj4KPj4gQW5vdGhlciBxdWVzdGlvbiBJIGhhdmU6IHNob3VsZG4ndCB0ZXN0bGlzdC0kRFJJ
VkVSX05BTUUudHh0IGFuZCAKPj4gdGVzdGxpc3QudHh0IGJlIG1lcmdlZD8gT3IgdGhleSBhcmUg
cmVhbGx5IG11dHVhbGx5IGV4Y2x1c2l2ZT8KPiAKPiBXZSBoYXZlIHRlc3RsaXN0LSREUklWRVJf
TkFNRS50eHQgcGVyIGRyaXZlciBhbmQgaXQgaW5jbHVkZXMgYSBiYXNlIAo+IHRlc3RsaXN0LnR4
dAoKSSdtIGNvbmZ1c2VkLCBpdCBzZWVtcyB0aGF0IGZyb20gdGhlIGNvZGUgb3IgaXQgdXNlcyAK
dGVzdGxpc3QtJERSSVZFUl9OQU1FLnR4dCBvciBpdCB1c2VzIHRlc3RsaXN0LnR4dCwgeW91IGRv
bid0IG1lcmdlIHRoZW0gCmJ5IGNvZGUsIHdoaWNoIG1lYW5zIHRoYXQgZHJpdmVycyBkb24ndCBu
ZWVkIHRvIGZvbGxvdyBjaGFuZ2VzIHRvIAp0ZXN0bGlzdC50eHQuCgpJZiB0ZXN0bGlzdC0kRFJJ
VkVSX05BTUUudHh0IGFscmVhZHkgaW5jbHVkZXMgdGVzdHMgaW4gdGVzdGxpc3QudHh0LCAKdGhh
biB0ZXN0bGlzdC50eHQgZG9lc24ndCBuZWVkIHRvIGJlIGFkZGVkIGluIHRoZSBNQUlOVEVJTkVS
UyBmaWxlIGluIAphbGwgZHJpdmVycy4KCkhlbGVuCgo+IAo+IFJlZ2FyZHMsCj4gVmlnbmVzaAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
