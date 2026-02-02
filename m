Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E17EEE7DF08
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 16:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMjtvmmhPoA4TJxxKx0cILoa5dcptKju4PV8Bi+DaHM=; b=0CSB+dcfk6zG3h
	hENg9hejVWDFEYzL8VkemiSaukWw72qKyRoJ83T1aekP82rZukkpZQgkFTteLlSY6Bpd2TmLg+Y7Q
	/KKbD/yelVnUOgEEm21ESGb/o2AzxLmPyqVg02mXiUA50PZwZEh7cX3QUeDr43u/CiNV0uIEiTY5U
	LGGElQYjRQBl2hjVygNQH/sRr7D3ZmgcRGVthQUphQZMOkSemf3x2m0onMvU3GqnrG32RB9qXoniQ
	NLtBI8Np5knGM38nq9/RMCTO73JyM+H53NpASuSj1oZvBLrf+ZvQo9XvVytSwt0gNOEhrYv7E5QCf
	O5nl83peudUPLMuX6S1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmxAT-00000005K6z-1k52;
	Mon, 02 Feb 2026 16:52:53 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmxAR-00000005K5y-2T0V
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 16:52:52 +0000
Received: by mail-ej1-x642.google.com with SMTP id a640c23a62f3a-b88455e6663so677340466b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 08:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1770051169; x=1770655969; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QGLSQGBxItX/p5vDeLcxHCTPSeYQPRqcWlnQBJSqWY0=;
        b=WDnzuC5/dOXgk7nNrh3IFA9PTK0V10lbhOF2z4Clmjur7h07uoFkpb9m3juG0cUqrB
         zAXvVwHglyec9uZOy7Ep+PL14DJ74/WChOpkeRlomgQrsatdnsFQoAIpkWHtIbmlU9Bo
         NTOr9wggs4sZJ6O1M9wXpMzAib+ZTCeD4n8lo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770051169; x=1770655969;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QGLSQGBxItX/p5vDeLcxHCTPSeYQPRqcWlnQBJSqWY0=;
        b=YYYWoXO00oFxfu1wuCbEzZgrCUollFLJQ5Re7RRcV99JDucz+7vuZ8kJDbHWJznUsZ
         o2W3EAOaBZXxZpxOjPpyqXj3tT9XwD93OyN5lg5GLbzR6MMrNNIUVVRsMtZbrmHbFw7g
         CUoH2zI8HRmuCP++Za6VCb6Ua85JAsza/LhEVrrfVV+KBx3DTfZPXETUAF3aze5hrd26
         T9hOMzfVq01GoFO6aKcdp12tCInGS9IlDYiQcgtLd7wsorzLYe+EoUGIv0kNvKN4XwYd
         JSZx1XylcSDex1jvJUXBAyufBAfiIoRPbjVnLOxRj+MdU3Xs1DvgLf3AQuCByqnd9PqX
         ol2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUC4mi4H7GvL7tN+wCvRGN+I1lbvUH33eoUi5uaCRwPu77Q3g1fjDL1IcyCQ32oY5GIJivAkTl0PFnkeS9CAw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCaZH13Acl0f6Xl1y64sriaN/D/HkodOopGFKtIFw3YsT+jayd
	wTdN9H2jsNfgeSWcFH914d7oBMEkoxa/kegYUls+9qH8AlV09jnDKjDjgHSZnWBEavk6/i8nzlf
	qqdpgu2JW
X-Gm-Gg: AZuq6aKtvnCPPYuYbNYb4j0viG7MvUeyEkGhBOkjPVFC8UpbN+Q1yOYsiUv6jx1e8y6
	Jw6vLQYV3GlBhHwY+Orz4hxI9E3ZTiw4o9dWwGS5EeSkMHxsm2nksxRkKz8udvnQVWNHQJHHB6c
	u/CLdB5Vmb5wSRRzWMzhSVOe1uJbIM4M1qpjPf6ZCSuA3SG226qNYcECPH2lPxeAyLY3IaK7yIW
	jFk27zORUREAPPLaR3S7wNjHHMX9f2+FgbusI73vQcqxxPgbhik7jRJFWvGjx4/vNd+aMeh//Po
	zETiaC2Zjaduoi9ALiH3ZeXSAlHAlBDqZc9OdMa600keezp84reAY4d1AvujFqgUn7u2v1QxXr7
	1EF2tIg5gRxfR4Z90zu0R5pkNyrk4oiRP8BXVvL1NUUXIEgUpzLAuUrnD9ddfyUBTMzna+LFvJ/
	53YdC2CMHmx6x7nUpDc+04UhKCPY0fAsNNQ2RXqJ9ZV3GqwOjaHg==
X-Received: by 2002:a17:907:3cc5:b0:b80:3fc4:37bd with SMTP id a640c23a62f3a-b8dff515b4dmr708716866b.7.1770051168961;
        Mon, 02 Feb 2026 08:52:48 -0800 (PST)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dee927ec4sm669614466b.0.2026.02.02.08.52.47
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 08:52:47 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4801eb2c0a5so45688435e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 08:52:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWB85p+Pqe+dosIyid3+R6l6yl22qoMQCNK8PI5pme51Swj40Ty2RUbmFMROsLKAzo4Np1ePc9DXxdAJe3VFg==@lists.infradead.org
X-Received: by 2002:a05:600c:8b12:b0:47d:5e02:14e5 with SMTP id
 5b1f17b1804b1-482db44e7f7mr158073105e9.5.1770051167405; Mon, 02 Feb 2026
 08:52:47 -0800 (PST)
MIME-Version: 1.0
References: <cover.1769191673.git.robin.murphy@arm.com> <a00a59dcef3693efb02a8ee942848fbeaeaf05ba.1769191673.git.robin.murphy@arm.com>
 <CAD=FV=ViHWqjMGfYFgHBNRY-ex2vZjMaYoYLJb=vcUfPQRb9FA@mail.gmail.com>
In-Reply-To: <CAD=FV=ViHWqjMGfYFgHBNRY-ex2vZjMaYoYLJb=vcUfPQRb9FA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 2 Feb 2026 08:52:36 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UKL5mSr3b_0eBuYZ04RFjFLAG1ZRw=JC5wtPy=t7+7wA@mail.gmail.com>
X-Gm-Features: AZwV_Qg8mOHmFnRAdN4OmDJbt-Yo140VuLppfyIQONLjHwqHVTpsMUgdZpTJYuk
Message-ID: <CAD=FV=UKL5mSr3b_0eBuYZ04RFjFLAG1ZRw=JC5wtPy=t7+7wA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] drm/panel-edp: Move FriendlyELEC HD702E
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_085251_647732_8E68AA2A 
X-CRM114-Status: GOOD (  17.49  )
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

SGksCgpPbiBTYXQsIEphbiAyNCwgMjAyNiBhdCAzOjUy4oCvUE0gRG91ZyBBbmRlcnNvbiA8ZGlh
bmRlcnNAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gRnJpLCBKYW4gMjMsIDIw
MjYgYXQgMTE6MjLigK9BTSBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPiB3cm90
ZToKPiA+Cj4gPiBGcmllbmRseUVMRUMncyBIRDcwMkUgbW9kdWxlIGlzIGFuIGVEUCBwYW5lbCAo
aW4gYXMgbXVjaCBhcyBpdCdzIHNvbWUKPiA+IExWRFMgTENEIGJlaGluZCBhIENocm9udGVsIENI
NzUxMUIgZURQIGJyaWRnZSksIHNvIG1vdmUgaXRzIGRhdGEgb3Zlcgo+ID4gdG8gdGhlIGVEUCBk
cml2ZXIsIGFsc28gcmVzb2x2aW5nIHRoZSB3YXJuaW5nIGFib3V0IHRoZSBtaXNzaW5nIGJwYwo+
ID4gdmFsdWUgaW4gdGhlIHByb2Nlc3MuCj4gPgo+ID4gVGhlIHVuZm9ydHVuYXRlIGNvbWJpbmF0
aW9uIG9mIEhQRCBub3QgYmVpbmcgd2lyZWQgdXAgYW5kIHRoZSBSSzMzOTkgZURQCj4gPiBjb250
cm9sbGVyJ3MgYmVoYXZpb3VyIHNlZW1zIHRvIHJlc3VsdCBpbiB0aGUgRURJRCBub3QgYmVpbmcg
cmVhZGFibGUKPiA+IG92ZXIgRFAtQVVYIHdpdGhvdXQgcHJvYmluZyB0aGUgcGFuZWwgZmlyc3Qs
IHRodXMgdGhlIGhhcmQtY29kZWQgbW9kZSBpcwo+ID4gc3RpbGwgbmVlZGVkIHRvIGdldCB0aGlu
Z3MgZ29pbmcuCj4gPgo+ID4gUmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0
cm9uZ0BsaW5hcm8ub3JnPgo+ID4gU2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5t
dXJwaHlAYXJtLmNvbT4KPiA+IC0tLQo+ID4gdjI6IENsYXJpZnkgaXNzdWUgd2l0aCB0aGUgZ2Vu
ZXJpYyBiaW5kaW5nCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRw
LmMgICAgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9wYW5lbC9wYW5lbC1zaW1wbGUuYyB8IDI1IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+
ICAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQo+Cj4g
UmV2aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPgo+
IEknbGwgcGxhbiB0byBhcHBseSBwYXRjaGVzICMxIGFuZCAjMiBpbiB+MSB3ZWVrIHRvIGRybS1t
aXNjLW5leHQgaWYKPiB0aGVyZSBhcmUgbm8gb3RoZXIgY29tbWVudHMuIElmIHNvbWVvbmUgZWxz
ZSB3YW50cyB0byBiZWF0IG1lIHRvIGl0LAo+IHRob3VnaCwgSSdtIGFsc28gT0sgdy8gdGhhdC4K
ClB1c2hlZCBwYXRjaGVzIHRvIGRybS1taXNjLW5leHQ6CgpbMi80XSBkcm0vcGFuZWwtZWRwOiBN
b3ZlIEZyaWVuZGx5RUxFQyBIRDcwMkUKICAgICAgY29tbWl0OiA1YzMyM2VhOTQ4ZmYwZjllNTA0
MTgxMTljYmJiM2Q5NGYyYmQ2YTk2CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
