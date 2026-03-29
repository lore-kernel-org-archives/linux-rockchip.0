Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9B35F3D610
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Mar 2026 16:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APkiyefgKt5gw5QemgCuYWrnFLoSM7baUVR+QaaGoZI=; b=FJxwxWlc8CSGeb
	XA9p+zmN76zF/bphAJfsVGRh3b5ZIQUm6dFjI5yU9P2x2LSN9N1xbaiuNBW+AjfDVUZixAoCkfXJm
	j4qd+NNrGrPBEsnAYw9uheofy9H1hf7N3YY9A8/F1VtaKeclUM1Al8YML+I+Lt6MrAG7vcL1UPvFk
	3oSceXofFwXCFC8xCcU/TSQRYQggl/VcAjUfRUL+hqEspvfR24a88MkoXlIh2vMxGMJMUCEmvjuEy
	e9PkGRfrQlsSQ84MzcnQItoAax1LBVbsrm8ru+7VvRmVqtNcKEs8mjyLzTjnBYSOo8j+y0uUk9JCJ
	go7OOmFR5RSONtxLQIMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6t0W-0000000A79o-0NXW;
	Sun, 29 Mar 2026 16:29:00 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6t0T-0000000A796-1FVg
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Mar 2026 16:28:58 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-467161c4b89so2079851b6e.3
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Mar 2026 09:28:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774801736; cv=none;
        d=google.com; s=arc-20240605;
        b=knk4dp7C8kpwiWl0JW5JyZAvxvQabdaj2zSscXOQbnZ0PPWdLi9ogG9G7ZIlz08Nfq
         QbI4JGWQKUVlakVzK1R2eo89/GjD9w+Rd5wQ7oUNmcUmJTLSmzHYZMclNtoIhwKjL22+
         Epb4ihn2JCwHtIrmBNAVK2xRcOrpx8NI+fh6s3bqzYt4aNSHTO3oNOwTIErfw/aW67jJ
         a1cOkSAqWSNdTfNDilgnt6Jz4/3KBXfaZmQyY6I36jBTGcidpOhBsPLOV+p227n6a8Y+
         fgOAxI8/OtoEL6xQJH4jTUrHlWkTc58L9INNnwdwq9x59xUjLS/L9cEMPy1Xw4ALJfZI
         1N9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=MEoMF+RBv39WsZBwbT0yI7vq+gErMCo84OM5Ru4mKP4=;
        fh=EV/oMcjvojkEAZZGn0dRpZeA+IMlOTmxsP0Jizw1tag=;
        b=izvttXWUK/Kcb08sP6M9JRZwQg4Lj8QA0TjeRWvhpM3omVBYIre7+aW22dvJoMMMNK
         fYjESzTfSio5Md8vjg8zoax5ska1nmiAskvHDB9OTcz96WgbhlI0tUDuSm5i0yWVa0Ey
         pJumPRwf4FwoNtX0ypvUB8Ztpr0ls5goc7ca8dJ4Y7FH7pYZGR1ivSY3jVSyfTmsjdQX
         jo9OedT3HW27dfnmd0m91v1cRmQy2XpJpj4sUXRJXSEG81A/+JvzcEiZn5eu4fGtCC4w
         xgSqH4XRyXyZC80h/7M6KcRmHNwhYb5XedPxlPxrW/KeSdCDkria7j+X06VZXwtngVGV
         cbTw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774801736; x=1775406536; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MEoMF+RBv39WsZBwbT0yI7vq+gErMCo84OM5Ru4mKP4=;
        b=hvaykoeHp+kS46060BJafxPu7wpbTBRR1COB+XQRyDlXu+UxL/D9MPPZBvNYToudZn
         b6iEeWuY5lfgQgOW/NPe2jmDExPS8AlWdPxZQ2t9BfxFvwi6Nv/Ji0mVzT8J+r2b9J1k
         WuZo8mX+4hFbLHHCnkFZAsEjsQpRBdkRigd1dP4iLYKuFT205h+7reK7Gg/5eZU0D/QU
         71+MoGsuPTH9NZOCKdwKL71CbPPjXBNFk8QiBBsYCfiyrIyCUEIM489PhYhkXs6EJz6C
         Zi/FsCsET/CiISubAWBMamCVZ14M+MXQ9t2j5EHtY5F9hgVivJMyx65l+HrUtEgInr9l
         NUNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774801736; x=1775406536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MEoMF+RBv39WsZBwbT0yI7vq+gErMCo84OM5Ru4mKP4=;
        b=bo56V2vVO7g5YYCo3WXpOEuFJtmwWbGXSypnPIPFYGuJ/3DrU8yYGnPOHhHhJxtS8t
         KM2lUNDEoPNW32+lbqmEora+RlxFmGNJEcXduUqtxxVX2uYW0SRlzcL6WkRnC0GNKw9T
         VGnoHz1yji3LKPcljyN0xhXzkP5RjmRfb4GU6EQpIabeLgDgI6rxdgU8M0Cg4Ui+QiDx
         +M5RhZYQhDv/EIjPb1O+rgZ/qDpt9oC/C5fCVKAw0r2EG4DPxpxx4hiFou96KpX1/m0Y
         Q+6o0/gAMBnVdUJYwz9Ox1hHbt0IWEEUqA1Waz+pdG1KrvBByGqakowiDwjvG7ksx1JH
         e9MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVx+ai5KlpJp2nhNCsWWenFiids6Lr4PlnbfwJQt2jghEyqrxGSJwDZx14O0McR7SmUut+UbzOHib+LUuw9jA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwL4Pln3y2SCLE2+JISOebFupe3DnHjGaGZwAPkjGkfJeKkXrUt
	rQbM3kNm6kBArV7t2cmsnAc//qIYBiChocBTigGZgvfzMueb9V/95YmXHIa7UH0d+sTHEtzgbfU
	cJnqAgnxLG4nVCTGdSfEGqlJhCceMfHOp0CDGjJw=
X-Gm-Gg: ATEYQzwUo5wpzoO70TsVBL1rLTRXu7arvjIDhqgyMBYHjsH5LumeeVI2Z0uOxmubkx8
	Nk8CVc66J7AaZwn69MigwpE2f6XAPpvXfZTenr95LKefaeW4nBj6mezhwD9rrxOOZTNk1zHbv8p
	QMpmzXVQkZ3o9F6vNWMG37kvPctVsrAePxZ5WYzoRqwmoXLe+VFSyOCGUoZO+gUrAY6Do5ZknPN
	8v57D+M9ob2Fr0fnKXCGi8tunw9LKhM/nK8D0DZ7pKaBuaUueooz4EXVqPJCiWaUWU9H+hgB6DP
	kmAR3pDm
X-Received: by 2002:a05:6808:1787:b0:466:f25d:3289 with SMTP id
 5614622812f47-46a8a59ada9mr4202752b6e.36.1774801736228; Sun, 29 Mar 2026
 09:28:56 -0700 (PDT)
MIME-Version: 1.0
References: <20260311003744.32099-1-rosenp@gmail.com>
In-Reply-To: <20260311003744.32099-1-rosenp@gmail.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 29 Mar 2026 11:28:44 -0500
X-Gm-Features: AQROBzCwjIyGP-w7kiYReAgguovzguNLv2tsCv9-iol2yPNpc4COdHBUbjt8abo
Message-ID: <CABb+yY3jgD53t2ii_xmPvBG6pu2eX0cFP10sFGRMiqqS-z9zoA@mail.gmail.com>
Subject: Re: [PATCH] mailbox: rockchip: kzalloc + kcalloc to kzalloc
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260329_092857_340319_47584D0A 
X-CRM114-Status: GOOD (  14.58  )
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

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgNzozOOKAr1BNIFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21h
aWwuY29tPiB3cm90ZToKPgo+IFVzZSBhIGZsZXhpYmxlIGFycmF5IG1lbWJlciB0byByZWR1Y2Ug
YWxsb2NhdGlvbnMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWls
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tYWlsYm94L3JvY2tjaGlwLW1haWxib3guYyB8IDkgKyst
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tYWlsYm94L3JvY2tjaGlwLW1haWxib3guYyBiL2Ry
aXZlcnMvbWFpbGJveC9yb2NrY2hpcC1tYWlsYm94LmMKPiBpbmRleCA0ZDk2NmNiMmVkMDMuLmEx
YTdkZWU2NDM1NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21haWxib3gvcm9ja2NoaXAtbWFpbGJv
eC5jCj4gKysrIGIvZHJpdmVycy9tYWlsYm94L3JvY2tjaGlwLW1haWxib3guYwo+IEBAIC00Niw3
ICs0Niw3IEBAIHN0cnVjdCByb2NrY2hpcF9tYm94IHsKPiAgICAgICAgIC8qIFRoZSBtYXhpbXVt
IHNpemUgb2YgYnVmIGZvciBlYWNoIGNoYW5uZWwgKi8KPiAgICAgICAgIHUzMiBidWZfc2l6ZTsK
Pgo+IC0gICAgICAgc3RydWN0IHJvY2tjaGlwX21ib3hfY2hhbiAqY2hhbnM7Cj4gKyAgICAgICBz
dHJ1Y3Qgcm9ja2NoaXBfbWJveF9jaGFuIGNoYW5zW107Cj4gIH07Cj4KPiAgc3RhdGljIGludCBy
b2NrY2hpcF9tYm94X3NlbmRfZGF0YShzdHJ1Y3QgbWJveF9jaGFuICpjaGFuLCB2b2lkICpkYXRh
KQo+IEBAIC0xNzMsMTUgKzE3MywxMCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX21ib3hfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPgo+ICAgICAgICAgZHJ2X2RhdGEgPSAoY29u
c3Qgc3RydWN0IHJvY2tjaGlwX21ib3hfZGF0YSAqKSBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBk
ZXYtPmRldik7Cj4KPiAtICAgICAgIG1iID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVv
ZigqbWIpLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIG1iID0gZGV2bV9remFsbG9jKCZwZGV2LT5k
ZXYsIHN0cnVjdF9zaXplKG1iLCBjaGFucywgZHJ2X2RhdGEtPm51bV9jaGFucyksIEdGUF9LRVJO
RUwpOwo+ICAgICAgICAgaWYgKCFtYikKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07
Cj4KPiAtICAgICAgIG1iLT5jaGFucyA9IGRldm1fa2NhbGxvYygmcGRldi0+ZGV2LCBkcnZfZGF0
YS0+bnVtX2NoYW5zLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZigq
bWItPmNoYW5zKSwgR0ZQX0tFUk5FTCk7Cj4gLSAgICAgICBpZiAoIW1iLT5jaGFucykKPiAtICAg
ICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gLQo+ICAgICAgICAgbWItPm1ib3guY2hhbnMg
PSBkZXZtX2tjYWxsb2MoJnBkZXYtPmRldiwgZHJ2X2RhdGEtPm51bV9jaGFucywKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVvZigqbWItPm1ib3guY2hhbnMpLCBH
RlBfS0VSTkVMKTsKPiAgICAgICAgIGlmICghbWItPm1ib3guY2hhbnMpCj4gLS0KPiAyLjUzLjAK
PgpBcHBsaWVkIHRvIG1haWxib3gvZm9yLW5leHQKVGhhbmtzCkphc3NpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
