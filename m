Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F4F8C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 10:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8XD+icDFCg6G3QhlW+04oRDg2TG32DCxLckJFiVmEo=; b=DdyoVKm538doUj
	F5OBMNflCTx95QxLLTr/Mic5sYkkWqyI0QP3eN443b6TydBSNJcmTVScXqkLQsaSVKuCAgJwK8JW7
	mPaJHYV7ox39G0dazHvj5LLW7472PPbUoJkNeMlJd1StPNoajZWJzQc1NdfuGejGq8vkN9ISsWt5p
	nZZHHb04XQg15H+oU1WYkxoQCitbqGtZUOIOE0cq8l80OOetNYTrK7DCdrj6ysL+OANfbfZXrbbuf
	o9WiUKIWSI5xZhk1kaMaJb3jGfiA3itoXyP66gqiaon4PT+7Plbv9bX6zBSzH3jJaZP/vonL4c3tQ
	rcRQQaTbiypGwzIFnKKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNXns-004NUd-6C; Fri, 25 Feb 2022 10:26:24 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNXnm-004NQP-NZ; Fri, 25 Feb 2022 10:26:20 +0000
Received: by mail-lj1-x22e.google.com with SMTP id f11so6710529ljq.11;
 Fri, 25 Feb 2022 02:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=wWkiKPp0yU51YIZBOYra9GP4j4G9QYqwO5yPBvcytuI=;
 b=OTdlbCcloAhlN/v+ZbSF/fydVTwpPRXxMmlE+7+s30HFgGm03WAAt8twDvEuaEJfn9
 Zv6QWe9jnaaCK0tnQef0t4rf8BQfUIM0jFQOEWN23hi79xzUW5zyO7IEyv2jn2QkD+9V
 AEMNKmVJYNXZU9Hwxha2va+GuXP/qBuuDksEhhg+oih08RmH/MPZ2WU6GEsoaX2gBLsR
 bLKlYfAj2TcDpg4HHOZwROkP1jIk2TsrsD2VyvMQmr/YYMg/MvEFeKtRs69uqthR+n+/
 vjnq3+21i1tAq8irdoG045HCbslBM2GlsbPy57MPZi2LpCEgEiUIXrSq3U1QmlsBUVqZ
 94Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=wWkiKPp0yU51YIZBOYra9GP4j4G9QYqwO5yPBvcytuI=;
 b=DYy1PvrYVJrDs5kRcbMGXtHVN5hrKuaFsNLppChXylA/4mVm9ZFvmO/6B//ytPRHGM
 /Bq1Putz5BiSUUxmo4mduOPlJ73Gk6GHJGOY1wqkzSJ1ElakAUd6qRxfmVpVoxF7HiME
 v/6UN+2En/8dUKsNmugeczwTv7GT9DNxF3J9wq9sW9cZa4VxSX29thrc4+Y7wbJpXSDv
 fpTdE7QSZHkrm2ZBnqL4S1EitxhYpHmO1EBCQ1BIUKtF1BBWHYw6bU1A7KgTTSyG1gFZ
 lUMn2r3+4iBvuBUG1pAmCcJN1Y5vNPQmTh2GLPAHU1utXlHfVe5wn9efiJ+ymUrVBw+6
 +b/Q==
X-Gm-Message-State: AOAM532x34WB9wwjP/JPkN0p44DJ2Zv4hRmwUDh3U2qrBJIC2bMifpDi
 iriDNRA+Y2vsGue/hG+4qAgHAbkW104=
X-Google-Smtp-Source: ABdhPJxS32kW61bz2PV5TVfzLTeGimkAktcHo9OysUKyXqkNxifBz36DVjPV0ZnKaOzpknqaSHhfXA==
X-Received: by 2002:a2e:9f02:0:b0:244:8e4b:5aaa with SMTP id
 u2-20020a2e9f02000000b002448e4b5aaamr4993707ljk.249.1645784775907; 
 Fri, 25 Feb 2022 02:26:15 -0800 (PST)
Received: from [192.168.2.145] (109-252-137-194.dynamic.spd-mgts.ru.
 [109.252.137.194]) by smtp.googlemail.com with ESMTPSA id
 w9-20020a05651203c900b0044399c17e58sm163232lfp.224.2022.02.25.02.26.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Feb 2022 02:26:15 -0800 (PST)
Message-ID: <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
Date: Fri, 25 Feb 2022 13:26:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
From: Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <20220225075150.2729401-11-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_022618_808062_1F92C285 
X-CRM114-Status: GOOD (  17.62  )
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

MjUuMDIuMjAyMiAxMDo1MSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gVGhlIHJrMzU2OCBI
RE1JIGhhcyBhbiBhZGRpdGlvbmFsIGNsb2NrIHRoYXQgbmVlZHMgdG8gYmUgZW5hYmxlZCBmb3Ig
dGhlCj4gSERNSSBjb250cm9sbGVyIHRvIHdvcmsuIFRoZSBwdXJwb3NlIG9mIHRoYXQgY2xvY2sg
aXMgbm90IGNsZWFyLiBJdCBpcwo+IG5hbWVkICJoY2xrIiBpbiB0aGUgZG93bnN0cmVhbSBkcml2
ZXIsIHNvIHVzZSB0aGUgc2FtZSBuYW1lLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNhc2NoYSBIYXVl
ciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAKPiBOb3RlczoKPiAgICAgQ2hhbmdl
cyBzaW5jZSB2NToKPiAgICAgLSBVc2UgZGV2bV9jbGtfZ2V0X29wdGlvbmFsIHJhdGhlciB0aGFu
IGRldm1fY2xrX2dldAo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2Nr
Y2hpcC5jIHwgMTYgKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aS1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAu
Ywo+IGluZGV4IGZlNGY5NTU2MjM5YWMuLmM2YzAwZTg3NzlhYjUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPiBAQCAtNzYsNiArNzYsNyBAQCBz
dHJ1Y3Qgcm9ja2NoaXBfaGRtaSB7Cj4gIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9jaGlw
X2RhdGEgKmNoaXBfZGF0YTsKPiAgCXN0cnVjdCBjbGsgKnJlZl9jbGs7Cj4gIAlzdHJ1Y3QgY2xr
ICpncmZfY2xrOwo+ICsJc3RydWN0IGNsayAqaGNsa19jbGs7Cj4gIAlzdHJ1Y3QgZHdfaGRtaSAq
aGRtaTsKPiAgCXN0cnVjdCByZWd1bGF0b3IgKmF2ZGRfMHY5Owo+ICAJc3RydWN0IHJlZ3VsYXRv
ciAqYXZkZF8xdjg7Cj4gQEAgLTIyOSw2ICsyMzAsMTQgQEAgc3RhdGljIGludCByb2NrY2hpcF9o
ZG1pX3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9oZG1pICpoZG1pKQo+ICAJCXJldHVybiBQVFJf
RVJSKGhkbWktPmdyZl9jbGspOwo+ICAJfQo+ICAKPiArCWhkbWktPmhjbGtfY2xrID0gZGV2bV9j
bGtfZ2V0X29wdGlvbmFsKGhkbWktPmRldiwgImhjbGsiKTsKPiArCWlmIChQVFJfRVJSKGhkbWkt
PmhjbGtfY2xrKSA9PSAtRVBST0JFX0RFRkVSKSB7CgpIYXZlIHlvdSB0cmllZCB0byBpbnZlc3Rp
Z2F0ZSB0aGUgaGNsaz8gSSdtIHN0aWxsIHRoaW5raW5nIHRoYXQncyBub3QKb25seSBIRE1JIHRo
YXQgbmVlZHMgdGhpcyBjbG9jayBhbmQgdGhlbiB0aGUgaGFyZHdhcmUgZGVzY3JpcHRpb24KZG9l
c24ndCBsb29rIGNvcnJlY3QuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
