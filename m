Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CD30C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 17:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+d7qQeDjDIC6b3dfsGZDXTA2wO/iJGPZLEtuDd/MJMU=; b=puEh0noKSJfUVtAgUuTeMmTELv
	dGRkmMsFmI2+Fhp7pLB1EeUWwm8o7EUQ+XlK3u3Suk/vHC3LNIEthLoFjKTOnQGPmWdcde/J3THvK
	OdOS8YJ4uqUiS1zTg2VmbOqPCscvEalQabkvOYnIAlBGgRbvG+AC4+H+J6QrSUTFYHnaHxCv4mR9v
	XPIdwKkGTp5AG1VPcJ7UbTnPAbpx6BQyFGns9U23GmXPe+ESfMSkkiAxvKb0VaYk1ZpgoTJiAG7Uk
	HUzZQn2FfQXRm0axFnwJx+wXyucePzJHcOpQYu2f3etfU7iUFOpkeOTPONoJ65k/tJwBiNBedOzBv
	nHpkZKfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaHHk-0000000FN3C-3uiq;
	Fri, 11 Jul 2025 17:11:44 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaGnk-0000000FJdU-0DD8;
	Fri, 11 Jul 2025 16:40:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B800316F8;
	Fri, 11 Jul 2025 09:40:29 -0700 (PDT)
Received: from [10.1.196.50] (e121345-lin.cambridge.arm.com [10.1.196.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B3643F6A8;
	Fri, 11 Jul 2025 09:40:37 -0700 (PDT)
Message-ID: <a1a93c41-4c21-4b7a-a8b8-5d4e83d73931@arm.com>
Date: Fri, 11 Jul 2025 17:40:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 04/10] accel/rocket: Add job submission IOCTL
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-4-dc16cfe6fe4e@tomeuvizoso.net>
 <fcb3ca23-7ebd-4f48-92d2-969b24936b9b@arm.com>
 <CAAObsKBiSX0HcxJJjTNGgE4FD4eAYW5wvY=bROtdkZ1mqf_0VQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CAAObsKBiSX0HcxJJjTNGgE4FD4eAYW5wvY=bROtdkZ1mqf_0VQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_094044_170353_0EEFBD27 
X-CRM114-Status: GOOD (  14.90  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTEvMDcvMjAyNSA1OjAwIHBtLCBUb21ldSBWaXpvc28gd3JvdGU6Cj4gT24gVHVlLCBKdW4g
MjQsIDIwMjUgYXQgMzo1MOKAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+
IHdyb3RlOgo+Pgo+PiBPbiAyMDI1LTA2LTA2IDc6MjggYW0sIFRvbWV1IFZpem9zbyB3cm90ZToK
Pj4gWy4uLl0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZGV2
aWNlLmggYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZGV2aWNlLmgKPj4+IGluZGV4IDEw
YWNmZTg1MzRmMDBhNzk4NWQ0MGE5M2Y0YjJmN2Y2OWQ0M2NhZWUuLjUwZTQ2ZjA1MTZiZDE2MTVi
NWY4MjZjNTAwMmE2YzBlY2JmOWFlZDQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2FjY2VsL3Jv
Y2tldC9yb2NrZXRfZGV2aWNlLmgKPj4+ICsrKyBiL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tl
dF9kZXZpY2UuaAo+Pj4gQEAgLTEzLDYgKzEzLDggQEAKPj4+ICAgIHN0cnVjdCByb2NrZXRfZGV2
aWNlIHsKPj4+ICAgICAgICBzdHJ1Y3QgZHJtX2RldmljZSBkZGV2Owo+Pj4KPj4+ICsgICAgIHN0
cnVjdCBtdXRleCBzY2hlZF9sb2NrOwo+Pj4gKwo+Pj4gICAgICAgIHN0cnVjdCBtdXRleCBpb21t
dV9sb2NrOwo+Pgo+PiBKdXN0IHJlYWxpc2VkIEkgbWlzc2VkIHRoaXMgaW4gdGhlIGxhc3QgcGF0
Y2gsIGJ1dCBpb21tdV9sb2NrIGFwcGVhcnMgdG8KPj4gYmUgY29tcGxldGVseSB1bm5lY2Vzc2Fy
eSBub3cuCj4+Cj4+PiAgICAgICAgc3RydWN0IHJvY2tldF9jb3JlICpjb3JlczsKPj4gWy4uLl0K
Pj4+ICtzdGF0aWMgdm9pZCByb2NrZXRfam9iX2h3X3N1Ym1pdChzdHJ1Y3Qgcm9ja2V0X2NvcmUg
KmNvcmUsIHN0cnVjdCByb2NrZXRfam9iICpqb2IpCj4+PiArewo+Pj4gKyAgICAgc3RydWN0IHJv
Y2tldF90YXNrICp0YXNrOwo+Pj4gKyAgICAgYm9vbCB0YXNrX3BwX2VuID0gMTsKPj4+ICsgICAg
IGJvb2wgdGFza19jb3VudCA9IDE7Cj4+PiArCj4+PiArICAgICAvKiBHTyAhICovCj4+PiArCj4+
PiArICAgICAvKiBEb24ndCBxdWV1ZSB0aGUgam9iIGlmIGEgcmVzZXQgaXMgaW4gcHJvZ3Jlc3Mg
Ki8KPj4+ICsgICAgIGlmIChhdG9taWNfcmVhZCgmY29yZS0+cmVzZXQucGVuZGluZykpCj4+PiAr
ICAgICAgICAgICAgIHJldHVybjsKPj4+ICsKPj4+ICsgICAgIHRhc2sgPSAmam9iLT50YXNrc1tq
b2ItPm5leHRfdGFza19pZHhdOwo+Pj4gKyAgICAgam9iLT5uZXh0X3Rhc2tfaWR4Kys7Cj4+PiAr
Cj4+PiArICAgICByb2NrZXRfcGNfd3JpdGVsKGNvcmUsIEJBU0VfQUREUkVTUywgMHgxKTsKPj4+
ICsKPj4+ICsgICAgIHJvY2tldF9jbmFfd3JpdGVsKGNvcmUsIFNfUE9JTlRFUiwgMHhlICsgMHgx
MDAwMDAwMCAqIGNvcmUtPmluZGV4KTsKPj4+ICsgICAgIHJvY2tldF9jb3JlX3dyaXRlbChjb3Jl
LCBTX1BPSU5URVIsIDB4ZSArIDB4MTAwMDAwMDAgKiBjb3JlLT5pbmRleCk7Cj4+Cj4+IFRob3Nl
IHJlYWxseSBsb29rIGxpa2UgYml0ZmllbGQgb3BlcmF0aW9ucyByYXRoZXIgdGhhbiBhY3R1YWwg
YXJpdGhtZXRpYwo+PiB0byBtZS4KPj4KPj4+ICsKPj4+ICsgICAgIHJvY2tldF9wY193cml0ZWwo
Y29yZSwgQkFTRV9BRERSRVNTLCB0YXNrLT5yZWdjbWQpOwo+Pgo+PiBJIGRvbid0IHNlZSBob3cg
cmVnY21kIGlzIGNyZWF0ZWQgKEkgZ3Vlc3MgdGhhdCdzIGluIHVzZXJzcGFjZT8pLCBidXQKPj4g
Z2l2ZW4gdGhhdCBpdCdzIGV4cGxpY2l0bHkgdTY0IGFsbCB0aGUgd2F5IHRocm91Z2ggLSBhbmQg
ZXNwZWNpYWxseQo+PiBzaW5jZSB5b3UgY2xhaW0gdG8gc3VwcG9ydCA0MC1iaXQgRE1BIGFkZHJl
c3NlcyAtIGl0IGRlZmluaXRlbHkgc2VlbXMKPj4gc3VzcGljaW91cyB0aGF0IHRoZSB1cHBlciAz
MiBiaXRzIG5ldmVyIHNlZW0gdG8gYmUgY29uc3VtZWQgYW55d2hlcmUgOi8KPiAKPiBZZWFoLCBi
dXQgdGhlcmUncyBubyBvdGhlciByZWdpc3RlciBmb3IgQkFTRV9BRERSRVNTIGFkZHJlc3MgaW4g
dGhlIFRSTS4KClRoYXQgb25seSByZWFmZmlybXMgdGhlIHF1ZXN0aW9uIHRoZW4gLSBpZiB0aGlz
IHZhbHVlIGlzIG9ubHkgZXZlciAKd3JpdHRlbiB2ZXJiYXRpbSB0byBhIDMyLWJpdCByZWdpc3Rl
ciwgd2h5IGlzIGl0IDY0LWJpdD8KClRoYW5rcywKUm9iaW4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
