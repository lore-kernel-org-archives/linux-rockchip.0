Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A2BCC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 21:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETkhT2LXm21oLSYbbQmX0meY1i0TS31dsyoihMN1lPo=; b=d6Uk+ULzpVa6B1
	ywzsL1mwWTqkQwwXdrqOMR1exRAl4K5BBU8zEZWzUMDxkjJtA134zmD6CSIfMxLx/mAXVcO5xhDfA
	ZMIcf9ocRcAX4Idra+mJMw+iov9RkV62ZUSMWw0NZah0ud9hS9lQDF7BxoFSrSGBB3/YwA2gAHGAS
	wPCNDNPQ60NtS8QnlLNMl2QOmw7Zpn3g6Hi42eDWPDS9EztTcgoyBGfYaRtoawBOYGS+vDtIdS5xs
	KC1ZsNUEp0lkK8fyelXA57x5mnSQH2MzN5o7TvrPXClFZRcFKTKsK6ehS0Ws6Emp7NPO8vcebsh2w
	ehtD3RTP5JoW1l2H8T1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbnxl-00000006HNy-3g0M;
	Wed, 07 Aug 2024 21:12:53 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbnxj-00000006HML-2UFu;
	Wed, 07 Aug 2024 21:12:52 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2ef2d96164aso2321791fa.3;
        Wed, 07 Aug 2024 14:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723065169; x=1723669969; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H/bmxju7ZLwzIAH8jlEDDreLMssuhznvKRpLl5JRJbc=;
        b=QE0sIj8gkNT2rrXA2GGIFNbADoDPAulZxc+dYP7HX6FQ+2W4AdlFbKSQokdyynzg87
         z91f7kvoyixG5xtFPwZlmHTlFqM4hJ6JTyHtzW11Xv0JOk9Kci+zLCHVPXd5UDwVttAZ
         Tp4OdYzplupnMsdKPGoplcMtgiXfxiR3UDVejxC48yrxbYivbo3molhajapsAWqAViTT
         dS3bvJDL5P0G7/GIMAwwICbJ2KGNi9m9Sy3xZkth9Yqs+UF6sCDj1l4M3IajHulGcebb
         eicpt8/JRg+UJZMBkVdGTl2jV/+B8aKYNCRiaWrw8SGlzp4kP3A4qD8uXxEZYEcqQ9/L
         fExA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723065169; x=1723669969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H/bmxju7ZLwzIAH8jlEDDreLMssuhznvKRpLl5JRJbc=;
        b=SXwf0p875XmcfQDlcQ8UXSTf86aG5sgOrEhkUf3qpRGAFFPmXC+v3KfEmt2TAjnbKZ
         s+gCl/mWGgbg9+19W7O3yXFvB1uzVSUjkcTy5wnXks35+fgiioa2QsnyWVIimRdqnntP
         UoXV2td5sn0NHoVqxdyL9E3F6HCvoz9eLpSBxQ7wi75rm/sA/49NejKCdj38rsPd9tLm
         m1TF9tz6pUWLwG33Y3SXyzqzDkOtN7fR+3huFYtZYyjNujzlKaqVC/hpXoRcZhmEncgm
         dYzhCf9aqE5x8TwOHar6Gv9cOTqU8xA6S2E3jc+8XCfuPPDsbboL7nY3O9z985zqNVan
         DO7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWSUkYzm9Ev9GTzJrgKAQxMpH+ZK021PAVIoY1imrWXUXx01yf+Os0Q0iTZ1eyMejXKHLtRJCo6hU6v/T3AXbY=@lists.infradead.org, AJvYcCWzWJDNO5c2ihEuwylc0hitoYrdD20AZy4MmwNaWEdMnQ50oZ4YwhvYuC5bkdm5kKAFjF3u7txUlkZTC8QRnwfY@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9A1icz0THuD1zFGNpFLS1KTSNmqvIFhAIww2S3abYIE/baSln
	A1XJ+L8sC6QYU/5a6K38jvKBc7LwMGKyq/4GkNfKe4hI6Me2p69H
X-Google-Smtp-Source: AGHT+IHY8G93+4dqsOW2PvS20aHLKtl2r2rEMnKjeoACncKdu2CAA+R9R8DzuDfiVZbRYFJwm7/qJg==
X-Received: by 2002:a2e:3002:0:b0:2f0:2833:efaa with SMTP id 38308e7fff4ca-2f15aac3960mr127650011fa.25.1723065168562;
        Wed, 07 Aug 2024 14:12:48 -0700 (PDT)
Received: from latitude-fedora.localnet ([31.173.83.209])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15e1adf63sm19884571fa.40.2024.08.07.14.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 14:12:47 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
To: Florian Klink <flokli@flokli.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Muhammed Efe Cetin <efectn@protonmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 =?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi on
 orangepi-5-plus
Date: Thu, 08 Aug 2024 00:12:46 +0300
Message-ID: <4888470.OV4Wx5bFTl@latitude-fedora>
In-Reply-To: <1b2e1b1b321f84f5cbff2ae18c3eba2e@manjaro.org>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
 <1b2e1b1b321f84f5cbff2ae18c3eba2e@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_141251_655592_1A741D04 
X-CRM114-Status: GOOD (  23.61  )
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

T24gV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCA5OjMyOjUx4oCvUE0gR01UKzMgRHJhZ2FuIFNp
bWljIHdyb3RlOgo+IE9uIDIwMjQtMDgtMDcgMjA6MTQsIEZsb3JpYW4gS2xpbmsgd3JvdGU6Cj4g
PiBPbiBXZWQsIEF1ZyAwNywgMjAyNCBhdCAwNzoyNDoyN1BNIEdNVCwgRHJhZ2FuIFNpbWljIHdy
b3RlOgo+ID4+IE9uIDIwMjQtMDgtMDcgMTk6MDAsIEZsb3JpYW4gS2xpbmsgd3JvdGU6Cj4gPj4+
IFRoaXMgZm9sbG93cyB0aGUgc2FtZSBsb2dpYyBhcyA4MmQ0MGIxNDFhNGMgKCJhcm02NDogZHRz
OiByb2NrY2hpcDoKPiA+Pj4gYWRkCj4gPj4+IHJma2lsbCBub2RlIGZvciBNLjIgS2V5IEUgV2lG
aSBvbiByb2NrLTViIikuCj4gPj4+IAo+ID4+PiBPbiB0aGUgb3JhbmdlcGktNS1wbHVzLCB0aGVy
ZSdzIGFsc28gYSBHUElPIHBpbiBjb25uZWN0aW5nIHRoZSBXaUZpCj4gPj4+IGVuYWJsZSBzaWdu
YWwgaW5zaWRlIHRoZSBNLjIgS2V5IEUgc2xvdC4KPiA+Pj4gCj4gPj4+IFRoZSBleGFjdCBHUElP
IFBJTiBjYW4gYmUgdmFsaWRhdGVkIGluIHRoZSBBcm1iaWFuIHJrLTUuMTAtcmtyNAo+ID4+PiBr
ZXJuZWwKPiA+Pj4gcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHNpIGZpbGUgWzFdLCB3aGljaCBj
b250YWlucyBhIGB3aWZpX2Rpc2FibGVgCj4gPj4+IG5vZGUgcmVmZXJlbmNpbmcgUktfUEM0IG9u
ICZncGlvMC4KPiA+Pj4gCj4gPj4+IFNpZ25lZC1vZmYtYnk6IEZsb3JpYW4gS2xpbmsgPGZsb2ts
aUBmbG9rbGkuZGU+Cj4gPj4+IFRlc3RlZC1ieTogRmxvcmlhbiBLbGluayA8Zmxva2xpQGZsb2ts
aS5kZT4KPiA+PiAKPiA+PiBJIGZvcmdvdCB0byBtZW50aW9uIHRoYXQgcHJvdmlkaW5nIGEgVGVz
dGVkLWJ5IHRhZyBpcyByZWR1bmRhbnQgd2hlbgo+ID4+IHRoZXJlJ3MgYWxyZWFkeSBhIFNpZ25l
ZC1vZmYtYnkgdGFnLCBiZWNhdXNlIHRoZSBsYXR0ZXIgYWxyZWFkeQo+ID4+IGltcGxpZXMKPiA+
PiB0aGUgZm9ybWVyLgo+ID4gCj4gPiBUaGlzIGNhbWUgYWZ0ZXIgSSBzZW50IHRoZSB2My4gR2Vu
ZXJhbGx5IEkgd2lzaCBwZW9wbGUgd291bGQgdGVzdAo+ID4gdGhpbmdzCj4gPiAtIHRob3VnaCB0
b28gb2Z0ZW4gaXQncyBub3QuIEkgZXhwbGljaXRseSB0ZXN0ZWQgdGhpcyB0byB3b3JrICh3aXRo
IGEKPiA+IHdpZmkgbW9kdWxlIGFkZGVkIHRvIHRoYXQgc2xvdCBiZWluZyB1bmJsb2NrLWFibGUg
YWZ0ZXJ3YXJkcyksIGFuZAo+ID4gd2FudGVkIHRvIHBvaW50IHRoYXQgb3V0LCB0aHVzIGFkZGlu
ZyB0aGUgVGVzdGVkLWJ5Lgo+IAo+IEluIGdlbmVyYWwsIHNvbWUgdGltZSBzaG91bGQgYmUgYWxs
b3dlZCBiZXR3ZWVuIHNlbmRpbmcgY29uc2VjdXRpdmUKPiB2ZXJzaW9ucyBvZiB0aGUgc2FtZSBw
YXRjaCwgc28gcGVvcGxlIGNhbiBwcm92aWRlIHRoZWlyIGZlZWRiYWNrLgo+IAo+IFdoZW4gaXQg
Y29tZXMgdG8gdGVzdGluZyB0aGUgc3VibWl0dGVkIHBhdGNoZXMsIHBsZWFzZSBub3RlIHRoYXQg
c2lnbmluZwo+IG9mZiBhIHBhdGNoIGltcGxpZXMgdGhhdCB0aGUgc2lnbmVyIGhhcyBhbHJlYWR5
LCB0byB0aGUgYmVzdCBvZiB0aGVpcgo+IGFiaWxpdGllcywgbWFkZSBzdXJlIHRoYXQgdGhlIHBh
dGNoIHdvcmtzIGFzIGRlc2NyaWJlZCBhbmQgZXhwZWN0ZWQuCj4gCj4gV2l0aCBhbGwgdGhhdCBp
biBtaW5kLCBwbGVhc2UgYWxsb3cgbWUgdG8gcmVwZWF0IHRoYXQgYSBUZXN0ZWQtYnkgdGFnCj4g
c2hvdWxkIG5vdCBiZSBwcm92aWRlZCBmcm9tIHRoZSBzYW1lIHBlcnNvbiB0aGF0IHRoZSBTaWdu
ZWQtb2ZmLWJ5IHRhZwo+IGlzIGFscmVhZHkgY29taW5nIGZyb20uICBJdCdzIHNpbXBseSByZWR1
bmRhbnQuCgpKdXN0IHR3byBjZW50czogcGVyaGFwcyBkcm9wcGluZyB0aGUgdGFnIGFuZCBleHBh
bmRpbmcgdGhlIGNvbW1pdCBtZXNzYWdlIGEgCmJpdCBjb3VsZCBiZSB0aGUgYmVzdCBvZiBib3Ro
IHdvcmxkcy4gSnVzdCBzdGF0ZSB0aGF0IHlvdSB0ZXN0ZWQgaXQgd2l0aCBzdWNoIAphbmQgc3Vj
aCBtb2R1bGUsIG9ic2VydmluZyBzdWNoIGFuZCBzdWNoIHJlc3VsdHMuIFRoYXQgd291bGQgYWxz
byBoZWxwIGlmIGZvciAKZXhhbXBsZSBhbm90aGVyIHVzZXIgdHJpZXMgYSBkaWZmZXJlbnQgbW9k
dWxlIGFuZCB0aGF0IGZhaWxzIGR1ZSB0byBzb21lIApxdWlya3M6IGl0J3MgZWFzaWVyIHRvIGRl
YnVnIGEgcG90ZW50aWFsIGlzc3VlIHdoZW4gb25lIGtub3dzIGEgd29ya2luZyAKY29uZmlndXJh
dGlvbiB0byBjb21wYXJlIGEgbm9uLXdvcmtpbmcgb25lIGFnYWluc3QuCgpCZXN0IHJlZ2FyZHMs
CkFsZXhleQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
