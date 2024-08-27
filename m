Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ACD7C5320E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 07:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZ+GzQTqDh+VPVym0b3hJrH8uZg7yFs22gR3kfc57PY=; b=PWej2nAYP1H+vb
	msBjA2fDounyufD5J8Qi3bh3PGj99fG6yPu3vkIdkU4ttc5VgxQRbi16H+aKnKghiemJKMD26puog
	Fy7CMsZHj0H9badyfXklmo7rfiuHe2RRtKVDsBFSfuOGdrEXJ6LoSc+ME1NOus2DFKQAWgShQl2zX
	gw71LJ9QjEP/hlUIKOtdQDS++wMcU2FI54ELoXsPPW7ofolBEhIDiW6t+nUBktNoAvoia9C2nKvIG
	NUKQNNLtKW3ABZX+JcwCre3yVLAxHwABG304Ha0wHMWCPL2GpQ27paIZULL+CqVw0TcvoVSTTqIzy
	fy82uZ4xznUHH6XpiNjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sir0k-0000000AIgO-0Gxa;
	Tue, 27 Aug 2024 07:53:06 +0000
Received: from mail-yb1-f171.google.com ([209.85.219.171])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siqwC-0000000AHir-0c8u;
	Tue, 27 Aug 2024 07:48:25 +0000
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e117059666eso5137390276.3;
        Tue, 27 Aug 2024 00:48:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724744902; x=1725349702;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lyFU1QyCNa7lptSAN0cFkDNgjLOOwPVrcUvkymW1zfc=;
        b=buf+kc+3JDPbWprMR3/GS9Z1tlRUToiHYwKGkDNk++r2AZrfbeV3d2DM9c5BHWqVf4
         8QpMRzVAfwCR1JxNouftkDbI1VpwtiosN9NZIclY3l7IYgUbwbqv/i5Ahg6E7aJA9x8P
         3F3leFh9cisx/m2uohXGT1rMZszWgkL8nWfBhBnf2vrCAUArJvmk1I2Pl0VDNz79mZKL
         3bwN/V52L6DZ9fuy9pAdXtLIOy0StKlZTXeB+0/heg3xiiEIDeEUeBo+PWrq4ievVHru
         g+/0GtEOe/Kq+NGJEzKwEkz+y2L9Nmzxqi/UxmrM8R6hWtPZTUav5yNwmfw5j+M2oGof
         Is9A==
X-Forwarded-Encrypted: i=1; AJvYcCVvbHwev4VSHXino3FU9zbzzNCUzpZDxhkTCI/dZTT6snRvknwPE5WD/PRA5jV7aHGuJfsISZCMu84KPGpz6fTo@lists.infradead.org, AJvYcCW0AIF5kQjF4mrJP2PWmDMuu8ekweEwJqpvA2QYs8DoBRBDkIcsXO0jLVPW/iXvYsXz4KiNqWqdc7uQFP5zKZE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9x3yUCPgUj+TvZMmvOpCUTBQ/NmTeHRIgdAl27s3k+mtU5AhI
	c+wdNMjaqTBAV3nZ4cJeye09xBTKdLgbn0yMCgMhVPuGvvr/3ShtKfJwf7ev
X-Google-Smtp-Source: AGHT+IH5nts4BKpZt+5+xtDq4UDTAFFQs9JYrCt7VInJgu/RE9HBZ8p0a8E7+3Iced+9SWf8XwshXg==
X-Received: by 2002:a05:6902:1203:b0:e03:a6b3:9f28 with SMTP id 3f1490d57ef6-e1a2a57e139mr2279195276.10.1724744901912;
        Tue, 27 Aug 2024 00:48:21 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e178e4403fasm2353814276.8.2024.08.27.00.48.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 00:48:21 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6b8f13f28fbso43583377b3.1;
        Tue, 27 Aug 2024 00:48:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV38R/4qcpvnuhQfvPdeb41uNuptdgWnFjjtpcCUOJEoVhw9Gmo3O8AuafnrQknOXVtQcE9c0opjfXxARFAGH/7@lists.infradead.org, AJvYcCWfbcG+xvGRJ4TOeP1W/9veDFIz7eK2rxmK9CWEytxISs15S+W7tUn0zDDLbvY76DrbekSOQdvHvsjSjv0mBI0=@lists.infradead.org
X-Received: by 2002:a05:690c:dc3:b0:62f:b04c:2442 with SMTP id
 00721157ae682-6cfb9415ebdmr25153437b3.7.1724744901130; Tue, 27 Aug 2024
 00:48:21 -0700 (PDT)
MIME-Version: 1.0
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org> <20240823-cleanup-h-guard-pm-domain-v1-9-8320722eaf39@linaro.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-9-8320722eaf39@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Aug 2024 09:48:09 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV0R0+u1eCiUOHhL5w-wzge9KhgyumJSd28oF9kQmnx_Q@mail.gmail.com>
Message-ID: <CAMuHMdV0R0+u1eCiUOHhL5w-wzge9KhgyumJSd28oF9kQmnx_Q@mail.gmail.com>
Subject: Re: [PATCH 09/10] pmdomain: renesas: rcar-gen4-sysc: Use scoped
 device node handling to simplify error paths
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_004824_212082_3AC0633A 
X-CRM114-Status: GOOD (  22.68  )
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

SGkgS3J6eXN6dG9mLAoKT24gRnJpLCBBdWcgMjMsIDIwMjQgYXQgMjo1MeKAr1BNIEtyenlzenRv
ZiBLb3psb3dza2kKPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gT2J0
YWluIHRoZSBkZXZpY2Ugbm9kZSByZWZlcmVuY2Ugd2l0aCBzY29wZWQvY2xlYW51cC5oIHRvIHJl
ZHVjZSBlcnJvcgo+IGhhbmRsaW5nIGFuZCBtYWtlIHRoZSBjb2RlIGEgYml0IHNpbXBsZXIuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tp
QGxpbmFyby5vcmc+CgpUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCgo+IC0tLSBhL2RyaXZlcnMvcG1k
b21haW4vcmVuZXNhcy9yY2FyLWdlbjQtc3lzYy5jCj4gKysrIGIvZHJpdmVycy9wbWRvbWFpbi9y
ZW5lc2FzL3JjYXItZ2VuNC1zeXNjLmMKPiBAQCAtMzAzLDEyICszMDQsMTIgQEAgc3RhdGljIGlu
dCBfX2luaXQgcmNhcl9nZW40X3N5c2NfcGRfaW5pdCh2b2lkKQo+ICAgICAgICAgY29uc3Qgc3Ry
dWN0IHJjYXJfZ2VuNF9zeXNjX2luZm8gKmluZm87Cj4gICAgICAgICBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkICptYXRjaDsKPiAgICAgICAgIHN0cnVjdCByY2FyX2dlbjRfcG1fZG9tYWlucyAq
ZG9tYWluczsKPiAtICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7Cj4gICAgICAgICB2b2lk
IF9faW9tZW0gKmJhc2U7Cj4gICAgICAgICB1bnNpZ25lZCBpbnQgaTsKPiAgICAgICAgIGludCBl
cnJvcjsKPgo+IC0gICAgICAgbnAgPSBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5V
TEwsIHJjYXJfZ2VuNF9zeXNjX21hdGNoZXMsICZtYXRjaCk7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wIF9fZnJlZShkZXZpY2Vfbm9kZSkgPQo+ICsgICAgICAgICAgICAgICBvZl9m
aW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5VTEwsIHJjYXJfZ2VuNF9zeXNjX21hdGNoZXMs
ICZtYXRjaCk7CgpUaGlzIGJyZWFrcyB0aGUgZGVjbGFyYXRpb25zL2JsYW5rLWxpbmUvY29kZSBz
dHJ1Y3R1cmUsIHNvIHBsZWFzZSBtb3ZlCnRoaXMgdXAuCgpJZiB5b3UgaW5zaXN0IG9uIGtlZXBp
bmcgYXNzaWdubWVudCB0byBhbmQgdmFsaWRhdGlvbiBvZiBucCB0b2dldGhlciwKdGhlIGxpbmUg
c2hvdWxkIGJlIHNwbGl0IGluIGRlY2xhcmF0aW9uIGFuZCBhc3NpZ25tZW50LgoKPiAgICAgICAg
IGlmICghbnApCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+Cgo+IEBAIC0zNjks
MTQgKzM2NSwxMiBAQCBzdGF0aWMgaW50IF9faW5pdCByY2FyX2dlbjRfc3lzY19wZF9pbml0KHZv
aWQpCj4gICAgICAgICAgICAgICAgIGlmIChlcnJvcikgewo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIHByX3dhcm4oIkZhaWxlZCB0byBhZGQgUE0gc3ViZG9tYWluICVzIHRvIHBhcmVudCAldVxu
IiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFyZWEtPm5hbWUsIGFyZWEtPnBh
cmVudCk7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgZ290byBvdXRfcHV0Owo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiBlcnJvcjsKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAg
ICAgfQo+Cj4gICAgICAgICBlcnJvciA9IG9mX2dlbnBkX2FkZF9wcm92aWRlcl9vbmVjZWxsKG5w
LCAmZG9tYWlucy0+b25lY2VsbF9kYXRhKTsKPgo+IC1vdXRfcHV0Ogo+IC0gICAgICAgb2Zfbm9k
ZV9wdXQobnApOwo+ICAgICAgICAgcmV0dXJuIGVycm9yOwoKcmV0dXJuIG9mX2dlbnBkX2FkZF9w
cm92aWRlcl9vbmVjZWxsKC4uLik7Cgo+ICB9Cj4gIGVhcmx5X2luaXRjYWxsKHJjYXJfZ2VuNF9z
eXNjX3BkX2luaXQpOwoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAg
ICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXgg
YmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNh
dGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQK
d2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBv
ciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0t
IExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
