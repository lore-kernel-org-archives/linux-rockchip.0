Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C414C44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 06:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVbZIBZUxbpO7EasHoz3jZzNu79ebKy+SG778WKV4FE=; b=soQopzbpRyg2Ij
	X9CJndhVt4cimJ2V+0hLgMP8/uxxuFcP3Topnt6sLh4AgLMNEQMhVDGkCypCYe9ti0Vf5mp1/ugFx
	lOgznbr196j8rvllJnHlzxzi5AOeTiHmYWtmneeyIp/6KfTiNLM5B4rh5CT+aEte2wDKDZ4SeFMPt
	tX/My/wRuedS9SIAjDgTbHhBFXWjr7Td5H8n9Al27hQKExqqnW8U7JpKdZo7FJLixKE136WM2ZeQC
	60ObjXQILmwDNVKV1Su93vHlQypOtKoZIue+B2T/Gy3h6fht8kNNQ5knXo4cHWEmuy98zl4+Cim47
	ZFWhB5S8Lce5wK1UH9Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjt5D-0000000Dtw8-1H2k;
	Wed, 15 Jul 2026 06:27:03 +0000
Received: from mail-yx1-xb12a.google.com ([2607:f8b0:4864:20::b12a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjt4w-0000000Dtst-0NRT
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 06:27:01 +0000
Received: by mail-yx1-xb12a.google.com with SMTP id 956f58d0204a3-662d984bedeso780065d50.2
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 23:26:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784096805; cv=none;
        d=google.com; s=arc-20260327;
        b=H6g/G6T4AOtTz5Nlx8/n66qA7e0v9IzTsWKrWMDjucbC8/Vb2Evlikxx5PdzaFjqEW
         fKLDuED6a0xDhPmvDIAlwRg/VOqE2z6OCCoCHzgvV+YAYYxsCCNj2OdL2SsbVHfLap3b
         YTIIAFi3LpoXIifn0SMPyueuOxLkUt0eja7SfXMXHtT1mRAzh1nHgmqzxUkxtGRcGhmM
         +U1N0ss1gG5KcoC99qvD0BGNDgR6bgYNuOXLRX0M8k5gl3duMh6UcYZ00DkuWF+GcCFX
         OK9PXqtIjGH7SyJVbvvRI8Nvtf5lLqqnZ2I/rzUZiBudt/l3P62YggoduJLYPYlvBuTS
         tZYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gWSeKvpcppphKo4JuhaQYfS686HzGPt1n2IjvkPZLEQ=;
        fh=31PEbbooWIVpN1M2sOzsNKJsXPsRZSxRyjfpR4t1BxQ=;
        b=UWcUSEKCW+fzLQWYVB2+O3ajdQEDoU3FOaz7a5ZTGIrbL4iFj/KV/TSWCkuMHCmTBm
         DGsMj9qSGJO6HtxkSn6vBg2eIeAYwya9pydhczMb0Ewp4CzJv3k7YMS6yzX5Dsn1KWNI
         K30nOqtwQAoPC/gi4Tn44CJCjF2xG9AhLyzzy/8ezsA36xA5skHxW3KmGyDFD8ihPe41
         Piv2I6DeFAYuNEg4sWwbUQ5JT+FPJrV0GjR+VDnhs+EfBCnJivrfKLzunDZISH2zH/3p
         +3ejxDRS835pTFPhIa1UK8Kw4VOWo21yeR9CDGDfnemWsImMBOjvCNDW6Pgmu5zdk1fm
         Q4qw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784096805; x=1784701605; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gWSeKvpcppphKo4JuhaQYfS686HzGPt1n2IjvkPZLEQ=;
        b=DY4+HB9+4ta4b0DJxKTX5geeWPNTJrLpm/G/68rH1Et24eSL7O8i+/B4RqHXTpjVB/
         a8qfPM5/SuifCFqeOZiHzC4q52qR3SgBTZGCHH8tLk3ArIeB8QeQx6USigSDpMihbk6w
         DXWl6NTjqmk4QJ7r1syfAw+IPhTovaYVUen1ivg0s1z6rHuD8Vh9wiPZRsDcQJDAF6ZC
         4YNpKwsOFCGurfI4LZhM0Xd2suTiwaV9EYq9/00K90ab5DUHJOqxIrY3amkayZJuOXzb
         mRry0DM3tQBdMKatUfNKg6Kyq1G9X0SNebuf5ipkD/1zyqu7RTgxG5ppbQwGRQM+RQMu
         pCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784096805; x=1784701605;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gWSeKvpcppphKo4JuhaQYfS686HzGPt1n2IjvkPZLEQ=;
        b=s7TT/s2dIDYy+A9x5DTM8+8CBXlu0uOAhSco1qjzF5dOcqoQqwjtsyVl0EWvtdotDn
         nIzn1vF9Bp/uI9O00bybPNP4VEcUqwacpg5WcUi7eRY0WR8mxNDTu4t6LlYb8m9adCpe
         B0bCID5PmWMLl0f7IDyL/6Epadfz9ebeBF9RP6yrLLjYFRsKykp/TxOpssSipNg81cwC
         /wFczbkFwWFcwvoqwvCAcQamLNUubPDEXRfWBNjbRExvomsTlx6NEb6PdcbTXKCkzWnZ
         6PnKw7GzokgdDKn/mPn1PQVTVNVV5Jw5X/T7FdKTT2qNxlpeJSNE8KEao3VtCGbfK944
         kH8A==
X-Forwarded-Encrypted: i=1; AHgh+RoXAxOAqp5Vhla701pNdnVRx0CPuKmFAY8+IOt4TyUZejwY/wLEWYhZ4yGk2HE2qUW+L6llZSfLfrgOPrIAAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyWmq++OYumvuPUd7lyIN9nDksHMhP1NGQuJkZf8Bpg9JUpfHy5
	vSypDEQJ6QB3aY5IrPcOz7d+ba4FPW+ukpOKu8q19aE0qRgJzHNFTKahbX0Ox1ziAMD610FXrH9
	S03uIn/bRbZm37eCbO8qJn/ZVP2wjk78=
X-Gm-Gg: AfdE7cnWG3mrboPeCZ6ogxQl+FRNa/eDq4tZv4eRFC3koBfqkEc8Kg67XY44lV0/Sbr
	KMl8jv21fi5UOT9aNVELMKP1fud6eFp0VG3L2bRhlLhewBhg3od3D+41tRndY8npaxsLhJd/B7P
	8Rzp2lPoElPsuXp3MDnvnfJ8IzBwzqRxVUQI385ZUOR8N0SJWrnq6k8y7IV90yB0kY+Czf/Hn9F
	8oOQCW9/sq6x3UUeqIZ6rwFHxGMOinHzESoH59LDVUEtOUZ1wfvxPKqISgegMkU60BNs2rCTkVU
	mQFkpEtAwogsVY/fX9ygWju1OnbvP1Q=
X-Received: by 2002:a05:690e:4883:20b0:668:7e4:b078 with SMTP id
 956f58d0204a3-66807e4be6dmr2370313d50.5.1784096804761; Tue, 14 Jul 2026
 23:26:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260714202850.40999-1-royalnet026@gmail.com> <20260714204026.84B601F000E9@smtp.kernel.org>
In-Reply-To: <20260714204026.84B601F000E9@smtp.kernel.org>
From: Royal Net <royalnet026@gmail.com>
Date: Wed, 15 Jul 2026 08:26:32 +0200
X-Gm-Features: AUfX_mx_GykK3yZd7csrMrPNJbBaiwMkpZUk534rlKvfi9UnpbROgKKA1H36E9M
Message-ID: <CAEWPSH5KVBDE6s+7EYsyGEJ5BNv2Y6dtXXcKOfS=9xxjw6MtPA@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: dw_hdmi_qp: attach the HDMI Colorspace
 connector property
To: sashiko-reviews@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_232646_139481_28CC846B 
X-CRM114-Status: GOOD (  28.34  )
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PiBbU2V2ZXJpdHk6IEhpZ2hdIFRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBieSBh
ZGRpbmcgdGhpcwo+IGVycm9yIHBhdGgsIHRoZSBwYXRjaCBleHBvc2VzIGl0IGZ1cnRoZXIuIERv
ZXMgcmV0dXJuaW5nIGFuIGVycm9yCj4gaGVyZSB3aXRob3V0IGNhbmNlbGxpbmcgaGRtaS0+aHBk
X3dvcmsgcmlzayBhIHVzZS1hZnRlci1mcmVlPwoKVGhhbmtzIGZvciB0YWtpbmcgYSBsb29rLgoK
VGhlIHdpbmRvdyB5b3UgZGVzY3JpYmUgZG9lcyBleGlzdCwgYnV0IGl0IGlzIG5vdCBpbnRyb2R1
Y2VkIG9yCndpZGVuZWQgYnkgdGhpcyBwYXRjaDogaGRtaS0+aHBkX3dvcmsgaXMgaW5pdGlhbGl6
ZWQgYW5kIHRoZSBIUEQKaW50ZXJydXB0IHJlcXVlc3RlZCBlYXJseSBpbiBkd19oZG1pX3FwX3Jv
Y2tjaGlwX2JpbmQoKSwgYW5kIHRoZQpmdW5jdGlvbiBhbHJlYWR5IGhhcyBzZXZlcmFsIGVycm9y
IHJldHVybnMgYWZ0ZXIgdGhlIGludGVycnVwdCBpcwpsaXZlIC0tIGVuY29kZXIgaW5pdCwgZHdf
aGRtaV9xcF9iaW5kKCkgYW5kIGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQoKQotLSBub25lIG9m
IHdoaWNoIGNhbmNlbCB0aGUgZGVsYXllZCB3b3JrLiBUaGlzIHBhdGNoIGFkZHMgb25lIG1vcmUK
cmV0dXJuIGltbWVkaWF0ZWx5IGFmdGVyIHRoZSBsYXN0IG9mIHRob3NlLCBmb2xsb3dpbmcgdGhl
IGZ1bmN0aW9uJ3MKZXhpc3RpbmcgZXJyb3ItaGFuZGxpbmcgcGF0dGVybi4KU2luY2UgdGhlIGNh
bmNlbGxhdGlvbiBnYXAgaXMgY29tbW9uIHRvIGFsbCBvZiBiaW5kKCkncyBlcnJvciBwYXRocywK
SSB0aGluayB0aGUgcmlnaHQgZml4IGlzIGEgc2VwYXJhdGUgcGF0Y2ggYWRkcmVzc2luZyBhbGwg
b2YgdGhlbSBhdApvbmNlIChlLmcuIHN3aXRjaGluZyB0byBkZXZtX2RlbGF5ZWRfd29ya19hdXRv
Y2FuY2VsKCkgb3IgYSBkZXZyZXMKYWN0aW9uKSByYXRoZXIgdGhhbiBzcGVjaWFsLWNhc2luZyB0
aGUgbmV3IHJldHVybi4gSSdtIGhhcHB5IHRvIHNlbmQKdGhhdCBhcyBhIGZvbGxvdy11cC4KCkln
b3IKCgpPbiBUdWUsIEp1bCAxNCwgMjAyNiBhdCAxMDo0MOKAr1BNIDxzYXNoaWtvLWJvdEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hp
a28gQUkgcmV2aWV3IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+Cj4g
UHJlLWV4aXN0aW5nIGlzc3VlczoKPiAtIFtIaWdoXSBSZXR1cm5pbmcgYW4gZXJyb3IgZnJvbSBg
ZHdfaGRtaV9xcF9yb2NrY2hpcF9iaW5kKClgIHdpdGhvdXQgY2FuY2VsbGluZyBgaGRtaS0+aHBk
X3dvcmtgIGxlYWRzIHRvIGEgVXNlLUFmdGVyLUZyZWUgd2hlbiB0aGUgZGVsYXllZCB3b3JrIG9y
IEhQRCBpbnRlcnJ1cHQgZmlyZXMuCj4gLS0KPgo+IC0tLSBQYXRjaCBbMV06IFtQQVRDSF0gZHJt
L3JvY2tjaGlwOiBkd19oZG1pX3FwOiBhdHRhY2ggdGhlIEhETUkgQ29sb3JzcGFjZSBjb25uZWN0
b3IgcHJvcGVydHkgLS0tCj4gY29tbWl0IDc3ZDJmMGU4YmM2MGQ1MDc1NWFlYzIyZGVlMTE5YWQw
OGJiOTJiM2MKPiBBdXRob3I6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4K
Pgo+IGRybS9yb2NrY2hpcDogZHdfaGRtaV9xcDogYXR0YWNoIHRoZSBIRE1JIENvbG9yc3BhY2Ug
Y29ubmVjdG9yIHByb3BlcnR5Cj4KPiBUaGlzIGNvbW1pdCBjcmVhdGVzIGFuZCBhdHRhY2hlcyB0
aGUgc3RhbmRhcmQgSERNSSBjb2xvcnNwYWNlIHByb3BlcnR5Cj4gYWZ0ZXIgdGhlIGJyaWRnZSBj
b25uZWN0b3IgaXMgaW5pdGlhbGlzZWQuIFRoaXMgYWxsb3dzIHVzZXJzcGFjZSB0byByZXF1ZXN0
Cj4gQlQuMjAyMCBjb2xvcmltZXRyeSBhbmQgZW5hYmxlcyB3aWRlLWdhbXV0L0hEUiBvdXRwdXQg
b24gUkszNTg4Lgo+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2hkbWlfcXAtcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3Fw
LXJvY2tjaGlwLmMKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3Fw
LXJvY2tjaGlwLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3Fw
LXJvY2tjaGlwLmMKPiBbIC4uLiBdCj4gPiBAQCAtNjk1LDYgKzY5NSwyMCBAQCBzdGF0aWMgaW50
IGR3X2hkbWlfcXBfcm9ja2NoaXBfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZp
Y2UgKm1hc3RlciwKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJvYmUoaGRtaS0+
ZGV2LCBQVFJfRVJSKGNvbm5lY3RvciksCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJGYWlsZWQgdG8gaW5pdCBicmlkZ2UgY29ubmVjdG9yXG4iKTsKPiA+Cj4gPiArICAg
ICAvKgo+ID4gKyAgICAgICogQXR0YWNoIHRoZSBIRE1JIENvbG9yc3BhY2UgcHJvcGVydHkuIFRo
ZSBIRE1JIGNvbm5lY3RvciBmcmFtZXdvcmsKPiA+ICsgICAgICAqIGFscmVhZHkgY29uc3VtZXMg
Y29ubl9zdGF0ZS0+Y29sb3JzcGFjZSBmb3IgdGhlIEFWSSBpbmZvZnJhbWUKPiA+ICsgICAgICAq
IChkcm1faGRtaV9hdmlfaW5mb2ZyYW1lX2NvbG9yaW1ldHJ5KCkpLCBhbmQgSERSX09VVFBVVF9N
RVRBREFUQSBhbmQKPiA+ICsgICAgICAqIG1heCBicGMgYXJlIGF0dGFjaGVkIGJ5IGRybW1fY29u
bmVjdG9yX2hkbWlfaW5pdCgpLCBidXQgd2l0aG91dCB0aGUKPiA+ICsgICAgICAqIENvbG9yc3Bh
Y2UgcHJvcGVydHkgdXNlcnNwYWNlIGNhbm5vdCByZXF1ZXN0IEJULjIwMjAgc2lnbmFsbGluZywK
PiA+ICsgICAgICAqIHdoaWNoIGtlZXBzIHdpZGUtZ2FtdXQvSERSIG91dHB1dCB1bmF2YWlsYWJs
ZS4gUGFzc2luZyAwIHNlbGVjdHMKPiA+ICsgICAgICAqIHRoZSBmdWxsIEhETUkgY29sb3JzcGFj
ZSBzZXQgZGVmaW5lZCBieSB0aGUgY29yZS4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgcmV0ID0g
ZHJtX21vZGVfY3JlYXRlX2hkbWlfY29sb3JzcGFjZV9wcm9wZXJ0eShjb25uZWN0b3IsIDApOwo+
ID4gKyAgICAgaWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPgo+IFtTZXZl
cml0eTogSGlnaF0KPiBUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgYnkgYWRkaW5n
IHRoaXMgZXJyb3IgcGF0aCwgdGhlIHBhdGNoCj4gZXhwb3NlcyBpdCBmdXJ0aGVyLiBEb2VzIHJl
dHVybmluZyBhbiBlcnJvciBoZXJlIHdpdGhvdXQgY2FuY2VsbGluZwo+IGhkbWktPmhwZF93b3Jr
IHJpc2sgYSB1c2UtYWZ0ZXItZnJlZT8KPgo+IElmIGEgaGFyZHdhcmUgSFBEIGludGVycnVwdCBm
aXJlcyByaWdodCBiZWZvcmUgdGhlIGRldnJlcyBjbGVhbnVwCj4gdW5yZWdpc3RlcnMgdGhlIElS
USwgaGRtaS0+aHBkX3dvcmsgY2FuIGdldCBxdWV1ZWQuIFRoZSBEUk0gbWFzdGVyCj4gdGVhcmRv
d24gdGhlbiBmcmVlcyBoZG1pICh3aGljaCB3YXMgYWxsb2NhdGVkIHZpYSBkcm1tX2t6YWxsb2Mp
LAo+IGxlYXZpbmcgdGhlIGRlbGF5ZWQgd29yayB0byBleGVjdXRlIGxhdGVyIHdpdGggYSBkYW5n
bGluZyBwb2ludGVyOgo+Cj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9j
a2NoaXAuYzpkd19oZG1pX3FwX3JrMzU4OF9ocGRfd29yaygpIHsKPiAgICAgICAgIHN0cnVjdCBy
b2NrY2hpcF9oZG1pX3FwICpoZG1pID0gY29udGFpbmVyX29mKHdvcmssCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBf
aGRtaV9xcCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGhwZF93b3JrLndvcmspOwo+ICAgICAgICAgc3RydWN0IGRybV9kZXZpY2UgKmRybSA9
IGhkbWktPmVuY29kZXIuZW5jb2Rlci5kZXY7Cj4gICAgICAgICAuLi4KPiB9Cj4KPiBDb3VsZCB3
ZSBlbnN1cmUgdGhhdCB0aGUgZGVsYXllZCB3b3JrIGlzIHByb3Blcmx5IGNhbmNlbGxlZCBiZWZv
cmUKPiByZXR1cm5pbmcgZXJyb3JzIGZyb20gZHdfaGRtaV9xcF9yb2NrY2hpcF9iaW5kKCk/Cj4K
PiA+ICsgICAgIGRybV9jb25uZWN0b3JfYXR0YWNoX2NvbG9yc3BhY2VfcHJvcGVydHkoY29ubmVj
dG9yKTsKPiA+Cj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4KPiAtLQo+IFNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxNDIwMjg1MC40
MDk5OS0xLXJveWFsbmV0MDI2QGdtYWlsLmNvbT9wYXJ0PTEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
