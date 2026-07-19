Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE208C4450A
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jul 2026 09:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4UMnYS5wlLE3d/JbcMKrTDCRRo04KLgYok0Q6qjMsM=; b=e5GuUREB3q8opi
	b4NlxlVykwHUuXqL5ZmP1lLEF/RqBAe7JneVEbCd2GG6jvuEys/UEbQTEBmwEGiPYGBVJLjDRMPe7
	xkLu/v2oiUNhWulPcYJDnvToENdzESM9OSHhbljYgwNRQmyUO16uTRpbDZYGNuNQJWq1TbGMhGcsg
	nqpmcsFIyMActgXDJZ5+WdIqjvoufkKFG8dIu0NWdyPVEX8fgVVwvxonC2xP/L1UZqDOV4LoLmqbG
	kEuqntqGOd/tKc5ZaVdVTUgyA10NSuE8FGJZEbEjCuUBCdTmIi33X6/7KX6zZEc57AjecC3vxQDFG
	bMGeZDl9dMjiNTBeeH8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlODq-00000004teN-1EZI;
	Sun, 19 Jul 2026 09:54:10 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlODn-00000004tdZ-3Sxl
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Jul 2026 09:54:09 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-81eac8bf7dcso4520867b3.0
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Jul 2026 02:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784454846; cv=none;
        d=google.com; s=arc-20260327;
        b=i3rRV6QEk+UAhRHqPmuT1Hi5zAlR9NQm71a6gS+YjkjasIE7FtcW25sXXHW+GwfBfZ
         WXAgbPmpl8/sDGag9IMJU2Obh68zOiqr7c5rP24ECX5xFZZZYJEpFZwGWg8uijavYFr9
         F/O3rJv58jc2ZBbr44iuRcccxx2fumwFy5LmpK6Tkq/1HaqzSKHYhOIlGJb2vjC8rInG
         kW9tPNpVKYFwmWDo5UI9tfIpi+8SMgqaNXjvaWDKqZeIqg1YEYZfI0yq4XXDdpAJ41xT
         J8J+pAfKtxmkUTKGahFsjypgFFCX8vMqDBlI6ot1gsi9fz7CXPx0tfiOquVHy4x2aFjb
         hiUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xHGgD8K9zQ4es88RgHY8FFmbRbAWwqwav6HnZA/PD+k=;
        fh=LkCjddrv3lkJcPKU1VL3mEzFxgCzZFLc07ONLo+cL/0=;
        b=qQfNTVAHn3r32OSh5SUP0lPMH6TdyfS8bp769TcCO5KN3J9igdpwKujDaMq87TS+nD
         zGswC+HsBO9/JSuH+ndHblFYiMSTopi2BwBatgq3x0LVyH0n7eVnaWiqvFANTrq0M8ta
         BHJZ1i8vWlokpk6hCCl0NUvLv4iGFn0ceKSfJRfCOiWRvNnx1knlzEVbfwt+x7TQEoGE
         kYxTDSCepc7+CLLLFzZWV9kSgUSZZMJfmckK6FDkUM/y6EnPbwipu9vr/8dEUReYkkMC
         FVoZ9mPAxnpiQCSlGagFaCdw9QpmuFEwoAM5pymn2OOow/kkeQOPTUs9Xp39tnEOSAx9
         0MBQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784454846; x=1785059646; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xHGgD8K9zQ4es88RgHY8FFmbRbAWwqwav6HnZA/PD+k=;
        b=sU9sAR9yr3aXg1Oj4jTT5LoDvjSrZIVSO+5E+ZKl7GfMLxGNmefWo7MR34F4oOXmTr
         OoO8AWBnAT5SqaMzFkfawxLoDjg/9SZDcKkGgomFEV0fx99zuu85cTFN6udasixdnn/s
         yu3y7GPSYT/SBT2sXjtqMkBTd6fd1xhUo1zuFIhM8DOTl8GtQ7sxgnxMWuyiN0ZArfcK
         WNuyCTeBM/Jbfj07y5T9dqVbFLDlgqf8A+yv1h4AFauLxxVRdJAmocNmP3Ti4GpaDBmE
         6J7zqtRy3IL0uZGvrIH2/QUCaTLT1FrSGAQm+wqYeTCLcj5faFJcbpbYN2BP8vEGe7wH
         J3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784454846; x=1785059646;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xHGgD8K9zQ4es88RgHY8FFmbRbAWwqwav6HnZA/PD+k=;
        b=ahUfYvviNw1nTn1QZTcpVlYS+0ZrKXosixu5R7SG8tWsD+xmPWC3BkK5+lgBfxKp6B
         9TzwaSijfgVjpstC4tNRzlmUJ7181L8ufF2D48QSaa9RPqnL5bfykM8q/vznXo70ge2n
         nz3Qz5fvYYuvjTDbRKM42tcnrHLxaEYprzQmU+9/oSeBSdqE3dSXFcacwT9t1jwDGxgo
         6PHGquo/ENArI/0XyUjM1vhpqLpiHrEp8yhjvB4n+vZZ+X4yEvytlxuOuHcjZ/bYAN9d
         hwa3KD9tjh00dmHNTWQK14KeQS4hGcjwfhBHDTF76xh+qE6v8D8DzPbc0bKDKSfQwqMn
         5txw==
X-Forwarded-Encrypted: i=1; AHgh+RpG3vxsHd5jGwTfOjOYabeaQkm7+DZEBrsJHFCxw6qt34YwV2hHvF7FOaPWW5ZMDPGIJibA4mm5dpqGKu9Jzw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwptW1EtvQDfz9a6cjSrsi5JXylNcLW2jfQNKkkpO0j2ufz/zgV
	R+kH4pZPv4k+Kbm5f7vJNCU05vnJzHj3aF2SX4b55zaWDkGrxZG1b5PzMsHHlcnh+P3aZd2c21x
	lDejC1/bE8jAgViSmTfaGzxQ3MAWI7jc=
X-Gm-Gg: AfdE7cl74z9PxYbKZbLjQIAdYPk7ErtIQl0xvJ8Art8RY8Va4da0RmCFiZXlkq7XYRN
	2HfmDetvZMREdeH4ZXGt1bpwo7PSDobzyNHsO3PP88cq45336wN0S9nNeU9/u+bhNfG/wBwuBYL
	AOwmKD1JDUsau9RVE6Atg/e2xPiYy+3jyr2w5csSkRcc9A0axWdrAQf4lIl8zKHAe9yf3awaDvJ
	hgISUrvRK3DRFMWCJJAm1Iv76s4PneOjDFWwY4V0Foku9tVYUVRHsuurh3jCBxIVjzsHjmPCaLq
	QTMQktKprdjeF7XK1Re0kNB8nltLOe0=
X-Received: by 2002:a05:690c:60c3:b0:80d:8bad:2ceb with SMTP id
 00721157ae682-81ef217a008mr32451757b3.0.1784454846106; Sun, 19 Jul 2026
 02:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-2-royalnet026@gmail.com>
 <20260719-sassy-muskrat-of-finesse-b426b0@quoll>
In-Reply-To: <20260719-sassy-muskrat-of-finesse-b426b0@quoll>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sun, 19 Jul 2026 11:53:54 +0200
X-Gm-Features: AUfX_mzrG1Pq4Zo417YCDgy1H34zh5K02k55OjzpmQP6GATHpyCvJf-ba4NVTOo
Message-ID: <CAEWPSH6aUOzxhweOdwi18LgtsUQhQEfJ0usWJvsC7WHF6XMQzA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: media: snps,dw-hdmi-rx: add #sound-dai-cells
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Osipenko <dmitry.osipenko@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_025407_917822_7CA2C980 
X-CRM114-Status: GOOD (  18.14  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmtzIC0tIGJvdGggZG9uZSBmb3IgdjQ6IHRoZSBzY2hlbWEgbm93
IHJlZmVyZW5jZXMKL3NjaGVtYXMvc291bmQvZGFpLWNvbW1vbi55YW1sIyB3aXRoIHVuZXZhbHVh
dGVkUHJvcGVydGllczogZmFsc2UsIGFuZAp0aGUgY29uc3VtZXIgY29tbWVudCBpcyBkcm9wcGVk
IGZyb20gdGhlIGV4YW1wbGUuCgpJJ2xsIGZvbGQgdGhpcyBpbnRvIHRoZSB2NCByZXNwaW4gdG9n
ZXRoZXIgd2l0aCBTZWJhc3RpYW4ncyBkdHMKY29tbWVudHMsIGhvbGRpbmcgaXQgZm9yIERtaXRy
eSdzIHRlc3Rpbmcgcm91bmQgb24gdGhlIGRyaXZlciBzaWRlIHNvCmV2ZXJ5dGhpbmcgbGFuZHMg
aW4gb25lIGdvLgoKSWdvcgoKT24gU3VuLCBKdWwgMTksIDIwMjYgYXQgMTA6NTTigK9BTSBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gU2F0LCBKdWwg
MTgsIDIwMjYgYXQgMTA6NTc6MjVBTSArMDIwMCwgSWdvciBQYXVub3ZpYyB3cm90ZToKPgo+ID4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zbnBz
LGR3LWhkbWktcngueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9zbnBzLGR3LWhkbWktcngueWFtbAo+ID4gaW5kZXggYjdmNmM4Ny4uZmE2Y2QwZCAxMDA2NDQK
PiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zbnBzLGR3
LWhkbWktcngueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21lZGlhL3NucHMsZHctaGRtaS1yeC55YW1sCj4gPiBAQCAtNzgsNiArNzgsMTMgQEAgcHJvcGVy
dGllczoKPiA+ICAgICAgICBUaGUgcGhhbmRsZSBvZiB0aGUgc3lzY29uIG5vZGUgZm9yIHRoZSBW
aWRlbyBPdXRwdXQgR1JGIHJlZ2lzdGVyCj4gPiAgICAgICAgdG8gZW5hYmxlIEVESUQgdHJhbnNm
ZXIgdGhyb3VnaCBTREFJTiBhbmQgU0NMSU4uCj4gPgo+ID4gKyAgIiNzb3VuZC1kYWktY2VsbHMi
Ogo+ID4gKyAgICBjb25zdDogMQo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICBUaGUg
SERNSSBSWCBjb250cm9sbGVyIGhhcyB0d28gZGlnaXRhbCBhdWRpbyBpbnRlcmZhY2VzLCBvbmUg
Zm9yCj4gPiArICAgICAgSTJTIGFuZCBvbmUgZm9yIFMvUERJRi4gVGhlIERBSSBjZWxsIHNlbGVj
dHMgdGhlIGludGVyZmFjZSwgMCBmb3IKPiA+ICsgICAgICBJMlMgYW5kIDEgZm9yIFMvUERJRi4K
PiA+ICsKPgo+IFNjaGVtYSBzaG91bGQgYWxzbyByZWZlcmVuY2UgZGFpLWNvbW1vbi55YW1sIGFu
ZCB1c2UKPiAidW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZSIuCj4KPiA+ICByZXF1aXJlZDoK
PiA+ICAgIC0gY29tcGF0aWJsZQo+ID4gICAgLSByZWcKPiA+IEBAIC0xMjksNCArMTM2LDYgQEAg
ZXhhbXBsZXM6Cj4gPiAgICAgICAgcGluY3RybC0wID0gPCZoZG1pbTFfcnhfY2VjICZoZG1pbTFf
cnhfaHBkaW4gJmhkbWltMV9yeF9zY2wgJmhkbWltMV9yeF9zZGEgJmhkbWlyeF81dl9kZXRlY3Rp
b24+Owo+ID4gICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAgICAgaHBk
LWdwaW9zID0gPCZncGlvMSAyMiBHUElPX0FDVElWRV9MT1c+Owo+ID4gKyAgICAgIC8qIHJlZmVy
ZW5jZWQgYnkgYSBzb3VuZCBjYXJkIGFzIDwmaGRtaV9yZWNlaXZlciAwPiAoMDogSTJTLCAxOiBT
L1BESUYpICovCj4KPiBEcm9wIGNvbW1lbnQsIG5vdCBuZWVkZWQuIENvbnN1bWVyIGlzIG5vdCBy
ZWFsbHkgcmVsZXZhbnQuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
