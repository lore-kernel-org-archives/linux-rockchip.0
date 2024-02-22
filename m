Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 812BDC5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 19:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=At7Y4uXHljV/PFyf9TYDfdGCfTYr5eV5hBWu3P1owZo=; b=YvG/NhOtqSEH5U
	2jY1FBTV3Z3+IZaisESA0ejrEJrV/Jvyl9leJuFkhfxBrYIaU81+bvKePycmQUnLd2/mjQuz2Ag1O
	CJTewhJ+MUaEPXCQD/qeCi6ULzHUCWTREjmTKV/IFXS6e8aXK8yBjr1bIzJ2vhUQHoAlam9Sv97Pa
	EAU3Uc2sKhoXfHAx/1mCu+mPubi21alTN8jUyytm1TJfjFaQ9LLePVhN4ws6HfHXPwEWQRyaBDHnX
	CEuS3ZjUtt5ZcvEHDjhkGf3ECFKg1NQD71DUndKQmjquJ/a7Mq1SM3vk4oI3YY+vmEcVLOhoutT+1
	ryhhZTnM7032P+STc/lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdEQs-00000006Fz1-22m0;
	Thu, 22 Feb 2024 19:08:34 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdEQp-00000006Fwd-1kq9;
	Thu, 22 Feb 2024 19:08:32 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-55f279dca99so2957808a12.3;
        Thu, 22 Feb 2024 11:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708628908; x=1709233708; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=miYXI5X8OB04A3nvBBpwERsgxft9kKmaWCdU6IfWrLc=;
        b=PienmW+pElAoTW+ZgxJtyaPfz0wYC0XkYIgHGYtn+ZabnkSkhynaCc9ArxM64zB//Z
         Ptqd7iOaSDhmCZcCm0rvtY2Ba67Pe6naecfq93gKzS67c0572n3SW4SLM/k8qPXlisZQ
         ZkbFX3KoTs4XVf13J/6a88GGgtXYnsX+8o0dkjhXlWCcnO9rFbq0xD6Q2yBwxMrCsu8p
         5iDd4RhrZuwyGkl5SdhKPEdD+t/pphWT3SjUItRyuF0xfbKXohstqoC7qbtk1zG4bBg1
         ylYx4Q5MYM/dyoaj+AWHgsFxwoKelZ15+YqYKNf8ohmdA9fOR6+TlonOIk0XigLByC/0
         k/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708628908; x=1709233708;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=miYXI5X8OB04A3nvBBpwERsgxft9kKmaWCdU6IfWrLc=;
        b=gmZTctTKc2FkP7V/BWWi+IbK9xMBIWdIhsSY6RBpz2NGxTsTSCxuU4OI1edHCWO1FU
         XV+ILP5/qFQ/EJ3y4+9Pnl/mpGaBrzfvcFhKV6RyY0Ztkht6T/tUGBDA1KnJU8pUENY8
         S6u7OiQKFJcldOK1+JM5IABdIocFRSULVyB79SnkNvBAHnbypIZIfJ7QcV32dFwNrLoG
         aQSZoCHznnl5eER3Mc8u9AKtg0+78i/Ilsi4PFVJ/xFr09vZRTMzd9F89Ho2P8t4YNxt
         KZOwuvx7clDQhNb57JyY/FtFL25kkANYSoS6C8By13LXuScw/SjXrFj4o89IV9NTHmfF
         dNSw==
X-Forwarded-Encrypted: i=1; AJvYcCW5vyY9KiNA8MbYljIQdpGrfJJblv2P+vEYVj7XaQPi8Oz4iTnYZSQDUjDHId44l4TkIREFe+LzawNfsW6+PIjoPAg9udc1fooVBNhcCB2ZDmIIuNXKS6525IGbukvvIKpedUMpWLSs+jqQFv0AAKEfRheA8ZHgqTM=
X-Gm-Message-State: AOJu0Yx7lnB4TBDkDfp5Jry3kvHK2HeucMcXUy4DVYAwghmwG3cSNXeP
	/Bm3C/ZeVALm7UWx9Ihwfd8s1fGMEdDVB28w3m1OZW/XKVyBQ2+0
X-Google-Smtp-Source: AGHT+IFAwJtXHRxsMlfuxZbKsBCx57OJ9WWOE6NU3SwtpJdQrrzkkNNcvjYdXKu6pBGCRHU3AulfnQ==
X-Received: by 2002:a17:906:35d3:b0:a3f:2f67:4847 with SMTP id p19-20020a17090635d300b00a3f2f674847mr3966366ejb.19.1708628908074;
        Thu, 22 Feb 2024 11:08:28 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id b5-20020a170906490500b00a3e7b8bd2d8sm4663088ejq.111.2024.02.22.11.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 11:08:27 -0800 (PST)
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
Subject: Re: [PATCH v7 33/36] drm/sun4i: hdmi: Move mode_set into enable
Date: Thu, 22 Feb 2024 20:08:26 +0100
Message-ID: <4868938.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-33-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-33-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_110831_530548_159F1CA8 
X-CRM114-Status: GOOD (  15.61  )
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

RG5lIMSNZXRydGVrLCAyMi4gZmVicnVhciAyMDI0IG9iIDE5OjE0OjE5IENFVCBqZSBNYXhpbWUg
UmlwYXJkIG5hcGlzYWwoYSk6Cj4gV2UncmUgbm90IGRvaW5nIGFueXRoaW5nIHNwZWNpYWwgaW4g
YXRvbWljX21vZGVfc2V0IHNvIHdlIGNhbiBzaW1wbHkKPiBtZXJnZSBpdCBpbnRvIGF0b21pY19l
bmFibGUuCj4gCj4gQWNrZWQtYnk6IFN1aSBKaW5nZmVuZyA8c3VpLmppbmdmZW5nQGxpbnV4LmRl
dj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CgpS
ZXZpZXdlZC1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQGdtYWlsLmNvbT4KCkJl
c3QgcmVnYXJkcywKSmVybmVqCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlf
aGRtaV9lbmMuYyB8IDM4ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9lbmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9zdW40aS9zdW40aV9oZG1pX2VuYy5jCj4gaW5kZXggNzk5YTI2MjE1Y2MyLi5iYWU2
OWQ2OTY3NjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hkbWlf
ZW5jLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9lbmMuYwo+IEBA
IC0xMDMsMzMgKzEwMywxMSBAQCBzdGF0aWMgdm9pZCBzdW40aV9oZG1pX2VuYWJsZShzdHJ1Y3Qg
ZHJtX2VuY29kZXIgKmVuY29kZXIsCj4gIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9
ICZlbmNvZGVyLT5jcnRjLT5zdGF0ZS0+YWRqdXN0ZWRfbW9kZTsKPiAgCXN0cnVjdCBzdW40aV9o
ZG1pICpoZG1pID0gZHJtX2VuY29kZXJfdG9fc3VuNGlfaGRtaShlbmNvZGVyKTsKPiAgCXN0cnVj
dCBkcm1fZGlzcGxheV9pbmZvICpkaXNwbGF5ID0gJmhkbWktPmNvbm5lY3Rvci5kaXNwbGF5X2lu
Zm87Cj4gKwl1bnNpZ25lZCBpbnQgeCwgeTsKPiAgCXUzMiB2YWwgPSAwOwo+ICAKPiAgCURSTV9E
RUJVR19EUklWRVIoIkVuYWJsaW5nIHRoZSBIRE1JIE91dHB1dFxuIik7Cj4gIAo+IC0JY2xrX3By
ZXBhcmVfZW5hYmxlKGhkbWktPnRtZHNfY2xrKTsKPiAtCj4gLQlzdW40aV9oZG1pX3NldHVwX2F2
aV9pbmZvZnJhbWVzKGhkbWksIG1vZGUpOwo+IC0JdmFsIHw9IFNVTjRJX0hETUlfUEtUX0NUUkxf
VFlQRSgwLCBTVU40SV9IRE1JX1BLVF9BVkkpOwo+IC0JdmFsIHw9IFNVTjRJX0hETUlfUEtUX0NU
UkxfVFlQRSgxLCBTVU40SV9IRE1JX1BLVF9FTkQpOwo+IC0Jd3JpdGVsKHZhbCwgaGRtaS0+YmFz
ZSArIFNVTjRJX0hETUlfUEtUX0NUUkxfUkVHKDApKTsKPiAtCj4gLQl2YWwgPSBTVU40SV9IRE1J
X1ZJRF9DVFJMX0VOQUJMRTsKPiAtCWlmIChkaXNwbGF5LT5pc19oZG1pKQo+IC0JCXZhbCB8PSBT
VU40SV9IRE1JX1ZJRF9DVFJMX0hETUlfTU9ERTsKPiAtCj4gLQl3cml0ZWwodmFsLCBoZG1pLT5i
YXNlICsgU1VONElfSERNSV9WSURfQ1RSTF9SRUcpOwo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCBz
dW40aV9oZG1pX21vZGVfc2V0KHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlciwKPiAtCQkJCXN0
cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAtCQkJCXN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlICpjb25uX3N0YXRlKQo+IC17Cj4gLQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlf
bW9kZSAqbW9kZSA9ICZjcnRjX3N0YXRlLT5tb2RlOwo+IC0Jc3RydWN0IHN1bjRpX2hkbWkgKmhk
bWkgPSBkcm1fZW5jb2Rlcl90b19zdW40aV9oZG1pKGVuY29kZXIpOwo+IC0JdW5zaWduZWQgaW50
IHgsIHk7Cj4gLQl1MzIgdmFsOwo+IC0KPiAgCWNsa19zZXRfcmF0ZShoZG1pLT5tb2RfY2xrLCBt
b2RlLT5jcnRjX2Nsb2NrICogMTAwMCk7Cj4gIAljbGtfc2V0X3JhdGUoaGRtaS0+dG1kc19jbGss
IG1vZGUtPmNydGNfY2xvY2sgKiAxMDAwKTsKPiAgCj4gQEAgLTE4MSw2ICsxNTksMTkgQEAgc3Rh
dGljIHZvaWQgc3VuNGlfaGRtaV9tb2RlX3NldChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIs
Cj4gIAkJdmFsIHw9IFNVTjRJX0hETUlfVklEX1RJTUlOR19QT0xfVlNZTkM7Cj4gIAo+ICAJd3Jp
dGVsKHZhbCwgaGRtaS0+YmFzZSArIFNVTjRJX0hETUlfVklEX1RJTUlOR19QT0xfUkVHKTsKPiAr
Cj4gKwljbGtfcHJlcGFyZV9lbmFibGUoaGRtaS0+dG1kc19jbGspOwo+ICsKPiArCXN1bjRpX2hk
bWlfc2V0dXBfYXZpX2luZm9mcmFtZXMoaGRtaSwgbW9kZSk7Cj4gKwl2YWwgfD0gU1VONElfSERN
SV9QS1RfQ1RSTF9UWVBFKDAsIFNVTjRJX0hETUlfUEtUX0FWSSk7Cj4gKwl2YWwgfD0gU1VONElf
SERNSV9QS1RfQ1RSTF9UWVBFKDEsIFNVTjRJX0hETUlfUEtUX0VORCk7Cj4gKwl3cml0ZWwodmFs
LCBoZG1pLT5iYXNlICsgU1VONElfSERNSV9QS1RfQ1RSTF9SRUcoMCkpOwo+ICsKPiArCXZhbCA9
IFNVTjRJX0hETUlfVklEX0NUUkxfRU5BQkxFOwo+ICsJaWYgKGRpc3BsYXktPmlzX2hkbWkpCj4g
KwkJdmFsIHw9IFNVTjRJX0hETUlfVklEX0NUUkxfSERNSV9NT0RFOwo+ICsKPiArCXdyaXRlbCh2
YWwsIGhkbWktPmJhc2UgKyBTVU40SV9IRE1JX1ZJRF9DVFJMX1JFRyk7Cj4gIH0KPiAgCj4gIHN0
YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cyBzdW40aV9oZG1pX21vZGVfdmFsaWQoc3RydWN0IGRy
bV9lbmNvZGVyICplbmNvZGVyLAo+IEBAIC0yMDYsNyArMTk3LDYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1fZW5jb2Rlcl9oZWxwZXJfZnVuY3Mgc3VuNGlfaGRtaV9oZWxwZXJfZnVuY3MgPSB7
Cj4gIAkuYXRvbWljX2NoZWNrCT0gc3VuNGlfaGRtaV9hdG9taWNfY2hlY2ssCj4gIAkuYXRvbWlj
X2Rpc2FibGUJPSBzdW40aV9oZG1pX2Rpc2FibGUsCj4gIAkuYXRvbWljX2VuYWJsZQk9IHN1bjRp
X2hkbWlfZW5hYmxlLAo+IC0JLmF0b21pY19tb2RlX3NldAk9IHN1bjRpX2hkbWlfbW9kZV9zZXQs
Cj4gIAkubW9kZV92YWxpZAk9IHN1bjRpX2hkbWlfbW9kZV92YWxpZCwKPiAgfTsKPiAgCj4gCj4g
CgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
