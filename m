Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9B23C27C40
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Aug 2023 10:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAlDs3XQmj9QbvlKARQnpJZgU2pEmIf9hT41mPWUKy4=; b=YVKUo2R4yT5bgd
	QD95XN6LSkAHrftAb97dBHXEj0YYjbMYRtG2vTyOoMrlf9bTYSnQ4nGRtlqWmyVqg3I89oYfa/cCI
	0upfl9llVWB+nJbrJ3BvwAHx7STOTvNktwGl7eZa81Qlx5kqM25ZdnRx4ERujk8OqBx1dclCLsBUE
	n47XnoNnMq/DLeOPlM9deUNZ+JB78UHgj1YyxXJd6PeCOLzTVS7QHEp7/cGWZ90yUb0krRhwMph9X
	ae5EzZuBdIn29K1bkjLKLw8cbP/06O2OYjc0rIS+SX7ymcI5gssIQPJY2aWgULkC3CkcUn15tzSiB
	6oPbG22jQITkoC6UMzdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ7l1-002tWN-17;
	Thu, 24 Aug 2023 10:40:07 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ7ky-002tUt-1u
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Aug 2023 10:40:06 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-564af0ac494so3928047a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Aug 2023 03:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692873600; x=1693478400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FL6saOWnrHGU7ccUrEeEK4gz+z0u/G0uK6Gzeoe2wpo=;
        b=ZJ1tN69ADo4Asysbh24J6TFccfZLmEBC6o6vjhq+fb0xpSCXKubkQCuvafdPCF68K5
         HRjlkT+hDoj3zxorpcm4UVapagx2b2khb/dIlVxCAugGkeleng9epWNIL5ncMzcjZ1fa
         sj+CMaw+9m5v9dXGOx654JFIC8d3c0Nr6b3Z8qxWCBefvV1ZTB0n38XEOFZ1lmeWgXnZ
         ytEnpTm+KGk1aLcHYtouz01Zsc+fAm0iEl9yfa9KdXfBrm3gJNx+LFpQqPZVHsJJ3vfl
         nieNYyBQZYzNzqulRf3CKmr4JmNro96ea6KKKoUq2YXJP84UloPI24UYHpZ6xH2yd6X/
         r38g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692873600; x=1693478400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FL6saOWnrHGU7ccUrEeEK4gz+z0u/G0uK6Gzeoe2wpo=;
        b=LOec9etg7LarZxFMCHcmgKtdIl9b3dcYtYEuDYlUs3mFw4lXqmrpGzDm1IjpfkpSkT
         6jVE2GUH0AKKdYmQTXMKSRXmFHGLiAmqhNNVhf3KBPaz/+3lykDu4aznTGeeH/8FQBZH
         Uxa87fBbZ/QBahF0MVK8Ge5kWk+fFUY8rz75GDIBEayW5GD9GkSDuPXIVvw02u6AQAWB
         I24MrWqpdTMBZowaVpc3WcJONsWRkmlaaEJFraAsu+xH6I8Bx4RLCxQkT7kl3xi3X3dH
         T/jYSUwMe/CGmsZ7GGi3Eslxzwp+KwaCahZ2w9jiOGcL6mUbH3bfMushMIjDQa3wtA8Y
         eo+w==
X-Gm-Message-State: AOJu0YwQs00jrHLQVTrkmEmkKzq3ecqCOKQUD5TTsqqiv6PgLsH2Jp/W
	NhPuL3UKqpjF4WRKH+r1Vaw7LuQAiUIbovF/alJC+r3aVAM=
X-Google-Smtp-Source: AGHT+IH79HbkmaIDqA8Y9uT8gm+LZ4g6D/0I4575q8jokqxj+FsVJv8m5gS/Pf4vebGqthYLskmb5BHfVWtIkz5DXWE=
X-Received: by 2002:a17:90b:124f:b0:26c:f6d2:2694 with SMTP id
 gx15-20020a17090b124f00b0026cf6d22694mr11650180pjb.12.1692873599976; Thu, 24
 Aug 2023 03:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230824013858.303105-1-marex@denx.de>
In-Reply-To: <20230824013858.303105-1-marex@denx.de>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 24 Aug 2023 05:39:48 -0500
Message-ID: <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before use
To: Marek Vasut <marex@denx.de>
Cc: linux-media@vger.kernel.org, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_034004_634598_2D40A0E3 
X-CRM114-Status: GOOD (  19.22  )
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

T24gV2VkLCBBdWcgMjMsIDIwMjMgYXQgODozOeKAr1BNIE1hcmVrIFZhc3V0IDxtYXJleEBkZW54
LmRlPiB3cm90ZToKPgo+IFRoZSBpLk1YOE1NL04vUCBkb2VzIG5vdCBkZWZpbmUgdGhlIC5yZXNl
dCBvcCBzaW5jZSByZXNldCBvZiB0aGUgVlBVIGlzCj4gZG9uZSBieSBnZW5wZC4gQ2hlY2sgd2hl
dGhlciB0aGUgLnJlc2V0IG9wIGlzIGRlZmluZWQgYmVmb3JlIGNhbGxpbmcgaXQKPiB0byBhdm9p
ZCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UuCj4KPiBOb3RlIHRoYXQgdGhlIEZpeGVzIHRhZyBp
cyBzZXQgdG8gdGhlIGNvbW1pdCB3aGljaCByZW1vdmVkIHRoZSByZXNldCBvcAo+IGZyb20gaS5N
WDhNIEhhbnRybyBHMiBpbXBsZW1lbnRhdGlvbiwgdGhpcyBpcyBiZWNhdXNlIGJlZm9yZSB0aGlz
IGNvbW1pdAo+IGFsbCB0aGUgaW1wbGVtZW50YXRpb25zIGRpZCBkZWZpbmUgdGhlIC5yZXNldCBv
cC4KCkkgYW0gc3VycHJpc2VkIEkgZGlkbid0IGhhdmUgaXNzdWVzIHdoZW4gSSB3YXMgdGVzdGlu
ZyB0aGUgOE1RIGFuZAo4TU0sIGJ1dCB0aGlzIG1ha2VzIHNlbnNlLgo+Cj4gRml4ZXM6IDY5NzFl
ZmI3MGFjMyAoIm1lZGlhOiBoYW50cm86IEFsbG93IGkuTVg4TVEgRzEgYW5kIEcyIHRvIHJ1biBp
bmRlcGVuZGVudGx5IikKPiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5k
ZT4KClJldmlld2VkLWJ5OiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4KPiAtLS0KPiBD
YzogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cj4gQ2M6IEJlbmphbWluIEdhaWduYXJk
IDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IENjOiBFemVxdWllbCBHYXJjaWEg
PGV6ZXF1aWVsQHZhbmd1YXJkaWFzdXIuY29tLmFyPgo+IENjOiBNYXVybyBDYXJ2YWxobyBDaGVo
YWIgPG1jaGVoYWJAa2VybmVsLm9yZz4KPiBDYzogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5n
dXRyb25peC5kZT4KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+IGluZGV4IDQyM2ZjODVkNzllZTMuLjUw
ZWMyNGM3NTNlOWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19kcnYuYwo+IEBAIC0xMjUsNyArMTI1LDggQEAgdm9pZCBoYW50cm9fd2F0Y2hk
b2coc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICAgICAgICAgY3R4ID0gdjRsMl9tMm1fZ2V0
X2N1cnJfcHJpdih2cHUtPm0ybV9kZXYpOwo+ICAgICAgICAgaWYgKGN0eCkgewo+ICAgICAgICAg
ICAgICAgICB2cHVfZXJyKCJmcmFtZSBwcm9jZXNzaW5nIHRpbWVkIG91dCFcbiIpOwo+IC0gICAg
ICAgICAgICAgICBjdHgtPmNvZGVjX29wcy0+cmVzZXQoY3R4KTsKPiArICAgICAgICAgICAgICAg
aWYgKGN0eC0+Y29kZWNfb3BzLT5yZXNldCkKPiArICAgICAgICAgICAgICAgICAgICAgICBjdHgt
PmNvZGVjX29wcy0+cmVzZXQoY3R4KTsKPiAgICAgICAgICAgICAgICAgaGFudHJvX2pvYl9maW5p
c2godnB1LCBjdHgsIFZCMl9CVUZfU1RBVEVfRVJST1IpOwo+ICAgICAgICAgfQo+ICB9Cj4gLS0K
PiAyLjQwLjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
