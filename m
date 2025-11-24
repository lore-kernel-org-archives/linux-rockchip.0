Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31558CFD313
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Nov 2025 18:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08YZlX72t6kFrJRHcq5bv+c1ANHqfcDTDkgBsR02Nsk=; b=nByd3FDdBL/yT2
	sKN2OdZB4xvnxXBiLp4r9Jp5u9189OsUjsWwuj22nLPTHn26o07aqARjmIzRep0ak9i90NCqKUKfz
	TGIRssBE/vR9t/1Cmglc2ByDmnNeS8O66+AYNzxfqw4qorIyqRQHjKGczH0Iry6zzkU3RMPvLSxGL
	P+/XIy80YJgIYK3JYQMMkJwXkdcfziT49w1egGXIiQKSDhK+ocFJ2oupObJhAMj/jLGONl8hBtejV
	mLmimnSWvg9fmQKMpJq4wQ5WdLVbTMHVqPuVT1NMipj4pJoQFO3Rh2tzVmrCFOOUzTQv4w5tNBtRm
	l2w6IWe9ZVrqks7Rzmeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNbhe-0000000CCey-1yf2;
	Mon, 24 Nov 2025 18:54:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNbhb-0000000CCd9-0pKi
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Nov 2025 18:54:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F5114440B
	for <linux-rockchip@lists.infradead.org>; Mon, 24 Nov 2025 18:54:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0400AC16AAE
	for <linux-rockchip@lists.infradead.org>; Mon, 24 Nov 2025 18:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764010458;
	bh=TEK7y+I345Za9ATxX+knyA/Uh489WPY9Dd1JCZP1I5g=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=jaJZZFHd9EbEwx/HXqWrnJzLLWTmDsjeCYIq0msXegrh1uOLQsYkLcGsOqDhYGYa1
	 ulVE7WOFxgFtpE2/6TkwNTfV+9Rh0FSoTOohVIha1MYp1K5u2GOOF4aS+plyAfBAle
	 vAZP1pWHSc2BhkypnD2nz0a3oVcYZoWGxiPrhyCwtfso6TjC0ca6YjyLVtMdloPCZj
	 YjsoUkmPkN4DfXzzlBmRG07pBRUjbMkoJH5hAhMxXKO6mhdkj9L8ykHTsvk6JpcSId
	 e4dHeGWi1OOrSvjb2TfH3swea0z/yg8jzYuM1iQ+XmmH3i9ds4f6wja6p20TfYTyKh
	 Wz2iE90nWxrRA==
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-640b0639dabso8037108a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Nov 2025 10:54:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVQ57DP77FnjQ9zNmAJ5Th7UpnkaWP6MW1o9HUGGYQHn08pTWS6Jgx4Pajv4HKZnGRIzVNQv9YtNHTqqPAheg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFQD3ylbqzLhoIiCnceAmqnMBkTYGDNR0Es7+K3FWutfkY+jCL
	vXrgKqHiKVz8jJMoGeLwT7va8EfVU2dthySFRwmTaHWMAPrrIO+hywp0BDN2A6SUOhnqEuiUNEx
	qMXAyAObBkANTAML+H5adC5YtoTP5VA==
X-Google-Smtp-Source: AGHT+IFReAtDFuSFDhp918Ohx2vHaiN5KlMAX/uodATZY6O/YB75rQVqkELqtwQbH271c/8FxbJ2Dkum3f0Uu3OWMzM=
X-Received: by 2002:a05:6402:5252:b0:643:4e9c:d166 with SMTP id
 4fb4d7f45d1cf-6455443ed4cmr10891528a12.8.1764010456224; Mon, 24 Nov 2025
 10:54:16 -0800 (PST)
MIME-Version: 1.0
References: <20250911151001.108744-1-ariel.dalessandro@collabora.com>
 <20250911151001.108744-4-ariel.dalessandro@collabora.com> <20250912140619.GA1293647-robh@kernel.org>
 <fb20e4fe-df0a-4089-a7cf-e82bfe1f8e00@collabora.com>
In-Reply-To: <fb20e4fe-df0a-4089-a7cf-e82bfe1f8e00@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 24 Nov 2025 12:54:04 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+eeiw9oaqQPWt2=rZSX98Pak_oB=tfQFvEehwLZ=S52g@mail.gmail.com>
X-Gm-Features: AWmQ_blUF-g1qhHGkKsa6U6HY_V7mtf4Q-WkpVuhZVm09t2HSWt6-IOrweXVTPs
Message-ID: <CAL_Jsq+eeiw9oaqQPWt2=rZSX98Pak_oB=tfQFvEehwLZ=S52g@mail.gmail.com>
Subject: Re: [PATCH v2 03/12] dt-bindings: net: Convert Marvell 8897/8997
 bindings to DT schema
To: "Ariel D'Alessandro" <ariel.dalessandro@collabora.com>
Cc: airlied@gmail.com, amergnat@baylibre.com, andrew+netdev@lunn.ch, 
	andrew-ct.chen@mediatek.com, angelogioacchino.delregno@collabora.com, 
	broonie@kernel.org, chunkuang.hu@kernel.org, conor+dt@kernel.org, 
	davem@davemloft.net, dmitry.torokhov@gmail.com, edumazet@google.com, 
	flora.fu@mediatek.com, heiko@sntech.de, houlong.wei@mediatek.com, 
	jeesw@melfas.com, kernel@collabora.com, krzk+dt@kernel.org, kuba@kernel.org, 
	lgirdwood@gmail.com, linus.walleij@linaro.org, 
	louisalexis.eyraud@collabora.com, luiz.dentz@gmail.com, 
	maarten.lankhorst@linux.intel.com, marcel@holtmann.org, 
	matthias.bgg@gmail.com, mchehab@kernel.org, minghsiu.tsai@mediatek.com, 
	mripard@kernel.org, p.zabel@pengutronix.de, pabeni@redhat.com, 
	sean.wang@kernel.org, simona@ffwll.ch, support.opensource@diasemi.com, 
	tiffany.lin@mediatek.com, tzimmermann@suse.de, yunfei.dong@mediatek.com, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-sound@vger.kernel.org, netdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_105419_277297_90A109B1 
X-CRM114-Status: GOOD (  15.96  )
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

T24gV2VkLCBPY3QgMSwgMjAyNSBhdCAxMjoyOOKAr1BNIEFyaWVsIEQnQWxlc3NhbmRybwo8YXJp
ZWwuZGFsZXNzYW5kcm9AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBSb2IsCj4KPiBPbiA5LzEy
LzI1IDExOjA2IEFNLCBSb2IgSGVycmluZyB3cm90ZToKPiA+IE9uIFRodSwgU2VwIDExLCAyMDI1
IGF0IDEyOjA5OjUyUE0gLTAzMDAsIEFyaWVsIEQnQWxlc3NhbmRybyB3cm90ZToKPiA+PiBDb252
ZXJ0IHRoZSBleGlzdGluZyB0ZXh0LWJhc2VkIERUIGJpbmRpbmdzIGZvciBNYXJ2ZWxsIDg4OTcv
ODk5Nwo+ID4+IChzZDg4OTcvc2Q4OTk3KSBibHVldG9vdGggZGV2aWNlcyBjb250cm9sbGVyIHRv
IGEgRFQgc2NoZW1hLgo+ID4+Cj4gPj4gV2hpbGUgaGVyZToKPiA+Pgo+ID4+ICogYmluZGluZ3Mg
Zm9yICJ1c2IxMjg2LDIwNGUiIChVU0IgaW50ZXJmYWNlKSBhcmUgZHJvcHBlZCBmcm9tIHRoZSBE
VAo+ID4+ICAgIHNjaGVtYSBkZWZpbml0aW9uIGFzIHRoZXNlIGFyZSBjdXJyZW50bHkgZG9jdW1l
bnRlZCBpbiBmaWxlIFswXS4KPiA+PiAqIERUIGJpbmRpbmcgdXNlcnMgYXJlIHVwZGF0ZWQgdG8g
dXNlIGJsdWV0b290aCBnZW5lcmljIG5hbWUKPiA+PiAgICByZWNvbW1lbmRhdGlvbi4KPiA+Pgo+
ID4+IFswXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2J0dXNiLnR4dAo+
ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQXJpZWwgRCdBbGVzc2FuZHJvIDxhcmllbC5kYWxlc3Nh
bmRyb0Bjb2xsYWJvcmEuY29tPgo+ID4+IC0tLQo+ID4+ICAgLi4uL25ldC9ibHVldG9vdGgvbWFy
dmVsbCxzZDg4OTctYnQueWFtbCAgICAgIHwgNzkgKysrKysrKysrKysrKysrKysrCj4gPj4gICAu
Li4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnR1c2IudHh0ICAgICAgICAgfCAgMiArLQo+ID4+
ICAgLi4uL2JpbmRpbmdzL25ldC9tYXJ2ZWxsLWJ0LTh4eHgudHh0ICAgICAgICAgIHwgODMgLS0t
LS0tLS0tLS0tLS0tLS0tLQo+ID4KPiA+PiAgIC4uLi9kdHMvcm9ja2NoaXAvcmszMjg4LXZleXJv
bi1maWV2ZWwuZHRzICAgICB8ICAyICstCj4gPj4gICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mjg4LXZleXJvbi1qYXEuZHRzICAgfCAgMiArLQo+ID4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9t
ZWRpYXRlay9tdDgxNzMtZWxtLmR0c2kgIHwgIDIgKy0KPiA+Cj4gPiAuZHRzIGZpbGVzIHNob3Vs
ZCBiZSBzZXBhcmF0ZSBwYXRjaGVzLiBQbGVhc2Ugc2VuZCB0aGUgYmluZGluZ3MgcGF0Y2hlcwo+
ID4gc2VwYXJhdGVseSBwZXIgc3Vic3lzdGVtIHNvIHN1YnN5c3RlbSBtYWludGFpbmVycyBjYW4g
YXBwbHkgdGhlbS4gQWxsCj4gPiB0aGUgTWVkaWF0ZWsgZHRzIGNoYW5nZXMgY2FuIGJlIDEgc2Vy
aWVzLgo+Cj4gQWNrLCB3aWxsIGZpeCBpbiB2My4KCkFyZSB5b3UgZ29pbmcgdG8gc2VuZCB2MyBz
dGlsbD8KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
