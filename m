Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A63C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 06:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bX1FRKpDDVr+f+LG5MXWzZdkjpZjmSKtjIiyiyOTSN4=; b=aTcHIKrVGxiEqM
	m4/svEvBHmzMfNQR74wI2l+z20b6Ohgrs7uZQl2kc8Q8diRyal9qM4L28zvGKWsMh6rJTyRwFPxnW
	xSq+wDWzEZ311jX+27bWqQzefFxvg/0mtoSLINMIIlWzoWJDPUqXngIZXOMnnd1UN5LJxJdZDj5M3
	zWsSnSNxwsBD3V+EMM6qfINpSe8Xza7byCRUONbyfMU2qZktMs84f8xzCUzrQAdYw+vchc8fiV+av
	ObvUUFR0T+ddI42nzKp0773A7sErvGDYxG49OOqXsT7yRjeoc8ehyi0y4k6KZynPkj8a/qlLGk3Zs
	q7iDTy97xQ0ajbayOd3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXYt-00000007tyH-0Z6Y;
	Fri, 21 Jun 2024 06:15:51 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKXYq-00000007tww-0K9g;
	Fri, 21 Jun 2024 06:15:49 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-44056295c8cso6762661cf.3;
        Thu, 20 Jun 2024 23:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718950546; x=1719555346; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tHjNPKqZCKhgDXLVPDuF8PC10fevxh3nwWHIDP2+EYc=;
        b=QY5zphANZuY6c4WelxeVDOTVYtLwsosXl/4jpx9QUCHFXvNHWkMnnG4i9m5wdXHKYq
         P1c7EhnwOLXENptqid1P0pipjetU+m3ATdR6o2/2ffW530gi4vEYiVKtj1xfPxMfbPv0
         +BSCAz5eZ3A52Th1aIinofi3KfwirmzIuXoQqpKl/EE5klwKvBVYqlOAtrVodvvd503X
         Mma4mTLQTdkkd6kDjdNYnZKEvGTuKD8jkMjltPKm/kq78Zwbj/ktMW4q6vhNHBOScWZB
         M4uSVzlfNY9G5l1F3hs7FF6/2QKkm+gcrE93pC/fA809bVJRThlAHDX2mRhlvSY6b4EE
         7uZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718950546; x=1719555346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tHjNPKqZCKhgDXLVPDuF8PC10fevxh3nwWHIDP2+EYc=;
        b=D09cL9VDCu91Kwt8ozFEGRUmISzc2P0AFnoFSObABe/cnrgg0F9NBIkFPEiG9nn+AA
         s4VnlbkvfynDhWmgGhW/VbBLXp1+McriL0RPPMVPfL35A4/8bW43WR5a8rciN64c8PPB
         SzG5MsawK1zjUKjxicy9Ux6rB/0m8bA6VAR4pslqHSKNB5hxo7fhCOlO67Eqkp4w7qd4
         fyBhI9jFzJIYi1gNBtbMHPRP7foNV7ZQwHxSwYUnlDH5j+QAHUF+NgXqVip5b/9jTnMd
         Iz3MfHEoLglRnOHGFfbJsOwyaJW4YerIqgjftIqy2by21zxezpW51+uguGYxCH1JVnpF
         O1Tg==
X-Forwarded-Encrypted: i=1; AJvYcCUcWO5VnSMvrrIdRDEUODmxzmKPahACQ3z1NQd/TomxvcaRxQNiMAPkcdTyy6pYyHtGtur49MsDsgTaS+cB60KKi9bRU5oTZxnXahlw4UwwDWDAAUfzBudXzzgfOoEFW6JXXud/9gVuWJrYHvlgrR3TP1AsU3Ck6gs=
X-Gm-Message-State: AOJu0YxvDvFxBSOKmSW06vdiEW/XFBt9EWd5BnWnN5f175qXg0Lzaj4Y
	j9ILbsC4Mk7o/89OushIEK3EW8da4syHW5qmWoBoLRlhWuey8TGSFXTqwrBk8mnGKC6tA1jKbLp
	KhxRT4DMKabaZxV3Rb+jXqjNo28I=
X-Google-Smtp-Source: AGHT+IE3lfFWGjWgrj27pkYkdgHBqSSalyQmDiFMb+whosNnifVr5lWmS+oKU37X0pm4Fkin2cu3+9QttEKF57F3M1c=
X-Received: by 2002:ac8:7c53:0:b0:441:58e9:678d with SMTP id
 d75a77b69052e-444a7a7344emr76740211cf.64.1718950546331; Thu, 20 Jun 2024
 23:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com> <171891591945.88443.14666251613914983261.b4-ty@sntech.de>
In-Reply-To: <171891591945.88443.14666251613914983261.b4-ty@sntech.de>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 21 Jun 2024 10:15:35 +0400
Message-ID: <CABjd4Yzkr22aB7v33JjXtn-4nrkL1cNmxWmb5g5KiXhnAVi0sw@mail.gmail.com>
Subject: Re: (subset) [PATCH v5 0/8] RK3588 and Rock 5B dts additions:
 thermal, OPP and fan
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, 
	linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_231548_217556_102AFFE1 
X-CRM114-Status: GOOD (  11.21  )
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

T24gRnJpLCBKdW4gMjEsIDIwMjQgYXQgMTI6NDDigK9BTSBIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKPgo+IE9uIE1vbiwgMTcgSnVuIDIwMjQgMjI6Mjg6NTAgKzA0MDAs
IEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gVGhpcyBlbmFibGVzIHRoZXJtYWwgbW9uaXRvcmlu
ZyBhbmQgQ1BVIERWRlMgb24gUkszNTg4KHMpLCBhcyB3ZWxsIGFzCj4gPiBhY3RpdmUgY29vbGlu
ZyBvbiBSYWR4YSBSb2NrIDVCIHZpYSB0aGUgcHJvdmlkZWQgUFdNIGZhbi4KPiA+Cj4gPiBTb21l
IFJLMzU4OCBib2FyZHMgdXNlIHNlcGFyYXRlIHJlZ3VsYXRvcnMgdG8gc3VwcGx5IENQVXMgYW5k
IHRoZWlyCj4gPiByZXNwZWN0aXZlIG1lbW9yeSBpbnRlcmZhY2VzLCBzbyB0aGlzIGlzIGhhbmRs
ZWQgYnkgY291cGxpbmcgdGhvc2UKPiA+IHJlZ3VsYXRvcnMgaW4gYWZmZWN0ZWQgYm9hcmRzJyBk
ZXZpY2UgdHJlZXMgdG8gZW5zdXJlIHRoYXQgdGhlaXIKPiA+IHZvbHRhZ2UgaXMgYWRqdXN0ZWQg
aW4gc3RlcC4KPiA+Cj4gPiBbLi4uXQo+Cj4gQXBwbGllZCwgdGhhbmtzIQo+Cj4gWzEvOF0gYXJt
NjQ6IGR0czogcm9ja2NoaXA6IGFkZCB0aGVybWFsIHpvbmVzIGluZm9ybWF0aW9uIG9uIFJLMzU4
OAo+ICAgICAgIGNvbW1pdDogOTdkNjEyMjdkNmJiMDAyM2EzMjVhYjJmODdlNDQzOGE4NTgyMDdh
Mgo+IFsyLzhdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgdGhlcm1hbCBtYW5hZ2VtZW50
IG9uIGFsbCBSSzM1ODggYm9hcmRzCj4gICAgICAgY29tbWl0OiA0YWZhOTA1NmVkOWUzZDlmZjAz
NmYzNTc2Y2IxMzdhMDExNDQ4Mjk1Cj4gWzMvOF0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBw
YXNzaXZlIEdQVSBjb29saW5nIG9uIFJLMzU4OAo+ICAgICAgIGNvbW1pdDogZDY0ZDMzN2YxODU2
YmQwZTVjYmZjNjBiNmYwNDU4YWQ0OTUxZDA1ZQo+IFs0LzhdIGFybTY0OiBkdHM6IHJvY2tjaGlw
OiBlbmFibGUgYXV0b21hdGljIGZhbiBjb250cm9sIG9uIFJvY2sgNUIKPiAgICAgICBjb21taXQ6
IDJhYWI4OTA1YTg0M2FlZjYyNDU2NWMwMTRhMzRkMTU1Zjg3MDIxMzUKPgo+Cj4gRG9uJ3Qgd29y
cnksIEknbGwgbG9vayBhdCB0aGUgb3RoZXIgcGF0Y2hlcyB0b28uCj4gV2FzIGp1c3QgZWFzaWVy
IG9uIG15IG1pbmQgdG8gdGhpcyBpbiBibG9ja3MgOy0pIC4KCkdyZWF0LCB0aGFua3MgYSBsb3Qg
SGVpa28hCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
