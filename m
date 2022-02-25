Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66ADAC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 11:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yq+K1a63RF9uUvozzjDO+NSkbB2pjn/Aj8QTv4rXiyU=; b=nxc4/6GgNQSaO4
	GI9vhw+yTMTWcIrrm9pqPXi2f1pgGNfyTpli0VoVIOIf2gxmijZ5FmbHQ+XE3QS248Yuhuvfsz2na
	BNq0xkrE72AxkltAGcx3h036rlMruvad9q8j7MX2H+skoVaYXnrmJwVYu45yefkI5r0iemRCtLqr/
	agSRrABhb/tii3l1otIrUcrb0eDfuwz1FgMcT2AvF5NIBAF5RGM17SY8iSEaoqeH3Wbh6qdma5jbu
	32RhpXn8IaGVTZoa/eXSywt1nuSB82u1rfFxYMh/SISUtIKlLCLtYj9FVS4RPOTWIERNhvprfzAP9
	Yy24VypOnV5msuVNi5WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNYV4-004cx2-Ku; Fri, 25 Feb 2022 11:11:02 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNYV1-004cuq-BS; Fri, 25 Feb 2022 11:11:01 +0000
Received: by mail-lj1-x232.google.com with SMTP id e2so6855319ljq.12;
 Fri, 25 Feb 2022 03:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=yfHDVChMIt79P8PwPVg3ITAsqmLO2xEVeCJUOEsGqTU=;
 b=YYiU90jPEjbBPpGtGlks3J6ji5Nd3R7OXrhwxviCnTFNqQpKJJnJtC5ehaLTKgPv6d
 kytOZEuiglne9JU2KDODLNAk3kSnVaXhENvmnBtvrBbuGp/LmYESK1W3L2pDk+iUYmTq
 KqWJVFd1YncInr0mcJoJcA0/NgWltTcKtQEvETZRIPWbMYnZwgIomPPWFTh/GwaEQ0w/
 /q92mKU79F4TZmLhSIed3q5bfj8I0MJ7jU8M5FhdAjmYQ/xwPXK9nq/oM1z1t6IqlZOS
 5Fktm2+KaIZ1bj+8igJ/PSK5VWx+/oGbmra2Gr9CrvDH4UL45bEStlNRKgE6PNXEv63N
 5b/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=yfHDVChMIt79P8PwPVg3ITAsqmLO2xEVeCJUOEsGqTU=;
 b=lEQ2hp0YbEcfgz/qmcij4IMgh0cRb0WpCPkfmgxnqMsEZXnFtzoyuNXn04Ydfhq8LS
 /hsMumLXWoOmbCSUM6n1BmPfyDLn1o5MyFoxbzbQI74/gEsyzXcC7KewXKdrmArhaI0r
 i7hpT++6Jh7ouwoJOJuMLXMwxgEyF+lOUyAxVEFZa2D5HaoBL1/SemB4uyekxXoyN9rR
 p0CtCHDD6stdNYcjV6acqLoTwgsavOtnpjV+/vV4M1wwali4WVutFRk6R39UsJst0Z8u
 ON4cMMk7B8JA31zp+7jzvtA3Oy1DsvBrVnXd2XWYfKMfz7UFAOcJ4OArppOehzLIPDaW
 4Amw==
X-Gm-Message-State: AOAM531lLHkVHvptTYIyk1Fgu7bt5+PXLhUuobmZKmca+Xzki7uuS8DW
 eFqPBpV5ipNOeMKTePVdH5o=
X-Google-Smtp-Source: ABdhPJy3g0VW5PnDPjeFJlNBTjarbzOJxXYBGGvfVSZkpGhwP0uSgOx0oKsnOg7b8V6oGQav6wtkcA==
X-Received: by 2002:a2e:7218:0:b0:246:4772:1fa0 with SMTP id
 n24-20020a2e7218000000b0024647721fa0mr4972875ljc.125.1645787457313; 
 Fri, 25 Feb 2022 03:10:57 -0800 (PST)
Received: from [192.168.2.145] (109-252-137-194.dynamic.spd-mgts.ru.
 [109.252.137.194]) by smtp.googlemail.com with ESMTPSA id
 u17-20020a056512095100b0044381f00805sm174550lft.139.2022.02.25.03.10.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Feb 2022 03:10:56 -0800 (PST)
Message-ID: <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
Date: Fri, 25 Feb 2022 14:10:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
From: Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <20220225104924.GC19585@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_031059_441800_ADE2CC08 
X-CRM114-Status: GOOD (  17.52  )
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

MjUuMDIuMjAyMiAxMzo0OSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gT24gRnJpLCBGZWIg
MjUsIDIwMjIgYXQgMDE6MjY6MTRQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAy
NS4wMi4yMDIyIDEwOjUxLCBTYXNjaGEgSGF1ZXIg0L/QuNGI0LXRgjoKPj4+IFRoZSByazM1Njgg
SERNSSBoYXMgYW4gYWRkaXRpb25hbCBjbG9jayB0aGF0IG5lZWRzIHRvIGJlIGVuYWJsZWQgZm9y
IHRoZQo+Pj4gSERNSSBjb250cm9sbGVyIHRvIHdvcmsuIFRoZSBwdXJwb3NlIG9mIHRoYXQgY2xv
Y2sgaXMgbm90IGNsZWFyLiBJdCBpcwo+Pj4gbmFtZWQgImhjbGsiIGluIHRoZSBkb3duc3RyZWFt
IGRyaXZlciwgc28gdXNlIHRoZSBzYW1lIG5hbWUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2Fz
Y2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+Pj4gLS0tCj4+Pgo+Pj4gTm90ZXM6
Cj4+PiAgICAgQ2hhbmdlcyBzaW5jZSB2NToKPj4+ICAgICAtIFVzZSBkZXZtX2Nsa19nZXRfb3B0
aW9uYWwgcmF0aGVyIHRoYW4gZGV2bV9jbGtfZ2V0Cj4+Pgo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgfCAxNiArKysrKysrKysrKysrKysrCj4+PiAgMSBm
aWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPj4+IGluZGV4IGZlNGY5NTU2MjM5YWMuLmM2YzAw
ZTg3NzlhYjUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aS1yb2NrY2hpcC5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1y
b2NrY2hpcC5jCj4+PiBAQCAtNzYsNiArNzYsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaSB7Cj4+
PiAgCWNvbnN0IHN0cnVjdCByb2NrY2hpcF9oZG1pX2NoaXBfZGF0YSAqY2hpcF9kYXRhOwo+Pj4g
IAlzdHJ1Y3QgY2xrICpyZWZfY2xrOwo+Pj4gIAlzdHJ1Y3QgY2xrICpncmZfY2xrOwo+Pj4gKwlz
dHJ1Y3QgY2xrICpoY2xrX2NsazsKPj4+ICAJc3RydWN0IGR3X2hkbWkgKmhkbWk7Cj4+PiAgCXN0
cnVjdCByZWd1bGF0b3IgKmF2ZGRfMHY5Owo+Pj4gIAlzdHJ1Y3QgcmVndWxhdG9yICphdmRkXzF2
ODsKPj4+IEBAIC0yMjksNiArMjMwLDE0IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfaGRtaV9wYXJz
ZV9kdChzdHJ1Y3Qgcm9ja2NoaXBfaGRtaSAqaGRtaSkKPj4+ICAJCXJldHVybiBQVFJfRVJSKGhk
bWktPmdyZl9jbGspOwo+Pj4gIAl9Cj4+PiAgCj4+PiArCWhkbWktPmhjbGtfY2xrID0gZGV2bV9j
bGtfZ2V0X29wdGlvbmFsKGhkbWktPmRldiwgImhjbGsiKTsKPj4+ICsJaWYgKFBUUl9FUlIoaGRt
aS0+aGNsa19jbGspID09IC1FUFJPQkVfREVGRVIpIHsKPj4KPj4gSGF2ZSB5b3UgdHJpZWQgdG8g
aW52ZXN0aWdhdGUgdGhlIGhjbGs/IEknbSBzdGlsbCB0aGlua2luZyB0aGF0J3Mgbm90Cj4+IG9u
bHkgSERNSSB0aGF0IG5lZWRzIHRoaXMgY2xvY2sgYW5kIHRoZW4gdGhlIGhhcmR3YXJlIGRlc2Ny
aXB0aW9uCj4+IGRvZXNuJ3QgbG9vayBjb3JyZWN0Lgo+IAo+IEkgYW0gc3RpbGwgbm90IHN1cmUg
d2hhdCB5b3UgbWVhbi4gWWVzLCBpdCdzIG5vdCBvbmx5IHRoZSBIRE1JIHRoYXQKPiBuZWVkcyB0
aGlzIGNsb2NrLiBUaGUgVk9QMiBuZWVkcyBpdCBhcyB3ZWxsIGFuZCB0aGUgZHJpdmVyIGhhbmRs
ZXMgdGhhdC4KCkknbSBjdXJpb3VzIHdoZXRoZXIgRFNJL0RQIGFsc28gbmVlZCB0aGF0IGNsb2Nr
IHRvIGJlIGVuYWJsZWQuIElmIHRoZXkKZG8sIHRoZW4geW91IGFyZW4ndCBtb2RlbGluZyBoL3cg
cHJvcGVybHkgQUZBSUNTLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
