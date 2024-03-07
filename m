Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE4A3C54E49
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Mar 2024 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8b5a1bfaycx4r2nfgscbnu2B00NBQWe5ltd+jcyBYXM=; b=fkdTTPoet7ijNk
	wsZPFVruXc49KBXWU4gpdDXjLW7xAYbE90XRShy3lXmk1MkprA2d6NWf63QeOInW1uc+fKeeaqHsQ
	Qmu6grd4A0HtyxRKI2FvXCJwtckBLpjSvWP+9LqE93yek6Kg8Qr7cXhhjuqxL2ulK1WsJxGpkLFOp
	icDHaAU9gvsf/z4JTSdUWpQEezAEKMhxm0RXjfw0w7Q/4hcjctmpN01tLUyNy7qErwosqqt6tCon4
	JEyWpZImFWyO3TXpFYm6//i1+9GnSz85jDYJ5Rx1OT1OfKuaJ0Efk/5DA+tLcTCzLHGwUxpZjPjWy
	5qwKAY6sAnMKqhwLV6Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riAZP-00000003zaI-2cmu;
	Thu, 07 Mar 2024 10:01:47 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riAZK-00000003zYH-2WSo;
	Thu, 07 Mar 2024 10:01:44 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-dc74435c428so680061276.2;
        Thu, 07 Mar 2024 02:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709805701; x=1710410501; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V3ZN53wlMkq0k9JQSMwAY7ICJ5wERnlbCddkoAN6BhU=;
        b=EgeEd5PrABmFM5K32tGrbZ8zcvkRcDxGv0KWPPXbKM3SgemNAElEMmaYN6Fn7PCvVX
         VIJb+XDVGoSUp6sgMa7pHQku1h/Rbmu8B939x1U2uXmCq2J4kKq0wVVDkhFVME+aEBq3
         tweP+iSdHMm+KNg5B/Yip1yuCVjhJ44ydmPpVBaJgt0Ng6KpeMd5mv5crKDtXUboyg7k
         RD0NYKu4T9vKibr7cWwIQx7uDl3baaomjC0eVF8ZLamQoXJ0IlIdhjFfn9pK3UE+rt7X
         ioH1S3caWPX7AsSfJWX03T5sh1WeXK5zx5QqEILhhtywfEBI6v71q2qccYFF2yzyIPgU
         y07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709805701; x=1710410501;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V3ZN53wlMkq0k9JQSMwAY7ICJ5wERnlbCddkoAN6BhU=;
        b=lWQR5csnLk/EOhn4Ez6su5tRrF1cuFz0iKkZMxyidP+ZWZTWjH1BW3+IGZINJUoWKU
         /3ZcvNHRvUUcN4dDGJMQRFBXQHkxS/GQWdYVcant54dqQLylsNJ/Vgvm7KSRm9EGnqdU
         GYNq1P7OC2FedjKJMIVrEG3vpZTG9kbsa5/blX6JDvjMxgtsLJyfUjFjuT/jV7iaHj8j
         dTcRUYKAlUlkav1XQ3hKGm902V68b4RMutxKk6UE4gOX+iwivlCOg89/gLSiHnAn1ets
         /T3eqb8uLdU0/dxYNaG9cwG1KIz7omIbQo75OcUURJ+y8aFVgkl51gTkErzsbhZFJBBp
         mK+A==
X-Forwarded-Encrypted: i=1; AJvYcCXDNolHAh5UVHp8LspT6D16tgyl3aQpCkkZ/tTSJTSdxJNxx2uWD+GZbMiIpYJIMVg+DOiyiURG2zPFREHZTDx8vVYXboWugVnENMEQMGJS1pAqMqFo/UwExqoa+8hmIoYaTtgG7TuSeFd/3TkzlkdE3RM6ACNDUxakTwvzOZK38Wsa/0UNtilKo3AFqcDTYYIvG9Pv/x0D
X-Gm-Message-State: AOJu0YzeCJp7auEbuGvz3bo+41nWH0Ml8WIKvkGTTI7HQX7MQ2qSTVkl
	g1pLgfV+8cjpZ7Lqhdi3UdgOzgTSTk2kBm7jGhZJzUNxDJJcEWT7zdfEeqxqgLHQ0H9BQp0t8M4
	OeQtl16b7dPs5wXrpMpA63k3ETLk=
X-Google-Smtp-Source: AGHT+IGS6EU1fSL8CmxpiwqnpCtafSASmwHGJWBT9/VlVEzQRbwTeiNfDeG9ON5Dk9DGzzofIIqj9nBVXs0QDEIPDA4=
X-Received: by 2002:a25:14d7:0:b0:dc2:65f4:1541 with SMTP id
 206-20020a2514d7000000b00dc265f41541mr13629648ybu.41.1709805700861; Thu, 07
 Mar 2024 02:01:40 -0800 (PST)
MIME-Version: 1.0
References: <20240307095318.3651498-1-rick.wertenbroek@gmail.com>
In-Reply-To: <20240307095318.3651498-1-rick.wertenbroek@gmail.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Thu, 7 Mar 2024 11:01:03 +0100
Message-ID: <CAAEEuhrxR14nrVqeqV_OfHjqkMaKx1S6KzcnsJqr02VUnS8oyA@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip: Fix typo in function names
To: rick.wertenbroek@heig-vd.ch
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_020142_667676_918DA27C 
X-CRM114-Status: GOOD (  15.20  )
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

T24gVGh1LCBNYXIgNywgMjAyNCBhdCAxMDo1NOKAr0FNIFJpY2sgV2VydGVuYnJvZWsKPHJpY2su
d2VydGVuYnJvZWtAZ21haWwuY29tPiB3cm90ZToKPgo+IFNldmVyYWwgZnVuY3Rpb25zIGhhZCAi
cm9jaGNoaXAiIGluc3RlYWQgb2YgInJvY2tjaGlwIiBpbiB0aGVpciBuYW1lLgo+IFJlcGxhY2Ug
InJvY2hjaGlwIiBieSAicm9ja2NoaXAiLgo+Cj4gU2lnbmVkLW9mZi1CeTogUmljayBXZXJ0ZW5i
cm9layA8cmljay53ZXJ0ZW5icm9la0BnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jIHwgIDQgKystLQo+ICBkcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc25wcy1wY2llMy5jICAgICB8IDEyICsrKysrKy0t
LS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5n
LWNvbWJwaHkuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29t
YnBoeS5jCj4gaW5kZXggNzZiOWNmNDE3NTkxLi4zNWQ1YzE4NjYxYTMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiArKysg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+IEBA
IC0yNDUsNyArMjQ1LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9jb21icGh5X2V4aXQoc3RydWN0
IHBoeSAqcGh5KQo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+IC1zdGF0aWMgY29uc3Qgc3Ry
dWN0IHBoeV9vcHMgcm9jaGNoaXBfY29tYnBoeV9vcHMgPSB7Cj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgcGh5X29wcyByb2NrY2hpcF9jb21icGh5X29wcyA9IHsKPiAgICAgICAgIC5pbml0ID0gcm9j
a2NoaXBfY29tYnBoeV9pbml0LAo+ICAgICAgICAgLmV4aXQgPSByb2NrY2hpcF9jb21icGh5X2V4
aXQsCj4gICAgICAgICAub3duZXIgPSBUSElTX01PRFVMRSwKPiBAQCAtMzUyLDcgKzM1Miw3IEBA
IHN0YXRpYyBpbnQgcm9ja2NoaXBfY29tYnBoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICAgICAgICAgfQo+Cj4gLSAg
ICAgICBwcml2LT5waHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBOVUxMLCAmcm9jaGNoaXBfY29t
YnBoeV9vcHMpOwo+ICsgICAgICAgcHJpdi0+cGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgTlVM
TCwgJnJvY2tjaGlwX2NvbWJwaHlfb3BzKTsKPiAgICAgICAgIGlmIChJU19FUlIocHJpdi0+cGh5
KSkgewo+ICAgICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBjcmVhdGUgY29t
YnBoeVxuIik7Cj4gICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHByaXYtPnBoeSk7Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUz
LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc25wcy1wY2llMy5jCj4gaW5k
ZXggMTIxZTU5NjFjZTExLi4zY2RjNzYyNWIzMDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNucHMtcGNpZTMuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMKPiBAQCAtMTg3LDcgKzE4Nyw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfcDNwaHlfb3BzIHJrMzU4OF9vcHMgPSB7Cj4gICAg
ICAgICAucGh5X2luaXQgPSByb2NrY2hpcF9wM3BoeV9yazM1ODhfaW5pdCwKPiAgfTsKPgo+IC1z
dGF0aWMgaW50IHJvY2hjaGlwX3AzcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICtzdGF0aWMg
aW50IHJvY2tjaGlwX3AzcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICB7Cj4gICAgICAgICBz
dHJ1Y3Qgcm9ja2NoaXBfcDNwaHlfcHJpdiAqcHJpdiA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+
ICAgICAgICAgaW50IHJldDsKPiBAQCAtMjEwLDcgKzIxMCw3IEBAIHN0YXRpYyBpbnQgcm9jaGNo
aXBfcDNwaHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4gICAgICAgICByZXR1cm4gcmV0Owo+ICB9
Cj4KPiAtc3RhdGljIGludCByb2NoY2hpcF9wM3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPiAr
c3RhdGljIGludCByb2NrY2hpcF9wM3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPiAgewo+ICAg
ICAgICAgc3RydWN0IHJvY2tjaGlwX3AzcGh5X3ByaXYgKnByaXYgPSBwaHlfZ2V0X2RydmRhdGEo
cGh5KTsKPgo+IEBAIC0yMTksOSArMjE5LDkgQEAgc3RhdGljIGludCByb2NoY2hpcF9wM3BoeV9l
eGl0KHN0cnVjdCBwaHkgKnBoeSkKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiAtc3RhdGlj
IGNvbnN0IHN0cnVjdCBwaHlfb3BzIHJvY2hjaGlwX3AzcGh5X29wcyA9IHsKPiAtICAgICAgIC5p
bml0ID0gcm9jaGNoaXBfcDNwaHlfaW5pdCwKPiAtICAgICAgIC5leGl0ID0gcm9jaGNoaXBfcDNw
aHlfZXhpdCwKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfb3BzIHJvY2tjaGlwX3AzcGh5X29w
cyA9IHsKPiArICAgICAgIC5pbml0ID0gcm9ja2NoaXBfcDNwaHlfaW5pdCwKPiArICAgICAgIC5l
eGl0ID0gcm9ja2NoaXBfcDNwaHlfZXhpdCwKPiAgICAgICAgIC5zZXRfbW9kZSA9IHJvY2tjaGlw
X3AzcGh5X3NldF9tb2RlLAo+ICAgICAgICAgLm93bmVyID0gVEhJU19NT0RVTEUsCj4gIH07Cj4g
QEAgLTI4MCw3ICsyODAsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3AzcGh5X3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgICAgICAgIHJldHVybiBwcml2LT5u
dW1fbGFuZXM7Cj4gICAgICAgICB9Cj4KPiAtICAgICAgIHByaXYtPnBoeSA9IGRldm1fcGh5X2Ny
ZWF0ZShkZXYsIE5VTEwsICZyb2NoY2hpcF9wM3BoeV9vcHMpOwo+ICsgICAgICAgcHJpdi0+cGh5
ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgTlVMTCwgJnJvY2tjaGlwX3AzcGh5X29wcyk7Cj4gICAg
ICAgICBpZiAoSVNfRVJSKHByaXYtPnBoeSkpIHsKPiAgICAgICAgICAgICAgICAgZGV2X2Vycihk
ZXYsICJmYWlsZWQgdG8gY3JlYXRlIGNvbWJwaHlcbiIpOwo+ICAgICAgICAgICAgICAgICByZXR1
cm4gUFRSX0VSUihwcml2LT5waHkpOwo+IC0tCj4gMi4yNS4xCj4KCkNvbXBpbGVkIGFuZCB0ZXN0
ZWQgb24gUkszNTg4IGJvYXJkcyAoRnJpZW5kbHlFbGVjIE5hbm9QQy1UNiwgYW5kIENNMzU4OCku
CiJncmVwIC1ybmkgcm9jaGNoaXAgLiIgaW5zaWRlIHRoZSBrZXJuZWwgZm9sZGVyIHRvIG1ha2Ug
c3VyZSBubwpvY2N1cnJlbmNlIHdhcyBtaXNzZWQuCgpCZXN0IHJlZ2FyZHMsClJpY2sKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
