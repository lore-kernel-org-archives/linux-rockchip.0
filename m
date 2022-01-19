Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70E7EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 11:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qhh9F6zMss3isHni0800UmkWl/Ap1iThdpnG3RgIst0=; b=kyULHYcZsnxuNl
	6VytkoEcp6Usm6+5Kvhd0G5ZaMgrJ1rf3egUZqxjwSbEgd0vs18eDw0KhyoUfZM2Cajy9Byi5bjWK
	9FS5IpiggDIKYD6DrznvE8iZeI26RcZ6QORkcE36upaJ1+pEATvz4nlouSbmIp+N9Epz6xeUkxrs7
	4LmKKsY/AZfLpdHt0S1jaa8TtTZ2xxHaYO6uvlWm4f46hqU45t1j1qVu17H3Y6aNgwXbC9wCoJ9Ph
	DM7mcXnGPntRmBAezBvjaVAQbfDIQVo1NvQHPFe6GQkh/0yQDEqdnQj55jqBCgnFeTKKV6XIjZwb2
	ZVVBxyB8ksjcehvd6Fxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA9AH-005AJP-Pz; Wed, 19 Jan 2022 11:30:09 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA9A1-005AC2-9E; Wed, 19 Jan 2022 11:29:54 +0000
Received: by mail-lf1-x133.google.com with SMTP id m1so8108077lfq.4;
 Wed, 19 Jan 2022 03:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=/O/9gbEgb/RsADKkHzPbBZ+dKCzV5A6qaT+Ty+GAygs=;
 b=NyCoWG49BpQBxaruMTutTBuStWQyn43epxiT0gOU5UGakpXSxVwJMN2Q5ptdoCiamC
 3RfdPspfwkG1ajs+tCjdYfeSkqqnbRR25DS0BKwk2j9OIgugkEk+9Df0TLxdiJFJ3PwV
 dPFmoptAK/h2KfPLz4DRlVT2YSb641X9DhGVW/rRguAtFbTI2mw9DwhYM+q4dU5Bepoa
 OSBA+8jzXLUEMKmHjLoZv3Hj4zDPXGE+y+Q+fnk7Wbj+J7QaxZIFy17cBQLmFJFacDC2
 5rFo8iY+iW0pAgQtGCkLE1h66522LXnxhvrmQS1999S5aUr/ckLVcn4Q3xGndjAzEVg9
 KSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=/O/9gbEgb/RsADKkHzPbBZ+dKCzV5A6qaT+Ty+GAygs=;
 b=LUsT+6hYLGpyQd2OrWJ+F+ybTzpmkBGQd7C7qcc6zfFcuwmtTHeHOzla3TFIXmgRUY
 sy+zxVr6m9WslBAvg/9CquU3UQHT0Qa0ZUB0gbIZ6hXHnKgOwU5jkfV2kMDgvwGC80pB
 appETsJhcxeDq9UMyEmm7vKcJ1BXPToGoYXRZhjw96iBrAxkibCckTT80HoElfxBs212
 TL7Tdi6ADLmlSKRkh8SsB9WT19wfcyupfcLStRrTxogmQwVmDpm5rVJ54d+/jCaY6n9l
 Zp214irS06p0EAzO8SqlOFdNnRCCoDJ53/vx12oVnVZh1QBNk/b8LjZo63Z6l8SiQldU
 L32g==
X-Gm-Message-State: AOAM5338KiHxZZlg0T5O9VIK0KWdszJM9nLkkwPreewCInZFB8/FkMOA
 cpK4tuGBDlpQ5qCo2d12X84=
X-Google-Smtp-Source: ABdhPJy1z4RS+ms7ntE5sNfDU2ljl1ujtIN9nfavJi4ukAug4R6nUw7GZ6yKgchAuaUxn91nYztotQ==
X-Received: by 2002:a05:6512:3d94:: with SMTP id
 k20mr25617078lfv.272.1642591790928; 
 Wed, 19 Jan 2022 03:29:50 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id w10sm1980958lfu.173.2022.01.19.03.29.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jan 2022 03:29:50 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v3 00/22] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
Date: Wed, 19 Jan 2022 12:29:49 +0100
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <AA3A26CB-6282-4A6B-99DC-8042DC8926BB@gmail.com>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_032953_361935_AD639573 
X-CRM114-Status: GOOD (  14.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDIwLjEyLjIwMjEsIG8gZ29kei4gMTI6MDY6Cj4gCj4gCj4gVGhp
cmQgcm91bmQgb2YgcGF0Y2hlcyBhbmQgbGFzdCBvbmUgZm9yIHRoaXMgeWVhci4gSSBob3BlZnVs
bHkgaW50ZWdyYXRlZAo+IGFsbCByZXZpZXcgZmVlZGJhY2suIEFkZGl0aW9uYWxseSB0aGUgZHJp
dmVyIGlzIG5vdyBmdWxseSBjb252ZXJ0ZWQgdG8KPiByZWdtYXAsIHNvIG5vIHN0cnVjdCB2b3Bf
cmVnIG5lY2Vzc2FyeSBhbnltb3JlLgo+IAo+IFNhc2NoYQo+IAo+IENoYW5nZXMgc2luY2UgdjI6
Cj4gLSBBZGQgcGluIG5hbWVzIHRvIEhETUkgc3VwcGx5IHBpbiBkZXNjcmlwdGlvbgo+IC0gQWRk
IGhjbGsgc3VwcG9ydCB0byBIRE1JIGRyaXZlcgo+IC0gRHVhbCBsaWNlbnNlIHJvY2tjaGlwLXZv
cDIgYmluZGluZywgdXBkYXRlIGJpbmRpbmcKPiAtIEFkZCBIRE1JIGNvbm5lY3RvciB0byBib2Fy
ZCBkdHMgZmlsZXMKPiAtIGRyb3AgdW5uZWNlc3NhcnkgZ2FtbWFfbHV0IHJlZ2lzdGVycyBmcm9t
IHZvcDIKPiAtIFVwZGF0ZSBkY2xrX3ZvcFswMTJdIGNsb2NrIGhhbmRsaW5nLCBubyBsb25nZXIg
aGFja3MgbmVlZGVkCj4gLSBDb21wbGV0ZSByZWdtYXAgY29udmVyc2lvbgo+IAoKU2FzY2hhCgpJ
J20gdXNpbmcgeW91IFZPUDIgY29kZSBvbiByazM1NjYgdHZib3ggKHg5Ni14Nikgd2l0aCB2ZXJ5
IGdvb2QgcmVzdWx0cy4KCkkgaGF2ZSBqdXN0IGZldyBxdWVzdGlvbnM6CgoxLiBob3cgc3VwcG9y
dCBmb3IgQ0VDIGxvb2tzL3Byb3NwZWN0cyAocGxhbnMgZm9yIGZ1dHVyZSwgbm90IGluIHRoaXMg
Y29kZSwgZXhwZWN0aW5nIG90aGVycyBzaG91bGQgaW1wbGVtZW50LCBldGMpPwoKMi4gVk9QMiBj
b2RlIHdvcmtzIG5pY2UgZm9yIG1lIGZvciB4MTEvZ2xhbW91ciBhbmQgZm9yIEVHTEZTIHdpdGgg
RUdMIERNQWJ1ZiByZW5kZXJpbmcgYnkgTWVzYSBFR0xfTElOVVhfRE1BX0JVRl9FWFQuCkkgaGF2
ZSBpc3N1ZSBob3dldmVyIHdpdGggYXBwLiByZW5kZXJpbmcgdG8gRFJNIHBsYW5lcyAoR1VJIGlz
IERSTSBwbGFuZTEsIHZpZGVvIGlzIERSTSBwYW5lMikuIApNeSBwcHAgc3RhcnRzL3dvcmtzIHdp
dGhvdXQgYW55IGVycm9ycyBpbiBsb2cgLSBidXQgc2NyZWVuIHN0YXlzIHdpdGgga2VybmVsIG1l
c3NhZ2VzIGNvbnRlbnQuCihpdCBsb29rcyB0byBtZSBsaWtlIGkuZS4gYXBwIHJlbmRlcnMgdG8g
RFJNIHBsYW5lIGJ1dCBEUk0gZGlzcGxheSBkcml2ZXIgbm90IHBhc3MgaXQgdG8gQ1JUQy4ganVz
dCB3aWxkIGd1ZXNzIGhlcmUuLi4pLgoKMy4gaW4ga2VybmVsIGRtZXNnIEkgaGF2ZSBtYW55OgoK
InJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogW2RybV0gKkVSUk9SKiBVbnN1cHBvcnRl
ZCBmb3JtYXQgbW9kaWZpZXIgMHg4MTAwMDAwMDAwMDAwMDEiLgoKSXQgY29tZXMgZnJvbSBNRVNB
IGkgdGhpbmsgLSBidXQgaSBzdXNwZWN0IGJlY2F1c2UgVk9QMiBwcm92aWRlcyB1bmtub3duL3dy
b25nIERSTSBtb2RpZmllciB0byBtZXNhPy4KSSdtIG5vdCBzdXJlIGhvdyB0byBwcm9ncmVzcyB3
aXRoIHRoaXMgKHRhbGsgdG8geW91IG9yIGludm9sdmUgTUVTQSBkZXZzIG9yIHdhaXQgZm9yIFZP
UDIgdjQpPwoKQWdhaW46IGdyZWF0IHdvcmsgd2l0aCBWT1AyIG9uIHJrMzU2eCEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
