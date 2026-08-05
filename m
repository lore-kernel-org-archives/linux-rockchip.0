Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89243C55174
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 23:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usxwI1tA1nzZywB+IahecfbkA5obcrn9U7WVrapcMxc=; b=ehXgO5q2rhD4Lt
	yViJHrSqYOG0Dz3AnKto9WlSqY2fWX6z3/E6ILYwcjE1MjEbuiPfDwHg2ACW0pMoRYAW9KxkGMwRo
	dmPKiLSrqTOwiKr1hOfZTPEDPw3ZYvTuamzelqipPHWIsZA7jT/VURTqQaunjMA2+JZfRCWSifNIh
	O33lRTneprlehqWhGyReRdJU1Wr6UWB8E0GuUWCAn8hgVJV57VqDpoZdbG5gFbDKPRKXyxYJeiUCS
	cC/4w+ENB3XpevyeDN+d0s3Ea/4swppEiESv8f8lToPeti+K+lcTHxXXjga6AkQBPkzVUaCVlom05
	wwhYzWskD7LD51mUzjvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrkju-00000004dUJ-3W1n;
	Wed, 05 Aug 2026 23:09:34 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrkjs-00000004dTY-0nWn
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 23:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1785971369;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P5KkfoazfSd7LbFAmZXs7FVBEh30eBrbBqu13ZxDK8Q=;
	b=QKszLQKHTkqU8jIZFdAWkoirZQ7m0eacUrrlGq74E2I+MMeHzDgP6V5/jMfJYg4G1n7Lhq
	tQP8hHwn31Ri5umuGO2V3jXDC+Zf9j09nEqUh/OouZ9EDgjUTuM9Xq0TVgc+FNgJ5IGJMI
	bitEZL4vTdXArxvssBNBUkSS7cxEok4=
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com
 [74.125.224.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-554-mcV6x2mYMaKkhCGlNnQa6Q-1; Wed, 05 Aug 2026 19:09:27 -0400
X-MC-Unique: mcV6x2mYMaKkhCGlNnQa6Q-1
X-Mimecast-MFC-AGG-ID: mcV6x2mYMaKkhCGlNnQa6Q_1785971367
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-669864510f5so1732930d50.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 16:09:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785971367; x=1786576167;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:content-type:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=P5KkfoazfSd7LbFAmZXs7FVBEh30eBrbBqu13ZxDK8Q=;
        b=XWqs2gihGm9zDQZcJTmQviopfLGBnahwtVUyAFfeXcQCLMtlo1j3/U72n0h+Id66K/
         HWiVV2hm0IoONBEGPv3DclmntelgCMHnX8j7IblAQyhx0xfMAgdSBw52HH7mIPJzDBN9
         hJrlAROZBioe9kuM6GN3IWcCM3ACv8HVO0ggcOaBSuDPyESZVcRx0Bh9gd8ptqeNAWtX
         lLfi9VemYeoYIEWafJQ1m3soAQpMMQNaO+MX5O7muU9eWgcm0WvTMl2BdehN/fRA5VQ3
         sd4nUprV5xV4NjlnHQVdWVnJGNujLyWXf+MIoUHtuMTg64EjQP7i30SAI83ydY96gADh
         OteA==
X-Forwarded-Encrypted: i=1; AHgh+Rrv8hnkoLQ/NpLd+ecCc5a619lMr6+zsfUZSf0+BPTmdFRiTc5/+z2qgt0+2xcYYqZWRHqzwYgaTVTzb6oqMw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5jFtnePpNiQBT4Wam/oF5YZPprMyvgPnaCPljcCbjMmxBdI/r
	wdrTUph1CZjOVMJWMb9GGJrLDYikI8pysQpvzf5/lxH8Lhm2+Xk8R3j44qUk4P+YcEmlx4SQpO3
	4tQw0bhyI9SXng+cbnUUmv7LDgM74abE6/ZvmNvix21Cd7iLrAfuuWK8ajqrXSVyzrq7R+fX0d8
	wi3PhzLw==
X-Gm-Gg: AR+sD11nV1monMjqxR/LsyKeUbktPxgtoKqMBiy1iDMp34FHId3E3rmAyqEGxKxnlej
	7UdB6JwNiZsg73HnAI3jeHb8UrPxZ7ivNbFDzQK7SCYI9e0VLbUIJUualtIxTEmRjLAX3CKNOB4
	y7u+boWKOCwIrb1hwzFj4HnNDirHXo3POPV3/NQXGdt6QQqwz/+WpdFHbNMuicwrSJOr4bFSxVy
	Bl6Ys3c3OyTvgawuwcifvmb0KyG76QPRP0l9HvD36u6vF5G+uckmxhA+7PZSpdKXicCN9/bY3j5
	DVt1QRTmcBMKX6+o7OrMvvgMBdGFbvim9YkOTqD+7mb9KThsP77OnrLCcUve4+/MV0V65Gx0LV+
	QFJ970P8fmJv4RT3/bSdF9amWKDJoXdBh3Rk=
X-Received: by 2002:a05:690e:250b:10b0:667:a95b:59f0 with SMTP id 956f58d0204a3-6699abcfe28mr5022129d50.34.1785971366743;
        Wed, 05 Aug 2026 16:09:26 -0700 (PDT)
X-Received: by 2002:a05:690e:250b:10b0:667:a95b:59f0 with SMTP id 956f58d0204a3-6699abcfe28mr5022102d50.34.1785971366332;
        Wed, 05 Aug 2026 16:09:26 -0700 (PDT)
Received: from redhat.com (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-669913b9903sm3924589d50.7.2026.08.05.16.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 16:09:25 -0700 (PDT)
Date: Wed, 5 Aug 2026 19:09:23 -0400
From: Brian Masney <bmasney@redhat.com>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Daniele Briguglio <hello@superkali.me>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Ricardo Pardini <ricardo@pardini.net>
Subject: Re: [PATCH] clk: rockchip: rk3588: don't disable unused I2S MCLK
 output gates
Message-ID: <anPCo9nkOjpBUOlq@redhat.com>
References: <20260624123914.1767374-1-hello@superkali.me>
 <178267399833.3089434.5140309637329023610.b4-ty@sntech.de>
 <CAGb2v64kcadr1nAisu_3kyE-=-4oypDXTvAy--jQHa0VhmYoXg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v64kcadr1nAisu_3kyE-=-4oypDXTvAy--jQHa0VhmYoXg@mail.gmail.com>
User-Agent: Mutt/2.4.0 (2026-06-19)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: esDG1hgkdHtk4Is36heWT9993EiqOKnS26avNMb5cok_1785971367
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_160932_305668_889FE355 
X-CRM114-Status: GOOD (  21.38  )
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

SGkgQ2hlbi1ZdSwKCk9uIFRodSwgQXVnIDA2LCAyMDI2IGF0IDAxOjAwOjAyQU0gKzA4MDAsIENo
ZW4tWXUgVHNhaSB3cm90ZToKPiBPbiBNb24sIEp1biAyOSwgMjAyNiBhdCAzOjEz4oCvQU0gSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPgo+ID4KPiA+IE9uIFdlZCwg
MjQgSnVuIDIwMjYgMTQ6Mzk6MTQgKzAyMDAsIERhbmllbGUgQnJpZ3VnbGlvIHdyb3RlOgo+ID4g
PiBObyBpbi10cmVlIGJvYXJkIHJlZmVyZW5jZXMgdGhlc2UgZ2F0ZXMgeWV0LiBCb2FyZHMgZHJp
dmUgdGhlIGNvZGVjCj4gPiA+IE1DTEsgdGhyb3VnaCB0aGUgcGFyZW50IEkyUypfOENIX01DTEtP
VVQsIGFuZCBub3cgdGhhdCB0aGUgZ2F0ZXMgYXJlCj4gPiA+IG1hbmFnZWQgY2xvY2tzLCBjbGtf
ZGlzYWJsZV91bnVzZWQoKSB0dXJucyB0aGVtIG9mZiBhdCBib290LiBPbiBhIGJvYXJkCj4gPiA+
IHRoYXQgcmVsaWVkIG9uIGZpcm13YXJlIGxlYXZpbmcgdGhlIG91dHB1dCBlbmFibGVkLCB0aGF0
IGN1dHMgdGhlIE1DTEsKPiA+ID4gYW5kIGFuYWxvZyBhdWRpbyBzdG9wcyB3b3JraW5nLgo+ID4g
Pgo+ID4gPiBNYXJrIHRoZSBmb3VyIGdhdGVzIENMS19JR05PUkVfVU5VU0VEIHNvIGFuIHVucmVm
ZXJlbmNlZCBnYXRlIGtlZXBzIHRoZQo+ID4gPiBzdGF0ZSBmaXJtd2FyZSBsZWZ0LiBBIGJvYXJk
IHRoYXQgd2FudHMgdGhlIGtlcm5lbCB0byBvd24gdGhlIGdhdGUgY2FuCj4gPiA+IHJlZmVyZW5j
ZSBJMlMqXzhDSF9NQ0xLT1VUX1RPX0lPIGZyb20gRFQgaW5zdGVhZC4KPiA+ID4KPiA+ID4gWy4u
Ll0KPiA+Cj4gPiBBcHBsaWVkLCB0aGFua3MhCj4gPgo+ID4gWzEvMV0gY2xrOiByb2NrY2hpcDog
cmszNTg4OiBkb24ndCBkaXNhYmxlIHVudXNlZCBJMlMgTUNMSyBvdXRwdXQgZ2F0ZXMKPiA+ICAg
ICAgIGNvbW1pdDogOTQ2MzUyYjJmODhmZDIzNzhmMDM0MTMxMmU0N2RmZjFlOGRjMmZhYwo+IAo+
IEluIGhpbmRzaWdodCBtYXliZSBpdCB3b3VsZCBoYXZlIGJlZW4gYSBiZXR0ZXIgaWRlYSB0byBt
YXAgdGhlIGV4aXN0aW5nCj4gY2xvY2sgSUQgSTJTKl84Q0hfTUNMS09VVCB0byB0aGUgbmV3IGdh
dGVzLCBhbmQgYWRkIChvciBub3QgYWRkKSBuZXcKPiBjbG9ja3MgZm9yIHRoZSBpbnRlcm5hbCBN
Q0xLIGdhdGVzLgo+IAo+IFRoZW4geW91IHdvdWxkbid0IG5lZWQgdG8gdXBkYXRlIHRoZSBEVHMs
IHdvdWxkbid0IG5lZWQgdGhpcyB3b3JrYXJvdW5kLAo+IGFuZCB3b3VsZG4ndCBkZXBlbmQgb24g
dGhlIGJvb3Rsb2FkZXIgdG8gc2V0IHRoZSByZWdpc3RlcnMgY29ycmVjdGx5IHdoZW4KPiBib290
aW5nIGFuIG9sZCBEVC4KCkhlbHAgbWUgdW5kZXJzdGFuZCBmb3IgdGhlIGZ1dHVyZTogSWYgdGhl
IGFwcHJvYWNoIHlvdSBkZXNjcmliZSB3b3VsZApoYXZlIGJlZW4gdXNlZCwgdGhlbiB0aGUgY2xv
Y2tzIGluIHRoZSBrZXJuZWwgd291bGQgaGF2ZSBiZWVuIG1pc2xhYmVsZWQKaW4gdGhlIGtlcm5l
bCBkcml2ZXIgY29tcGFyZWQgdG8gd2hhdCdzIGFjdHVhbGx5IG9uIHRoZSBTb0MsIGNvcnJlY3Q/
ClRoYXQgd291bGQgaGF2ZSBiZWVuIG1vcmUgZGVzaXJhYmxlIGluIG9yZGVyIHRvIGtlZXAgY29t
cGF0aWJpbGl0eSB3aXRoCnRoZSBvbGRlciBEVHM/CgpCdXQgdGhlIG9sZGVyIERUcyBjYW4gc3Rp
bGwgcmVmZXJlbmNlIHRoZSBtdXgsIGNvcnJlY3Q/IEZyb20gdGhlCmtlcm5lbCdzIHBlcnNwZWN0
aXZlIGluIHRoaXMgc2NlbmFyaW8sIHRoZSBpbXBvcnRhbnQgdGhpbmcgaXMgZm9yIHRoZQptdXgg
dG8gc2VsZWN0IHRoZSBhcHByb3ByaWF0ZSBwYXJlbnQuIFRoZSBlbmQgZ2F0ZSB3aWxsIGFsd2F5
cyBiZSBsZWZ0Cm9uLiBGcm9tIGEgcG93ZXIgbWFuYWdlbWVudCBwZXJzcGVjdGl2ZSwgdGhlIHBv
d2VyIHdpbGwgYmUgY3V0IGZ1cnRoZXIKdXAgdGhlIGNsb2NrIHRyZWUgYXMgbmVlZGVkLgoKQnJp
YW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
