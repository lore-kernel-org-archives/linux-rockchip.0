Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EA5EC3ABD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 09:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2bLXJihj1JZSzjGHcowII4uEjjRzu31YeNkID0Dxco=; b=NR4U1bUO+CFJuY
	vxZ91Ljsa70z1dpcdMvwoGL008VPS3I5ZCjPNR8S04qPjI5oIBJfq+Tuzxr4EvsXbw/xsieZ2mNJm
	RsYjHp7K2FYbVkMTiPOOK0Owc1+lKFxg1TYuf2B1Cv6WnXye2LBcQHmXuW9AEK4k/K21g2mHFeOFw
	DipViCX3QmIHqkiHMJEmtjL9NeHeCloVFa4OLVj4krVo9qvqKETlk35xpUgHAnSlmgYGF6dZJiK3h
	IYj9vpvl+pQEAQmvjycRb9YKwO4BWe9rjKwOKXLWLkfeO1sUNydKGZ3M3L6K6GLn9DX191Puazo89
	wt7asF1q5s/zxADQNePg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFrCR-00000002yHD-2P6U;
	Fri, 16 May 2025 09:17:51 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFrAO-00000002xnh-1LMm
	for linux-rockchip@lists.infradead.org;
	Fri, 16 May 2025 09:15:46 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-708b31650ffso17382787b3.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 May 2025 02:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1747386942; x=1747991742; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghCVBFohCqPYMNm54QVPyhJ+LtBlN+TIFH3Qtc52S1A=;
        b=AzKAZ8mxYkQy6Nt9jZ4MOcDlrjTaz8X2bxn/rXIlsMuIMIhq1+d/v98zjChXzzJCQB
         wCI6BOdXMk8XmZQbIx1P4a2DeM/cLlD/8kFfbw2AvPTTQ6TFrS9Y+x3DrTMTuBDwhI2r
         22NQcXMtLyqaDTL9ZPWAmc2/4TQy1xDlqY06WvCBD0WeFU+KAclEvaPyojjZX79vmKKw
         a7NMLA5lQTttQ90J53A4oWzaOsnEUpzbBeuAdOpmsxPNzwnkLJZQuLsYQfD5WiT4oS9z
         KxBUk4fBzDsWnOpW5GpcQtNG8EXIx+W4//Rk/LS40y8VEh5rGd5/yXlbsGfcy9RPeVZZ
         YBnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747386942; x=1747991742;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ghCVBFohCqPYMNm54QVPyhJ+LtBlN+TIFH3Qtc52S1A=;
        b=SNd4QI+H3s+O0VOE5lFMvBbWZ6NRAUL/nHRTV1H4tjppafPzQs72tR1aXAW89FQdMz
         1P+p2zl0hwMD6Yk7ofVPsz64uY+T+Wj832rbIm0ZMFou84W+qJfjtPH1xDb3LaM+wN86
         LvM9mZVwCC8+4pz+WDCnLDsBdUmQGAKHYFonQL/KG7WRreFMcvHAa4DiqrA6V5P8LvBk
         9rB2QdNDs1r71dd/Z4x3su5R7gNC7jVNYgmjhMW/zQKPxwG3fJRRt56ChHat1DZnEbX+
         BVVp02SWBp4aGyy2UDPFI3oaYEYFk6h8v/GZZ8Syhnlvkrq2CbIqa/+i+QA/3b6jsKdt
         qXmw==
X-Forwarded-Encrypted: i=1; AJvYcCVLcZH0I/ObsMl/hxC5iUghAY1CB6yYiOwvTYJExT6s79omw3pxzgBkV5i8hH2Ug+JA8teGvTjz6qzlvu5R6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1wI0zL9LFx1kxE89GR90aPzibxZ28rmjgPexSPXlIPhpVlI6Z
	BBnaUHRPs3uOGvYFwbsMc4VIHhenn8gwczN2equMkdqdvUpjGjgACLf46alVGX98UbHyqGMEE7y
	2non+jSzjxg==
X-Gm-Gg: ASbGnctO0vWUFDePchHnnd+0dRZ1g7gLmy0yKMq470xsCABnBK0h75T4ln+cbLfJH22
	RD5+tZs9ZdUFkW+/dUWoH1yBvE19TwNizJr5eD5PcLIBVHkCiAn61e7ex588Y58ra+1xnXrtqyF
	Cyz2pGbclRkDQtkqLNZqDN9p7y2Za17OOcOxONLX/cUztgWqUj65zFxD2iYxkzPEhESDhu2Ui0O
	7oy9B4iU5GtZ/1cndxr3nHWSdyN5YiiM5Dry9vZdUksxFfbqPCsvOsXp7eKWtP8VpUkL34rsVu8
	IxjPgLZEEVGHd254Z0eRhqsegkpA6riTkMtBo8K7XxonJwFzJfW0/ZctkZXjwtz/A3XBbx8c2nV
	XAXcCKrDL2kIaHS6dASk=
X-Google-Smtp-Source: AGHT+IF7CzYx0t5J3lcfjFBABQerJwAxpeQqoydbU+7kqTmzWIDhmyZh3YvckIN32gEtJEu0wtx4+A==
X-Received: by 2002:a05:690c:316:b0:709:6f9d:b566 with SMTP id 00721157ae682-70ca7bc6b82mr43438987b3.36.1747386942483;
        Fri, 16 May 2025 02:15:42 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70ca831c2basm3142137b3.30.2025.05.16.02.15.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 02:15:41 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e7b51381445so1713629276.0;
        Fri, 16 May 2025 02:15:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWXxvEwevsMZAV+txNNFbB9QZsFOX8iQA6ahyLxWY81cT1XxoMIOREZMjRISMsENsB+/yCNgEhIbHui4yzaOY5z@lists.infradead.org, AJvYcCXn+ItYccScmPT5q6YErwdsMW6cra5H9lJ1RUUz2zGvV8jzqYIz+eff/sfDOGLX3aFs+X5CRBISq5CMpE+9xe4=@lists.infradead.org
X-Received: by 2002:a05:6902:4888:b0:e7a:b59a:e99 with SMTP id
 3f1490d57ef6-e7b6a08f866mr3989501276.22.1747386940957; Fri, 16 May 2025
 02:15:40 -0700 (PDT)
MIME-Version: 1.0
References: <20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net>
 <20250225-6-10-rocket-v2-4-d4dbcfafc141@tomeuvizoso.net> <2950819.ElGaqSPkdT@workhorse>
In-Reply-To: <2950819.ElGaqSPkdT@workhorse>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Fri, 16 May 2025 11:15:29 +0200
X-Gmail-Original-Message-ID: <CAAObsKBrXZscvhjYnSb2DBL1KGsaMHpPVfB_QrFUPihd2+srdw@mail.gmail.com>
X-Gm-Features: AX0GCFs7JNRTyA51Mp_5c2sfGP8DF36VD9y5YcZK4C0Caod07VePTbyWDenldvk
Message-ID: <CAAObsKBrXZscvhjYnSb2DBL1KGsaMHpPVfB_QrFUPihd2+srdw@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] accel/rocket: Add a new driver for Rockchip's NPU
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_021544_593934_78FB4051 
X-CRM114-Status: GOOD (  35.99  )
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

T24gRnJpLCBBcHIgMjUsIDIwMjUgYXQgODoyMuKAr1BNIE5pY29sYXMgRnJhdHRhcm9saQo8bmlj
b2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gVHVlc2RheSwgMjUg
RmVicnVhcnkgMjAyNSAwODo1NTo1MCBDZW50cmFsIEV1cm9wZWFuIFN1bW1lciBUaW1lIFRvbWV1
IFZpem9zbyB3cm90ZToKPiA+IFRoaXMgaW5pdGlhbCB2ZXJzaW9uIHN1cHBvcnRzIHRoZSBOUFUg
YXMgc2hpcHBlZCBpbiB0aGUgUkszNTg4IFNvQyBhbmQKPiA+IGRlc2NyaWJlZCBpbiB0aGUgZmly
c3QgcGFydCBvZiBpdHMgVFJNLCBpbiBDaGFwdGVyIDM2Lgo+ID4KPiA+IFRoaXMgTlBVIGNvbnRh
aW5zIDMgaW5kZXBlbmRlbnQgY29yZXMgdGhhdCB0aGUgZHJpdmVyIGNhbiBzdWJtaXQgam9icwo+
ID4gdG8uCj4gPgo+ID4gVGhpcyBjb21taXQgYWRkcyBqdXN0IGhhcmR3YXJlIGluaXRpYWxpemF0
aW9uIGFuZCBwb3dlciBtYW5hZ2VtZW50Lgo+ID4KPiA+IHYyOgo+ID4gLSBTcGxpdCBjb3JlcyBh
bmQgSU9NTVVzIGFzIGluZGVwZW5kZW50IGRldmljZXMgKFNlYmFzdGlhbiBSZWljaGVsKQo+ID4g
LSBBZGQgc29tZSBkb2N1bWVudGF0aW9uIChKZWZmcmV5IEh1Z28pCj4gPiAtIEJlIG1vcmUgZXhw
bGljaXQgaW4gdGhlIEtjb25maWcgZG9jdW1lbnRhdGlvbiAoSmVmZnJleSBIdWdvKQo+ID4gLSBS
ZW1vdmUgcmVzZXRzLCBhcyB0aGVzZSBoYXZlbid0IGJlZW4gZm91bmQgdXNlZnVsIHNvIGZhciAo
WmVuZ2h1aSBZdSkKPiA+IC0gUmVwYWNrIHN0cnVjdHMgKEplZmZyZXkgSHVnbykKPiA+IC0gVXNl
IERFRklORV9EUk1fQUNDRUxfRk9QUyAoSmVmZnJleSBIdWdvKQo+ID4gLSBVc2UgZGV2bV9kcm1f
ZGV2X2FsbG9jIChKZWZmcmV5IEh1Z28pCj4gPiAtIFVzZSBwcm9iZSBsb2cgaGVscGVyIChKZWZm
cmV5IEh1Z28pCj4gPiAtIEludHJvZHVjZSBVQUJJIGhlYWRlciBpbiBhIGxhdGVyIHBhdGNoIChK
ZWZmcmV5IEh1Z28pCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0
b21ldXZpem9zby5uZXQ+Cj4gPiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2FjY2VsL2luZGV4LnJz
dCAgICAgICAgICAgfCAgICAxICsKPiA+ICBEb2N1bWVudGF0aW9uL2FjY2VsL3JvY2tldC9pbmRl
eC5yc3QgICAgfCAgIDE5ICsKPiA+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgICA4ICsKPiA+ICBkcml2ZXJzL2FjY2VsL0tjb25maWcgICAgICAgICAgICAgICAg
ICAgfCAgICAxICsKPiA+ICBkcml2ZXJzL2FjY2VsL01ha2VmaWxlICAgICAgICAgICAgICAgICAg
fCAgICAxICsKPiA+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9LY29uZmlnICAgICAgICAgICAgfCAg
IDI1ICsKPiA+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9NYWtlZmlsZSAgICAgICAgICAgfCAgICA4
ICsKPiA+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfY29yZS5jICAgICAgfCAgIDcxICsK
PiA+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfY29yZS5oICAgICAgfCAgIDI5ICsKPiA+
ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZGV2aWNlLmMgICAgfCAgIDI5ICsKPiA+ICBk
cml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZGV2aWNlLmggICAgfCAgIDI5ICsKPiA+ICBkcml2
ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZHJ2LmMgICAgICAgfCAgMjczICsrCj4gPiAgZHJpdmVy
cy9hY2NlbC9yb2NrZXQvcm9ja2V0X2Rydi5oICAgICAgIHwgICAxMyArCj4gPiAgZHJpdmVycy9h
Y2NlbC9yb2NrZXQvcm9ja2V0X3JlZ2lzdGVycy5oIHwgNDQyNSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPiAgMTQgZmlsZXMgY2hhbmdlZCwgNDkzMiBpbnNlcnRpb25zKCspCj4g
Pgo+ID4gWy4uLl0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRf
ZHJ2LmMgYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZHJ2LmMKPiA+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwLi5jMjJkOTY1ZjIwZjEyMzlhMzZiMWQ4MjNkNWZlNWYzNzI3MTM1NTVkCj4gPiAtLS0gL2Rl
di9udWxsCj4gPiArKysgYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZHJ2LmMKPiA+IEBA
IC0wLDAgKzEsMjczIEBACj4gPiBbLi4uXQo+ID4gK3N0YXRpYyBpbnQgcm9ja2V0X3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IGNvbXBv
bmVudF9tYXRjaCAqbWF0Y2ggPSBOVUxMOwo+ID4gKyAgICAgc3RydWN0IGRldmljZV9ub2RlICpj
b3JlX25vZGU7Cj4gPiArCj4gPiArICAgICBpZiAoZndub2RlX2RldmljZV9pc19jb21wYXRpYmxl
KHBkZXYtPmRldi5md25vZGUsICJyb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlIikpCj4gPiArICAg
ICAgICAgICAgIHJldHVybiBjb21wb25lbnRfYWRkKCZwZGV2LT5kZXYsICZyb2NrZXRfY29yZV9v
cHMpOwo+ID4gKwo+ID4gKyAgICAgZm9yX2VhY2hfY29tcGF0aWJsZV9ub2RlKGNvcmVfbm9kZSwg
TlVMTCwgInJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUiKSB7Cj4gPiArICAgICAgICAgICAgIGlm
ICghb2ZfZGV2aWNlX2lzX2F2YWlsYWJsZShjb3JlX25vZGUpKQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIGNvbnRpbnVlOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBkcm1fb2ZfY29tcG9uZW50
X21hdGNoX2FkZCgmcGRldi0+ZGV2LCAmbWF0Y2gsCj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbXBvbmVudF9jb21wYXJlX29mLCBjb3JlX25vZGUpOwo+ID4g
KyAgICAgfQo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIGNvbXBvbmVudF9tYXN0ZXJfYWRkX3dpdGhf
bWF0Y2goJnBkZXYtPmRldiwgJnJvY2tldF9kcm1fb3BzLCBtYXRjaCk7Cj4gPiArfQo+Cj4gSGkg
VG9tZXUsCj4KPiBzb21ldGhpbmcgSSd2ZSBub3RpY2VkIHdoaWxlIHBsYXlpbmcgd2l0aCB0aGlz
OiBjdXJyZW50bHksIGl0IGRvZXNuJ3Qgc2VlbSBsaWtlCj4gaXQncyBwb3NzaWJsZSB0byBzdXBw
b3J0IDEtY29yZSBOUFVzLiBya25uLWNvcmUtdG9wIGlzIGEgcmVhbCBjb3JlLCBidXQgaWYgbm8K
PiBya25uLWNvcmUgaXMgZW5hYmxlZCBiZXNpZGUgaXQsIGl0J2xsIGNhbGwgY29tcG9uZW50X21h
c3Rlcl9hZGRfd2l0aF9tYXRjaCB3aXRoCj4gbWF0Y2ggYmVpbmcgTlVMTC4gVGhpcyBjYXVzZXMg
YSBrZXJuZWwgT29wcy4KPgo+IEknbSBub3Qgc3VyZSB3aGF0IHRoZSBwcm9wZXIgZml4IGlzLCBz
aW5jZSB0aGUgY29tcG9uZW50IEFQSSBkb2Vzbid0IHNlZW0gdG8KPiByZWFsbHkgaGF2ZSBhIGNv
bnNpZGVyYXRpb24gZm9yIGEgbWFzdGVyIHdpdGggbm8gb3RoZXIgY29tcG9uZW50cy4KClllYWgs
IEkgdGhpbmsgd2UgY291bGQgYWRkIGEgY29kZSBwYXRoIGZvciBzaW5nbGUtY29yZSBOUFVzIHRo
YXQKZG9lc24ndCBtYWtlIHVzZSBvZiB0aGUgY29tcG9uZW50IEFQSSBhdCBhbGwuCgo+IEkgcmFu
IGludG8gdGhpcyB3aGVuIEkgd2FzIHRyeWluZyB0byBkZWJ1ZyB3aHkgSSBnZXQgam9iIHRpbWVv
dXRzIGZvbGxvd2VkIGJ5Cj4gYSBmdWxsIFNvQyBsb2NrLXVwIG9uIFJLMzU3NiBieSBydW5uaW5n
IHdpdGggb25seSBvbmUgb2YgdGhlIHR3byBjb3JlcyBlbmFibGVkLgo+Cj4gQXMgYW4gYXNpZGUg
bm90ZSwgbXkgdGhyb3dhd2F5IHJvY2tldC1vbi1SSzM1NzYtaGFja2luZy1icmFuY2ggaXMgYXQg
WzFdIGFuZAo+IGNvbnRhaW5zIHNvbWUgY2hhbmdlcyB5b3UgbWF5IHdhbnQgdG8gY29uc2lkZXIg
Zm9yIHYzLCBlLmcuIFsyXSBhbmQgWzNdK1s0XS4gSW4KPiBbNF0sIHNwZWNpZmljYWxseSB0aGUg
YGRvbWFpbi1zdXBwbHlgIHBhcnQgd2hpY2ggbWVhbnMgdGhlIE5QVSByZWd1bGF0b3JzIGRvbid0
Cj4gaGF2ZSB0byBiZSBhbHdheXMtb24uIFRob3VnaCBmZWVsIGZyZWUgdG8gcHVsbCBpbiBteSBl
bnRpcmUgUk9DSyA1QiBlbmFibGVtZW50Cj4gcGF0Y2guCgpPaywgWzJdIEkgYWxyZWFkeSBoYWQg
aW4gbXkgV0lQIGJyYW5jaC4gV2lsbCBwaWNrIHVwIFszXSBhbmQgWzRdLAp0aG91Z2ggSSBjYW5u
b3QgdGVzdCB0aGVtIG15c2VsZi4KClJlZ2FyZHMsCgpUb21ldQoKPiBLaW5kIHJlZ2FyZHMsCj4g
Tmljb2xhcyBGcmF0dGFyb2xpLCB3aG8gZGlzY292ZXJlZCB0aGF0IGhpcyBjYXQgaXMgYXBwYXJl
bnRseSA1JSBzcGFjZSBoZWF0ZXIKPiBhY2NvcmRpbmcgdG8gbW9iaWxlbmV0IHdoaWxlIHBsYXlp
bmcgd2l0aCB0aGlzIHBhdGNoIHNlcmllcy4KPgo+IFsxXTogaHR0cHM6Ly9naXRsYWIuY29sbGFi
b3JhLmNvbS9mcmF0dGkvbGludXgvLS9jb21taXRzL3RvbWV1LW5wdT9yZWZfdHlwZT1oZWFkcwo+
IFsyXTogaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9mcmF0dGkvbGludXgvLS9jb21taXQv
NzNhYmEzMWEwMGIzNGMyNTRiZTU3NWI1MjRkYTU2OGUxMTVkOTg1ZAo+IFszXTogaHR0cHM6Ly9n
aXRsYWIuY29sbGFib3JhLmNvbS9mcmF0dGkvbGludXgvLS9jb21taXQvYmQzYTdiZjUwNTRjNTRj
MjkxNWE5ZGMwMzk2NzMwZDBmMjRiM2I3Ywo+IFs0XTogaHR0cHM6Ly9naXRsYWIuY29sbGFib3Jh
LmNvbS9mcmF0dGkvbGludXgvLS9jb21taXQvNWRhNDRkNjFiMDljMzQ1MzA5Zjc2MTU5NTc0ZDQ0
N2QwNzFjMjk1ZAo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
