Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B5DFC44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 21:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGGfLtRMypcs/Y97qHebxrbqExpq60khMQEGXr6oEiU=; b=wWd3hLRhDHC4Uq
	goTscsxsN/Jap8YqWJ8DDQyJXoSKSnHYnDRwByN99WfckUcevKB1pESHbwWqp3Ac7PjpLqPG26F9T
	Q8QtIpt91/8Z6LYIBHpKWszITnVHgr4itKFOrB5vxHU1S/7f2UHQXe1JL81Eq+yucckSjWvMF8+6w
	0u7R06qtVdoUO0VFBOhAkTA04g6KuBzB3pmASlIZM63An/ukRLJPt3o8XoQS1/eNxggOU7gZyLjmX
	rpAex48FRHTWNfAt8gYuKqIrVmMAMhFeUTIqGopn2w2z7vfh3o7DGEohSkFLCzI2HLb1mkfVdNOR0
	Q7xGQZenpr+7QDue4emw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk74y-0000000FvpC-0ruH;
	Wed, 15 Jul 2026 21:23:44 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk74u-0000000Fvns-0bj3
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 21:23:42 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c160e831693so102400766b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 14:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784150618; cv=none;
        d=google.com; s=arc-20260327;
        b=KilZF3ITlQdhky6R39k1Ebx8c6voxkNZahRiIt19urIuJSCUaqCwaEu9ZrqHHIwzud
         sGDwoydczhml0qSQbGcmTmjOwd4K0NjLNJgoXrDLYrbCt93QfzVHEGQz5lBVDLx+P68S
         kBVlIjZi68ef5gNKywJ/zd+BdqnWlNzDc4XlfX3/mL7oKGolGZJEkQ+YiD0cjfnuYrvv
         v8zbJM7YOW6RoOdea+HjkT4k8CJQWWNUxytRIVllmqoryqGltBcH9HvNmy33NSM1ndir
         r0tQBbRdwmxTwn+Kt+kyxHz9xcyLvHculx91PcOEZ5SDK23sDgDHKjhp2q0QNHveV1h6
         utiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VQDSv2OwEavGfPD7QFHW1wvt5oA5GKyg6BpElu5hA3g=;
        fh=Vj2ucdpS4jh5SzxJj+MeLqc4DAY6HzIQSMZ01vN58Vg=;
        b=aFTP54n3JYgPUxJU8jPMXn/jujIFgThw46E/IeI46AQe8y5JL/uFIWbRpUZLnmS1j3
         s+KIYM5grzNi3rDBgB/+Zp3kb9pBXSLpIfCo/X871oTYNg+cnPp6126bDFoh052CkJ3c
         i2E1Bxwf/jYJXF75GeyN+zcmNg2LVYTODUUsIY6WO0ARmC1r5bWSuB4GJRl9t4Bqpvdl
         hisfYeGRxzu9Ijbz53ihxF4g4sMcrp5KBhYW7K9SmllPpo7LApO1Xgt92wtOvH8wghWz
         lhJpjJ258xrjo8BiZ24Q52jGolko2pkeI27WMPsAP6cCtQPQNHV2Zn8WAQrastFrbXvO
         +JHw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784150618; x=1784755418; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VQDSv2OwEavGfPD7QFHW1wvt5oA5GKyg6BpElu5hA3g=;
        b=df1ajmtSe31lxe3O0WrgWUVpvqUD3+QxxGPOKhAv9TndVuoRyu1Ez/RZcvKkyX4DqL
         so7kzCiTDzqOy8R94J77sC9SYWJIlxK4YISKWAuNfc36GdcUyz6oQl4kxM7vbclEt1fB
         ppFBKTcaZck+1n/r5eftdZJ0fooq5jgvJV9wHCkWFYQM5fUtBDokHXCMld73/27+Oca6
         sgBF4v++PiQgW0SKJWLu8eEYLucSescWdI8X+QijVnZPhn0KAnX0vV83FkQ7tpG6oNZF
         xmegGzcfCqzBG9Ycfgogs+6KdKG8LfA/aO81iylpX+MYdA3m/ySGW08X35K39yw2fZkj
         JykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784150618; x=1784755418;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VQDSv2OwEavGfPD7QFHW1wvt5oA5GKyg6BpElu5hA3g=;
        b=CJM+9DEOIoY27vh4otCh992Kx6sdrQH/mYCw9JZrLqjwzzDckVoDZy6h4xOKqcll6M
         0npn+CpLnt8Yuo8VnQYUf0YvE6pYxAQCdRHQoDh1Y5L8QCxu5dRlx3pjlKkwdB7+ZV/N
         pxTS05Khu0gNwuzyC3TTdqoEUCX5A/qf2T2yxrOQI2y/b0vTP6DZInTSiumEmRBEmGKl
         Qk/oQHDswFTYcKCGLc7e89shcKc4E/kLQElzOc7L09IdfQng5sCb2N/8uImp2/YY9z4E
         da4Gb2WHg2QdXhIDWVGYv/ltKsB7pE6ojWge0tC6bSImXdzZDt/0sS3PYo3a4/Jt5fs+
         rCSA==
X-Forwarded-Encrypted: i=1; AHgh+Ro5uAmgKaTfqUDMIFgYR4vu7OsHDfAoDrzRjacOyIOm0DOkYssaabtdmZrP5MHB/vtacWxxMiTbhxJ6PoejPw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyTm4fLcj0ixonc1e5zYMxAaxBvGh3nSL2f1beSLypUd7VCt8h/
	hXVraNkKjG9H+I2qB8tIWTlCUnM2VfWClD4LpW9QNem7YT83BiWFs8tNFL3n5eDHFIeLOtCyQun
	9rX1TW7jY3z4HaEDWoiVs0CajrtBusDM=
X-Gm-Gg: AfdE7ckhsOr0xrI76Fm/iq6vbnvxRGy+3CecX4VZWgVdvserVmA9lmUg20CKlTB8u3i
	QP/4xGqfc7ViJiMlNqW9gjfL+JHlWvH4syU+6ih+jXnRfD80TyjaJYuAoqEUUcjkGh5plep3pjs
	A5ZkW6CyT1rI7zoWcussAd9X5bJnM21o2FdLpAYTxZc1272Au7ifzRFX7JC/ShdZNfmPI12GwEw
	ClBZLlBhTB0Z8IPr+WShZVLFM44mF27if1yLVUoBv/Yp3aPJBDJ7MD3WE4Sp+RA
X-Received: by 2002:a17:907:9622:b0:c12:da4a:97d5 with SMTP id
 a640c23a62f3a-c161f404f86mr992959166b.50.1784150617701; Wed, 15 Jul 2026
 14:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-8-coiaprant@gmail.com>
 <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com> <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
 <1d92078f-3009-43d1-a228-c3e67a1f4f4c@lunn.ch>
In-Reply-To: <1d92078f-3009-43d1-a228-c3e67a1f4f4c@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 05:23:26 +0800
X-Gm-Features: AUfX_mxzLgLRVJ8_d4XQuIss8MuWS0O5h7pFciiDmngjjPthH3hDcKxQHuYBdj4
Message-ID: <CALj3r0gBnyEVwo3rK-dKssYN9F4nFn93QJ24FVv8YBLjNNgPmg@mail.gmail.com>
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org, davem@davemloft.net, 
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_142340_585105_E1B9DC11 
X-CRM114-Status: GOOD (  27.16  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0N+aciDE25pel5ZGo5ZubIDAz
OjU35YaZ6YGT77yaCj4KPiA+IFRoaXMgaXMgaW50ZW50aW9uYWwuIFRoZSBTZXJEZXMgaXMgYXR0
YWNoZWQgdG8gdGhlIFhQQ1Mgbm9kZSBiZWNhdXNlCj4gPiBvbiBSSzM1NjgsIGEgc2luZ2xlIFNl
ckRlcyBzZXJ2ZXMgYWxsIGZvdXIgWFBDUyBNSUkgcG9ydHMgaW4gUVNHTUlJCj4gPiBtb2RlLgo+
Cj4gVGhpcyBpcyBub3QgdGhlIG9ubHkgZGV2aWNlIHN1cHBvcnRpbmcgUVNHTUlJLCBhbmQgc28g
dGhlIGlzc3VlcyB5b3UKPiBhcmUgYWRkcmVzc2luZyBzaG91bGQgYmUgY29tbW9uIHRvIG1hbnkg
UVNHTUlJIGltcGxlbWVudGF0aW9ucy4KPgo+IFBsZWFzZSB0YWtlIGEgc3RlcCBiYWNrLiBXaGF0
IHdvdWxkIGEgZ2VuZXJpYyBzb2x1dGlvbiBsb29rIGxpa2U/Cj4KPiBDYW4gdGhlIHJlZmVyZW5j
ZSBjb3VudGluZyBiZSBwbGFjZWQgaW50byB0aGUgY29yZSBzb21ld2hlcmU/IFRoZQo+IGNvbW1v
biBjbG9jayBmcmFtZXdvcmsgYWxsb3dzIGEgY2xvY2sgdG8gYmUgZW5hYmxlZCBhbmQgZGlzYWJs
ZWQgYnkKPiBtdWx0aXBsZSBjb25zdW1lcnMsIGFuZCB0aGUgY29yZSBjbG9jayBjb2RlIGRvZXMg
dGhlIHJlZmVyZW5jZQo+IGNvdW50aW5nLCBvbmx5IGNhbGxpbmcgaW50byB0aGUgY2xvY2sgZHJp
dmVyIHdoZW4gc3RhdGUgY2hhbmdlIGlzCj4gYWN0dWFsbHkgbmVlZGVkLiBNYXliZSB0aGUgZ2Vu
ZXJpYyBQSFkgY29yZSBuZWVkcyBzb21ldGhpbmcgc2ltaWxhcj8KPgo+ICAgICAgICAgQW5kcmV3
CgpPbiBUaHUsIEp1bCAxNiwgMjAyNiBhdCAwMzo1NzoyMkFNICswMjAwLCBBbmRyZXcgTHVubiB3
cm90ZToKPiA+IFRoaXMgaXMgaW50ZW50aW9uYWwuIFRoZSBTZXJEZXMgaXMgYXR0YWNoZWQgdG8g
dGhlIFhQQ1Mgbm9kZSBiZWNhdXNlCj4gPiBvbiBSSzM1NjgsIGEgc2luZ2xlIFNlckRlcyBzZXJ2
ZXMgYWxsIGZvdXIgWFBDUyBNSUkgcG9ydHMgaW4gUVNHTUlJCj4gPiBtb2RlLgo+Cj4gVGhpcyBp
cyBub3QgdGhlIG9ubHkgZGV2aWNlIHN1cHBvcnRpbmcgUVNHTUlJLCBhbmQgc28gdGhlIGlzc3Vl
cyB5b3UKPiBhcmUgYWRkcmVzc2luZyBzaG91bGQgYmUgY29tbW9uIHRvIG1hbnkgUVNHTUlJIGlt
cGxlbWVudGF0aW9ucy4KPgo+IFBsZWFzZSB0YWtlIGEgc3RlcCBiYWNrLiBXaGF0IHdvdWxkIGEg
Z2VuZXJpYyBzb2x1dGlvbiBsb29rIGxpa2U/Cj4KPiBDYW4gdGhlIHJlZmVyZW5jZSBjb3VudGlu
ZyBiZSBwbGFjZWQgaW50byB0aGUgY29yZSBzb21ld2hlcmU/IFRoZQo+IGNvbW1vbiBjbG9jayBm
cmFtZXdvcmsgYWxsb3dzIGEgY2xvY2sgdG8gYmUgZW5hYmxlZCBhbmQgZGlzYWJsZWQgYnkKPiBt
dWx0aXBsZSBjb25zdW1lcnMsIGFuZCB0aGUgY29yZSBjbG9jayBjb2RlIGRvZXMgdGhlIHJlZmVy
ZW5jZQo+IGNvdW50aW5nLCBvbmx5IGNhbGxpbmcgaW50byB0aGUgY2xvY2sgZHJpdmVyIHdoZW4g
c3RhdGUgY2hhbmdlIGlzCj4gYWN0dWFsbHkgbmVlZGVkLiBNYXliZSB0aGUgZ2VuZXJpYyBQSFkg
Y29yZSBuZWVkcyBzb21ldGhpbmcgc2ltaWxhcj8KCkhpIEFuZHJldywKClRoYW5rcyBmb3IgdGhl
IHRob3VnaHRmdWwgcXVlc3Rpb24uIExldCBtZSB3YWxrIHRocm91Z2ggdGhlIGRlc2lnbgpjb25z
dHJhaW50cyBvbiBSSzM1NjggYW5kIGV4cGxhaW4gd2h5IEkgY2hvc2UgdGhlIGN1cnJlbnQgYXBw
cm9hY2guCgpGaXJzdCwgSSB3YW50IHRvIGVtcGhhc2l6ZSB0aGF0IHRoaXMgaXMgc3RpbGwgUkZD
LCBzbyB0aGUgYmluZGluZyBpcyBub3QKZnJvemVuLiBIb3dldmVyLCBEVCBpcyBBQkkgb25jZSBt
ZXJnZWQsIGFuZCBjaGFuZ2luZyBpdCBsYXRlciBpcyBwYWluZnVsCmFuZCBvZnRlbiByZXF1aXJl
cyBtYWludGFpbmluZyBjb21wYXRpYmlsaXR5IHdpdGggb2xkIGJpbmRpbmdzLiBTbyBJCndvdWxk
IGxpa2UgdG8gYmUgY2FyZWZ1bCBhYm91dCB0aGUgYXJjaGl0ZWN0dXJlIHdlIHNldHRsZSBvbi4K
ClRoZSBjdXJyZW50IGRlc2lnbgo9PT09PT09PT09PT09PT09PT0KVGhlIGRlcGVuZGVuY3kgY2hh
aW4gSSBjaG9zZSBpcyBzaW1wbGU6CgogICAgc3RtbWFjIChHTUFDKSAtPiBwY3MtaGFuZGxlIC0+
IFhQQ1Mgbm9kZSAtPiBwaHlzIC0+IFNlckRlcyBQSFkKClRoZSBYUENTIGRyaXZlciBpcyB0aGUg
c2luZ2xlIG93bmVyIG9mIGJvdGggdGhlIFNlckRlcyBQSFkgYW5kIHRoZQpwb3dlciBkb21haW4u
IFRoZSBNQUMgZHJpdmVyIGRvZXNuJ3QgbmVlZCB0byBrbm93IGFib3V0IHRoZW0gYXQgYWxsLgoK
T24gUkszNTY4LCBwaHlfcG93ZXJfb24oKSBpcyBlZmZlY3RpdmVseSBhIG5vLW9wIGZvciB0aGUg
Q29tYm8gUEhZIGluClNHTUlJIG1vZGU7IG9ubHkgcGh5X2luaXQoKSBpcyByZXF1aXJlZC4gU28g
dGhlIFBIWSBpcyBub3QgYQpwb3dlci1jb250cm9sbGVkIHJlc291cmNlIOKAlCBpdCdzIGp1c3Qg
YSBvbmUtdGltZSBpbml0aWFsaXphdGlvbi4KClBvd2VyIGRvbWFpbiBtYW5hZ2VtZW50IGlzIGhh
bmRsZWQgdmlhIFBNIHJ1bnRpbWU6CiAgICAtIFhQQ1MgcHJvYmU6IGRldl9wbV9nZW5wZF9ycG1f
YWx3YXlzX29uKCkgZW5zdXJlcyBQRF9QSVBFIGlzIHBvd2VyZWQKICAgICAgKHRoaXMgYWxsb3dz
IHVzIHRvIHVzZSBQTSB0byBtYW5hZ2UgY3NyX2NsaykKICAgIC0gRWFjaCByZWdpc3RlciBhY2Nl
c3M6IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoKS9wdXQoKSBjb250cm9scwogICAgICB0aGUg
Q1NSIGNsb2NrCgpUaGlzIGlzIHRoZSBzaW1wbGVzdCBtb2RlbCB0aGF0IHdvcmtzIGZvciBTR01J
SS9RU0dNSUkgdG9kYXkuCgpXaHkgbm90IG1vdmUgU2VyRGVzIHRvIHN0bW1hYz8KPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09CklmIHdlIG1vdmUgU2VyRGVzIGFuZCBwb3dlciBkb21haW4g
Y29udHJvbCB0byB0aGUgTUFDIGRyaXZlciwgd2UKcnVuIGludG8gc2V2ZXJhbCBwcm9ibGVtczoK
CjEuIFJlZmVyZW5jZSBjb3VudGluZyBmb3IgcGh5X2luaXQoKS9waHlfZXhpdCgpOiBpbiBRU0dN
SUkgbW9kZSwgZm91cgogICBNQUNzIHdvdWxkIGFsbCBjYWxsIHBoeV9pbml0KCkgb24gdGhlIHNh
bWUgaGFyZHdhcmUuIFRoZSBnZW5lcmljIFBIWQogICBjb3JlIGRvZXMgbm90IGN1cnJlbnRseSBw
cm92aWRlIHJlZmVyZW5jZSBjb3VudGluZyBmb3IgdGhlc2UgY2FsbHMuCiAgIEFkZGluZyBpdCB3
b3VsZCBiZSBhIGxhcmdlciBjaGFuZ2UgYWZmZWN0aW5nIGFsbCBQSFkgdXNlcnMuCgoyLiBVc2Vy
IG1pc2NvbmZpZ3VyYXRpb246IGV2ZW4gd2l0aCByZWZlcmVuY2UgY291bnRpbmcsIGlmIGEgdXNl
ciBzZXRzCiAgIGBwaHlzID0gPCZjb21icGh5MiBQSFlfVFlQRV9TR01JST5gIGZvciBHTUFDMCBh
bmQKICAgYHBoeXMgPSA8JmNvbWJwaHkyIFBIWV9UWVBFX1FTR01JST5gIGZvciBHTUFDMSwgdGhl
IHNhbWUgUEhZIHdvdWxkCiAgIGJlIGluaXRpYWxpemVkIGluIHR3byBkaWZmZXJlbnQgbW9kZXMu
CgozLiBUaGUgc3RtbWFjIFNlckRlcyBjYWxsYmFja3MgYXJlIGxlZ2FjeTogdGhlIGV4aXN0aW5n
CiAgIHNlcmRlc19wb3dlcm9uL3NlcmRlc19wb3dlcmRvd24gaG9va3MgYXJlIGNhbGxlZCBmcm9t
CiAgIHN0bW1hY19sZWdhY3lfc2VyZGVzX3Bvd2VyX29uL2Rvd24gZnVuY3Rpb25zLiBUaGV5IGFy
ZSBtYXJrZWQgYXMKICAgbGVnYWN5IGFuZCBub3QgaW50ZW5kZWQgZm9yIG5ldyBoYXJkd2FyZSBk
ZXNpZ25zLiBCdWlsZGluZyBuZXcKICAgc3VwcG9ydCBvbiB0b3Agb2YgbGVnYWN5IEFQSXMgc2Vl
bXMgbGlrZSB0aGUgd3JvbmcgZGlyZWN0aW9uLgoKQ3VycmVudCBRU0dNSUkgdXNhZ2Ugb24gUksz
NTY4Cj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KSSBzZWFyY2hlZCBPcGVuV3J0LCBB
cm1iaWFuLCBJbW1vcnRhbFdydCwgYW5kIEdpdEh1YiBmb3IgYW55IGFjdHVhbApkZXZpY2UgdXNp
bmcgInJvY2tjaGlwLHJrMzU2OC14cGNzIiB3aXRoIFFTR01JSSBhbmQgZm91bmQgbm9uZS4gSXQg
c2VlbXMKUVNHTUlJIG9uIFJLMzU2OCBpcyBsaW1pdGVkIHRvIHNwZWNpYWxpemVkIGV2YWx1YXRp
b24gYm9hcmRzIG9yIG5pY2hlCmluZHVzdHJpYWwgYXBwbGljYXRpb25zLiBFdmVuIFNHTUlJIHVz
ZXJzIGFyZSByYXJlIOKAlCBtb3N0IGJvYXJkcyB1c2UKUkdNSUkgc2ltcGx5IGJlY2F1c2UgdGhl
IHBpbnMgY2Fubm90IGJlIHJlcHVycG9zZWQuCgpJZiBRU0dNSUkgZG9lcyBiZWNvbWUgYSByZWFs
IHJlcXVpcmVtZW50IGluIHRoZSBmdXR1cmUsIHRoZSBnZW5lcmljIFBIWQpjb3JlIGNvdWxkIGJl
IGV4dGVuZGVkIHdpdGggcmVmZXJlbmNlIGNvdW50aW5nIGZvciBwaHlfaW5pdCgpL3BoeV9leGl0
KCkuClRoYXQgd291bGQgYmUgYSBjbGVhbmVyIHNvbHV0aW9uIHRoYW4gcHVzaGluZyBTZXJEZXMg
bWFuYWdlbWVudCBpbnRvIGVhY2gKTUFDIGRyaXZlciwgYW5kIHdvdWxkIGJlbmVmaXQgYWxsIHBs
YXRmb3JtcyB3aXRoIHNoYXJlZCBTZXJEZXMgcmVzb3VyY2VzLgoKVGhhdCBzYWlkLCBJIGhhZCBh
biBlYXJsaWVyIHRlc3Qgd2l0aCBzZXJkZXNfcG93ZXJvbi9zZXJkZXNfcG93ZXJkb3duCmNhbGxi
YWNrcyBpbiBzdG1tYWMsIHNvIGlmIHRoZSBjb21tdW5pdHkgc3Ryb25nbHkgcHJlZmVycyB0byBt
b3ZlClNlckRlcyBjb250cm9sIHRvIGR3bWFjLXJrLCBJIGNhbiBkbyB0aGF0IGluIHYyLgoKQnV0
IG15IHByZWZlcmVuY2UgaXMgdG8ga2VlcCB0aGUgY3VycmVudCBkZXNpZ246IFhQQ1MgYXMgdGhl
IHNpbmdsZQpvd25lciBvZiB0aGUgU2VyRGVzIGFuZCBwb3dlciBkb21haW4uIEl0IHdvcmtzIHRv
ZGF5LCBrZWVwcyB0aGUgRFQKYmluZGluZyBzdGFibGUgZm9yIGZ1dHVyZSBRU0dNSUksIGFuZCBh
dm9pZHMgY29tcGxleGl0eS4KCkRvIHlvdSB0aGluayB0aGUgZ2VuZXJpYyBQSFkgY29yZSBzaG91
bGQgZ3JvdyByZWZlcmVuY2UgY291bnRpbmcgZm9yCnBoeV9pbml0KCkvcGh5X2V4aXQoKT8gT3Ig
d291bGQgeW91IHByZWZlciB0byBzZWUgYSBtb3JlIGdlbmVyaWMKYWJzdHJhY3Rpb24gZm9yIHNo
YXJlZCBTZXJEZXMgcmVzb3VyY2VzPwoKVGhhbmtzLApDb2lhCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
