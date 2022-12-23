Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CBCC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 03:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVk0U46FJUq5pqGJCWtMPxm9N1tp7PLSD/pHQQ0t/UE=; b=NAvmDW9lInQas/
	QIqfsIQZP2VgZ5zWVLRDJ2NnYWwl+1Dlb2Yq2OJWnOQQ9ISGMP9wU/mmy8sY9qPDuGCwgiImjWqDJ
	Cbpww8uMff/CupvyDGMXDqbZRwN2Z8hnxBaOKbf17LZcKnPbQsoKwBpZ63CEg/bKXCul1QE8SmakZ
	mdKcN62wB89J9hLoHBEnK8b3h+bsOBVc4S1cKl0PCzFgVP5za9fVkF3LY+9M3VBcwIEdfYpGGLrhg
	wAaMyHw0ycOXLpqGz9/tHRLS3Air1P57Zh/pQMgNp4JQHHLsmCLNl4v1vMvkK94EfsQsE59exsCEa
	hLSnVnRBmN1pP0brOn6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Ygj-002ePL-LW; Fri, 23 Dec 2022 03:25:37 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8YWx-002YyY-5c; Fri, 23 Dec 2022 03:15:33 +0000
Received: by mail-qt1-x833.google.com with SMTP id z12so2899503qtv.5;
        Thu, 22 Dec 2022 19:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jxQegkkj9vwcwQmlgiRBZpmPiXXLL04ENPvh1dXocQQ=;
        b=Oi1gbFOMd7AGH3Wy/1i0ZJfmpR7cCPmMKckDRTRVtpt9LB88Rov3ZAyQEEgzRuUHws
         pnjJvZGFQ5x2RF7JI1rAZFUNCZzF55KBmb5orCpjKAqMp9mef1OhUx9nLblahwQNxhWp
         Zvdh+8oZK/J75N3T0aXJoiLFw7ABU8bhxgkN98RXh8WOpxri0joB4iqfWaOYKviFMyvz
         6TRLyeKlm5Jlu391C9FgxRDzakxvailmnba3SBcxgtMt4Q1WWtS0H4g7tI062ECUtIpY
         0IMo4c9potFMO2qoouBowCOlXg4jI+6qSEC3ZiocDm9AcLqJYbhHmV+zUDTWQtkRoqiU
         NGjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jxQegkkj9vwcwQmlgiRBZpmPiXXLL04ENPvh1dXocQQ=;
        b=jX4KArva/tlu3J7vg21SWKALsvyt6LmkiLMaSmoqWOJJWJrfgmHVtJKzaOi8xACWsW
         5YE5si9VXX6xMEE9XjFVe5vzcR1OBjQAzgK2C3rFi8H2mH5VDhXURtc6Xg2et6VIVOwf
         znsXfeVPXeb0dSN+F7NfIIKmGnB9H7zemowWBSELqANiNhc4ZydV44lUsTdlAs5pWQsj
         9fGc6b0avKsvHoZ8HFTf1zeyR0UjBJOia6p1jP9dvIA4GBjqwhpa8TdUk5I8zUkA8U6Y
         ZFtVaZW77M7HEylYG1eYZM6xONhhfX74e5AwVficErG/GrJ5qedO3SLVsK3RUdg0ZSAV
         JQig==
X-Gm-Message-State: AFqh2koMW8UiNrnStl6ovmyYm0BQzEVhFNSgiQPNys0aj1/oW+WNcy/J
	4uKjVvRiMevbsSvMqDjLytkpSB8Y+uP2Pr4T3Ak=
X-Google-Smtp-Source: AMrXdXuGcr52bZ3FYkEdkWSYIjWZOP1Sfqc+3hwoASjeqB+nGprCuax5vNJKAX/uBVkFlq6T8nfmZ+8GKpdUHnCLQDc=
X-Received: by 2002:ac8:7a84:0:b0:3a9:8370:63d7 with SMTP id
 x4-20020ac87a84000000b003a9837063d7mr367489qtr.362.1671765329015; Thu, 22 Dec
 2022 19:15:29 -0800 (PST)
MIME-Version: 1.0
References: <Y6UXjiQpMFHQkXJ1@VM-66-53-centos> <Y6UXyMVDu8ZRFvJ5@VM-66-53-centos>
In-Reply-To: <Y6UXyMVDu8ZRFvJ5@VM-66-53-centos>
From: ty <zonyitoo@gmail.com>
Date: Fri, 23 Dec 2022 11:15:17 +0800
Message-ID: <CAMmci2URht+NBfkLxebGTPMKtHEC8eUu6gRUA1QbD4D044B30g@mail.gmail.com>
Subject: Re: [PATCH v8 3/3] dt-bindings: vendor-prefixes: Document EmbedFire
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Wenhao Cui <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_191531_619341_751C89DC 
X-CRM114-Status: GOOD (  12.95  )
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

V2UganVzdCBub3RpY2VkIHRoYXQgYWxsIHRoZSBvdGhlciAuZHRzIGZpbGVzIGluIHJvY2tjaGlw
IGRpZG4ndCBoYXZlCkBjb3B5cmlnaHQgY29tbWVudCBibG9jay4gU28gd2UgZGVjaWRlZCB0byBy
ZW1vdmUgaXQgaW4gVjkuCgpZdXRlbmcgWmhvbmcgPHpvbnlpdG9vQGdtYWlsLmNvbT4g5LqOMjAy
MuW5tDEy5pyIMjPml6XlkajkupQgMTA6NTHlhpnpgZPvvJoKPgo+IEZyb206IFdlbmhhbyBDdWkg
PGxhc3N0cDUwMTFAZ21haWwuY29tPgo+Cj4gRW1iZWRGaXJlIGlzIGEgbWFudWZhY3R1cmVyIG9m
IGVtYmVkIGNvbXB1dGVycyBhbmQgZWR1Y2F0aW9uIHBsYXRmb3JtIGZvcgo+IGVtYmVkIGRldmlj
ZXMgZnJvbSBEb25nZ3Vhbi4KPgo+IEFkZCB2ZW5kb3IgcHJlZml4IGZvciBpdC4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFdlbmhhbyBDdWkgPGxhc3N0cDUwMTFAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFl1dGVuZyBaaG9uZyA8em9ueWl0b29AZ21haWwuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgfCAyICsrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBpbmRleCAwMDQ5
M2I5NjJiZDcuLjBmMDRlZTMwYmRjMiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBAQCAtMzk2LDYgKzM5
Niw4IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ICAgICAgZGVzY3JpcHRpb246IEVsaW1vIEVuZ2lu
ZWVyaW5nIEx0ZC4KPiAgICAiXmVscGlkYSwuKiI6Cj4gICAgICBkZXNjcmlwdGlvbjogRWxwaWRh
IE1lbW9yeSwgSW5jLgo+ICsgICJeZW1iZWRmaXJlLC4qIjoKPiArICAgIGRlc2NyaXB0aW9uOiBE
b25nZ3VhbiBFbWJlZEZpcmUgRWxlY3Ryb25pYyBUZWNobm9sb2d5IENvLiwgTHRkLgo+ICAgICJe
ZW1iZXN0LC4qIjoKPiAgICAgIGRlc2NyaXB0aW9uOiBTaGVuemhlbiBFbWJlc3QgVGVjaG5vbG9n
eSBDby4sIEx0ZC4KPiAgICAiXmVtbGlkLC4qIjoKPiAtLQo+IDIuMjcuMAo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
