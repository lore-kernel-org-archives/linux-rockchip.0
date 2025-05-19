Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68820C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCRCMT5TtOSgGMGjYoqa9TchwYIJWGIaEK2mYEeCPu4=; b=haCxgrptyoxcLr
	x031aLccJD6SEEulXzf8hY9/9kdedfhrnK4Fxq1vhKrok+KXWvT/T6BJ9p5VEuCjwmLBamK1ML/ht
	dE/fLbC1G9rEbeYP/UgqzknbhVQBqt/FBFOIsTNrauwwrtDOUH0oF3EsEKyTn/2DBl0WSQCiuReRa
	CeXUEIWJYhGjfkiRDfQhHMUnTP9vX1WbJEtGSeRt4Ma7sXWrb3jcS32viWQonCmTpip85102tepHP
	wJCOTOUiqMxfqcauAPFjbryAq0/dOFeJRaCrpeRSblIxS+9/IFMlzUnX4ymbv8lRO1E1ANfWltVG1
	mKsFm4F2X94a4aQuCd0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwCK-00000008QJi-3l1h;
	Mon, 19 May 2025 08:50:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwAI-00000008PrX-3gMv;
	Mon, 19 May 2025 08:48:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D92CA6112E;
	Mon, 19 May 2025 08:48:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25C08C4CEE4;
	Mon, 19 May 2025 08:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747644485;
	bh=e2P5kIf12pmhzIP6nIe0ke4cFpoL7ha0XqwOXr3qDxQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vJ0jq/7VyJqgSVlYbHkY5RMeRQrUJfL5za0MN+a/59F4KhWyWMMQ6dl/a3ckFH8Uc
	 MNrm9ChLSNlVW4O6+z9boGrKsTkOgr15pBcs+uSILRksNIjMBms7HbKKZTPMmPBX3x
	 tWj6/UBUq0hQurFJ3nA8cWXrs1Pdxz3sL8rZ2QELa8k8msyHR1U58i518qoWNG68bk
	 wOdflOyC3mVuyOpm33gLCbhCqiCICYX09t2Z8POZTv+x9iImZd6AhnTtjAeWgi1NSI
	 sVjzkX0GuisIjD98xnvir5VDUrBCWTUzpjZ2WWODwSZW9xUbd5PvXxtKTU6ozPUOdK
	 5LOc0kJBgm3hg==
Message-ID: <f8cf2c4e-0ae2-4799-bda8-654b4f515846@kernel.org>
Date: Mon, 19 May 2025 10:47:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/10] arm64: dts: rockchip: Add nodes for NPU and its
 MMU to rk3588s
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
 <20250516-6-10-rocket-v3-2-7051ac9225db@tomeuvizoso.net>
 <4bd79c88-7da5-4bf0-9300-cfdb296c8919@kernel.org>
 <CAAObsKDsO=5uK3BEn6BOgatb+y73jc-Se6mmSbhwG9P_1nVtwg@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CAAObsKDsO=5uK3BEn6BOgatb+y73jc-Se6mmSbhwG9P_1nVtwg@mail.gmail.com>
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTkvMDUvMjAyNSAxMDoyNywgVG9tZXUgVml6b3NvIHdyb3RlOgo+IE9uIE1vbiwgTWF5IDE5
LCAyMDI1IGF0IDg6MDjigK9BTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+
IHdyb3RlOgo+Pgo+PiBPbiAxNi8wNS8yMDI1IDE4OjUzLCBUb21ldSBWaXpvc28gd3JvdGU6Cj4+
PiBTZWUgQ2hhcHRlciAzNiAiUktOTiIgZnJvbSB0aGUgUkszNTg4IFRSTSAoUGFydCAxKS4KPj4+
Cj4+PiBUaGlzIGlzIGEgZGVyaXZhdGl2ZSBvZiBOVklESUEncyBOVkRMQSwgYnV0IHdpdGggaXRz
IG93biBmcm9udC1lbmQKPj4+IHByb2Nlc3Nvci4KPj4+Cj4+PiBUaGUgSVAgaXMgZGl2aWRlZCBp
biB0aHJlZSBjb3JlcywgcHJvZ3JhbW1lZCBpbmRlcGVuZGVudGx5LiBUaGUgZmlyc3QKPj4+IGNv
cmUgdGhvdWdoIGlzIHNwZWNpYWwsIHJlcXVpcmluZyB0byBiZSBwb3dlcmVkIG9uIGJlZm9yZSBh
bnkgb2YgdGhlCj4+PiBvdGhlcnMgY2FuIGJlIHVzZWQuCj4+Pgo+Pj4gVGhlIElPTU1VIG9mIHRo
ZSBmaXJzdCBjb3JlIGlzIGFsc28gc3BlY2lhbCBpbiB0aGF0IGl0IGhhcyB0d28gc3VidW5pdHMK
Pj4+IChyZWFkL3dyaXRlPykgdGhhdCBuZWVkIHRvIGJlIHByb2dyYW1tZWQgaW4gc3luYy4KPj4+
Cj4+PiB2MjoKPj4+IC0gSGF2ZSBvbmUgZGV2aWNlIGZvciBlYWNoIE5QVSBjb3JlIChTZWJhc3Rp
YW4gUmVpY2hlbCkKPj4+IC0gSGF2ZSBvbmUgZGV2aWNlIGZvciBlYWNoIElPTU1VIChTZWJhc3Rp
YW4gUmVpY2hlbCkKPj4+IC0gQ29ycmVjdGx5IHNvcnQgbm9kZXMgKERpZWRlcmlrIGRlIEhhYXMp
Cj4+PiAtIEFkZCByb2NrY2hpcCxpb21tdSBjb21wYXRpYmxlIHRvIElPTU1VIG5vZGVzIChTZWJh
c3RpYW4gUmVpY2hlbCkKPj4+Cj4+PiB2MzoKPj4+IC0gQWRhcHQgdG8gYSBzcGxpdCBvZiB0aGUg
cmVnaXN0ZXIgYmxvY2sgaW4gdGhlIERUIGJpbmRpbmdzIChOaWNvbGFzCj4+PiAgIEZyYXR0YXJv
bGkpCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9z
by5uZXQ+Cj4+PiAtLS0KPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1i
YXNlLmR0c2kgfCA4NSArKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAxIGZpbGUgY2hh
bmdlZCwgODUgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKPj4+IGluZGV4IDFlMThhZDkzYmEwZWJkYWQzMTY0MmI4
OGZmMGY5MGVmNGU4ZGM3NmYuLjdiOTYxYWI4MzgyMTJmYWQ4ZTRhNzAzOTBmZGM5MTdhODI4NDMz
YTkgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1i
YXNlLmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJh
c2UuZHRzaQo+Pj4gQEAgLTExMzYsNiArMTEzNiw5MSBAQCBwb3dlci1kb21haW5AUkszNTg4X1BE
X1NETU1DIHsKPj4+ICAgICAgICAgICAgICAgfTsKPj4+ICAgICAgIH07Cj4+Pgo+Pj4gKyAgICAg
cmtubl9jb3JlX3RvcDogbnB1LWNvcmVAZmRhYjAwMDAgewo+Pgo+PiBucHVACj4+Cj4+PiArICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS10b3AiLCAi
cm9ja2NoaXAscmtubi1jb3JlLXRvcCI7Cj4+Cj4+IFlvdSBuZXZlciB0ZXN0ZWQgdGhpcy4gVGVz
dCBiZWZvcmUgc2VuZGluZyBpbnN0ZWFkIG9mIHJlbHlpbmcgb24gdXMgb3IKPj4gYWZ0ZXIgbWVy
Z2luZy4KPiAKPiBDYW4geW91IHBsZWFzZSBleHRlbmQgb24gdGhpcz8gSSBoYXZlIHRlc3RlZCB0
aGlzIHNlcmllcyBiZWZvcmUKPiBzZW5kaW5nIGFuZCBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5
b3UgbWVhbiBoZXJlLgoKSSBtZWFuIGV4YWN0bHkgdGhhdDogaXQgd2FzIG5vdCB0ZXN0ZWQsIGJl
Y2F1c2Ugd2FybmluZ3MgYXJlIGNsZWFybHkKdmlzaWJsZS9leHBlY3RlZC4gSSBhbHNvIGZvdW5k
IG5vdyBSb2IncyByZXBvcnQgd2hpY2ggZXZlbiBzaG93cyB5b3UgdGhlCndhcm5pbmdzLCBzbyBo
b3cgY29tZSB5b3Ugc3RpbGwgY2xhaW0gdGhpcyB3YXMgdGVzdGVkPwoKQmVzdCByZWdhcmRzLApL
cnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
