Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 645C2D4661C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 19:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TywE9mainp6zSRkKTRNBx2g9NBiHoOPbHGHrzQyF1VY=; b=nFUvfjXoIlkgmr
	/lvD6E9+JGOyRrZrq67zSdkqdolRuJ6mDG3WJTzlzGXMV30mCYzau1+kEURt4GAZTmMdpIyRKkl5D
	a/uJPpyegZfq0Mmw99jK56PcwyA/e16cA6Jh2cdXRs26EN2hQCrwzWbjVUP592l6J+qItK8TSBmnC
	i1VOBP835UHSsAJsmJ/l3bEtynPvf9QkF+oat2ZkBfY81WuHYx7fKEVY+pSBDKPBB163S8qmYjzw6
	nQTC/TfhDSCdss9aPNu5TAumpX6O5xxS+Ym9qxnotg52vXcU82ao6ccsGknbJbsK//9mT96qLS+UV
	pHaolh8euQ4MYFo3xdeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgTC9-0000000D5Tz-1bwD;
	Thu, 15 Jan 2026 19:39:49 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgTC7-0000000D5Ta-2TVd
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jan 2026 19:39:48 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7cfd9b4e3f8so305563a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Jan 2026 11:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768505986; x=1769110786; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+Y9JPHMLgTUXc+ecELZBiMS5bikr+UFRMXA2sNtZ1A=;
        b=jVqA0BGXhi1xpwlhmqrKVeOUQ44f08dRE6qjFbJ4BiqE+siw3whHtaa68OnIudngDH
         xOgebO+IL86lEvLIMnTEgfceYKQ06pPT06wxxN+hM4jvNx0Lm7NxIkFUT5dIAaZTXN7z
         6hjESc3Sj4vQoeClpOd+84gEV/35GFUsMoxfX4dV8XM8Btln5PcyRH0mIBZL4reOW9/0
         OSqFYNpu5SNSYpX3qH/eoISxkz+FytI7Pp/yOnfQgWfcFO5dBHAvr5NyL51eHyhXEstQ
         N8OVU0vUuc/iE0toZlzj75fJ4W3qgo7yzUG9YMals9Q5gIpCXBBHX49zwLpfsX2jS9v7
         rnUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768505986; x=1769110786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=u+Y9JPHMLgTUXc+ecELZBiMS5bikr+UFRMXA2sNtZ1A=;
        b=FwV4e0vx+mRufmtw3agaNzU4JJz9NdVUP6EcQ8A8nquus0Yy5RDGbuezp1C9P1/xDe
         0qkdTETG5g4jy2H9tgTeV3GPomY8gtjWhCz5DjuWjdyslyBI6ZnC27FutQNMkOJxG5tM
         PBA4RdLipNx1HveyYuv0ce42ecuhcj7eHPnLyear9PyX4zRfADHK8+euvufVHeze7kLI
         fOJ9rzITS2+k/4rSF5u50uHFJ0IeyGywoh901e34eR6IP04h1elMsxrxoIdZkoct4jGt
         xsOy1SZePV5D2Ks0HKM5BugeTrpcIb+gjxZe9YdCTo/T+UGccRzIYfRe9v0SQrR+Sf5d
         0X/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWVM+9sumRJI9a2xj1eL6UZt6IpdhflHZyITo1zmqkBUvKmE08u+DpYEuMFhIbIt+mDQqRgr/w7kT5s3rCZ9g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3QUcYGsM6Rx4IspJNNsdcRNgaQljjuUA5oTPAU7ouLSRYM5yl
	XvdmzT+ZYdnYpw+T514nQxHCJbW5/Yz1fjucCiavjtSTqpgOIPhoDDNmf2kl4j60Fy/9yOxbiAo
	UtNejpyXgkOhJRYCn4jAkPV3uUuggOz8=
X-Gm-Gg: AY/fxX4n3fXIYDqmkSrmoy0z1NhVYKBop61gMFuQF4hwaRRO7TfOxqHLhMye0H2TqTl
	rQbUCd+J0CpmgfGWly7uxbY5XaMeGckYX+kh5rwoo0DnuDCOS47mF3vXg1Oe24FTroH7JK+FOzl
	sBCW+gTkgB5mAy3ryZVHxVN/zc4CqAcRt/+uOsVH/keDbVaEAY3IK/o2jmtH+0bPdRUFqrgh5HJ
	T+GlKKu8rn1QiLoRJoMGKKvBvSsfpVkXMvVYL+4t+2zGfBh7OEkwi957nj+kh6048eNDtPe+JYk
	RI7iN1dJpiuv2XTx2ZMiIx73zQ==
X-Received: by 2002:a05:6830:6f87:b0:7cf:d119:9953 with SMTP id
 46e09a7af769-7cfded88a2dmr339380a34.16.1768505986076; Thu, 15 Jan 2026
 11:39:46 -0800 (PST)
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com> <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
 <6934ae0d-16c5-436f-97f6-c11d304ca51d@rock-chips.com> <CAGJh8eDXT43_PfmUbShL4Hysfkd21R=sCerRNe_AGQANbwvSPA@mail.gmail.com>
 <b49b223e-e728-4ce9-b972-242ed9b5fa4a@rock-chips.com>
In-Reply-To: <b49b223e-e728-4ce9-b972-242ed9b5fa4a@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Thu, 15 Jan 2026 20:39:34 +0100
X-Gm-Features: AZwV_QiTFtSgqSyC27FsHbFXergz67zSshuEZxUAYX8VeT_CedW_QILqNjpuJNs
Message-ID: <CAGJh8eB0i5UYN=05SfNGQc4dMA5_ffktErY8GjX85JWjDna3Dw@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	heiko@sntech.de, ulf.hansson@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_113947_662935_40790E0C 
X-CRM114-Status: GOOD (  24.77  )
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

SGVsbG8gU2hhd24sCgpPbiBUaHUsIEphbiAxNSwgMjAyNiBhdCAxOjI14oCvQU0gU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4KPiA+IEJhc2VkIG9uIHRoaXMs
IGl0IG1ha2VzIG1lIGJlbGlldmUgdGhhdCBwb3dlciB0byB0aGUgc2QgY2FyZCBpcyBjb21wbGV0
ZWx5IGN1dAo+ID4gYW5kIHdoZW4gaXQgd2FrZXMgdXAgYW5kIGtub3dzIGhvdyB0byBjb250aW51
ZSwgaXQgc3RpbGwgbXVzdCBnbyB0aHJvdWdoIHRoZQo+ID4gcmV0cmFpbmluZyBwaGFzZS4KPiA+
Cj4KPiBUaGlzIGlzIGFub3RoZXIgbWlzdGFrZSBmb3IgeW91ciBOYW5vUGkgUjc2UyBib2FyZC4g
QmVmb3JlIHNlbnQgdGhpcwo+IHBhdGNoLCBJIGFscmVhZHkgY2hlY2tlZCB0aGUgZHRzIGFuZCBz
YXcgc2RtbWMgdXNlcyB2bW1jLXN1cHBseSA9Cj4gPCZ2Y2NfM3YzX3MzPiB3aGljaCBpcyBtYXJr
ZWQgYXMgcmVndWxhdG9yLWFsd2F5cy1vbiwgYnV0IGl0J3MgKk5PVCoKPiBhY3R1YWxseSBwZXIg
dGhlIHNoY2VtYXRpY1sxXVsyXS4gU28gbmVlZCBhbm90aGVyIGZpeCBmb3IgeW91ciBib2FyZAo+
IHRvIG1ha2UgaXQgYWN0dWFsbHkgZ3Bpby1iYXNlZCBwb3dlciBjb250cm9sbGVyIGluc3RhZWQg
b2YgZnVuY3Rpb24KPiBJTyBiYXNlZCwgYXMgd2hlbiBwb3dlcmluZyBvZmYgdGhlIHBvd2VyIGRv
bWFpbiwgdGhlIHBvd2VyIGNvbnRyb2wgYml0Cj4gd2lsbCBub3QgYmUgYWJsZSB0byBtYWludGFp
bi4KPgo+IFsxXQo+IGh0dHBzOi8vd2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzLzYv
NjAvTmFub1BpX1I3NlNfTFA0WF8yNDExX1NDSC5wZGYKPiBbMl0KPiBodHRwczovL3dpa2kuZnJp
ZW5kbHllbGVjLmNvbS93aWtpL2ltYWdlcy85LzkwL05hbm9QaV9SNzZTX0xQNV8yNDExX1NDSC5w
ZGYKPgo+IEV4Y2VwdCBmb3IgdGhlIHBhdGNoZXMgeW91IGhhdmUgdGVzdGVkLCBwbGVhc2UgYXBw
ZW5kIHRoZSBibG93IHBhdGNoIGFzCj4gd2VsbCB0byB0ZXN0LgoKQmluZ28uIFRoZXNlIERUUyBh
ZGRpdGlvbnMgZml4ZWQgdGhlIHBvd2VyIHN0YWJpbGl0eSBmb3IgdGhlIFNEIGNhcmQuCkkgaGF2
ZSB2ZXJpZmllZCB0aGF0IHRoZSBjYXJkIG5vdyB3YWtlcyB1cCBpbnN0YW50bHkgd2l0aCBubyBl
cnJvcnMgYW5kCm5vIHJldHJhaW5pbmcgZGVsYXkuCgpJIHRlc3RlZCB0aGlzIGJvdGggd2l0aCBh
bmQgd2l0aG91dCB5b3VyIGRyaXZlciBwYXRjaCAodGhlIHNhdmUvcmVzdG9yZQpwaGFzZXMgbG9n
aWMpLgoKVGhpcyBjb25maXJtcyB0aGUgaXNzdWUgd2FzIGluZGVlZCB0aGUgcG93ZXIgcmFpbCBi
ZWluZyBjdXQgZHVyaW5nCmlkbGUgcGVyaW9kcy4gR3JlYXQgZmluZCBvbiB0aGUgc2NoZW1hdGlj
IQoKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1uYW5vcGktcjc2
cy5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1uYW5vcGkt
cjc2cy5kdHMKPiBAQCAtMTkyLDYgKzE5MiwxOCBAQAo+ICAgICAgICAgICAgICAgICAgcmVndWxh
dG9yLW5hbWUgPSAidmNjXzN2M19zMCI7Cj4gICAgICAgICAgICAgICAgICB2aW4tc3VwcGx5ID0g
PCZ2Y2NfM3YzX3MzPjsKPiAgICAgICAgICB9Owo+ICsKPiArICAgICAgIHZjYzN2M19zZDogcmVn
dWxhdG9yLXZjYy0zdjMtc2Qgewo+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3Vs
YXRvci1maXhlZCI7Cj4gKyAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPiArICAg
ICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8wIFJLX1BCNiBHUElPX0FDVElWRV9ISUdIPjsKPiAr
ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArICAgICAgICAgICAg
ICAgcGluY3RybC0wID0gPCZzZG1tY19wd3Jlbj47Cj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1uYW1lID0gInZjYzN2M19zZCI7Cj4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWlj
cm92b2x0ID0gPDMzMDAwMDA+Owo+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jv
dm9sdCA9IDwzMzAwMDAwPjsKPiArICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjXzN2
M19zMD47Cj4gKyAgICAgICB9Owo+ICAgfTsKPgo+ICAgJmNvbWJwaHkwX3BzIHsKPiBAQCAtNzI2
LDYgKzczOCwxMiBAQAo+ICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICB9Owo+Cj4gKyAg
ICAgICBzZG1tYyB7Cj4gKyAgICAgICAgICAgICAgIHNkbW1jX3B3cmVuOiBzZG1tYy1wd3JlbiB7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwwIFJLX1BCNiBSS19G
VU5DX0dQSU8KPiAmcGNmZ19wdWxsX25vbmU+Owo+ICsgICAgICAgICAgICAgICB9Owo+ICsgICAg
ICAgfTsKPiArCj4gICAgICAgICAgdXNiIHsKPiAgICAgICAgICAgICAgICAgIHVzYl9vdGcwX3B3
cmVuX2g6IHVzYi1vdGcwLXB3cmVuLWggewo+ICAgICAgICAgICAgICAgICAgICAgICAgICByb2Nr
Y2hpcCxwaW5zID0gPDAgUktfUEQxIFJLX0ZVTkNfR1BJTwo+ICZwY2ZnX3B1bGxfbm9uZT47Cj4g
QEAgLTc1MSwxMSArNzY5LDE0IEBACj4gICAgICAgICAgYnVzLXdpZHRoID0gPDQ+Owo+ICAgICAg
ICAgIGNhcC1tbWMtaGlnaHNwZWVkOwo+ICAgICAgICAgIGNhcC1zZC1oaWdoc3BlZWQ7Cj4gKyAg
ICAgICBjZC1ncGlvcyA9IDwmZ3BpbzAgUktfUEE3IEdQSU9fQUNUSVZFX0xPVz47Cj4gICAgICAg
ICAgZGlzYWJsZS13cDsKPiAgICAgICAgICBuby1tbWM7Cj4gICAgICAgICAgbm8tc2RpbzsKPiAr
ICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKyAgICAgICBwaW5jdHJsLTAgPSA8
JnNkbW1jMF9jbGsgJnNkbW1jMF9jbWQgJnNkbW1jMF9kZXQgJnNkbW1jMF9idXM0PjsKPiAgICAg
ICAgICBzZC11aHMtc2RyMTA0Owo+IC0gICAgICAgdm1tYy1zdXBwbHkgPSA8JnZjY18zdjNfczM+
Owo+ICsgICAgICAgdm1tYy1zdXBwbHkgPSA8JnZjYzN2M19zZD47Cj4gICAgICAgICAgdnFtbWMt
c3VwcGx5ID0gPCZ2Y2Npb19zZF9zMD47Cj4gICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Cj4K
Pgo+Cj4gPj4gLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwo+ID4+ICsr
KyBiL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiA+PiBAQCAtMzYsNiArMzYs
OCBAQCBzdHJ1Y3QgZHdfbWNpX3JvY2tjaGlwX3ByaXZfZGF0YSB7Cj4gPj4gICAgICAgICAgIGlu
dCAgICAgICAgICAgICAgICAgICAgIGRlZmF1bHRfc2FtcGxlX3BoYXNlOwo+ID4+ICAgICAgICAg
ICBpbnQgICAgICAgICAgICAgICAgICAgICBudW1fcGhhc2VzOwo+ID4+ICAgICAgICAgICBib29s
ICAgICAgICAgICAgICAgICAgICBpbnRlcm5hbF9waGFzZTsKPiA+PiArICAgICAgIGludCAgICAg
ICAgICAgICAgICAgICAgIHNhbXBsZV9waGFzZTsKPiA+PiArICAgICAgIGludCAgICAgICAgICAg
ICAgICAgICAgIGRydl9waGFzZTsKPiA+PiAgICB9Owo+ID4+Cj4gPj4gICAgLyoKPiA+PiBAQCAt
NTczLDkgKzU3NSw0MyBAQCBzdGF0aWMgdm9pZCBkd19tY2lfcm9ja2NoaXBfcmVtb3ZlKHN0cnVj
dAo+ID4+IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+PiAgICAgICAgICAgZHdfbWNpX3BsdGZt
X3JlbW92ZShwZGV2KTsKPiA+PiAgICB9Cj4gPj4KPiA+PiArc3RhdGljIGludCBkd19tY2lfcm9j
a2NoaXBfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+PiArewo+ID4+ICsg
ICAgICAgc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IHRvX3BsYXRmb3JtX2RldmljZShk
ZXYpOwo+ID4+ICsgICAgICAgc3RydWN0IGR3X21jaSAqaG9zdCA9IHBsYXRmb3JtX2dldF9kcnZk
YXRhKHBkZXYpOwo+ID4+ICsgICAgICAgc3RydWN0IGR3X21jaV9yb2NrY2hpcF9wcml2X2RhdGEg
KnByaXYgPSBob3N0LT5wcml2Owo+ID4+ICsKPiA+PiArICAgICAgIGlmIChwcml2LT5pbnRlcm5h
bF9waGFzZSkgewo+ID4+ICsgICAgICAgICAgICAgICBwcml2LT5zYW1wbGVfcGhhc2UgPSByb2Nr
Y2hpcF9tbWNfZ2V0X3BoYXNlKGhvc3QsIHRydWUpOwo+ID4+ICsgICAgICAgICAgICAgICBwcml2
LT5kcnZfcGhhc2UgPSByb2NrY2hpcF9tbWNfZ2V0X3BoYXNlKGhvc3QsIGZhbHNlKTsKPiA+PiAr
ICAgICAgIH0KPiA+PiArCj4gPj4gKyAgICAgICByZXR1cm4gZHdfbWNpX3J1bnRpbWVfc3VzcGVu
ZChkZXYpOwo+ID4+ICt9Cj4gPj4gKwo+ID4+ICtzdGF0aWMgaW50IGR3X21jaV9yb2NrY2hpcF9y
dW50aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4gK3sKPiA+PiArICAgICAgIHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSB0b19wbGF0Zm9ybV9kZXZpY2UoZGV2KTsKPiA+
PiArICAgICAgIHN0cnVjdCBkd19tY2kgKmhvc3QgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2
KTsKPiA+PiArICAgICAgIHN0cnVjdCBkd19tY2lfcm9ja2NoaXBfcHJpdl9kYXRhICpwcml2ID0g
aG9zdC0+cHJpdjsKPiA+PiArICAgICAgIGludCByZXQ7Cj4gPj4gKwo+ID4+ICsgICAgICAgcmV0
ID0gZHdfbWNpX3J1bnRpbWVfcmVzdW1lKGRldik7Cj4gPj4gKyAgICAgICBpZiAocmV0KQo+ID4+
ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4+ICsKPiA+PiArICAgICAgIGlmIChwcml2
LT5pbnRlcm5hbF9waGFzZSkgewo+ID4+ICsgICAgICAgICAgICAgICByb2NrY2hpcF9tbWNfc2V0
X3BoYXNlKGhvc3QsIHRydWUsIHByaXYtPnNhbXBsZV9waGFzZSk7Cj4gPj4gKyAgICAgICAgICAg
ICAgIHJvY2tjaGlwX21tY19zZXRfcGhhc2UoaG9zdCwgZmFsc2UsIHByaXYtPmRydl9waGFzZSk7
Cj4gPj4gKyAgICAgICAgICAgICAgIG1jaV93cml0ZWwoaG9zdCwgTUlTQ19DT04sIE1FTV9DTEtf
QVVUT0dBVEVfRU5BQkxFKTsKPiA+PiArICAgICAgIH0KPiA+PiArCj4gPj4gKyAgICAgICByZXR1
cm4gcmV0Owo+ID4+ICt9Cj4gPj4gKwo+ID4+ICAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3Bt
X29wcyBkd19tY2lfcm9ja2NoaXBfZGV2X3BtX29wcyA9IHsKPiA+PiAgICAgICAgICAgU1lTVEVN
X1NMRUVQX1BNX09QUyhwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQsCj4gPj4gcG1fcnVudGltZV9m
b3JjZV9yZXN1bWUpCj4gPj4gLSAgICAgICBSVU5USU1FX1BNX09QUyhkd19tY2lfcnVudGltZV9z
dXNwZW5kLCBkd19tY2lfcnVudGltZV9yZXN1bWUsIE5VTEwpCj4gPj4gKyAgICAgICBSVU5USU1F
X1BNX09QUyhkd19tY2lfcm9ja2NoaXBfcnVudGltZV9zdXNwZW5kLAo+ID4+IGR3X21jaV9yb2Nr
Y2hpcF9ydW50aW1lX3Jlc3VtZSwgTlVMTCkKPiA+PiAgICB9Owo+ID4+Cj4gPj4gICAgc3RhdGlj
IHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgZHdfbWNpX3JvY2tjaGlwX3BsdGZtX2RyaXZlciA9IHsK
PiA+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
