Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D838C71133
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 08:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DY8w8wHDBaphPcYVpbBPRQztEe28PRAq43bfcEKd0co=; b=eO6GVy+EjuAJ7u
	8xpyvEEfflb7YidBchBw6utOA9bVssTkVX9gUcvJv9rDeuyVaRrzREAaj47VOiP+aifYZqO6S9vyK
	guiuA4vlx/xPXFJ5mwBefcf8c9oxzLRXsfL7rU4Ba09j4wqNyy3evwrYHZRaJYr7uF2cpBm89SqEe
	Vpm5XqFAg4FhQaLW3PktYyalEHpS9cIh9WQgify6JMRdpMdIoaVD2N/Xu1DTeYBnECv4fmWpcwMl2
	1Q4/mhLUOtIGvZHT/mAsm/lZ+QGoAw8W5fVfu1hP+LvBJ2ZgBUl5uW7bjsCgHNBbYi9/eMA4O4H0X
	iUyLatB+UKN8QWNe9n1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZSYY-004fBZ-0r;
	Fri, 25 Aug 2023 08:52:38 +0000
Received: from mail-vk1-xa36.google.com ([2607:f8b0:4864:20::a36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZSYV-004fAZ-2m
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Aug 2023 08:52:37 +0000
Received: by mail-vk1-xa36.google.com with SMTP id 71dfb90a1353d-48d0e695fa1so463741e0c.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Aug 2023 01:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692953546; x=1693558346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FHr+Qq1uitu62iKr088XeD1/7TeAJk3ah8bA3XKzwuw=;
        b=m4RRn1K5bUH+Dsc1vCqLMvY/vMrcrMKR70n2hrLnquJbgoslRBtFgHnFB0CbrnqDqe
         zeJMjCbDAdepOY2TLO2jjL5qF8HyVAfhFg4klQJIIMgmJjKQWRY9APJDB0mPPlULfDo9
         eRDZNVHi73X6ZqWEA3UxR3ajKDAojtpq2sNs8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692953546; x=1693558346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FHr+Qq1uitu62iKr088XeD1/7TeAJk3ah8bA3XKzwuw=;
        b=E7Rl5algxQEjgs0VZBk4afG2NKADNG+ErJOtJvZ/JdgKeNdbficHfvesGnuZMtN+Yz
         QcQQnVcGIs6aH0rFBBjw1PBWzCfMHYoHA4b/yEzWynBZqgk8oNj0jrHn1sTfdaw3p9ES
         EDg4T7QkUpnaUMg0EOtxxwp1dt4Ry2AhQAiIQf/0c/xAWgpwjNTc2EFCBrlVVGtXAuFx
         pjNpRFo+fgxI/Q2oCahxTzY/wPN+RdMwI6WMZ+Hhgvp1QQCeoT3N2xoFHbyqSXEohLD4
         FAKhqGdG6o+lbqpzznrSAV6sdc1JooFtpvYRAjmPsSGipaAlu8VayIa70Zuyr+Q2xzBx
         Q69A==
X-Gm-Message-State: AOJu0YyyaN3YdmLiF7+yFH61wiMk3SWQIYGarydHUyzku/sH7m6prMhw
	0/g6esxccFKnWtct/K/maf5YNjDYKRBk5477dhBpJg==
X-Google-Smtp-Source: AGHT+IGOgxhyvET+eU8ks00qzpOpALW19oXgWOUc7rX/swOy6YUeNMdxA5fc4ZJkYp7Gd11utXe0H3HuMdNtDNpGPjA=
X-Received: by 2002:a1f:f843:0:b0:48d:f92:729a with SMTP id
 w64-20020a1ff843000000b0048d0f92729amr9223611vkh.5.1692953546658; Fri, 25 Aug
 2023 01:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230824013858.303105-1-marex@denx.de> <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
 <80d9a66f-c703-6057-e084-1a6d2214d775@denx.de> <CAGXv+5GQFtCAYbfSbEJeHA4Os0O6WuD64V-xcZ9uDD33HbuhhQ@mail.gmail.com>
 <f6f55f46-bd6e-4dde-4484-86d1c385c8fe@denx.de>
In-Reply-To: <f6f55f46-bd6e-4dde-4484-86d1c385c8fe@denx.de>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 25 Aug 2023 16:52:15 +0800
Message-ID: <CAGXv+5EJ1asWymfjNcyLANSgQdJPcjT6MXUVwTYOEQ3PtVtXBQ@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before use
To: Marek Vasut <marex@denx.de>
Cc: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_015235_900888_C92D9FF9 
X-CRM114-Status: GOOD (  24.87  )
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

T24gRnJpLCBBdWcgMjUsIDIwMjMgYXQgNDozM+KAr1BNIE1hcmVrIFZhc3V0IDxtYXJleEBkZW54
LmRlPiB3cm90ZToKPgo+IE9uIDgvMjUvMjMgMDk6MDksIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+
IE9uIFRodSwgQXVnIDI0LCAyMDIzIGF0IDk6MDjigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVu
eC5kZT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiA4LzI0LzIzIDEyOjM5LCBBZGFtIEZvcmQgd3JvdGU6
Cj4gPj4+IE9uIFdlZCwgQXVnIDIzLCAyMDIzIGF0IDg6MznigK9QTSBNYXJlayBWYXN1dCA8bWFy
ZXhAZGVueC5kZT4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gVGhlIGkuTVg4TU0vTi9QIGRvZXMgbm90
IGRlZmluZSB0aGUgLnJlc2V0IG9wIHNpbmNlIHJlc2V0IG9mIHRoZSBWUFUgaXMKPiA+Pj4+IGRv
bmUgYnkgZ2VucGQuIENoZWNrIHdoZXRoZXIgdGhlIC5yZXNldCBvcCBpcyBkZWZpbmVkIGJlZm9y
ZSBjYWxsaW5nIGl0Cj4gPj4+PiB0byBhdm9pZCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UuCj4g
Pj4+Pgo+ID4+Pj4gTm90ZSB0aGF0IHRoZSBGaXhlcyB0YWcgaXMgc2V0IHRvIHRoZSBjb21taXQg
d2hpY2ggcmVtb3ZlZCB0aGUgcmVzZXQgb3AKPiA+Pj4+IGZyb20gaS5NWDhNIEhhbnRybyBHMiBp
bXBsZW1lbnRhdGlvbiwgdGhpcyBpcyBiZWNhdXNlIGJlZm9yZSB0aGlzIGNvbW1pdAo+ID4+Pj4g
YWxsIHRoZSBpbXBsZW1lbnRhdGlvbnMgZGlkIGRlZmluZSB0aGUgLnJlc2V0IG9wLgo+ID4+Pgo+
ID4+PiBJIGFtIHN1cnByaXNlZCBJIGRpZG4ndCBoYXZlIGlzc3VlcyB3aGVuIEkgd2FzIHRlc3Rp
bmcgdGhlIDhNUSBhbmQKPiA+Pj4gOE1NLCBidXQgdGhpcyBtYWtlcyBzZW5zZS4KPiA+Pgo+ID4+
IFlvdSBuZWVkIHRvIHRyaWdnZXIgdGhlIFZQVSB3YXRjaGRvZyB0byB0cmlnZ2VyIHRoZSBjcmFz
aCwgdGhhdCBtZWFucwo+ID4+IHlvdSBoYXZlIHRvIGdldCB0aGUgVlBVIGludG8gc29tZSB3ZWly
ZCBzdGF0ZSB3aGVyZSBpdCBmYWlscyB0byBkZWNvZGUKPiA+PiBmcmFtZS4gVGhlbiBpdCB0cmln
Z2VycyB0aGUgcmVzZXQgYW5kIC4uLiBib29tLgo+ID4+Cj4gPj4gU2VlIHRoaXMgcGF0Y2gsIHRo
YXQgY29udGFpbnMgYSBnc3RyZWFtZXIgaW52b2NhdGlvbiB0byBnZW5lcmF0ZSBzdWNoCj4gPj4g
dHJpZ2dlciBjb25kaXRpb24gaW5wdXQgZGF0YToKPiA+Pgo+ID4+IFtQQVRDSF0gbWVkaWE6IHZl
cmlzaWxpY29uOiBEbyBub3QgZW5hYmxlIEcyIHBvc3Rwcm9jIGRvd25zY2FsZSBpZgo+ID4+IHNv
dXJjZSBpcyBuYXJyb3dlciB0aGFuIGRlc3RpbmF0aW9uCj4gPj4KPiA+PiAiCj4gPj4gVG8gZ2Vu
ZXJhdGUgaW5wdXQgdGVzdCBkYXRhIHRvIHRyaWdnZXIgdGhpcyBidWcsIHVzZSBlLmcuOgo+ID4+
ICQgZ3N0LWxhdW5jaC0xLjAgdmlkZW90ZXN0c3JjICEKPiA+PiB2aWRlby94LXJhdyx3aWR0aD0y
NzIsaGVpZ2h0PTI1Nixmb3JtYXQ9STQyMCAhIFwKPiA+PiAgICAgICAgICAgICAgICAgICAgdnA5
ZW5jICEgbWF0cm9za2FtdXggISBmaWxlc2luayBsb2NhdGlvbj0vdG1wL3Rlc3QudnA5Cj4gPj4g
VG8gdHJpZ2dlciB0aGUgYnVnIHVwb24gZGVjb2RpbmcgKG5vdGUgdGhhdCB0aGUgTlYxMiBtdXN0
IGJlIGZvcmNlZCwgYXMKPiA+PiB0aGF0IGFzc3VyZXMgdGhlIG91dHB1dCBkYXRhIHdvdWxkIHBh
c3MgdGhlIEcyIHBvc3Rwcm9jKToKPiA+PiAkIGdzdC1sYXVuY2gtMS4wIGZpbGVzcmMgbG9jYXRp
b249L3RtcC90ZXN0LnZwOSAhIG1hdHJvc2thZGVtdXggIQo+ID4+IHZwOXBhcnNlICEgXAo+ID4+
ICAgICAgICAgICAgICAgICAgICB2NGwyc2x2cDlkZWMgISB2aWRlby94LXJhdyxmb3JtYXQ9TlYx
MiAhIHZpZGVvY29udmVydAo+ID4+ICEgZmJkZXZzaW5rCj4gPj4gIgo+ID4KPiA+IERvZXMgaXQg
Y29tcGxldGVseSByZWNvdmVyIGFmdGVyd2FyZHM/IEluIG15IHByZXZpb3VzIHRyaWFscyB0aGUg
aGFyZHdhcmUKPiA+IGVuZGVkIHVwIGluIHNvbWUgYml6emFyZSBzdGF0ZTogd2hpbGUgZGVjb2Rp
bmcgc3VjY2VlZHMsIHRoZSBvdXRwdXQncyBtZDVzdW0KPiA+IGRpZG4ndCBtYXRjaCB1cC4KPgo+
IEhhdmUgeW91IGdvdCBhIHRlc3RjYXNlIHRoYXQgdHJpZ2dlcnMgdGhpcywgb25lIEkgY2FuIHRy
eSA/Cj4KPiBJIGFtIG5vdCBlbnRpcmVseSBzdXJlIHdoZXRoZXIgdGhpcyBpcyBoYXBwZW5pbmcg
aGVyZSBhcyB3ZWxsIG9yIG5vdCwKPiBidXQgSSBjYW4gaW1hZ2luZSB0aGF0IHRoZSBwb3dlciBk
b21haW4gd2VudCBkb3duIGFuZCBiYWNrIHVwIGJldHdlZW4KPiB0ZXN0cywgc28gdGhlIFZQVSB3
b3VsZCBiZSBwb3dlciBjeWNsZWQgKGFuZCB0aGVyZWZvcmUgcmVzZXQpIHRoYXQgd2F5Lgo+IFNv
LCBJIHRoaW5rIGl0IGlzIHdvcnRoIHRlc3RpbmcgdGhhdC4KClRoaXMgd2FzIGxhc3QgeWVhciB3
aGlsZSBJIHdhcyB3cml0aW5nIEhFVkMgZGVjb2RpbmcgY29kZSBmb3IgQ2hyb21pdW0uCklJUkMg
dGhlIFNBT0RCTEtfQV9NYWluQ29uY2VwdF80IHRlc3QgdmVjdG9yIGZyb20gdGhlIG9mZmljaWFs
IEhFVkMgdGVzdApzdWl0ZSBkb2VzIGNhdXNlIG91ciBzdGFjayB0byBjcmFzaCwgYnV0IEdzdHJl
YW1lciBzZWVtZWQgdG8gaGFuZGxlIGl0Ck9LLiBJdCBjb3VsZCBiZSB0aGF0IHRoZSBDaHJvbWl1
bSBkZWNvZGVyIHN0YWNrIGlzIHBhc3NpbmcgYmFkIHZhbHVlcyB0bwp0aGUgZGVjb2Rlci4KCgpD
aGVuWXUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
