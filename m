Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C5D4F364C3
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 22:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TlSBk6u9wRtGhIXWpjzzVRc0+W+Y+O22jaH4XD00+Q=; b=UHQA2v+z256QOV
	B6TEscoi7/LxjM1fty0AWC8j65F1NhJCCpGxKBErNcHSNdW5IcQjlArXidfIhvLFzKuW+tQCexutm
	VcJzaiVdI39uzgHJtjGcweH3o57GH0zIodzpY2mjDaM5aiBRoh4xY59dRgOiGVorb8gQB6FjoXn1R
	4sCmRWSKG3w0OkN7fVPBaxM32YEIslJlwToitO37QysYSHvPdMvaxYS+8aA+jXroa/ImboP9Brye1
	Cnqb6hFXk5VxXPRP2vMZZGo4OzfxkIigFoh1tZ8szduqkz29pIQQEsU9N7qBWNJVw3eCZHf4oje1m
	GD8jogPd4h3T387eIy1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAxoY-0000000BHrW-2DJj;
	Thu, 09 Apr 2026 22:25:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAxoV-0000000BHr9-3wAm
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Apr 2026 22:25:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2F4FA44405
	for <linux-rockchip@lists.infradead.org>; Thu,  9 Apr 2026 22:25:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CCAEC4AF0B
	for <linux-rockchip@lists.infradead.org>; Thu,  9 Apr 2026 22:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775773527;
	bh=gni6OuDMqG4Wudqx1opDhebHQF1rc+9753lXdYOtVwk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ci+7OuUoLgk0F9PQoVgXufFLrjmeqcP/QJAEQn9N6D5XhtWEKN92X/66NlFwlqJ1S
	 8fKOo1iASV2UqzXl5UrPjfiSZG2g2yMoG+oAdWdVXqRxQS8W/4XTgeBqi04KV//Ty3
	 +jXaLK/WYl0aCkAUikdRocp9xLzLQfLLVkPFoBfjrRTcCnJ7GDNWUtMnfhGfNLUPlH
	 C1xQQpGLg7JCYU262M8f0tYM8w6N3qKwtT4gnusXRsz5+F7x2x3kceozsgOHPnb+tF
	 eXwfp+KMLRj9RxKp/W/J8DN4uB7fsOTheg6wvbgC52VLa7UM7Yi+ku4fm96nbtDTuI
	 thGvjuH4vo4Mg==
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-650221149e2so1505861d50.0
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 15:25:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVtxJlQa/l/KPX7apdNpJCYjnRMXeERNh7Kai9RB+BDDMSrob2NoIGuGAaXaafAHudTySuWyrBH5uuxISi6Yw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgaDMYlsqmMTgEY+WN9g8qpXDdcac8ZLcPJhrONIoh6z9W8e5w
	zsxiKcGvPdQck7/cxhWZeC+CibiCktKlIHAgv1gmyu7mYb4xTH0jWRkkYZcigRaEO64SEXKpjq8
	Gk0eMbcERCAHklD5ce52ECpOquafzIMw=
X-Received: by 2002:a53:edc8:0:b0:64e:efc7:b1cb with SMTP id
 956f58d0204a3-65198ac3434mr597075d50.27.1775773526360; Thu, 09 Apr 2026
 15:25:26 -0700 (PDT)
MIME-Version: 1.0
References: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
 <CAMRc=Mfg3KvifZgpD8c7kkLNhv3zgDKvHB=n_=MQJ2EtwRi44A@mail.gmail.com>
 <73130e47-dbd7-c0d0-eba1-8bafba9f91e5@rock-chips.com> <384b25a0-d55d-4415-82fb-dcf2e6ad1232@kwiboo.se>
In-Reply-To: <384b25a0-d55d-4415-82fb-dcf2e6ad1232@kwiboo.se>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 10 Apr 2026 00:25:14 +0200
X-Gmail-Original-Message-ID: <CAD++jLmhkZhWzjV9b6r9P4oZq=4dqVEVV7mwwE_WWRgRXbq3AQ@mail.gmail.com>
X-Gm-Features: AQROBzAqbIzKJ9qMCr1olkI-tYrygB6OgUAWvIWw1d0yAhmxkRVT55ysYG46gq0
Message-ID: <CAD++jLmhkZhWzjV9b6r9P4oZq=4dqVEVV7mwwE_WWRgRXbq3AQ@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: convert to dynamic GPIO base allocation
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, ye.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_152528_020773_3B7F7403 
X-CRM114-Status: GOOD (  16.92  )
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

T24gVGh1LCBBcHIgOSwgMjAyNiBhdCA5OjA54oCvUE0gSm9uYXMgS2FybG1hbiA8am9uYXNAa3dp
Ym9vLnNlPiB3cm90ZToKCj4gVGhpcyBwYXRjaCBpcyBjYXVzaW5nIGJvb3QgaXNzdWVzIG9uIG15
IFJvY2sgUGkgNCAoUkszMzk5KSBib2FyZCB1c2luZwo+IG5leHQtMjAyNjA0MDkga2VybmVsIHdo
ZXJlIHRoaXMgcGF0Y2ggaGFzIGJlZW4gYXBwbGllZCBhcyBjODA3OWY4M2UwYmYuCj4KPiBbICAg
IDAuMDgyNzcxXSByb2NrY2hpcC1ncGlvIGZmNzIwMDAwLmdwaW86IHByb2JlZCAvcGluY3RybC9n
cGlvQGZmNzIwMDAwCj4gWyAgICAwLjA4MzUzMV0gcm9ja2NoaXAtZ3BpbyBmZjczMDAwMC5ncGlv
OiBwcm9iZWQgL3BpbmN0cmwvZ3Bpb0BmZjczMDAwMAo+IFsgICAgMC4wODQxMTBdIHJvY2tjaGlw
LWdwaW8gZmY3ODAwMDAuZ3BpbzogcHJvYmVkIC9waW5jdHJsL2dwaW9AZmY3ODAwMDAKPiBbICAg
IDAuMDg0NzQ2XSByb2NrY2hpcC1ncGlvIGZmNzg4MDAwLmdwaW86IHByb2JlZCAvcGluY3RybC9n
cGlvQGZmNzg4MDAwCj4gWyAgICAwLjA4NTM4OV0gcm9ja2NoaXAtZ3BpbyBmZjc5MDAwMC5ncGlv
OiBwcm9iZWQgL3BpbmN0cmwvZ3Bpb0BmZjc5MDAwMAo+IC0tCj4gWyAgICAwLjIxMjIwOF0gcm9j
a2NoaXAtcGluY3RybCBwaW5jdHJsOiBwaW4gNjM3IGlzIG5vdCByZWdpc3RlcmVkIHNvIGl0IGNh
bm5vdCBiZSByZXF1ZXN0ZWQKPiBbICAgIDAuMjEyMjcxXSByb2NrY2hpcC1waW5jdHJsIHBpbmN0
cmw6IGVycm9yIC1FSU5WQUw6IHBpbi02MzcgKGdwaW8zOjYzNykKPiBbICAgIDAuMjEyMzQ0XSBs
ZWRzLWdwaW8gbGVkczogZXJyb3IgLUVJTlZBTDogRmFpbGVkIHRvIGdldCBHUElPICcvbGVkcy9s
ZWQtMCcKPiBbICAgIDAuMjEyMzg5XSBsZWRzLWdwaW8gbGVkczogcHJvYmUgd2l0aCBkcml2ZXIg
bGVkcy1ncGlvIGZhaWxlZCB3aXRoIGVycm9yIC0yMgoKSSB0aGluayB0aGlzIG1heSBiZSBiZWNh
dXNlIHRoZSByazMzOTkgaXMgbWlzc2luZyBncGlvLXJhbmdlcyBkZXNwaXRlIGl0IGlzIGEKbmV3
IHBsYXRmb3JtIGFuZCBzaG91bGQgaGF2ZSBoYWQgaXRzIGdwaW8tcmFuZ2VzIGRlZmluZWQgaW4K
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktYmFzZS5kdHNpIC4uLgoKQSBidW5j
aCBvZiB0aGVzZSByb2NrY2hpcHMgc2VlbSB0byBoYXZlIHRoaXMgcHJvYmxlbSBkZXNwaXRlIHRo
ZQpjb2RlIGluIHBpbmN0cmwtcm9ja2NoaXAuYyB0aGF0IHNheXM6CgogICAgLyoKICAgICAqIEZv
ciBEZXZpY2VUcmVlLXN1cHBvcnRlZCBzeXN0ZW1zLCB0aGUgZ3BpbyBjb3JlIGNoZWNrcyB0aGUK
ICAgICAqIHBpbmN0cmwncyBkZXZpY2Ugbm9kZSBmb3IgdGhlICJncGlvLXJhbmdlcyIgcHJvcGVy
dHkuCiAgICAgKiBJZiBpdCBpcyBwcmVzZW50LCBpdCB0YWtlcyBjYXJlIG9mIGFkZGluZyB0aGUg
cGluIHJhbmdlcwogICAgICogZm9yIHRoZSBkcml2ZXIuIEluIHRoaXMgY2FzZSB0aGUgZHJpdmVy
IGNhbiBza2lwIGFoZWFkLgogICAgICoKICAgICAqIEluIG9yZGVyIHRvIHJlbWFpbiBjb21wYXRp
YmxlIHdpdGggb2xkZXIsIGV4aXN0aW5nIERldmljZVRyZWUKICAgICAqIGZpbGVzIHdoaWNoIGRv
bid0IHNldCB0aGUgImdwaW8tcmFuZ2VzIiBwcm9wZXJ0eSBvciBzeXN0ZW1zIHRoYXQKICAgICAq
IHV0aWxpemUgQUNQSSB0aGUgZHJpdmVyIGhhcyB0byBjYWxsIGdwaW9jaGlwX2FkZF9waW5fcmFu
Z2UoKS4KICAgICAqLwogICAgaWYgKCFvZl9wcm9wZXJ0eV9wcmVzZW50KGJhbmstPm9mX25vZGUs
ICJncGlvLXJhbmdlcyIpKSB7CiAgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpwY3RsbnAgPSBv
Zl9nZXRfcGFyZW50KGJhbmstPm9mX25vZGUpOwogICAgICAgIHN0cnVjdCBwaW5jdHJsX2RldiAq
cGN0bGRldiA9IE5VTEw7CgogICAgICAgIGlmICghcGN0bG5wKQogICAgICAgICAgICByZXR1cm4g
LUVOT0RBVEE7CgogICAgICAgIHBjdGxkZXYgPSBvZl9waW5jdHJsX2dldChwY3RsbnApOwogICAg
ICAgIG9mX25vZGVfcHV0KHBjdGxucCk7CiAgICAgICAgaWYgKCFwY3RsZGV2KQogICAgICAgICAg
ICByZXR1cm4gLUVOT0RFVjsKCiAgICAgICAgcmV0ID0gZ3Bpb2NoaXBfYWRkX3Bpbl9yYW5nZShn
YywgZGV2X25hbWUocGN0bGRldi0+ZGV2KSwgMCwKICAgICAgICAgICAgICAgICAgICAgICAgIGdj
LT5iYXNlLCBnYy0+bmdwaW8pOwogICAgICAgIGlmIChyZXQpIHsKICAgICAgICAgICAgZGV2X2Vy
cihiYW5rLT5kZXYsICJGYWlsZWQgdG8gYWRkIHBpbiByYW5nZVxuIik7CiAgICAgICAgICAgIGdv
dG8gZmFpbDsKICAgICAgICB9CiAgICB9CgpOb3RpY2UgZGVyZWZlcmVuY2Ugb2YgZ3Bpb2xpYiBp
bnRlcm5hbCBnYy1iYXNlIGhlcmUuCgogICAgICAgIHJldCA9IGdwaW9jaGlwX2FkZF9waW5fcmFu
Z2UoZ2MsIGRldl9uYW1lKHBjdGxkZXYtPmRldiksIDAsCiAgICAgICAgICAgICAgICAgICAgICAg
ICBnYy0+YmFzZSwgZ2MtPm5ncGlvKTsKCmFyZ3VtZW50cyBhcmUgZ3BpcGNoaXAsIHBpbmN0b250
cm9sIGRldmljZSBuYW1lLApncGlvIG9mZnNldCwgcGluIG9mZnNldCwgbnVtYmVyIG9mIHBpbnMu
CgpHUElPIG9mZnNldCBhbHdheXMgMD8/IFBhc3NpbmcgR1BJTyBvZmZzZXQgYXMgcGluIG9mZnNl
dD8/CgpUaGlzIGlzIHByb2JhYmx5IGp1c3Qgd29ya2luZyBiZWNhdXNlIG9mIGx1Y2sgdGhhdCAw
LDAgaXMgcGFzc2VkLgoKVGhpcyBzaG91bGQgcHJvYmFibHkgcmF0aGVyIGJlIHNvbWV0aGluZyBs
aWtlOgoKICAgICAgICByZXQgPSBncGlvY2hpcF9hZGRfcGluX3JhbmdlKGdjLCBkZXZfbmFtZShw
Y3RsZGV2LT5kZXYpLCBnYy0+YmFzZSwKICAgICAgICAgICAgICAgICAgICAgICAgIGJhbmstPmJh
bmtfbnVtICogYmFuay0+bnJfcGlucywgZ2MtPm5ncGlvKTsKCkhlcmUgd2UgcHV0IHRoZSBhc3Np
Z25lZCAoYnkgZ3Bpb2xpYikgZ2MtPmJhc2UgaW4gdGhlIHJpZ2h0IHBsYWNlLCB0aGVuCmJhbmst
PmJhbmtfbnVtIHNob3VsZCBiZSAwLDEsMi4uLiBhbmQgYmFuay0+bnJfcGlucyBhbHdheXMgMzIg
KEkgdGhpbmspLgoKSm9uYXMgY2FuIHlvdSB0ZXN0IHRoaXMgb25lbGluZXIgY2hhbmdlPyBJIGNh
biBzZW5kIGEgcHJvcGVyIHBhdGNoCmlmIGl0IGhlbHBzLgoKSWYgdGhpcyB3b3JrcyB0aGUgRFRT
IGZpbGVzIGNhbiAoU0hPVUxEKSBiZSBmaXhlZCB3aXRoIHByb3BlciByYW5nZXMgbGF0ZXIuCgpJ
dCB3b3VsZCBiZSBuaWNlIGlmIHdlIGNvdWxkIGF1Z21lbnQgdGhlIHJvY2tjaGlwIHBpbmN0cmwg
RFQgc2NoZW1hIHRvCm1ha2UgZ3Bpby1yYW5nZXMgbWFuZGF0b3J5IG9uIG5ldyBTb0NzLgoKWW91
cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
