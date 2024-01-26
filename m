Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C94B1C47DDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f22OGKELWpbvljLX/qjqZA7GKNex8KDRDEZMNsopu/4=; b=pEhHO20/cu4GuK
	eRuzbG/Vz5aCfz6KMuuzNu2QikF1RwnIcaEIn5hvb+tKdjDschgcYYHe90khDfvSk9erpS9rXyf2S
	3gIAQ9pxZ5oM6Zul2Bezg8KymNZthwn4Qxnev2qTXU7XhMtFkd/UDIvf8OHVvZlWjDe7sGOctC+7K
	GKSi7brFvo6jLEAZ7fgnS3ryzEulzOZ7zs2RwE5VYOnnBs/OtSh0B8kABUHwJxXO+11kgGYk+ojW2
	4Hi6mnl5ysuvVxCbFuDIQ3UKcc3Y1RKLjLRg/vfpiDPmvuoxNzKHz6L/5y/xKVTUaOPoF1BYuviLi
	pUrwPBDVlLZZWofqKykQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTMW0-00000004EoS-1Ug5;
	Fri, 26 Jan 2024 13:45:04 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTMVw-00000004EmS-3OJD;
	Fri, 26 Jan 2024 13:45:02 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40ed3101ce3so8102365e9.2;
        Fri, 26 Jan 2024 05:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706276699; x=1706881499; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=syGzEQrVWcLtI559gM1dEJe5dJ5RhKL4dWF8cdKerO4=;
        b=eFKGhl3sgHb+2Wop8q+5STTRB9efvPiiVL6CnR8q2S1OncrU+j1ki+Mt8xBvheEnFU
         o+vGl137WCgBLwuDm3igv85z6DvRh0QVDPeAixZXsiYrf6Ww8MJdc9IbE6LdSO66NqVS
         hML3QGc/zqIv18YbW6ItxggpiNVnFkxA/pucFfCrZRO/ZStAUQKZ/RFw+K9MVCk0JjwC
         42t4cQuC0E7Uys9zj9ZVbdIR9i88W2PCZkbX/3PhR9hshPjoKwLUQGPgugpw5NqElE0i
         8Dm1nTyLS387BZyJ1vIXwpxgRJPsl0DHhB6yy3Kfryki9cNB10VrTQOoZsOmJff60Ke6
         SzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706276699; x=1706881499;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=syGzEQrVWcLtI559gM1dEJe5dJ5RhKL4dWF8cdKerO4=;
        b=i2clhNeKyhaF7hveqIjJuU4HY+dMINHDZEtr9Jre6BBd1Ogl1az7+XAHrwdVLugz54
         y0zu8iGpdVwPsjDc5Wjrp4RWDRCqQrluD2lFCQySNkTD2rkjmU8boG2DIUHlmWy91rCO
         YesSquZjtGtPlLabigMQibsM5p5m2Fqy2HlGCzcPvmzK1dZw3UhMDKLOs8f3gJcjZGnA
         qnOonemWUuv+Lb9XZl4qsz+iBfpWrKWEy1FxjGb4TROq6CbycYEb1iKSMNHBPRjyUF2s
         L1RvuqSdAwlyKM8pLKelISaLLRh5gq7Jhl2dLTcSamVqXvA3z/sX5/TWdFBY7wpRJGHg
         8hzA==
X-Gm-Message-State: AOJu0Yyf0L9hXfdagwZFgfvP+3020mwDANRGxzX+RWCJQ6FJBvkAgn8N
	Nat/JlJLXRRhz8nBVm6sv/2wZINjXEOHHL0mZUL5luUmUZUW1d9inZzZ5Ijdzbe7Q/dMh+GIJjR
	S5WlVcaMYHPiQlsfvVOKS1l7RRMM=
X-Google-Smtp-Source: AGHT+IEDDO5mLMdinDwrRxPoOwn0aiY6a064MPOzk/zSJW3LYCdRoz1OyLt0pOaN2xC2WHd9+8kYCwSKnzHrGOR+2qs=
X-Received: by 2002:a05:600c:4e55:b0:40e:b179:5820 with SMTP id
 e21-20020a05600c4e5500b0040eb1795820mr547420wmq.24.1706276698649; Fri, 26 Jan
 2024 05:44:58 -0800 (PST)
MIME-Version: 1.0
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-4-5879275db36f@gmail.com> <731aac66-f698-4a1e-b9ee-46a7f24ecae5@linaro.org>
 <ccc004cfae513195351ce0a79e12f6af@manjaro.org> <CABjd4YxSTLZjrnSCn0fh81US682-uhZ16-cgydzz97shhCpq4w@mail.gmail.com>
 <1f0608831cfb95c80edf16cd751eee76@manjaro.org> <CABjd4Yx06igrZQvHA4q-mcr2oSEf7eQyUS+KEATUGbw6qLc2sg@mail.gmail.com>
 <528a37d84cdd871e717b4ebf648bb8a7@manjaro.org> <9b72b688-be63-464e-a5dc-cf6051ccee12@linaro.org>
In-Reply-To: <9b72b688-be63-464e-a5dc-cf6051ccee12@linaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 26 Jan 2024 17:44:46 +0400
Message-ID: <CABjd4YzdD9ciMn=p=opEK+fdxCkeCodsryph7pkqgsEUNcNrUQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_054500_872178_E3328DAC 
X-CRM114-Status: GOOD (  29.49  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgNDo1NuKAr1BNIERhbmllbCBMZXpjYW5vCjxkYW5pZWwu
bGV6Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDI2LzAxLzIwMjQgMDg6NDksIERyYWdh
biBTaW1pYyB3cm90ZToKPiA+IE9uIDIwMjQtMDEtMjYgMDg6MzAsIEFsZXhleSBDaGFya292IHdy
b3RlOgo+ID4+IE9uIEZyaSwgSmFuIDI2LCAyMDI0IGF0IDExOjA14oCvQU0gRHJhZ2FuIFNpbWlj
IDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4+PiBPbiAyMDI0LTAxLTI2IDA3OjQ0LCBB
bGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+Pj4gPiBPbiBGcmksIEphbiAyNiwgMjAyNCBhdCAxMDoz
MuKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+ID4+PiA+IHdyb3RlOgo+
ID4+PiA+PiBPbiAyMDI0LTAxLTI1IDEwOjMwLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPiA+Pj4g
Pj4gPiBPbiAyNC8wMS8yMDI0IDIxOjMwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+Pj4gPj4g
Pj4gQnkgZGVmYXVsdCB0aGUgQ1BVcyBvbiBSSzM1ODggc3RhcnQgdXAgaW4gYSBjb25zZXJ2YXRp
dmUKPiA+Pj4gcGVyZm9ybWFuY2UKPiA+Pj4gPj4gPj4gbW9kZS4gQWRkIGZyZXF1ZW5jeSBhbmQg
dm9sdGFnZSBtYXBwaW5ncyB0byB0aGUgZGV2aWNlIHRyZWUgdG8KPiA+Pj4gZW5hYmxlCj4KPiBb
IC4uLiBdCj4KPiA+PiBUaHJvdHRsaW5nIHdvdWxkIGFsc28gbG93ZXIgdGhlIHZvbHRhZ2UgYXQg
c29tZSBwb2ludCwgd2hpY2ggY29vbHMgaXQKPiA+PiBkb3duIG11Y2ggZmFzdGVyIQo+ID4KPiA+
IE9mIGNvdXJzZSwgYnV0IHRoZSBrZXkgaXMgbm90IHRvIGNvb2wgKGFuZCBzbG93IGRvd24pIHRo
ZSBDUFUgY29yZXMgdG9vCj4gPiBtdWNoLCBidXQganVzdCBlbm91Z2ggdG8gc3RheSB3aXRoaW4g
dGhlIGF2YWlsYWJsZSB0aGVybWFsIGVudmVsb3BlLAo+ID4gd2hpY2ggaXMgd2hlcmUgdGhlIHNh
bWUtdm9sdGFnZSwgbG93ZXItZnJlcXVlbmN5IE9QUHMgc2hvdWxkIHNoaW5lLgo+Cj4gVGhhdCBp
bXBsaWVzIHRoZSByZXN1bHRpbmcgcG93ZXIgaXMgc3VzdGFpbmFibGUgd2hpY2ggSSBkb3VidCBp
dCBpcyB0aGUKPiBjYXNlLgo+Cj4gVGhlIHZvbHRhZ2Ugc2NhbGluZyBtYWtlcyB0aGUgY29vbGlu
ZyBlZmZlY3QgZWZmaWNpZW50IG5vdCB0aGUgZnJlcXVlbmN5Lgo+Cj4gRm9yIGV4YW1wbGU6Cj4g
ICAgICAgICBvcHA1ID0gb3BwKDJHSHosIDFWKSA9PiAyIEJvZ29XYXR0Cj4gICAgICAgICBvcHA0
ID0gb3BwKDEuOUdIeiwgMVYpID0+IDEuOSBCb2dvV2F0dAo+ICAgICAgICAgb3BwMyA9IG9wcCgx
LjhHSHosIDAuOVYpID0+IDEuNDU4IEJvZ29XYXR0Cj4gICAgICAgICBbIG90aGVyIHN0YXRlcyBi
dXQgd2UgZm9jdXMgb24gdGhlc2UgMyBdCj4KPiBvcHA1LT5vcHA0ID0+IC01JSBjb21wdXRlIGNh
cGFjaXR5LCAtNSUgcG93ZXIsIHJhdGlvPTEKPiBvcHA0LT5vcHAzID0+IC01JSBjb21wdXRlIGNh
cGFjaXR5LCAtMjMuMSUgcG93ZXIsIHJhdGlvPTIxLDYKPgo+IG9wcDUtPm9wcDMgPT4gLTEwJSBj
b21wdXRlIGNhcGFjaXR5LCAtMjcuMSUgcG93ZXIsIHJhdGlvPTM2LjkKPgo+IEluIGJ1cnN0IG9w
ZXJhdGlvbiAobm8gdGhlcm1hbCB0aHJvdHRsaW5nKSwgb3BwNCBpcyBwb2ludGxlc3Mgd2UgYWdy
ZWUKPiBvbiB0aGF0Lgo+Cj4gSU1PIHRoZSBmb2xsb3dpbmcgd2lsbCBoYXBwZW46IGluIGJ1cnN0
IG9wZXJhdGlvbiB3aXRoIHRoZXJtYWwKPiB0aHJvdHRsaW5nIHdlIGhpdCB0aGUgdHJpcCBwb2lu
dCBhbmQgdGhlbiB0aGUgc3RlcCB3aXNlIGdvdmVybm9yIHJlZHVjZXMKPiBvcHA1IC0+IG9wcDQu
IFdlIGhhdmUgc2xpZ2h0IHBvd2VyIHJlZHVjdGlvbiBidXQgdGhlIHRlbXBlcmF0dXJlIGRvZXMK
PiBub3QgZGVjcmVhc2UsIHNvIGF0IHRoZSBuZXh0IGl0ZXJhdGlvbiwgaXQgaXMgdGhyb3R0bGUg
YXQgb3BwMy4gQW5kIGF0Cj4gdGhlIGVuZCB3ZSBoYXZlIG9wcDQgPC0+IG9wcDMgYmFjayBhbmQg
Zm9ydGggaW5zdGVhZCBvZiBvcHA1IDwtPiBvcHAzLgo+Cj4gSXQgaXMgcHJvYmFibGUgd2UgZW5k
IHVwIHdpdGggYW4gZXF1aXZhbGVudCBmcmVxdWVuY3kgYXZlcmFnZSAob3IKPiBjb21wdXRlIGNh
cGFjaXR5IGF2ZykuCj4KPiBvcHA0IDwtPiBvcHAzIChsb25nZXIgZHVyYXRpb24gaW4gc3RhdGVz
LCBsZXNzIHRyYW5zaXRpb25zKQo+IG9wcDUgPC0+IG9wcDMgKHNob3J0ZXIgZHVyYXRpb24gaW4g
c3RhdGVzLCBtb3JlIHRyYW5zaXRpb25zKQo+Cj4gU29tZSBwbGF0Zm9ybXMgaGFkIHRoZWlyIGhp
Z2hlciBPUFBzIHdpdGggdGhlIHNhbWUgdm9sdGFnZSBhbmQgdGhleQo+IGZhaWxlZCB0byBjb29s
IGRvd24gdGhlIENQVSBpbiB0aGUgbG9uZyBydW4uCj4KPiBBbnl3YXksIHRoZXJlIGlzIG9ubHkg
b25lIHdheSB0byBjaGVjayBpdCBvdXQgOikKPgo+IEFsZXhleSwgaXMgaXQgcG9zc2libGUgdG8g
Y29tcGFyZSB0aGUgY29tcHV0ZSBkdXJhdGlvbiBmb3IgJ2RocnlzdG9uZScKPiB3aXRoIHRoZXNl
IHZvbHRhZ2UgT1BQIGFuZCB3aXRob3V0ID8gKHdpdGggYSBwZXJpb2Qgb2YgY29vbCBkb3duIGJl
dHdlZW4KPiB0aGUgdGVzdCBpbiBvcmRlciB0byBzdGFydCBhdCB0aGUgc2FtZSB0aGVybWFsIGNv
bmRpdGlvbikgPwoKU3VyZSwgbGV0IG1lIHRyeSB0aGF0IC0gd291bGQgYmUgaW50ZXJlc3Rpbmcg
dG8gc2VlIHRoZSByZXN1bHRzLiBJbiBteQpwcmV2aW91cyB0aW5rZXJpbmcgdGhlcmUgd2VyZSBj
YXNlcyB3aGVuIHRoZSBzeXN0ZW0gc3RheWVkIGF0IDIuMzVHSHoKZm9yIGFsbCBiaWcgY29yZXMg
Zm9yIG5vbi10cml2aWFsIHRpbWUgKHVzaW5nIHRoZSBzdGVwLXdpc2UgdGhlcm1hbApnb3Zlcm5v
ciksIGFuZCB0aGF0J3MgYW4gZXhhbXBsZSBvZiAic2FtZSB2b2x0YWdlLCBsb3dlciBmcmVxdWVu
Y3kiLgpPdGhlciB0aW1lcyB0aG91Z2ggaXQgdGhyb3R0bGVkIG9uZSBjbHVzdGVyIGRvd24gdG8g
MS44R0h6IGFuZCBrZXB0CnRoZSBvdGhlciBhdCAyLjRHSHosIGFuZCB3YXMgYWxzbyBzdGF0aW9u
YXJ5IGF0IHRob3NlIHBhcmFtZXRlcnMgZm9yCmV4dGVuZGVkIHRpbWUuIFRoaXMgcHJvYmFibHkg
aW5kaWNhdGVzIHRoYXQgYm90aCBvZiB0aG9zZSBzdGF0ZXMgdXNlCnN1c3RhaW5hYmxlIHBvd2Vy
IGluIG15IGNvb2xpbmcgc2V0dXAuCgpOb3RlIHRob3VnaCB0aGF0IEkgc3RpbGwgaGF2ZSB0aGF0
IHRpbnkgaGVhdHNpbmsgaW5zdGFsbGVkIChldmVuCnRob3VnaCBJIGRpc2FibGUgdGhlIGZhbiBk
dXJpbmcgdGVzdHMpLCBhbmQgaW4gdGhpcyBzZXR1cCB0aGUKdGVtcGVyYXR1cmUgZHJvcHMgZnJv
bSA4NUMgdG8gYXJvdW5kIDcwQyBpbiBhIG1hdHRlciBvZiBzZWNvbmRzIGFzCnNvb24gYXMgdGhl
IGxvYWQgc3RvcHMuIEFuZCBpZiBJIGVuYWJsZSB0aGUgZmFuIHRoZW4gaXQgYmFsYW5jZXMgdGhl
CnRlbXBlcmF0dXJlIGF0IHRoZSBjb250cm9sIHNldHBvaW50IG9mIDU1QyB1c2luZyBsZXNzIHRo
YW4gZnVsbCBmYW4Kc3BlZWQgd2l0aCA4IHRocmVhZHMgb2YgZGhyeXN0b25lIHJ1bm5pbmcgZm9y
IGV4dGVuZGVkIHRpbWUgKGFuZCB0aGUKUFdNIHZhbHVlIGNob3NlbiBieSB0aGUgc3RlcC13aXNl
IGdvdmVybm9yIHN0YWJpbGl6ZXMgYXQgMjQwIG91dCBvZgoyNTUpLiBMb29rcyBsaWtlIG15IHBy
aW9yIGFzc2Vzc21lbnQgdGhhdCAidGhlIGZhbiBpcyBub3Qgc3VwZXIgbWlnaHR5CnZzLiB0aGUg
dG90YWwgdGhlcm1hbCBvdXRwdXQiIHdhcyB3cm9uZyBhZnRlciBhbGwsIGRlc3BpdGUgaXRzIG1v
ZGVzdApzaXplIDopCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
