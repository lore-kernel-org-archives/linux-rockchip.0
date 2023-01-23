Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 405E6C25B50
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 19:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pj9gGfkRETAw3mEooZBnZDtl7ZDLzMYX8/ts9FHlKyY=; b=18Nymkdwwxwy6X
	EEqPRLHbCcZuleweTchDWZXBtoF4M7N3/bAuj360hlWj8L4BubDrPq2ORKVvK2cBJIcv2nJngBjvt
	WlFN7L748Kow5fZNVF8nbYMcDQnumSe7YH0v379pfpVmoLVfin4k3D+WuSMtNd4saUgh2L6Txv3cN
	X2GPXlvgVolBzB5UmGMoUywXZw95O6t9WEU3PdzvBDnObAeXiiEI48n7y7e8WpYLXrsMRVX5/4Pp7
	Jl9C26JAvKQjuJMO3HlBc3eS5QQKgjfXIZF1eLuvsKvQk9Oxv6mQSpV8MSvZMWJJDGJNshahlc5FU
	7xMBn6IHYkF1x6amzTUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK2pd-001DtS-6z; Mon, 23 Jan 2023 19:50:17 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK2pP-001Dod-1S
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 19:50:04 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id u20so9946612qvq.4
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jan 2023 11:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rGE93gPkAvU6p1g6zMI0ZGEEXbMUYmA6Yp6gqSuvvww=;
        b=JC7Ly8pZDPQTNo3K1tQHv+sSYUXo//MGnfsKJgowshH4fueBckQk0UMvGHMjxH6f5+
         7f18QnmMsJ7SZnBI4yNFw/69kxVaralcZtCpLimACvpSfTVeP3ymesdBwdbPZvUEwpnV
         mw59hgJ1P4k0KWyYwxp9/szWNZ6AZZIWacpC6/SXXH524y84tXbrwsltUjuiFP0HORFd
         BascxnfgUZWEui4L5G2GnqnpQirCorVXlsSXXeitcLdSJ/itjcyRvT2w2oX4Exuegi7N
         as/sQTcUgVr7VR3BO7xnQXs8Xi0OQUxF9SS8TigQVQDj0iPUDa7UUAaKmwktKTmr+emu
         0H1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rGE93gPkAvU6p1g6zMI0ZGEEXbMUYmA6Yp6gqSuvvww=;
        b=6+O3H+/ByS148VqCGoQpRTT2Awz6AgH40eo5PDS3HnXz4POdsM1eZDhyyqNMPr/vKm
         BsF8k6FyNCjpt1TlIEKmLNTCzPaQ6p22op0S6dWbwu/lllmqNRQEdBC9x2Qz1M1MUrsg
         2n0YkC7xXePgawhRfpPe7fDMkqc6tt/vqiwlHvDMrY4cmoRRP55VcYM6ZoxT4KUCLfV6
         fUvQCHkCCIK9gLx2qoeTWK7dBHrkySm0qFslIeiMGLgTpTnWHQ7/esJRjQ3LpYY+N3sw
         9I1ObKXkD+EDN+J8qCGhbY5usV43Dm1aVMGIX1p6u5d1sN/Bh9cAwDs6rnWEXQQzaL0u
         6WUw==
X-Gm-Message-State: AFqh2ko+8wWzE99mwF/+Zxuo1mVflGL9ZZNZ442puZy5ShtCBqzRqXfB
	8VR+5Es7e+yTmJJVYV6g3zQqpA==
X-Google-Smtp-Source: AMrXdXvZjnmLfOqTE0yM40ZLDkWU26o0u88ybKg/YPkagVEAyWBdG8miScE/MquEbFPqLcKaW6B8fQ==
X-Received: by 2002:a05:6214:5f09:b0:4c7:5b:75ba with SMTP id lx9-20020a0562145f0900b004c7005b75bamr45249216qvb.31.1674503401130;
        Mon, 23 Jan 2023 11:50:01 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id 198-20020a3705cf000000b006fed58fc1a3sm24016qkf.119.2023.01.23.11.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 11:50:00 -0800 (PST)
Message-ID: <2517e0aef49a934efa7c1a90e32fa811d060771d.camel@ndufresne.ca>
Subject: Re: [PATCH RESEND 0/2] media: rockchip: rga: Add rk3568 support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Michael Tretter <m.tretter@pengutronix.de>, Jacob Chen
 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski
	 <krzysztof.kozlowski@linaro.org>, Nicolas Frattaroli
	 <frattaroli.nicolas@gmail.com>
Date: Mon, 23 Jan 2023 14:49:59 -0500
In-Reply-To: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
References: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_115003_114495_84637EAE 
X-CRM114-Status: GOOD (  16.13  )
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

SGkgTWljaGVhbCwKCkxlIHZlbmRyZWRpIDIwIGphbnZpZXIgMjAyMyDDoCAxMDoxNCArMDEwMCwg
TWljaGFlbCBUcmV0dGVyIGEgw6ljcml0wqA6Cj4gVGhlIFJHQTIgb24gdGhlIFJvY2tjaGlwIHJr
MzU2OCBpcyB0aGUgc2FtZSBjb3JlIGFzIHRoZSBSR0EyIG9uIHRoZSBSb2NrY2hpcAo+IHJrMzI4
OC4KPiAKPiBUaGlzIHNlcmllcyBhZGRzIHRoZSBuZWNlc3NhcnkgZGV2aWNlIHRyZWUgYmluZGlu
ZyBhbmQgbm9kZSBpbiB0aGUgZGV2aWNlIHRyZWUKPiB0byBlbmFibGUgdGhlIFJHQTIgb24gdGhl
IFJvY2tjaGlwIHJrMzU2OC4KPiAKPiBJIHRlc3RlZCB0aGUgZHJpdmVyIHdpdGggdGhlIEdTdHJl
YW1lciB2NGwyY29udmVydCBlbGVtZW50IG9uIGEgUm9jazMgTW9kZWwgQQo+IGJvYXJkLgo+IAo+
IFRoaXMgaXMgYSBSRVNFTkQgaW5jbHVkaW5nIHRoZSBsaW51eC1tZWRpYSBsaXN0LCBhcyBIZWlr
byBhc2tlZCBmb3IgYW4KPiBBY2tlZC1ieSBmcm9tIHNvbWVvbmUgZnJvbSBtZWRpYS4KCkkgZG9u
J3QgdGhpbmsgdGhlcmUgd2lsbCBiZSBhbnkgY29uY2VybiBhYm91dCB0aGlzIG9uIG1lZGlhIHNp
ZGUuCgpBY2tlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJv
cmEuY29tPgoKPiAKPiAKPiAKPiBNaWNoYWVsCj4gCj4gVG86IEphY29iIENoZW4gPGphY29iLWNo
ZW5AaW90d3J0LmNvbT4KPiBUbzogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEB2YW5ndWFyZGlh
c3VyLmNvbS5hcj4KPiBUbzogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiQGtlcm5lbC5v
cmc+Cj4gVG86IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+Cj4gVG86IEtyenlzenRv
ZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZz4KPiBUbzogSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnCj4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogZGV2
aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+IENjOiBOaWNv
bGFzIEZyYXR0YXJvbGkgPGZyYXR0YXJvbGkubmljb2xhc0BnbWFpbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogTWljaGFlbCBUcmV0dGVyIDxtLnRyZXR0ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gCj4gLS0t
Cj4gTWljaGFlbCBUcmV0dGVyICgyKToKPiAgICAgICBtZWRpYTogZHQtYmluZGluZ3M6IG1lZGlh
OiByb2NrY2hpcC1yZ2E6IGFkZCByb2NrY2hpcCxyazM1NjgtcmdhCj4gICAgICAgYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEFkZCBSR0EyIHN1cHBvcnQgdG8gcmszNTZ4Cj4gCj4gIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1yZ2EueWFtbCB8ICA0ICsrKy0K
PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSAgICAgICAgICAgICAg
ICAgIHwgMTEgKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6IDVkYzRjOTk1ZGI5ZWI0NWY2Mzcz
YTk1NmViMWY2OTQ2MGU2OWU2ZDQKPiBjaGFuZ2UtaWQ6IDIwMjMwMTE5LXJrMzU2OC1yZ2EtZDFi
MGNjY2M3YjgyCj4gCj4gQmVzdCByZWdhcmRzLAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
