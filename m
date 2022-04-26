Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF05C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kW1UlwcrFmnY7gReDMX0mJxYqIQuPbjIJ6EyhjLAL/4=; b=WIjdri8W6mAlH0
	xWpEd9jtQHkGVrUOk0YfEIgw9LWOLOTHvv/apb3cJOEhkKF3wkRyiEvrll65AECiczRoArZTMgZHE
	Ka3JRXhHkzWWqefH9QfdwV+X8R8enDxI7erlF+epqmkQT26/7qzYshfERhqzR1Pb0lVXZvBKFWtM6
	XmwyKt0hrqC0GQXdYsrYeODqDxubdptXEK8hfe/jr+O24vcGYdA3liuzB2FKSxeZkFd05EXUj6MgD
	BZsTPfblwAMnMBptLNJ/qSdI1lkTvuk7i0RLn33KOXLPd2JK4iaycOL6+Bpn820n40p7cef6W+TPy
	lpqNg5uRADp9AuvDk1MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njLHD-00EcG4-HY; Tue, 26 Apr 2022 13:30:47 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njLH3-00EcBR-4z
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 13:30:43 +0000
Received: by mail-ej1-x634.google.com with SMTP id gh6so12034435ejb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 06:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9hl53RDLcEPM/nSUae5c5JsKEwpcuy6BZdj1d4ixjQY=;
 b=OyFIjV19hIRjjXAPc0wgjhOnHWZ3+c4L+2p56KMi2XTOanUPfonQAvUr/opteP6qae
 CoA0+xr1wtR/CaoyMSqvswgpz11Ik8FEc61i/A6I8jhHrRvk86vj82EvawebjmesVvPs
 h7vkRKzhiPJ5XpDUdjxYrWLyxO76hGdtTkGUc9Pvh4W9PQollXhO0mJjiPE2boY2ssOi
 J8giaV4PfE29bn4WD0MMcSTQZr88hfwt/SDOc9eVTE3JkW3jf0CO2ZDt0Li2nbMzpl6c
 llxGJWXj8R5O1lCYWKTKTR+jnXXPgMg50En0AThYDpjl8LOzyenaCwRwcCvZvI0+M0QT
 nUDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9hl53RDLcEPM/nSUae5c5JsKEwpcuy6BZdj1d4ixjQY=;
 b=GDfPuCMi7nbYV3Nby738ngTlHUUugmfDcSNJBxHdMtmsYUGTluJOkz7CqaOhMKkp7Y
 V/rsWVHeumUnjErgHp5LrS7Le9kQvRX4Y7rRBl45PFV47CtK1J6I668nKpl7zrPhNpfa
 Il6vZmTKodxtqsTPSrmuqn67W2WTcePiEB+tAgwAkGqvypP00+UBDZNVY2kejLuSdjOx
 zdVH0v7YnhWxPbOJzhbcYdYQGFpLY8bHcfNwJWlJ+ATNxr5YQvcU+k2LC/bgt9ViPH+w
 iTkZOw6AdfGpyeJNlE4Lfqas38tsQAOttRTCN3XDN29H9GBrjQOr2h5X/HU5BL8jygZe
 ZhPw==
X-Gm-Message-State: AOAM5335GBK4kOgpHG8MJVuYCFNYOPLnkF3Xo3mrT9PPvNTzgm6GuGpZ
 yyxrGKaPPtxj9+BoAscwXKvkAsA0V4kxDM6boH6Oug==
X-Google-Smtp-Source: ABdhPJw0AIRBsmqStssTQgBZLCiq96WN/QJZfjyQ6xjAwWhJWxXNv6YpYjzmcyQUk44U4E843wTMp8+UeZ7SiP5AHo4=
X-Received: by 2002:a17:906:dc8d:b0:6f3:b613:6adb with SMTP id
 cs13-20020a170906dc8d00b006f3b6136adbmr2150897ejc.670.1650979832969; Tue, 26
 Apr 2022 06:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220425105346.324864-1-benjamin.gaignard@collabora.com>
 <CAAEAJfA2K2-YOruDMUjHixaPa1wfTSwpb3K5A-y_i3H6BF7oKQ@mail.gmail.com>
 <d2e699a9-6c2d-ab87-f23f-4b42096d64be@collabora.com>
In-Reply-To: <d2e699a9-6c2d-ab87-f23f-4b42096d64be@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 26 Apr 2022 10:30:21 -0300
Message-ID: <CAAEAJfBnFat5OUHxN_3N=Yn2F6vPiueB3sftC4WSuqY6hTKOeA@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: HEVC: unconditionnaly set
 pps_{cb/cr}_qp_offset values
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg KH <gregkh@linuxfoundation.org>, linux-media <linux-media@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, jon@nanocrew.net, 
 Adam Ford <aford173@gmail.com>, Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_063037_605032_A1A22958 
X-CRM114-Status: GOOD (  16.60  )
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

T24gTW9uLCBBcHIgMjUsIDIwMjIgYXQgMTI6MjggUE0gQmVuamFtaW4gR2FpZ25hcmQKPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4KPiBMZSAyNS8wNC8yMDIyIMOg
IDE0OjEyLCBFemVxdWllbCBHYXJjaWEgYSDDqWNyaXQgOgo+ID4gT24gTW9uLCBBcHIgMjUsIDIw
MjIgYXQgNzo1MyBBTSBCZW5qYW1pbiBHYWlnbmFyZAo+ID4gPGJlbmphbWluLmdhaWduYXJkQGNv
bGxhYm9yYS5jb20+IHdyb3RlOgo+ID4+IEFsd2F5cyBzZXQgcHBzX2NiX3FwX29mZnNldCBhbmQg
cHBzX2NyX3FwX29mZnNldCB2YWx1ZXMgaW4gSGFudHJvL0cyCj4gPj4gcmVnaXN0ZXIgd2hhdGV2
ZXIgaXMgVjRMMl9IRVZDX1BQU19GTEFHX1BQU19TTElDRV9DSFJPTUFfUVBfT0ZGU0VUU19QUkVT
RU5UCj4gPj4gZmxhZyB2YWx1ZS4KPiA+PiBUaGlzIGZpeCBhIGNvdXBsZSBvZiB0ZXN0cyBpbiBm
bHVzdGVyLgo+ID4+Cj4gPiBXaGljaCB0ZXN0cz8KPgo+IENBSU5JVF9HX1NIQVJQXzMgdGVzdC4K
PiBIYW50cm8gcHJvcHJpZXRhcnkgc3RhY2sgKGcyZGVjIHRvb2wpIGRvZXMgdGhlIHNhbWUuCj4K
CkNhbiB5b3UgcmVzZW5kIGFkZGluZyB0aGlzIGluZm9ybWF0aW9uIHRvIHRoZSBjb21taXQgZGVz
Y3JpcHRpb24/CgpUaGFua3MsCkV6ZXF1aWVsCgo+IFJlZ2FyZHMsCj4gQmVuamFtaW4KPgo+ID4K
PiA+IFRoYW5rcywKPiA+IEV6ZXF1aWVsCj4gPgo+ID4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWlu
IEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4+IC0tLQo+ID4+
ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2Y19kZWMuYyB8IDkg
KystLS0tLS0tCj4gPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2cyX2hldmNfZGVjLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hh
bnRyb19nMl9oZXZjX2RlYy5jCj4gPj4gaW5kZXggMmM4ZWIwNzIwZGI4Li5iYjUxMjM4OWMxYTUg
MTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJf
aGV2Y19kZWMuYwo+ID4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJv
X2cyX2hldmNfZGVjLmMKPiA+PiBAQCAtMTk0LDEzICsxOTQsOCBAQCBzdGF0aWMgdm9pZCBzZXRf
cGFyYW1zKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gPj4gICAgICAgICAgICAgICAgICBoYW50
cm9fcmVnX3dyaXRlKHZwdSwgJmcyX21heF9jdV9xcGRfZGVwdGgsIDApOwo+ID4+ICAgICAgICAg
IH0KPiA+Pgo+ID4+IC0gICAgICAgaWYgKHBwcy0+ZmxhZ3MgJiBWNEwyX0hFVkNfUFBTX0ZMQUdf
UFBTX1NMSUNFX0NIUk9NQV9RUF9PRkZTRVRTX1BSRVNFTlQpIHsKPiA+PiAtICAgICAgICAgICAg
ICAgaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9jYl9xcF9vZmZzZXQsIHBwcy0+cHBzX2NiX3Fw
X29mZnNldCk7Cj4gPj4gLSAgICAgICAgICAgICAgIGhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJf
Y3JfcXBfb2Zmc2V0LCBwcHMtPnBwc19jcl9xcF9vZmZzZXQpOwo+ID4+IC0gICAgICAgfSBlbHNl
IHsKPiA+PiAtICAgICAgICAgICAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9jYl9xcF9v
ZmZzZXQsIDApOwo+ID4+IC0gICAgICAgICAgICAgICBoYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcy
X2NyX3FwX29mZnNldCwgMCk7Cj4gPj4gLSAgICAgICB9Cj4gPj4gKyAgICAgICBoYW50cm9fcmVn
X3dyaXRlKHZwdSwgJmcyX2NiX3FwX29mZnNldCwgcHBzLT5wcHNfY2JfcXBfb2Zmc2V0KTsKPiA+
PiArICAgICAgIGhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfY3JfcXBfb2Zmc2V0LCBwcHMtPnBw
c19jcl9xcF9vZmZzZXQpOwo+ID4+Cj4gPj4gICAgICAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUs
ICZnMl9maWx0X29mZnNldF9iZXRhLCBwcHMtPnBwc19iZXRhX29mZnNldF9kaXYyKTsKPiA+PiAg
ICAgICAgICBoYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX2ZpbHRfb2Zmc2V0X3RjLCBwcHMtPnBw
c190Y19vZmZzZXRfZGl2Mik7Cj4gPj4gLS0KPiA+PiAyLjMyLjAKPiA+PgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
