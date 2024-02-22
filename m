Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FC50C5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 19:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3L6SJThSe76kGC/DHt4hM+7KXXVznzqSaQ2VvnDDfQ=; b=mRvJPyzPU2cIZ/
	12BwKVvTmQsc8O6ItO5m17BLQqHaF/CPVfeqOiS8xPWDAtjD5bljEn1/j0rOmHPxAhDCSP5l8LfzR
	SemfNItCD9Pzuy3/bqIjfjggeFiDMEF4JuVHEf7MBPQb8z1pfQpq+t1sgTrsFFQpkftgL9D1RRJT3
	QcJNsSYL2G1Rn/nSqY8X7CMv+C01+o6R9eZWMN0VPEVnOwv3pzwrFFkMuLR0etEiXuXL3Domq+CMj
	kLhrJdMKB2pbSEl9SwmJ1zkWAQWK9lLBEe03yOhb8sq7SxG9BDNDNXO0mEQsxXaXLcqM5dYNlvMMS
	iGEYXE7AozfHgjuUYGOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdEUo-00000006HGl-2SDj;
	Thu, 22 Feb 2024 19:12:38 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdEUl-00000006HEs-1c3D;
	Thu, 22 Feb 2024 19:12:36 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5129e5b8cecso175357e87.3;
        Thu, 22 Feb 2024 11:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708629153; x=1709233953; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ascVxuLaaMNM+iLyCaaEtYsJ/LtdyKIcDFbaaHuf7+A=;
        b=jUlnuwWLtWOHcep58X0xc1Ygmdu/7JzeeCBdn3EkWUzOA6K3YSH0pkOp8yDL7vIBhK
         kWxcYi2GCWCV6FekNqIE/zJvp4FZDAy4a9mpJfZ4E0p0o5nCOzN7cq/HI1vow9uQUIU4
         FaHVN3oMf5XbxNcqSIJ1z1Y3zZWTLjGvMaW1uGirxmbFemt+2U5LgZoHdlUBEnBYGhEo
         nO/BfJiNWHSR5CPjJCg4FYBjIZDQ+OmHaIvrwqo/y9mdvypHmVLW5HvBeh5ZeLvq00C5
         o0Bb+TM2RqPsxaLS3kyfDbDKZzs1MBVwpg9COsfNtMuC3EiKqzNwUoQZSKEH3hl0bWS7
         yhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708629153; x=1709233953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ascVxuLaaMNM+iLyCaaEtYsJ/LtdyKIcDFbaaHuf7+A=;
        b=ayK/phfd48m9lZTbyLQwDmfUryGIynBTEwvuZ3aux2enGblb8QqLLQXOW4Lb1cXyHu
         //degMSqTVzSGk/q702aKOToxELLFkuSmTNekXKuAuQRd/js9iVWhRU2/SIPuGGVzM6T
         MzNhxgsAC+SqDdEyvxaDbJKMBF4/tk8biEAtiGz4VrMjeEmbwC2TrwwwjYMubKajG3oK
         yv1TA0BKBbA20AExvvtMBbEepQcvXGTYzZZpNKtoE0DKQF5weRGj7QtgHuB02mp7ZiRj
         9YbuGy4GnSO6HH90mWBvqlgJquuOSIh/N1oAMIKdgwhTBcoleJlcsAdH4ti89sMSV8f+
         X9cA==
X-Forwarded-Encrypted: i=1; AJvYcCU2y4YWgC/dihNS5XZXX023/RV/FFKmud7vYV0Lan7sXRz7vQbN3Ya0PTs5QArv6h3N3l1FaCwFJuJPnvVNqfW3PM0HQ0usymfQ2HJFPNmgekvJciico+SX1HntboWU4bFp3XSj3mJ765LazJ1brXml52lfPSS2Ka0=
X-Gm-Message-State: AOJu0Ywc0QwIS3FBwH/8oJUamE9b8oyfAS1bcrDK5+IND03+cnR0ZznE
	ECAPLctprGu/+9puSHhfE5pB3fZutlpi6Nv4r+KIqBWgS+Yg11gI
X-Google-Smtp-Source: AGHT+IGu+ExwuJo5Vy53aR587PvPGA/BvgjURLqHK9mgxxEedn8hBlpN+TNPuvzQRBJx6tkns7NcdQ==
X-Received: by 2002:a05:6512:1196:b0:512:d655:9d4b with SMTP id g22-20020a056512119600b00512d6559d4bmr55318lfr.5.1708629152360;
        Thu, 22 Feb 2024 11:12:32 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id r17-20020ac25a51000000b00512bfc0c2b9sm1189234lfn.178.2024.02.22.11.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 11:12:31 -0800 (PST)
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
Subject: Re: [PATCH v7 35/36] drm/sun4i: hdmi: Consolidate atomic_check and mode_valid
Date: Thu, 22 Feb 2024 20:12:29 +0100
Message-ID: <2921783.e9J7NaK4W3@jernej-laptop>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-35-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-35-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_111235_446747_D993FCFD 
X-CRM114-Status: GOOD (  22.08  )
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

RG5lIMSNZXRydGVrLCAyMi4gZmVicnVhciAyMDI0IG9iIDE5OjE0OjIxIENFVCBqZSBNYXhpbWUg
UmlwYXJkIG5hcGlzYWwoYSk6Cj4gYXRvbWljX2NoZWNrIGFuZCBtb2RlX3ZhbGlkIGRvIG5vdCBj
aGVjayBmb3IgdGhlIHNhbWUgdGhpbmdzIHdoaWNoIGNhbgo+IGxlYWQgdG8gc3VycHJpc2luZyBy
ZXN1bHQgaWYgdGhlIHVzZXJzcGFjZSBjb21taXRzIGEgbW9kZSB0aGF0IGRpZG4ndCBnbwo+IHRo
cm91Z2ggbW9kZV92YWxpZC4gTGV0J3MgbWVyZ2UgdGhlIHR3byBpbXBsZW1lbnRhdGlvbnMgaW50
byBhIGZ1bmN0aW9uCj4gY2FsbGVkIGJ5IGJvdGguCj4gCj4gQWNrZWQtYnk6IFN1aSBKaW5nZmVu
ZyA8c3VpLmppbmdmZW5nQGxpbnV4LmRldj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJk
IDxtcmlwYXJkQGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5l
ai5za3JhYmVjQGdtYWlsLmNvbT4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9lbmMuYyB8IDc0ICsrKysrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDI3
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3Vu
NGlfaGRtaV9lbmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9oZG1pX2VuYy5jCj4g
aW5kZXggYzI3NmQ5ODRkYTZiLi5iN2NmMzY5YjE5MDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3N1bjRpL3N1bjRpX2hkbWlfZW5jLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3Vu
NGkvc3VuNGlfaGRtaV9lbmMuYwo+IEBAIC02MiwxOCArNjIsNiBAQCBzdGF0aWMgaW50IHN1bjRp
X2hkbWlfc2V0dXBfYXZpX2luZm9mcmFtZXMoc3RydWN0IHN1bjRpX2hkbWkgKmhkbWksCj4gIAly
ZXR1cm4gMDsKPiAgfQo+ICAKPiAtc3RhdGljIGludCBzdW40aV9oZG1pX2F0b21pY19jaGVjayhz
dHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCj4gLQkJCQkgICBzdHJ1Y3QgZHJtX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCj4gLQkJCQkgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29u
bl9zdGF0ZSkKPiAtewo+IC0Jc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUgPSAmY3J0Y19z
dGF0ZS0+bW9kZTsKPiAtCj4gLQlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTENM
SykKPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiAtCj4gLQlyZXR1cm4gMDsKPiAtfQo+IC0KPiAgc3Rh
dGljIHZvaWQgc3VuNGlfaGRtaV9kaXNhYmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwK
PiAgCQkJICAgICAgIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgewo+IEBAIC0x
NjYsMzEgKzE1NCw2MSBAQCBzdGF0aWMgdm9pZCBzdW40aV9oZG1pX2VuYWJsZShzdHJ1Y3QgZHJt
X2VuY29kZXIgKmVuY29kZXIsCj4gIAl3cml0ZWwodmFsLCBoZG1pLT5iYXNlICsgU1VONElfSERN
SV9WSURfQ1RSTF9SRUcpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgZW51bSBkcm1fbW9kZV9zdGF0dXMg
c3VuNGlfaGRtaV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKPiAtCQkJ
CQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKPiArc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1fZW5jb2Rlcl9oZWxwZXJfZnVuY3Mgc3VuNGlfaGRtaV9oZWxwZXJfZnVuY3MgPSB7
Cj4gKwkuYXRvbWljX2Rpc2FibGUJPSBzdW40aV9oZG1pX2Rpc2FibGUsCj4gKwkuYXRvbWljX2Vu
YWJsZQk9IHN1bjRpX2hkbWlfZW5hYmxlLAo+ICt9Owo+ICsKPiArc3RhdGljIGVudW0gZHJtX21v
ZGVfc3RhdHVzCj4gK3N1bjRpX2hkbWlfY29ubmVjdG9yX2Nsb2NrX3ZhbGlkKGNvbnN0IHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gKwkJCQkgY29uc3Qgc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKm1vZGUsCj4gKwkJCQkgdW5zaWduZWQgbG9uZyBsb25nIGNsb2NrKQo+ICB7Cj4g
LQlzdHJ1Y3Qgc3VuNGlfaGRtaSAqaGRtaSA9IGRybV9lbmNvZGVyX3RvX3N1bjRpX2hkbWkoZW5j
b2Rlcik7Cj4gLQl1bnNpZ25lZCBsb25nIHJhdGUgPSBtb2RlLT5jbG9jayAqIDEwMDA7Cj4gLQl1
bnNpZ25lZCBsb25nIGRpZmYgPSByYXRlIC8gMjAwOyAvKiArLTAuNSUgYWxsb3dlZCBieSBIRE1J
IHNwZWMgKi8KPiArCWNvbnN0IHN0cnVjdCBzdW40aV9oZG1pICpoZG1pID0gZHJtX2Nvbm5lY3Rv
cl90b19zdW40aV9oZG1pKGNvbm5lY3Rvcik7Cj4gKwl1bnNpZ25lZCBsb25nIGRpZmYgPSBjbG9j
ayAvIDIwMDsgLyogKy0wLjUlIGFsbG93ZWQgYnkgSERNSSBzcGVjICovCj4gIAlsb25nIHJvdW5k
ZWRfcmF0ZTsKPiAgCj4gKwlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTENMSykK
PiArCQlyZXR1cm4gTU9ERV9CQUQ7Cj4gKwo+ICAJLyogMTY1IE1IeiBpcyB0aGUgdHlwaWNhbCBt
YXggcGl4ZWxjbG9jayBmcmVxdWVuY3kgZm9yIEhETUkgPD0gMS4yICovCj4gLQlpZiAocmF0ZSA+
IDE2NTAwMDAwMCkKPiArCWlmIChjbG9jayA+IDE2NTAwMDAwMCkKPiAgCQlyZXR1cm4gTU9ERV9D
TE9DS19ISUdIOwo+IC0Jcm91bmRlZF9yYXRlID0gY2xrX3JvdW5kX3JhdGUoaGRtaS0+dG1kc19j
bGssIHJhdGUpOwo+ICsKPiArCXJvdW5kZWRfcmF0ZSA9IGNsa19yb3VuZF9yYXRlKGhkbWktPnRt
ZHNfY2xrLCBjbG9jayk7Cj4gIAlpZiAocm91bmRlZF9yYXRlID4gMCAmJgo+IC0JICAgIG1heF90
KHVuc2lnbmVkIGxvbmcsIHJvdW5kZWRfcmF0ZSwgcmF0ZSkgLQo+IC0JICAgIG1pbl90KHVuc2ln
bmVkIGxvbmcsIHJvdW5kZWRfcmF0ZSwgcmF0ZSkgPCBkaWZmKQo+ICsJICAgIG1heF90KHVuc2ln
bmVkIGxvbmcsIHJvdW5kZWRfcmF0ZSwgY2xvY2spIC0KPiArCSAgICBtaW5fdCh1bnNpZ25lZCBs
b25nLCByb3VuZGVkX3JhdGUsIGNsb2NrKSA8IGRpZmYpCj4gIAkJcmV0dXJuIE1PREVfT0s7Cj4g
Kwo+ICAJcmV0dXJuIE1PREVfTk9DTE9DSzsKPiAgfQo+ICAKPiAtc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1fZW5jb2Rlcl9oZWxwZXJfZnVuY3Mgc3VuNGlfaGRtaV9oZWxwZXJfZnVuY3MgPSB7Cj4g
LQkuYXRvbWljX2NoZWNrCT0gc3VuNGlfaGRtaV9hdG9taWNfY2hlY2ssCj4gLQkuYXRvbWljX2Rp
c2FibGUJPSBzdW40aV9oZG1pX2Rpc2FibGUsCj4gLQkuYXRvbWljX2VuYWJsZQk9IHN1bjRpX2hk
bWlfZW5hYmxlLAo+IC0JLm1vZGVfdmFsaWQJPSBzdW40aV9oZG1pX21vZGVfdmFsaWQsCj4gLX07
Cj4gK3N0YXRpYyBpbnQgc3VuNGlfaGRtaV9jb25uZWN0b3JfYXRvbWljX2NoZWNrKHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gKwkJCQkJICAgICBzdHJ1Y3QgZHJtX2F0b21pY19z
dGF0ZSAqc3RhdGUpCj4gK3sKPiArCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0
YXRlID0KPiArCQlkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9yX3N0YXRlKHN0YXRlLCBjb25u
ZWN0b3IpOwo+ICsJc3RydWN0IGRybV9jcnRjICpjcnRjID0gY29ubl9zdGF0ZS0+Y3J0YzsKPiAr
CXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9IGNydGMtPnN0YXRlOwo+ICsJc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUgPSAmY3J0Y19zdGF0ZS0+YWRqdXN0ZWRfbW9kZTsK
PiArCWVudW0gZHJtX21vZGVfc3RhdHVzIHN0YXR1czsKPiArCj4gKwlzdGF0dXMgPSBzdW40aV9o
ZG1pX2Nvbm5lY3Rvcl9jbG9ja192YWxpZChjb25uZWN0b3IsIG1vZGUsCj4gKwkJCQkJCSAgbW9k
ZS0+Y2xvY2sgKiAxMDAwKTsKPiArCWlmIChzdGF0dXMgIT0gTU9ERV9PSykKPiArCQlyZXR1cm4g
LUVJTlZBTDsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGVudW0gZHJtX21v
ZGVfc3RhdHVzCj4gK3N1bjRpX2hkbWlfY29ubmVjdG9yX21vZGVfdmFsaWQoc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3RvciwKPiArCQkJCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2Rl
KQo+ICt7Cj4gKwlyZXR1cm4gc3VuNGlfaGRtaV9jb25uZWN0b3JfY2xvY2tfdmFsaWQoY29ubmVj
dG9yLCBtb2RlLAo+ICsJCQkJCQltb2RlLT5jbG9jayAqIDEwMDApOwo+ICt9Cj4gIAo+ICBzdGF0
aWMgaW50IHN1bjRpX2hkbWlfZ2V0X21vZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IpCj4gIHsKPiBAQCAtMjM2LDYgKzI1NCw4IEBAIHN0YXRpYyBzdHJ1Y3QgaTJjX2FkYXB0ZXIg
KnN1bjRpX2hkbWlfZ2V0X2RkYyhzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIH0KPiAgCj4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3Mgc3VuNGlfaGRtaV9jb25u
ZWN0b3JfaGVscGVyX2Z1bmNzID0gewo+ICsJLmF0b21pY19jaGVjawk9IHN1bjRpX2hkbWlfY29u
bmVjdG9yX2F0b21pY19jaGVjaywKPiArCS5tb2RlX3ZhbGlkCT0gc3VuNGlfaGRtaV9jb25uZWN0
b3JfbW9kZV92YWxpZCwKPiAgCS5nZXRfbW9kZXMJPSBzdW40aV9oZG1pX2dldF9tb2RlcywKPiAg
fTsKPiAgCj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
