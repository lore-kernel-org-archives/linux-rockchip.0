Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63D81C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 19:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxANlZWOaZqVacKkCDUHYJ+W4SOh/fq/9XwaxP4jAVU=; b=k2uy/UGNZQqMuR
	EZbPtEv4oW9wexaNJsevKF2Fshw1KwENheE2QAwhhnpFRQgHgqy15Bofl394YlOKDajablbqDHkQm
	vpGhRGmOmnIc75RHoT0VohJBJBEI4WPLGL444e7WI+IY03ZHVHaamxRP0asEr9tuNcWZABuGXOft5
	vxaxNKopvnQ8ajJpf+I7IkYT2dX5KiccfjwNfbuhqUtNrbHqYR2HhmNHqcr3h7GdkbakXdxLsz4mG
	qUDs1uiA4BsmPyTMjO1CN6P8f7ru5NJeuD/wFzAXiupuhWelZ9xrDDoO5Cnp4BQB4WWhCuQ1fTUJO
	PqiiRMCbF8jMu4bmZa2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdEQZ-00000006FsQ-3v0g;
	Thu, 22 Feb 2024 19:08:15 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdEQV-00000006Fq0-3zsa;
	Thu, 22 Feb 2024 19:08:13 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a34c5ca2537so11425866b.0;
        Thu, 22 Feb 2024 11:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708628888; x=1709233688; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zwGHver7Zdn7kvlDq1hFb/tIb6DJ0PWghCpxj29Cdaw=;
        b=bjEjPSD5DFz1rxXb8CPy2hYohsBAaWSXnI+8SELufY3+lM1i5P+E5qFbOEnUEufRaA
         IPiB00bvHrNYMuGmwZY1ZbG+y46lSFxY9/GCrODYK8W7j9gh3YFvZhFi6yBC7CUw6mpY
         tYxigGEEASy/VemJROvARfCNA0BplITX3zBYYZW0A6KRSdP3Y+uQh/Mb6L2PPqN8H+kJ
         9nzFxzfVNfYYAUgi9hGXoyIfu9w6L5+2SU6wc0y49fn5q3NvyrTcpj4PaXq08BQpnRpi
         MOp8hjvAg3b8ycqYjVW+/ozIUzZZ2E8K1DZp5E7YvtqWqGZCXlPODa1xrAZE514HJxd2
         KCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708628888; x=1709233688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zwGHver7Zdn7kvlDq1hFb/tIb6DJ0PWghCpxj29Cdaw=;
        b=RdWiORR0SHPY60UIANukQnMK9iW+8SGoPDZjJZTA8i6iFcoNRIKAbzMcjvowKffy7x
         ihclPFz91PACahC1wHX2wwg5ZQ2hSonqJUhynekd3dxZvku78/B+3dyGub0mZffrEgdr
         AUZMfAoI5qgvfhHAcSjNCvmSB6yxNnAWe5vxMekQ/X5oxiLNvkmVy0R+YxYnhJAewWem
         iKSA5fV4EN2b46SAjovTJbXJqhPzb8jxq402KxIWdgX7cEucku2s+j8morBFEzU0wika
         BuY09NJWRWBcTnmFrxd+HRiIUIyVpt/Sldns62C5gyPwOhuqhINRTR9DBdT1xRBYOw7h
         u7iw==
X-Forwarded-Encrypted: i=1; AJvYcCXn4w0176/MIZ4O+e5fWvVnoEgEhVqnSAgRhvdKyd7vw8I040TaaxZaO+6mNOHsVdqrd4EWyy7oU6UgR7mK0RDseTjBa3b4BBTVuaYHEBJMYZc0HJwQEcxIQefC/WzjZnVnONpHK4R93D1qTqGtxLrhTQ/GPg/ZAbU=
X-Gm-Message-State: AOJu0YxhbWgZtzoLja8E6XSZs8yx7rEfPdnPKNeh5Y/F6g+PLgCidIoe
	b01tW4YdbVIl913IxQFHmHwS8N7rM5F31etdme4OW3NyJSObk61vaSYtEboqyVU=
X-Google-Smtp-Source: AGHT+IH07eQ34d4DdPWILOvpSPCbS9FOaWmp8ij6cDkZAQw5B9sGMqV+xWKbUWYZV2D0b3TvgKbqtg==
X-Received: by 2002:a17:906:aad1:b0:a3e:a3d6:eb6f with SMTP id kt17-20020a170906aad100b00a3ea3d6eb6fmr8035501ejb.48.1708628888412;
        Thu, 22 Feb 2024 11:08:08 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id xg7-20020a170907320700b00a3d11feb32esm6145225ejb.186.2024.02.22.11.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 11:08:07 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <mripard@kernel.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>,
 Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: Re: [PATCH v7 32/36] drm/sun4i: hdmi: Convert encoder to atomic
Date: Thu, 22 Feb 2024 20:08:05 +0100
Message-ID: <4545275.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-32-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-32-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_110812_014160_DFC56380 
X-CRM114-Status: GOOD (  15.16  )
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

RG5lIMSNZXRydGVrLCAyMi4gZmVicnVhciAyMDI0IG9iIDE5OjE0OjE4IENFVCBqZSBNYXhpbWUg
UmlwYXJkIG5hcGlzYWwoYSk6Cj4gVGhlIHN1bjRpX2hkbWkgZHJpdmVyIHN0aWxsIHVzZXMgdGhl
IG5vbi1hdG9taWMgdmFyaWFudHMgb2YgdGhlIGVuY29kZXIKPiBob29rcywgc28gbGV0J3MgY29u
dmVydCB0byB0aGVpciBhdG9taWMgZXF1aXZhbGVudHMuCj4gCj4gQWNrZWQtYnk6IFN1aSBKaW5n
ZmVuZyA8c3VpLmppbmdmZW5nQGxpbnV4LmRldj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQGdtYWlsLmNvbT4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9lbmMuYyB8IDE3ICsrKysrKysrKystLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9lbmMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9oZG1pX2VuYy5jCj4gaW5kZXggMTUyMzc1ZjNk
ZTJlLi43OTlhMjYyMTVjYzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjRpX2hkbWlfZW5jLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9l
bmMuYwo+IEBAIC04Miw3ICs4Miw4IEBAIHN0YXRpYyBpbnQgc3VuNGlfaGRtaV9hdG9taWNfY2hl
Y2soc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4g
LXN0YXRpYyB2b2lkIHN1bjRpX2hkbWlfZGlzYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29k
ZXIpCj4gK3N0YXRpYyB2b2lkIHN1bjRpX2hkbWlfZGlzYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIg
KmVuY29kZXIsCj4gKwkJCSAgICAgICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4g
IHsKPiAgCXN0cnVjdCBzdW40aV9oZG1pICpoZG1pID0gZHJtX2VuY29kZXJfdG9fc3VuNGlfaGRt
aShlbmNvZGVyKTsKPiAgCXUzMiB2YWw7Cj4gQEAgLTk2LDcgKzk3LDggQEAgc3RhdGljIHZvaWQg
c3VuNGlfaGRtaV9kaXNhYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKPiAgCWNsa19k
aXNhYmxlX3VucHJlcGFyZShoZG1pLT50bWRzX2Nsayk7Cj4gIH0KPiAgCj4gLXN0YXRpYyB2b2lk
IHN1bjRpX2hkbWlfZW5hYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKPiArc3RhdGlj
IHZvaWQgc3VuNGlfaGRtaV9lbmFibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAo+ICsJ
CQkgICAgICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIHsKPiAgCXN0cnVjdCBk
cm1fZGlzcGxheV9tb2RlICptb2RlID0gJmVuY29kZXItPmNydGMtPnN0YXRlLT5hZGp1c3RlZF9t
b2RlOwo+ICAJc3RydWN0IHN1bjRpX2hkbWkgKmhkbWkgPSBkcm1fZW5jb2Rlcl90b19zdW40aV9o
ZG1pKGVuY29kZXIpOwo+IEBAIC0xMjAsOSArMTIyLDEwIEBAIHN0YXRpYyB2b2lkIHN1bjRpX2hk
bWlfZW5hYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKPiAgfQo+ICAKPiAgc3RhdGlj
IHZvaWQgc3VuNGlfaGRtaV9tb2RlX3NldChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCj4g
LQkJCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwKPiAtCQkJCXN0cnVjdCBkcm1fZGlz
cGxheV9tb2RlICphZGp1c3RlZF9tb2RlKQo+ICsJCQkJc3RydWN0IGRybV9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLAo+ICsJCQkJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUp
Cj4gIHsKPiArCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlID0gJmNydGNfc3Rh
dGUtPm1vZGU7Cj4gIAlzdHJ1Y3Qgc3VuNGlfaGRtaSAqaGRtaSA9IGRybV9lbmNvZGVyX3RvX3N1
bjRpX2hkbWkoZW5jb2Rlcik7Cj4gIAl1bnNpZ25lZCBpbnQgeCwgeTsKPiAgCXUzMiB2YWw7Cj4g
QEAgLTIwMSw5ICsyMDQsOSBAQCBzdGF0aWMgZW51bSBkcm1fbW9kZV9zdGF0dXMgc3VuNGlfaGRt
aV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKPiAgCj4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfaGVscGVyX2Z1bmNzIHN1bjRpX2hkbWlfaGVscGVyX2Z1
bmNzID0gewo+ICAJLmF0b21pY19jaGVjawk9IHN1bjRpX2hkbWlfYXRvbWljX2NoZWNrLAo+IC0J
LmRpc2FibGUJPSBzdW40aV9oZG1pX2Rpc2FibGUsCj4gLQkuZW5hYmxlCQk9IHN1bjRpX2hkbWlf
ZW5hYmxlLAo+IC0JLm1vZGVfc2V0CT0gc3VuNGlfaGRtaV9tb2RlX3NldCwKPiArCS5hdG9taWNf
ZGlzYWJsZQk9IHN1bjRpX2hkbWlfZGlzYWJsZSwKPiArCS5hdG9taWNfZW5hYmxlCT0gc3VuNGlf
aGRtaV9lbmFibGUsCj4gKwkuYXRvbWljX21vZGVfc2V0CT0gc3VuNGlfaGRtaV9tb2RlX3NldCwK
PiAgCS5tb2RlX3ZhbGlkCT0gc3VuNGlfaGRtaV9tb2RlX3ZhbGlkLAo+ICB9Owo+ICAKPiAKPiAK
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
