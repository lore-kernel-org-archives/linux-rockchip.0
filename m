Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4936606A31D
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 05:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ns/Eb2Oc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=JlsCa+ic
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Af4Hqrzhq8yuyoqTQxcRxPngKpxhKNGbmGHtcwh2P6E=; b=ns/Eb2Ocv/L7fU64b4Y5DyYT7e
	QoUQ8NlwgZ2TEn8dA4KwiZFy1KFlqPEktUL9qM9aEwwoCoeNc9KTe5QSwnStUkTMHDJ/u5OPaaxeB
	dikqDdLkyZTKpl77kdtxkiQoTgAS0hhojE6Q8aqMoIOn416ZmZuOUCxT/Cmg1uDvnj2OcxWmp6lhE
	DMlt//UZ744iA20/dix931YfBavSsc0Az/FhinMvnuIq8ZSZbEKkYAGYYoCu0hejM3r8HxVyHWeuo
	2aZ15xL4Hj0xR8+1hkV3AZtRRimj+Gtw3j+N8PqKoUbSo+qCvBOi+D2dQPMGxa4QMMZKCjIgtkTNN
	CcAe1SEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMejk-0000000Aq4u-1zMW;
	Fri, 30 Oct 2026 05:01:08 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMejg-0000000Aq31-3P9E
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 05:01:06 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-539a57a0b1fso100509b6e.2
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 22:01:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793336463; cv=none;
        d=google.com; s=arc-20260327;
        b=bG7hJ6I88mI5Su5Scgwuu+rywSuwPCFV/bFeDqWm94BDudHAZi8wOY1EyAcOiK3H9Q
         u3LX2PX0gtgvK0URc/XMr5dbB52Bvrwqp9RLMmd6Eg0TMgx0DYLmQ2PByRGDm/+AZVGN
         WK9v5tpMiG/uo7b+0y9u3bkGSYXX0+d87W7ukGtw2pSVvjnDRsD6Sdi7sk8vQjlUpd3A
         GUxDLgy5FEnVZ1W6iqidOR88TDC7dtY8DthThgfaxqQInlJPhfM7mJTMTYtCPWof0jTF
         R1vknU3k6T+XDRHIhAzviA4RiMjYTrd/xd3wXXiXtA/vooAyW/SZBNn0LRSS0KxvLtql
         bOhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jVHkdup9h6VAyVXa9WHVnyDXMjAy2tnvxXwmB5v5HJk=;
        fh=z6+PL6QPlXI0ZAUjfcSk3flH8dRxiYvfJd0zfy5wnAk=;
        b=lo2cuv26ILbVxGYEYsn3SSohizOcnCpQuz9h54sD8LuDK3YI1nAvSlTzqjUAH9VzQp
         3+YYUDT0lFr6RQ6JtvStUF0re6SZ/fZfbyoTNYz3H2OfFpS8FhT6YwtcJWmVJ26GaP+R
         FgDO9yfCLmw58DRBUrO7co0du05UErstkL0AaJPsbTlucf5q2FTZeLwYas13PTY0aP2s
         /3RxzDqMfRzgXFilV5ABOQ7vocG+xa/MCFlECanYGRpfx20Gy3ZJe0pBVliTLy6S7lCO
         7Sli9B1evokVNexOvPFr3AOWChveJ73vrpn+2Q5SW2CRk2eUvZ0XfgteI+uCAnWBfYbM
         9SYg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793336463; x=1793941263; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jVHkdup9h6VAyVXa9WHVnyDXMjAy2tnvxXwmB5v5HJk=;
        b=JlsCa+ic4F4uxmDww8omLjar8vMLV9JTCA3LGu3dgJ5J8g5kWLsYMamBs3TbatQRIi
         Fhjbx/Za7EfRA8y73kJydl9ofFmQ7KvM8sOibWOWq8quFbRXG9a1YTy9cz9eij/qlw2Y
         +5gtRj3m1yWALPcL5oWIWdlGi8HETwEQdDkTVMOi2trQEcXKdjAg2HJ+HTcfN8dyfuTL
         BkDdBNkn0AK0048+7tZJgGQLQb4o4Un14UnMjPu/9Ut1MiIQEF2aRnGL5kRUkMoF99QT
         B7EoeghtAY4wj1EP8iutDVRuK0uUhpOP8PPLffCWparcwWqJY0Gl5ZVwjsF6R5OL7fn6
         xDWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793336463; x=1793941263;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jVHkdup9h6VAyVXa9WHVnyDXMjAy2tnvxXwmB5v5HJk=;
        b=F7U32ZAbZLkE4C5ncWHv+Ea4xMdKX/jjEKInaz9lu9AsjeJbRCuKbDOEpcnVmw1jHg
         Eyrhkis2dkj1ISfrwhPcsPuykRjxzM0FE8WGoHZMDizJkr5V82N5Odz5MvqDDSx7hs29
         VOdfhtgqKkmPofGAEsv5+Om3P0ekANM+eZoXLCA+LJtrWFxnQgMQL8KcsDyb38UxqRKa
         yqEk4iv9duEvd7dJb2R53I9amxoHiWj5dLy0/F9uPFxWTZ7/2uOq1bIypRCifB9axg0a
         7AAZ8R8XUYHM2Osuab24xce9I5Ejjl/VVFCE9AD2R1Fxxj/rwG0hO4WtCoqRUY+AXzLV
         tsjg==
X-Forwarded-Encrypted: i=1; AKwUvBw8KD5K+oAghonOlDcO/wSI28GNg4kyE7kdeVmbUnwCF+451dTi2iiVAnHr4ItzlRDBRc2jk1SW/dDz6VoaLg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ7eHXOBhHGvWN3WKcLrb2phXH0G5wPnWXxOROqMoXgQ91/4tS+
	gWOTflAr/ExZ+LxMFzvHZGpnnb2Mx21pml1ydMIDH+lyDE5lGZX0UJ9yFnkBE6uhjpMMu8bz8ds
	kA1+vtiKx728hgon6J2KsanGiRVKqHw0K/opI
X-Gm-Gg: AYBFou3AjcwJ56qyNnr+T1F4Zb5nERtwzp2lK7VJxfRpCI4KDmQwZ4Y9Jm65nBlniNs
	Tv8iXLIfol4ikWFZQaAWk5AlIfkE7Y2ki0AqoefaTKwbbsJOcYgTf/IgncRGVo4PgoIdXJhTJK1
	OfLc8WSdEiUn4oIv5nDqUR0qcYI/47Z17V839ecjS34brj2a/yIs4OMscTuAHpB7Te3AFRlKkdZ
	jjCSzhSNjkbTCn8M8FknwxV8k6WTWBBQBEfTKhCfqFTD6R2kmbKEWQgHoQCNveSnHZ6KRZak3uR
	1FRtOePbrSq1y8flEvyLYhNYwZkKY8CR0+sAb1RakoXRsmGOx9QXzwFLldQHr/f9QfhRwuEWiJO
	pM/mY3snbYtosMIv+N4tZ/oOUVRi9ah4o/cdPoFf1duxPsxmD5DrPYu8Yv0LUHCiYwjFQMA==
X-Received: by 2002:a05:6808:c122:b0:55e:fa63:7001 with SMTP id
 5614622812f47-5640ddca9edmr954504b6e.36.1793336462734; Thu, 29 Oct 2026
 22:01:02 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20260901234351.190506-1-anarsoul@gmail.com> <CAKTNdwFqSBt4QVCuYJxTyEDsxkW96JbUirFNAgJYWVLHzGpk4A@mail.gmail.com>
 <CA+E=qVcizyQZytw8M6DA72YGrRDDNx_cCvYj565zf9wjMWh8tg@mail.gmail.com>
 <CAKTNdwFQvKtHQA0JD-GAq3bgr5Brq2NyLfccenkHcrKcjeptwg@mail.gmail.com>
 <CA+E=qVcwtnU_Gg6_oFmWqMpCEF8vOvB_G+H-ihfbiAr0PpFUJw@mail.gmail.com> <CAKTNdwGTacFvn5BEN+iu0OBG2BUas7Vfj=YYF8OhAhNq-9kmyg@mail.gmail.com>
In-Reply-To: <CAKTNdwGTacFvn5BEN+iu0OBG2BUas7Vfj=YYF8OhAhNq-9kmyg@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 29 Oct 2026 22:00:36 -0700
X-Gm-Features: AclHuK91Kq4AK7MRfCEoN-bxDWWEQLSESXtbozHlwJea6SWMh0uWvQ7bm47NBQ0
Message-ID: <CA+E=qVf=oBf9a=nrN-F2gGGY60+Gfuj3NMvuW4pWAdbU6NKceA@mail.gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: rk3399: add 85.5 MHz rate to PLL rate table
To: Alexey Charkov <alchark@flipper.net>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_220104_851763_AC0CC22C 
X-CRM114-Status: GOOD (  33.62  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU2F0LCBTZXAgNSwgMjAyNiBhdCAxMTozMeKAr1BNIEFsZXhleSBDaGFya292IDxhbGNoYXJr
QGZsaXBwZXIubmV0PiB3cm90ZToKPiA+ID4gSSBiZWxpZXZlIHNvbWV0aGluZyBpcyBoYXJkY29k
aW5nIHRoZSBkaXZpc29yIChvciBsZWF2aW5nIGl0IGF0IHRoZQo+ID4gPiBwb3dlci1vbiBkZWZh
dWx0KSBpbiB0aGUgYWN0dWFsIERDTEsgb2YgYSBWT1Agd2hpY2ggdGhlIEhETUkKPiA+ID4gY29u
dHJvbGxlciB1c2VzLCBpbnN0ZWFkIG9mIG1vZGVsbGluZyBpdCBwcm9wZXJseSBhcyBhIG11eCAo
ZnJhYy9kaXYpCj4gPiA+IGZlZWRpbmcgb2ZmIFZQTEwgdmlhIGFub3RoZXIgbXV4IC0gYm90aCBw
ZXJmZWN0bHkgcmVwcmVzZW50YWJsZSBpbiB0aGUKPiA+ID4gY2xvY2sgZnJhbWV3b3JrIGFuZCBh
bHJlYWR5IGVudmlzYWdlZCBpbiB0aGUgY2xvY2sgZHJpdmVyLCBtYWtpbmcgdGhlCj4gPiA+IFBM
TCB0YWJsZSBwYXRjaGluZyB1bm5lY2Vzc2FyeS4KPiA+ID4KPiA+ID4gQ2FuIHlvdSBwbGVhc2Ug
dHJ5IHJlLXBvaW50aW5nIHRoZSAicmVmIiBjbG9jayBhdCBEQ0xLX1ZPUDAgKG9yIDEsCj4gPiA+
IGRlcGVuZGluZyBvbiB3aGljaCBvbmUgeW91ciBIRE1JIGNvbnRyb2xsZXIgdXNlcyk/IFlvdXIg
Y2xvY2sgc3VtbWFyeQo+ID4gPiBhbHJlYWR5IHNob3dzIHRoYXQgc29tZXRoaW5nIGlzIGFzc2ln
bmluZyBpdHMgcGFyZW50IHRvIERDTEtfVk9QeF9ESVYKPiA+ID4gYW5kIHRoZSBsYXR0ZXIncyBw
YXJlbnQgdG8gUExMX1ZQTEwsIHNvIHJhdGUgY2hhbmdlcyB0aGUgY3VycmVudAo+ID4gPiBkcml2
ZXIgY29kZSBkb2VzIG9uIFZQTEwgcHJvcGFnYXRlIHRvIHRoZSBtdXhlZCBhbmQgZGl2aWRlZCBk
b3duc3RyZWFtCj4gPiA+IGNvbnN1bWVyIGFzIGEgc2lkZS1lZmZlY3QgcmF0aGVyIHRoYW4gYXMg
YW4gYWN0dWFsIHJhdGUgcmVxdWVzdC4KPiA+Cj4gPiBJIGRvbid0IHRoaW5rIGl0IGlzIGEgcmVh
c29uYWJsZSBhc2suIFdyb25nIGNsb2NrIGZvciB0aGUgSERNSSBlbmNvZGVyCj4gPiB3b3VsZCBq
dXN0IHJlc3VsdCBpbiBub24td29ya2luZyBIRE1JIG91dHB1dCBhbmQgbm8gZmVhc2libGUgd2F5
IGZvcgo+ID4gbWUgdG8gZGVidWcgd2hhdCBpcyB3cm9uZy4KPgo+IEhvcGUgeW91IGhhdmUgYSBz
ZXJpYWwgY29uc29sZSBvciBzc2ggY29ubmVjdGlvbiB0byB0aGUgYm9hcmQuIElmIGl0Cj4gZG9l
c24ndCB3b3JrIHlvdSdsbCBrbm93IHNvb24gZW5vdWdoLgo+Cj4gV2hhdCBJJ20gcG9pbnRpbmcg
b3V0IGlzIHRoYXQgdGhlIGNsb2NrIHNldHVwIGltcGxpZWQgYnkgdGhlIGN1cnJlbnQKPiBkdHNp
IGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNlOiBWT1AncyBkY2xrIGlzIGRyaXZlbiBvZmYgVlBMTCB2
aWEgYSBtdXgKPiBhbmQgZGl2aXNvci4gSWYgdGhlIGVuY29kZXIncyBwaXhlbCBjbG9jayBpcyB0
cnVseSBkcml2ZW4gZGlyZWN0bHkgb2ZmCj4gVlBMTCB0aGVuIFJvY2tjaGlwIGRlc2lnbmVkIHRo
ZSBtdXhlcyBhbmQgZGl2aWRlcnMgZm9yIG5vdGhpbmcsIGFzCj4gdGhleSB3aWxsIGFsd2F5cyBi
ZSBuby1vcHMuIFRoaXMgZG9lc24ndCBzcXVhcmUsIHNvIHNvbWV0aGluZyBtdXN0IGJlCj4gd3Jv
bmcsIGFuZCBJIGJlbGlldmUgaXQncyB0aGUgZHRzaS4KPgo+IEknbGwgYmUgaGFwcHkgdG8gYmUg
cHJvdmVuIHdyb25nIGhlcmUuCgpIZXkgQWxleGV5LAoKU29ycnkgZm9yIHRoZSBsb25nIGRlbGF5
IC0gTlZNZSBpbiBteSBsYXB0b3AgZGllZCBhbmQgSSBoYWQgdG8gd2FpdApmb3IgYSB3YXJyYW50
eSByZXBsYWNlbWVudCB0byBhcnJpdmUuIEkgd291bGQgaGF2ZSBib3VnaHQgYSBuZXcgb25lIGlm
CnRoZSBwcmljZSB3YXNuJ3QgcmlkaWN1bG91cyA6KQoKVGhlIGR0c2kgZGVzY3JpYmVzIHRoZSBo
YXJkd2FyZSBjb3JyZWN0bHkuIFRoZSBIRE1JIFBIWSdzIHJlZmVyZW5jZQpjbG9jayBpbnB1dCAo
VFJNIFBhcnQgMSwgMS4xLjExOiAiMTMuNS02MDBNSHogaW5wdXQgcmVmZXJlbmNlIGNsb2NrIikK
aXMgd2lyZWQgdG8gVlBMTCB3aXRoIG5vIG11eCBvciBkaXZpZGVyIGluIGJldHdlZW47IGl0IGlz
IG5vdCBvbmUgb2YKdGhlIENSVSBjbG9ja3MgaW4gdGhlIFRSTSdzIGNsb2NrIHRyZWUgYXQgYWxs
LgoKVGhhdCdzIGV4YWN0bHkgd2hhdCB0aGUgY29tbWl0IHRoYXQgaW50cm9kdWNlZCB0aGUgInZw
bGwiIGNsb2NrIHNheXMsCmZyb20gUm9ja2NoaXAncyBvd24gZW5naW5lZXJzLCBzZWUgNWUzYmM2
ZDFhYjQ4ICgiZHJtL3JvY2tjaGlwOgpkd19oZG1pOiBpbnRyb2R1Y2UgdGhlIFZQTEwgY2xvY2sg
c2V0dGluZyIpCgpUaGlzIGJ1ZyByZXBvcnQgaXRzZWxmIGlzIGEgc29saWQgcHJvb2Ygb2YgdGhp
cyB3aXJpbmcuIFdpdGggVlBMTCBsZWZ0CmF0IDc0LjI1IE1IeiBhbmQgdGhlIFZPUCBvbiBHUExM
LzcgPSA4NC44NTcgTUh6LCB0aGUgbW9uaXRvciByZXBvcnRlZAp0aGUgbW9kZSBhcyAxMTk1eDc2
OC4gNzQuMjUvODQuODU3ID0gMC44NzUsIGFuZCAxMzY2ICogMC44NzUgPSAxMTk1LgpUaGUgVE1E
UyBjbG9jayBjYW1lIGZyb20gVlBMTCB3aGlsZSB0aGUgc3luYyB0aW1pbmcgY2FtZSBmcm9tIHRo
ZSBWT1AuCklmIHRoZSBQSFkgd2VyZSBjbG9ja2VkIGZyb20gdGhlIGRjbGsgbXV4IG91dHB1dCwg
dGhhdCBtaXNtYXRjaCBjb3VsZApub3QgZXhpc3QuCgpUaGUgbXV4IGFuZCBkaXZpZGVycyBhcmUg
bm90IGZvciBub3RoaW5nOiB0aGVyZSBpcyBvbmUgVlBMTCBhbmQgdHdvClZPUHMsIGFuZCBlYWNo
IFZPUCBjYW4gYWxzbyBkcml2ZSBlRFAsIE1JUEkgRFNJIGFuZCBEUCwgd2hvc2UgUEhZcwpoYXZl
IHRoZWlyIG93biBQTExzLiBXaGVuIFZPUEIgZHJpdmVzIEhETUkgZnJvbSBWUExMLzEsIFZPUEwg
aGFzIHRvCnJ1biBmcm9tIENQTEwgb3IgR1BMTCB0aHJvdWdoIHRoZSBkaXZpZGVyLCBhbmQgdGhl
IGZyYWN0aW9uYWwgZGl2aWRlcgpleGlzdHMgZm9yIERTSSBwYW5lbHMgd2l0aCBvZGQgcGl4ZWwg
Y2xvY2tzLiBGb3IgSERNSSB0aGUgZGl2aWRlciBpcwpsZWdpdGltYXRlbHkgMS4KClRoaXMgaXMg
YWxzbyB3aHkgdGhlIFBMTCB0YWJsZSBwYXRjaCBpcyBuZWVkZWQgdW5kZXIgYW55IHNjaGVtZTog
dGhlClJLMzM5OSBQTEwgZHJpdmVyIGlzIHRhYmxlLW9ubHkgKHJvY2tjaGlwX3BsbF9kZXRlcm1p
bmVfcmF0ZSgpIHNuYXBzCnRvIHRoZSBuZWFyZXN0IGxvd2VyIHRhYmxlIGVudHJ5KSwgYW5kIHRo
ZSBQSFkgcmVmZXJlbmNlIGhhcyB0byBiZQo4NS41IE1IeiBleGFjdGx5IGJlY2F1c2Ugbm90aGlu
ZyBiZXR3ZWVuIFZQTEwgYW5kIHRoZSBQSFkgY2FuIGRpdmlkZQppdC4KCkFuZCB0aGUgVk9QIHBh
dGNoIGRvZXNuJ3QgaGFyZGNvZGUgYSBkaXZpc29yLiBUaGUgVk9QIHN0aWxsIG1ha2VzIGEKcmVh
bCBjbGtfc2V0X3JhdGUoKSBvbiBpdHMgZGNsayBhdCBlbmFibGUgdGltZS4gVGhlIGJ1ZyB3YXMg
b3JkZXJpbmc6Cm1vZGVfZml4dXAoKSByb3VuZGVkIHRoZSBwaXhlbCBjbG9jayB0aHJvdWdoIHRo
ZSBkY2xrIHdoaWxlIFZQTEwgd2FzCnN0aWxsIGF0IGl0cyBvbGQgcmF0ZSwgc28gdGhlIGNvbXBv
c2l0ZSBjaG9zZSBHUExMLzcgYW5kIHRoZSBlbmNvZGVyCnRoZW4gYXNrZWQgVlBMTCBmb3IgODQu
ODU3IE1Ieiwgd2hpY2ggdGhlIHRhYmxlIHNuYXBwZWQgdG8gNzQuMjUgTUh6LgpXaXRoIFZQTEwg
cHJvZ3JhbW1lZCBmaXJzdCwgdGhlIGNvbXBvc2l0ZSBwaWNrcyBWUExMIHdpdGggZGl2aWRlciAx
CmJlY2F1c2UgaXQgaXMgdGhlIGV4YWN0IG1hdGNoLgoKUmVnYXJkcywKVmFzaWx5CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
