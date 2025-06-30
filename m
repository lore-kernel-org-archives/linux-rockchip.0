Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2858C83030
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 20:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1rZJjnNKMt3tR0qI0cwiQZYA2Ff4RDhKwSHFHXjVIA=; b=LfD4C0VQtbuFQA
	IIM2wLckhmF12MMOTSpykVblCG7pAl3vUuiRZXeSVgI1kKk04MZH6FphYwaBdOhgXaJOBMRPv4OIS
	gA63q+MSNsZGkzsZ4f5D6Po2hmeEK+/jOai6BxF2s55pY6QxY/86i80FlrE17443sYXVpOYkgx8Un
	qpLliqWgjfjWooQ4biKjN439ox6Gt7f8u0U0jkWD6OV+Mit6mNmDwea54XwzspLJJnQK3mn7FjaWV
	qwKaTMFTV3Yh2/G/vrb8eFXF1tjJvzgrwIFLDCO4wl6Zu9yFSZYgfV9LMeh/2AY4hyp++5hDX84Ik
	Yxg1r2x1BGNirLdpHwNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWLaL-00000003RrK-19Ze;
	Mon, 30 Jun 2025 20:58:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWLY0-00000003Rak-3F07;
	Mon, 30 Jun 2025 20:56:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 00249463D5;
	Mon, 30 Jun 2025 20:56:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABC8EC113CF;
	Mon, 30 Jun 2025 20:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751316975;
	bh=PO44svPAYFFi6GiqbWS4Fm1Ty0ssVHLymeJlTxwzafk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=HhKs9WPSntjrnVGvwtUXKtRXfRp7ZFQTMeoh2xdI+oPDKiaU8VWwMUVyewuWLutRg
	 thNMMLiVjeUeK8jrFPHKkQyxzP2F2NksS+Un0A8qTqqrV8pBLyPcDk6KCv22zCVQYV
	 qZ4FU2CVCJSancybT61fdQYX+fdRJEBBnLKiCvNU1+Q4l7zPtuANNbD94XMmClnpQc
	 fl1gtL8ERG1fIzjVoe5OuU8vLVx1bKu7M3+zBmUIMmzC0EA6hJf/Xnu2pCN/sSbiII
	 ck22XgFecXDsY2l7lnuGZhGrb+5aQiMIxfvnxQbH95E1q4CaoZnFLDAqHjLiwO3N5f
	 WnRbpWKBx5XlA==
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-60768f080d8so5504565a12.1;
        Mon, 30 Jun 2025 13:56:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUK0QuwM+A+ruAHD/gS4Aj08sBwKDBd3S7MLXrTBVNyNUdR1yhFWxwduvn0T98wZtzsoKoaH96dGhfw476YKH8=@lists.infradead.org, AJvYcCWyT6BaHlR95UvdfhMPqA92JV320KvEYW3Df5V0AUwIS4faKyRss+T/G8MkHECK5/ho2/8v+bShGdhKpT/aUYyx@lists.infradead.org
X-Gm-Message-State: AOJu0YyGV8+MxLQYAaeEeiLF0GNDevb7U9GRxJal6gDkklxJsmAhWVfn
	rTCVrVpbgmBUtU4/vwA9xhrb1HJu5mU8lthzYlAhPBPCmhuixfCJCa0BwhDpilW5HUaklVFuPdB
	/kR5/jt3ANdGVm62ofqD65t1JzFxP5Q==
X-Google-Smtp-Source: AGHT+IHN6KYVrLpEyM//LpRHGQ3ciilHAEEns6c2p0uRqrws7WdVXCCQfCRU6orJIR5QnGKwW7fUExXvkMdYX3eTq8k=
X-Received: by 2002:a17:907:868b:b0:ad9:db54:ba47 with SMTP id
 a640c23a62f3a-ae350190c99mr1589912566b.43.1751316973962; Mon, 30 Jun 2025
 13:56:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net> <20250606-6-10-rocket-v7-4-dc16cfe6fe4e@tomeuvizoso.net>
In-Reply-To: <20250606-6-10-rocket-v7-4-dc16cfe6fe4e@tomeuvizoso.net>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Jun 2025 15:56:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJtKCXE0MLaBN5-r+w+2jVwt8UMwHtr-nP0PoBmfNodpg@mail.gmail.com>
X-Gm-Features: Ac12FXy8hWxpEFoW3ELH4IZXVQDuQYuBeJxvmHd6gayxY_Y6diMDIDxJ1A0GBAM
Message-ID: <CAL_JsqJtKCXE0MLaBN5-r+w+2jVwt8UMwHtr-nP0PoBmfNodpg@mail.gmail.com>
Subject: Re: [PATCH v7 04/10] accel/rocket: Add job submission IOCTL
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_135616_878286_4F4826B1 
X-CRM114-Status: GOOD (  23.39  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gNiwgMjAyNSBhdCAxOjI54oCvQU0gVG9tZXUgVml6b3NvIDx0b21ldUB0b21l
dXZpem9zby5uZXQ+IHdyb3RlOgo+Cj4gVXNpbmcgdGhlIERSTSBHUFUgc2NoZWR1bGVyIGluZnJh
c3RydWN0dXJlLCB3aXRoIGEgc2NoZWR1bGVyIGZvciBlYWNoCj4gY29yZS4KPgo+IFVzZXJzcGFj
ZSBjYW4gZGVjaWRlIGZvciBhIHNlcmllcyBvZiB0YXNrcyB0byBiZSBleGVjdXRlZCBzZXF1ZW50
aWFsbHkKPiBpbiB0aGUgc2FtZSBjb3JlLCBzbyBTUkFNIGxvY2FsaXR5IGNhbiBiZSB0YWtlbiBh
ZHZhbnRhZ2Ugb2YuCj4KPiBUaGUgam9iIHN1Ym1pc3Npb24gY29kZSB3YXMgaW5pdGlhbGx5IGJh
c2VkIG9uIFBhbmZyb3N0Lgo+Cj4gdjI6Cj4gLSBSZW1vdmUgaGFyZGNvZGVkIG51bWJlciBvZiBj
b3Jlcwo+IC0gTWlzYy4gc3R5bGUgZml4ZXMgKEplZmZyZXkgSHVnbykKPiAtIFJlcGFjayBJT0NU
TCBzdHJ1Y3QgKEplZmZyZXkgSHVnbykKPgo+IHYzOgo+IC0gQWRhcHQgdG8gYSBzcGxpdCBvZiB0
aGUgcmVnaXN0ZXIgYmxvY2sgaW4gdGhlIERUIGJpbmRpbmdzIChOaWNvbGFzCj4gICBGcmF0dGFy
b2xpKQo+IC0gTWFrZSB1c2Ugb2YgR1BMLTIuMC1vbmx5IGZvciB0aGUgY29weXJpZ2h0IG5vdGlj
ZSAoSmVmZiBIdWdvKQo+IC0gVXNlIGRybV8qIGxvZ2dpbmcgZnVuY3Rpb25zIChUaG9tYXMgWmlt
bWVybWFubikKPiAtIFJlbmFtZSByZWcgaS9vIG1hY3JvcyAoVGhvbWFzIFppbW1lcm1hbm4pCj4g
LSBBZGQgcGFkZGluZyB0byBpb2N0bHMgYW5kIGNoZWNrIGZvciB6ZXJvIChKZWZmIEh1Z28pCj4g
LSBJbXByb3ZlIGVycm9yIGhhbmRsaW5nIChOaWNvbGFzIEZyYXR0YXJvbGkpCj4KPiB2NjoKPiAt
IFVzZSBtdXRleGVzIGd1YXJkIChNYXJrdXMgRWxmcmluZykKPiAtIFVzZSB1NjRfdG9fdXNlcl9w
dHIgKEplZmYgSHVnbykKPiAtIERyb3Agcm9ja2V0X2ZlbmNlIChSb2IgSGVycmluZykKPgo+IHY3
Ogo+IC0gQXNzaWduIGl0cyBvd24gSU9NTVUgZG9tYWluIHRvIGVhY2ggY2xpZW50LCBmb3IgaXNv
bGF0aW9uIChEYW5pZWwKPiAgIFN0b25lIGFuZCBSb2JpbiBNdXJwaHkpCj4KPiBTaWduZWQtb2Zm
LWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KPiAtLS0KClsuLi5dCgo+
IC0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vcm9ja2V0X2FjY2VsLmgKPiArKysgYi9pbmNsdWRlL3Vh
cGkvZHJtL3JvY2tldF9hY2NlbC5oCj4gQEAgLTEyLDggKzEyLDEwIEBAIGV4dGVybiAiQyIgewo+
ICAjZW5kaWYKPgo+ICAjZGVmaW5lIERSTV9ST0NLRVRfQ1JFQVRFX0JPICAgICAgICAgICAgICAg
ICAgIDB4MDAKPiArI2RlZmluZSBEUk1fUk9DS0VUX1NVQk1JVCAgICAgICAgICAgICAgICAgICAg
ICAweDAxCj4KPiAgI2RlZmluZSBEUk1fSU9DVExfUk9DS0VUX0NSRUFURV9CTyAgICAgICAgICAg
ICBEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX1JPQ0tFVF9DUkVBVEVfQk8sIHN0cnVj
dCBkcm1fcm9ja2V0X2NyZWF0ZV9ibykKPiArI2RlZmluZSBEUk1fSU9DVExfUk9DS0VUX1NVQk1J
VCAgICAgICAgICAgICAgICAgICAgICAgIERSTV9JT1coRFJNX0NPTU1BTkRfQkFTRSArIERSTV9S
T0NLRVRfU1VCTUlULCBzdHJ1Y3QgZHJtX3JvY2tldF9zdWJtaXQpCj4KPiAgLyoqCj4gICAqIHN0
cnVjdCBkcm1fcm9ja2V0X2NyZWF0ZV9ibyAtIGlvY3RsIGFyZ3VtZW50IGZvciBjcmVhdGluZyBS
b2NrZXQgQk9zLgo+IEBAIC0zNyw2ICszOSw2OCBAQCBzdHJ1Y3QgZHJtX3JvY2tldF9jcmVhdGVf
Ym8gewo+ICAgICAgICAgX191NjQgb2Zmc2V0Owo+ICB9Owo+Cj4gKy8qKgo+ICsgKiBzdHJ1Y3Qg
ZHJtX3JvY2tldF90YXNrIC0gQSB0YXNrIHRvIGJlIHJ1biBvbiB0aGUgTlBVCj4gKyAqCj4gKyAq
IEEgdGFzayBpcyB0aGUgc21hbGxlc3QgdW5pdCBvZiB3b3JrIHRoYXQgY2FuIGJlIHJ1biBvbiB0
aGUgTlBVLgo+ICsgKi8KPiArc3RydWN0IGRybV9yb2NrZXRfdGFzayB7Cj4gKyAgICAgICAvKiog
SW5wdXQ6IERNQSBhZGRyZXNzIHRvIE5QVSBtYXBwaW5nIG9mIHJlZ2lzdGVyIGNvbW1hbmQgYnVm
ZmVyICovCj4gKyAgICAgICBfX3U2NCByZWdjbWQ7Cj4gKwo+ICsgICAgICAgLyoqIElucHV0OiBO
dW1iZXIgb2YgY29tbWFuZHMgaW4gdGhlIHJlZ2lzdGVyIGNvbW1hbmQgYnVmZmVyICovCj4gKyAg
ICAgICBfX3UzMiByZWdjbWRfY291bnQ7Cj4gKwo+ICsgICAgICAgLyoqIFJlc2VydmVkLCBtdXN0
IGJlIHplcm8uICovCj4gKyAgICAgICBfX3UzMiByZXNlcnZlZDsKPiArfTsKPiArCj4gKy8qKgo+
ICsgKiBzdHJ1Y3QgZHJtX3JvY2tldF9qb2IgLSBBIGpvYiB0byBiZSBydW4gb24gdGhlIE5QVQo+
ICsgKgo+ICsgKiBUaGUga2VybmVsIHdpbGwgc2NoZWR1bGUgdGhlIGV4ZWN1dGlvbiBvZiB0aGlz
IGpvYiB0YWtpbmcgaW50byBhY2NvdW50IGl0cwo+ICsgKiBkZXBlbmRlbmNpZXMgd2l0aCBvdGhl
ciBqb2JzLiBBbGwgdGFza3MgaW4gdGhlIHNhbWUgam9iIHdpbGwgYmUgZXhlY3V0ZWQKPiArICog
c2VxdWVudGlhbGx5IG9uIHRoZSBzYW1lIGNvcmUsIHRvIGJlbmVmaXQgZnJvbSBtZW1vcnkgcmVz
aWRlbmN5IGluIFNSQU0uCj4gKyAqLwo+ICtzdHJ1Y3QgZHJtX3JvY2tldF9qb2Igewo+ICsgICAg
ICAgLyoqIElucHV0OiBQb2ludGVyIHRvIGFuIGFycmF5IG9mIHN0cnVjdCBkcm1fcm9ja2V0X3Rh
c2suICovCj4gKyAgICAgICBfX3U2NCB0YXNrczsKPiArCj4gKyAgICAgICAvKiogSW5wdXQ6IFBv
aW50ZXIgdG8gYSB1MzIgYXJyYXkgb2YgdGhlIEJPcyB0aGF0IGFyZSByZWFkIGJ5IHRoZSBqb2Iu
ICovCj4gKyAgICAgICBfX3U2NCBpbl9ib19oYW5kbGVzOwo+ICsKPiArICAgICAgIC8qKiBJbnB1
dDogUG9pbnRlciB0byBhIHUzMiBhcnJheSBvZiB0aGUgQk9zIHRoYXQgYXJlIHdyaXR0ZW4gdG8g
YnkgdGhlIGpvYi4gKi8KPiArICAgICAgIF9fdTY0IG91dF9ib19oYW5kbGVzOwo+ICsKPiArICAg
ICAgIC8qKiBJbnB1dDogTnVtYmVyIG9mIHRhc2tzIHBhc3NlZCBpbi4gKi8KPiArICAgICAgIF9f
dTMyIHRhc2tfY291bnQ7Cj4gKwo+ICsgICAgICAgLyoqIElucHV0OiBOdW1iZXIgb2YgaW5wdXQg
Qk8gaGFuZGxlcyBwYXNzZWQgaW4gKHNpemUgaXMgdGhhdCB0aW1lcyA0KS4gKi8KPiArICAgICAg
IF9fdTMyIGluX2JvX2hhbmRsZV9jb3VudDsKPiArCj4gKyAgICAgICAvKiogSW5wdXQ6IE51bWJl
ciBvZiBvdXRwdXQgQk8gaGFuZGxlcyBwYXNzZWQgaW4gKHNpemUgaXMgdGhhdCB0aW1lcyA0KS4g
Ki8KPiArICAgICAgIF9fdTMyIG91dF9ib19oYW5kbGVfY291bnQ7Cj4gKwo+ICsgICAgICAgLyoq
IFJlc2VydmVkLCBtdXN0IGJlIHplcm8uICovCj4gKyAgICAgICBfX3UzMiByZXNlcnZlZDsKPiAr
fTsKPiArCj4gKy8qKgo+ICsgKiBzdHJ1Y3QgZHJtX3JvY2tldF9zdWJtaXQgLSBpb2N0bCBhcmd1
bWVudCBmb3Igc3VibWl0dGluZyBjb21tYW5kcyB0byB0aGUgTlBVLgo+ICsgKgo+ICsgKiBUaGUg
a2VybmVsIHdpbGwgc2NoZWR1bGUgdGhlIGV4ZWN1dGlvbiBvZiB0aGVzZSBqb2JzIGluIGRlcGVu
ZGVuY3kgb3JkZXIuCj4gKyAqLwo+ICtzdHJ1Y3QgZHJtX3JvY2tldF9zdWJtaXQgewo+ICsgICAg
ICAgLyoqIElucHV0OiBQb2ludGVyIHRvIGFuIGFycmF5IG9mIHN0cnVjdCBkcm1fcm9ja2V0X2pv
Yi4gKi8KPiArICAgICAgIF9fdTY0IGpvYnM7Cj4gKwo+ICsgICAgICAgLyoqIElucHV0OiBOdW1i
ZXIgb2Ygam9icyBwYXNzZWQgaW4uICovCj4gKyAgICAgICBfX3UzMiBqb2JfY291bnQ7CgpJc24n
dCB0aGVyZSBhIHByb2JsZW0gaWYgeW91IG5lZWQgdG8gZXhwYW5kIGRybV9yb2NrZXRfam9iIGJl
eW9uZAp1c2luZyB0aGUgMSByZXNlcnZlZCBmaWVsZD8gWW91IGNhbid0IGFkZCB0byB0aGUgc3Ry
dWN0IGJlY2F1c2UgdGhlbgp5b3UgZG9uJ3Qga25vdyB0aGUgc2l6ZSBoZXJlLiBTbyB5b3UgaGF2
ZSB0byBtb2RpZnkgZHJtX3JvY2tldF9zdWJtaXQKdG8gbW9kaWZ5IGRybV9yb2NrZXRfam9iLiBN
YXliZSBiZXR0ZXIgaWYgeW91IHBsYW4gZm9yIHRoYXQgbm93IHJhdGhlcgp0aGFuIGxhdGVyIGJ5
IG1ha2luZyB0aGUgc2l6ZSBleHBsaWNpdC4KClRob3VnaCBldG5hdml2IGF0IGxlYXN0IGhhcyBz
aW1pbGFyIGlzc3Vlcy4KClJvYgoKPiArCj4gKyAgICAgICAvKiogUmVzZXJ2ZWQsIG11c3QgYmUg
emVyby4gKi8KPiArICAgICAgIF9fdTMyIHJlc2VydmVkOwo+ICt9OwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
