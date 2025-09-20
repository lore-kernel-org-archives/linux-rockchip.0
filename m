Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8F17CAC5A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Sep 2025 10:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wUb0vVOrdijNaQKsfacCSCvdnytQF+DQfFVk33scPE=; b=ShZTqC9d0QW08f
	XhFTxyhck5TIQMBbcHW/4Zs5X7wTKbpXAEyGWKwPv6Wb/TEcP5sMuOtdqLcbZKyC7ywW8fmqa0gRG
	TyS6hSEIGy5wp+Fy+CZnd2RK5Sx04FOr8CMQFCc9jN08p6MRw7qVaoR0wBCtTClGtIS8xkUYk46na
	3zqqEETfI6fBnjf6UZBaCMaX9271pxuysgL6QUgD3UFlNFu725nHQLiUTeLhVWBzPc/J2gZrHGmLA
	YlIKywyKtxQll3ARwoBe++LacSkeqFStmTF0UMvVLElnY2GbVdoZam5bJhorPFd8QRZBnR27SW6SQ
	pVH+DjPiZYSUJY+PrDOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzuVw-00000005AId-3OfB;
	Sat, 20 Sep 2025 10:08:20 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzuVs-00000005AHm-3TMk
	for linux-rockchip@lists.infradead.org;
	Sat, 20 Sep 2025 10:08:18 +0000
Received: by mail-ej1-x641.google.com with SMTP id a640c23a62f3a-b0787fa12e2so422014466b.2
        for <linux-rockchip@lists.infradead.org>; Sat, 20 Sep 2025 03:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758362894; x=1758967694; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xe0lcClCPEcf8hl+EDrEGGNTrCD25PEwuESOT223Ua8=;
        b=Q7NdWT9fVoJprJDeut7Wu3+qMRH5k7HEmI+gnoekVUly4Ym6AVuVANQGnuRgcMBaoe
         7gWkqkTg5MI98Z0mSvpD9xT/8oBq3BITfAbdRKI5l2JnUjghJ2ktymZO4h8HHqMEEttl
         pAsVlFByAQh9OxzWUpapW1PSNjQY0p3pgrgO6p5GEVcbXrQiMPVW+oIpM20OELMm7SVv
         3tC2cUfaenbEk8A6gnwP5wvqf8+jnlQzaPxHtk7Wos9iNKLWXlnSEadTA30pJ7TADCyq
         JRURSlJRh4HhtQfhWj0R2Sdg/7ox9x84lLZ+y7Y2HGdoWZO9K/FhCjqlYwGP39gvWf/z
         imCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758362894; x=1758967694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xe0lcClCPEcf8hl+EDrEGGNTrCD25PEwuESOT223Ua8=;
        b=iH3O23dR/oMplZWB/qK1Zg+Pe+2iZLlkwnEZJCxgUY5vnwHjMIKm6PIr4WtvSDtsvP
         QykIvW/reK2usoC2ldTgpzU7ZEAY2UYi3f/mb281ez0dZHd3EmNtTJX3sg4I1EIRYGus
         w2TP7VTE/IJVu2hKYzAzYIrQHe28BTxW5cHDQiM6PjpspTwqyLyq+PwtYsM7HK+0ko/i
         A6OtQ1mfkXCHSxMAwsD93b54LZRkdLXZP7800Rvl9u5nrgEk3nVxd3JmG9oKS37qYD2t
         VryE121dVqbCrVpGJwFOOaWi/8I3Qs214WVqO15xTJtpdPaHSeOWIKaHM0RsQ9XxrWkX
         aHXg==
X-Forwarded-Encrypted: i=1; AJvYcCWi6MzMzVgR014xmzeTNKaQQcVVLDuMVKcPD8ifryz8nOMB10qm7JWT9WyocKFcvDJGcYNMrwCVwiuVqoJ71g==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz4x+Ldj9UMncIBZ/RVac4ezNdkQCbdJ5l4n6VYPeY1BVcqSVI
	zFynsSyHXU3yW0LQtAwV8xxcy1eOmgI+3wxZmPi8yVNoW3XP5kPNyX7q1Te1wjAZVoJduVTnpEv
	ITRDZap6hjsr4g8p2KcarMHXmnQmPnOU=
X-Gm-Gg: ASbGncvv4Ict99KpOUhKlNB+25v2tSmNitfpJRc1X6p95Wf0DIcGsAimfkj3h02CkRp
	UMVGwnkuurqirGzEYU1taTTB9oHwnA6wwSrXfzHbZknqkkf8DMfL9XzcSCXzb5YvVDG/kUDE9dO
	OXOfSsp9HdUrlKZbi8+rZ4d7CXR6thXfGu81f0Rni1eaUIUOinkml4B8COyq68VKp2whh3mVgeA
	f0TFEo=
X-Google-Smtp-Source: AGHT+IEWE29T6cV4r5UuETqqGeQnjCtI+yhJUtdEO1Ev8BuF7jZN0enwt/bBX1nmZpGKZUqSfijRG8c7SGSTF9FDuo8=
X-Received: by 2002:a17:907:972a:b0:b04:4046:db6b with SMTP id
 a640c23a62f3a-b24f567c816mr645963466b.45.1758362894355; Sat, 20 Sep 2025
 03:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAOprWosSvBmORh9NKk-uxoWZpD6zdnF=dODS-uxVnTDjmofL6g@mail.gmail.com>
 <20250919-lurking-agama-of-genius-96b832-mkl@pengutronix.de>
In-Reply-To: <20250919-lurking-agama-of-genius-96b832-mkl@pengutronix.de>
From: Andrea Daoud <andreadaoud6@gmail.com>
Date: Sat, 20 Sep 2025 18:08:03 +0800
X-Gm-Features: AS18NWCh31p-viGL3PfP7OcvBtJwzsD-69eILq-7ZVP3bQSbKG7MfpPrWXV11mM
Message-ID: <CAOprWott046xznChj7JBNmVw3Z65uOC1_bqTbVB=LA+YBw7TTQ@mail.gmail.com>
Subject: Re: Possible race condition of the rockchip_canfd driver
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, kernel@pengutronix.de, 
	linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_030816_890917_53F385CB 
X-CRM114-Status: GOOD (  24.09  )
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

T24gU2F0LCBTZXAgMjAsIDIwMjUgYXQgMzowNOKAr0FNIE1hcmMgS2xlaW5lLUJ1ZGRlIDxta2xA
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gSGVsbG8sCgpUaGFua3MgZm9yIHlvdXIgcmVwbHkh
Cgo+Cj4gT24gMTguMDkuMjAyNSAyMDo1ODozMywgQW5kcmVhIERhb3VkIHdyb3RlOgo+ID4gSSdt
IHVzaW5nIHRoZSByb2NrY2hpcF9jYW5mZCBkcml2ZXIgb24gYW4gUkszNTY4LiBXaGVuIHVuZGVy
IGhpZ2ggYnVzCj4gPiBsb2FkLCBJIGdldAo+ID4gdGhlIGZvbGxvd2luZyBsb2dzIFsxXSBpbiBy
a2NhbmZkX3R4X3RhaWxfaXNfZWZmLCBhbmQgdGhlIENBTiBidXMgaXMgdW5hYmxlIHRvCj4gPiBj
b21tdW5pY2F0ZSBwcm9wZXJseSB1bmRlciB0aGlzIGNvbmRpdGlvbi4gVGhlIGV4YWN0IGNhdXNl
IGlzIGN1cnJlbnRseSBub3QKPiA+IGVudGlyZWx5IGNsZWFyLCBhbmQgaXQncyBub3QgcmVsaWFi
bHkgcmVwcm9kdWNpYmxlLgo+Cj4gT3VyIGN1c3RvbWVyIGlzIHVzaW5nIGEgdjMgc2lsaWNvbiBy
ZXZpc2lvbiBvZiB0aGUgY2hpcCwgd2hpY2ggZG9lc24ndAo+IHRoaXMgd29ya2Fyb3VuZC4KCkNv
dWxkIHlvdSBwbGVhc2UgbGV0IG1lIGtub3cgaG93IHRvIGNoZWNrIHdoZXRoZXIgbXkgUkszNTY4
IGlzIHYyIG9yIHYzPwoKPgo+ID4gSW4gdGhlIGxvZ3Mgd2UgY2FuIHNwb3Qgc29tZSBzdHJhbmdl
IHBvaW50czoKPiA+Cj4gPiAxLiBMaW5lIDI0LCB0eF9oZWFkID09IHR4X3RhaWwuIFRoaXMgc2hv
dWxkIGhhdmUgYmVlbiByZWplY3RlZCBieSB0aGUgaWYKPiA+ICghcmtjYW5mZF9nZXRfdHhfcGVu
ZGluZykgY2xhdXNlLgo+ID4KPiA+IDIuIExpbmUgMjYsIHRoZSBsYXN0IGJpdCBvZiBwcml2LT50
eF90YWlsICgweDAxODVkYmIzKSBpcyAxLiBUaGlzIG1lYW5zIHRoYXQgdGhlCj4gPiB0eF90YWls
IHNob3VsZCBiZSAxLCBiZWNhdXNlIHJrY2FuZmRfZ2V0X3R4X3RhaWwgaXMgZXNzZW50aWFsbHkg
bW9kIHRoZQo+ID4gcHJpdi0+dHhfdGFpbCBieSB0d28uIEJ1dCB0aGUgcHJpbnRlZCB0eF90YWls
IGlzIDAuCj4gPgo+ID4gSSBiZWxpZXZlIHRoZXNlIHByb2JsZW1zIGNvdWxkIG1lYW4gdGhhdCB0
aGUgY29kZSBpcyBzdWZmZXJpbmcgZnJvbSBzb21lIHJhY2UKPiA+IGNvbmRpdGlvbi4gSXQgc2Vl
bXMgdGhhdCwgaW4gdGhlIHdob2xlIElSUSBwcm9jZXNzaW5nIGNoYWluIG9mIHRoZSBkcml2ZXIs
Cj4gPiB0aGVyZSdzIG5vIGxvY2sgcHJvdGVjdGlvbi4gTWF5YmUgc29tZSBJUlEgaGFwcGVucyB3
aXRoaW4gdGhlIGV4ZWN1dGlvbiBvZgo+ID4gcmtjYW5mZF90eF90YWlsX2lzX2VmZiwgYW5kIHRv
dWNoZXMgdGhlIHN0YXRlIG9mIHRoZSB0eF9oZWFkIGFuZCB0eF90YWlsPwo+ID4KPiA+IENvdWxk
IHlvdSBwbGVhc2UgaGF2ZSBhIGxvb2sgYXQgdGhlIGNvZGUsIGFuZCBjaGVjayBpZiBzb21lIGxv
Y2tpbmcgaXMgbmVlZGVkPwo+Cj4gTXkgdGltZSBmb3IgY29tbXVuaXR5IHN1cHBvcnQgaXMgY3Vy
cmVudGx5IGEgYml0IGxpbWl0ZWQuIEkgdGhpbmsgdGhpcwo+IGhhcyB0byB3YWl0IGEgYml0LCBh
cG9sb2dpZXMgOi8KCk5vIHdvcnJpZXMsIEkgd2lsbCBkZWJ1ZyBteXNlbGYsIGFuZCBob3BlZnVs
bHkgc2VuZCBhIFBSIGlmIEkgZm91bmQKc29tZXRoaW5nIG91dC4KCj4KPiByZWdhcmRzLAo+IE1h
cmMKPgo+IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgfCBNYXJjIEtsZWlu
ZS1CdWRkZSAgICAgICAgICB8Cj4gRW1iZWRkZWQgTGludXggICAgICAgICAgICAgICAgICAgfCBo
dHRwczovL3d3dy5wZW5ndXRyb25peC5kZSB8Cj4gVmVydHJldHVuZyBOw7xybmJlcmcgICAgICAg
ICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0xMjkgfAo+IEFtdHNnZXJpY2h0IEhpbGRl
c2hlaW0sIEhSQSAyNjg2IHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy05ICAgfAoKUmVnYXJkcywK
QW5kcmVhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
