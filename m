Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C991D3C928
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Dec 2025 16:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KGWAU/hjXMibtBZ31+cdM5QxwZvhOdQNQOjQ2Pgx4M=; b=lSvp6w6uN09Urv
	bJulraelcgzKfd8dMdJ0+EokWqKz4eyWU2pKcxvUojonbvxsLRMzFuEbPz5xZ58FOCmS2aMci6oqv
	Baz/oA9i87yM2vY4P2qiwE7D+w8DKUfPyUF3y8dHsG+w/jb3tBPI7a7n3Cd4d/DTfVgYX4zos0yNL
	yxdNGGQ24OGy8jzHkKCcaS2jcZHGnQ8r3Tk70OpBuY3i8jAPUaa+Zi84AP2hOYbiCZmm27zIy1/mq
	dqUSy1BVLPlUigtFQXSER617Qxzwu9bDa5W1W6mh603/YEugbmnoZJga76xoziNLCNvI0K2ExyCvL
	hTZOiX/RZzmQ75PSwCrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTNEB-0000000Fehi-2OVp;
	Wed, 10 Dec 2025 16:39:47 +0000
Received: from mail-yx1-xb12a.google.com ([2607:f8b0:4864:20::b12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTNE8-0000000Fegw-0gPz
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Dec 2025 16:39:45 +0000
Received: by mail-yx1-xb12a.google.com with SMTP id 956f58d0204a3-6446c924f9eso1319508d50.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Dec 2025 08:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1765384782; x=1765989582; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBtYSJJTly1m/YQDIhV4i8gYEOktE3RA8uKT8B/CUWk=;
        b=bacQ51pV/39XJSBnPfj0+4Yd90/kNCVVO9RoQS6Rr3VuIbdUifhP4i+WuWePWaLFPR
         3ooDtb6NtShyD8VNdX1YWe/UQyeg59PqeyqQ8AA4fnu9IxOrwpSzkMGdB9Xuk/yMk1Ct
         yBVURWv/VdL+GfH2bKsqJa9gIn77ymJDtXaKSVzambPM3G1KzdboV6HYuscYXNIY1qWi
         y3qslD6I9SY8M++unrPUmCXggk080B+0gPd4vdDWTBC2ijdLj57KIFKXi6eHi2/nPEZY
         4Xjjy1sMItmWbNJtoGATXdPl3hoprEKFEHlSU/hxZ+Yc7D0rOQJ/xBbNVhkQZnNzcnHT
         n/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765384782; x=1765989582;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kBtYSJJTly1m/YQDIhV4i8gYEOktE3RA8uKT8B/CUWk=;
        b=VIc4yZwIflh1J76tyKesUgd4pG9MKMj6bJZ1uGsqH7nKmhqogqrfPytcvIqIclMy7o
         lUVNFDyYEPURgTa8Kdfm3X5GgV8su2W7qYT+j39dN0G9v/QTqkC6MazzQXkHAjFrFZQd
         0+89ZXqK4cn52swETgzX7W/8tKw6g7ciFZgys3zxObA5jBXuP5VYUOO55te5JXn984tV
         psorDdjU/gGu5eFVlGn9NteDj9nCuTfceBX94vPNJKR24fn3JZ3sQT1sFEqX0fW5wPMv
         jcv3nyyGlAvkgLBAdtc3xScJtUw1Yfula5KmdXQpmX2rTtCmmSgtbiwh4jcxEVGyB0EJ
         OFdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvlaryF3vd03t/ORr/S5l5sL7MooQ0TiB49rGwPLvwKGDSb5aV4ymPiRMYFJ5JWZkUKHMCfinyPNBDS5dQMg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUfNG3DeOunkgprRk9mQUt3HvSwMsXxDb0OAaT7eooLYKG/ayv
	u87llTLIf2QyKbLk7D64drNkIHRvMRlh9/FuAWMbAFZYO6rAJteG2pNEGFJSJaRMcXXE5kLw/F/
	3QEPaPh4=
X-Gm-Gg: AY/fxX7ogs6qy14rGdoHmGCUPokWo111U86bQn4Vd+0mnCoSP0M67uB+72MECpJyatd
	Va+0EoBmnQ5/xUVRaFSZml57ufOV9SAMY7BQiM9oWZmNfS3QTBY4uP+gub1fjiFyXQykwKTL2vC
	YQ1awRMRLzbP46paJDPjM1q2EMsHkbfyTa6YxGqSjEOyqwQmqYg4hOYH2/f91Lq8bbaV1b/rhkt
	zTrzgSBwu5K2IUnxmsRkA99Vd8vZ8vLY8rIWYLM5bE3LwErJTGzGRJum6qn1IkA7qzTSdy+OPyV
	h+sCMyxEsMF3KSMKDpR/2Q48RrtYoJ9cyaRAweL1YT6yZF3VdYeqKTPQb9cjvUb9WR7c7pt34uJ
	5FohNwla2ROBDH2n4gel8/xCbODgItZUTy9HXB6c8990XNb5QPyoT5+4G8RS9XNIIo88Xj/shaS
	iUjV+aiFrqtylPT5Lt6t7Hj1WHq8jYryVf4r/FnvVnXW0H3+3di+2FHw==
X-Google-Smtp-Source: AGHT+IGBjCO5Taipfs6aUJuNjt3F/cJ1wNIFmi1Kd5uRfj+B1jMyMQReHe1BVKU3O+gwBqOEj26+ow==
X-Received: by 2002:a05:690e:434d:b0:644:60d9:750a with SMTP id 956f58d0204a3-6446eb60177mr1738681d50.90.1765384782281;
        Wed, 10 Dec 2025 08:39:42 -0800 (PST)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com. [209.85.128.174])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78d69dcd032sm428887b3.47.2025.12.10.08.39.41
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 08:39:41 -0800 (PST)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-78c38149f9fso1117b3.2
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Dec 2025 08:39:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXjhjqUTHmR0oJ+kAKzJJbbGDue2rIYylK09XH62n39V+5cK6WNZefF8YMpXuTlLjutqFLIdWns60JuVWRrgg==@lists.infradead.org
X-Received: by 2002:a05:690c:c96:b0:78c:69ce:c430 with SMTP id
 00721157ae682-78c95a7eaa9mr26279177b3.21.1765384781143; Wed, 10 Dec 2025
 08:39:41 -0800 (PST)
MIME-Version: 1.0
References: <0b20d760-ad4f-41c0-b733-39db10d6cc41@cherry.de>
 <77685900-2c34-49b8-8c7e-14718841ef17@rock-chips.com> <fa82d11f-ce11-4feb-bdb4-c31d360a2a62@rock-chips.com>
 <CAAObsKDYLXVf1GdYUNeaOya+pWD4jTOEf55ouXAL9iM_kWCcMw@mail.gmail.com>
 <75166475-d6a8-45b8-8092-f31d292d4206@rock-chips.com> <CAAObsKABYQnw9rUfxwTS-yiQSoH9rdxZ_ffUBtp2H3tMJqMb7w@mail.gmail.com>
 <e7b2ceaf-1fbd-4f02-9d75-be4feab724e3@rock-chips.com>
In-Reply-To: <e7b2ceaf-1fbd-4f02-9d75-be4feab724e3@rock-chips.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 10 Dec 2025 17:39:29 +0100
X-Gmail-Original-Message-ID: <CAAObsKBneQrciukH-eZ8qY92n1YxRFChpXV9s6G8oQP5jSMwRA@mail.gmail.com>
X-Gm-Features: AQt7F2oK_djIXTar93u9OLGWZFan2i2Sh0qJcTz592dnEpaCY5mBXS6eJB6vw2E
Message-ID: <CAAObsKBneQrciukH-eZ8qY92n1YxRFChpXV9s6G8oQP5jSMwRA@mail.gmail.com>
Subject: Re: Issues with DRM_ACCEL_ROCKET (Oops, power-domain, probe-ordering)
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_083944_320301_6F7F6E86 
X-CRM114-Status: GOOD (  22.49  )
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

T24gV2VkLCBEZWMgMTAsIDIwMjUgYXQgMTE6NDfigK9BTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNo
ZW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gSGVsbG8gVG9tZXUsCj4KPiBPbiAxMi8xMC8y
MDI1IDI6NTAgUE0sIFRvbWV1IFZpem9zbyB3cm90ZToKPiA+IE9uIFR1ZSwgRGVjIDksIDIwMjUg
YXQgMTA6MzHigK9BTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+IHdy
b3RlOgo+ID4+Cj4gPj4gSGVsbG8gVG9tZXUsCj4gPj4KPiA+PiBPbiAxMi85LzIwMjUgMjo1NSBQ
TSwgVG9tZXUgVml6b3NvIHdyb3RlOgo+ID4+PiBPbiBUdWUsIERlYyAyLCAyMDI1IGF0IDg6MDDi
gK9BTSBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4+
Cj4gPj4gWy4uLl0KPiA+Pgo+ID4+Pgo+ID4+PiBUaGlzIG5lZWQgd2FzIHF1ZXN0aW9uZWQgZHVy
aW5nIHRoZSByZXZpZXcgcHJvY2VzcywgYW5kIGR1cmluZyBteQo+ID4+PiBzdHJlc3MgdGVzdGlu
ZyBJIGRpZG4ndCBmaW5kIGEgbmVlZCBmb3IgY29yZSAwIHRvIGJlIHRyZWF0ZWQKPiA+Pj4gc3Bl
Y2lhbGx5LiBTbyBpdCB3YXMgY29uc2lkZXJlZCB1bm5lZWRlZCBjb21wbGV4aXR5IGFuZCB0aGUg
Y29kZSB3YXMKPiA+Pj4gZHJvcHBlZC4KPiA+Pj4KPiA+Pgo+ID4+IE9oLCBJIGp1c3Qgbm90aWNl
ZCB0aGF0IHRoZSBjb21taXQgY29tbWVudCBpbiB0aGUgZGV2aWNldHJlZSBzdGlsbAo+ID4+IGNv
bnRhaW5zIGEgcmVsZXZhbnQgZGVzY3JpcHRpb24uCj4gPj4KPiA+Pj4gTXkgdGVzdGluZyBpbnZv
bHZlcyBydW5uaW5nIHRoZSBzdXBwb3J0ZWQgbW9kZWxzIGFzIGEgd2hvbGUsIGFuZCBhbHNvCj4g
Pj4+IHRoZWlyIGluZGl2aWR1YWwgb3BlcmF0aW9ucyBhcyBpbmRpdmlkdWFsIHRlc3RzLiBJIHJ1
biB0aGVtIGluIDgKPiA+Pj4gcGFyYWxsZWwgcHJvY2Vzc2VzLCBpbiBiYXRjaGVzIHNvIHdlIGhh
dmUgY29udGludW91cyBicmluZyB1cCBhbmQgZG93bgo+ID4+PiBvZiBjbGllbnRzLgo+ID4+Pgo+
ID4+PiBJJ20gYSBiaXQgc3VycHJpc2VkIHRoYXQgdGhhdCB0ZXN0aW5nIHdvcmtlZCBzdGFibHkg
YnV0IHdlIGhhdmUgc3RpbGwKPiA+Pj4gZmFpbHVyZXMgaW4gc29tZSBzZXR1cHMuCj4gPj4KPiA+
PiBDb3VsZCB5b3UgcGxlYXNlIGRlc2NyaWJlIHRoZSBmYWlsdXJlcyB0aGF0IHN0aWxsIGV4aXN0
PyBUaGFuayB5b3UuCj4gPgo+ID4gSSB3YXMgcmVmZXJyaW5nIHRvIHRoZSBvbmVzIHRoYXQgUXVl
bnRpbiByZXBvcnRlZCB3aGVuIHN0YXJ0aW5nIHRoaXMgdGhyZWFkLgo+ID4KPgo+IEkgYmVsaWV2
ZSB0aGlzIHBtZG9tYWluIHBhdGNoIGNhbiBhbGxldmlhdGUgc29tZSBvZiB0aGUgcHJvYmxlbXMg
WzBdLgo+Cj4gSG93ZXZlciwgdGhlIHByb2JsZW0gUXVlbnRpbiBtZW50aW9uZWQgc3RpbGwgZXhp
c3RzLiBGb3IgZXhhbXBsZSwgaWYKPiB0aGVyZSBpcyBhbiBpbnZhbGlkIGRldmljZSBvbiBjb3Jl
MCwgd2hpbGUgY29yZTEgYW5kIGNvcmUyIGFyZSB2YWxpZCwKPiBhY2Nlc3NpbmcgdGhlIHJlbGV2
YW50IGRhdGEgb24gY29yZTAgd2lsbCBjYXVzZSBwcm9ibGVtcy4gUXVlbnRpbidzCj4gcGF0Y2gg
Y2FuIGZpeCB0aGlzLCBidXQgaGUgZG9lc24ndCBzZWVtIHRvIGhhdmUgdGltZSBmb3IgaXQgbGF0
ZWx5Li4uCgpIYXMgYW55Ym9keSByZXByb2R1Y2VkIHRoaXMgcHJvYmxlbSB3aXRoIHRoZSBwbWRv
bWFpbiBmaXggYXBwbGllZD8KClRoYW5rcywKClRvbWV1Cgo+IFswXSBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyNTEyMDUwNjQ3MzkuMjAyNzAtMS1ybXhwemxiQGdtYWlsLmNvbS8KPgo+
ID4gUmVnYXJkcywKPiA+Cj4gPiBUb21ldQo+ID4KPiA+Cj4KPiAtLQo+IEJlc3QsCj4gQ2hhb3lp
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
