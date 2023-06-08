Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C7BC7EE23
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jun 2023 20:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c32Mf7ZBsOIFt95xngjt0L/iy2SQiROl8dHzfIMV8bQ=; b=zrWmo1zWjukYuJ
	gb4o0os0V+vVo2AJDrYhjUAv2f8njPRkIt8gexTacraupGD13NhJz0e481Nhnflvx/q7trvVrEt2D
	jn3/PatOpMjwT6Wjpi/2V3//wqhmmqefRHzSJrzOrOVdVDU1WKX9dY34pZisGArnfFPu5yYcKxUnf
	zyht4Ab1HGbKgrz299fXmqo4qx/0RI49nsPWKkxFELAVh/LizwyaeXumOgWajsVaEOKP80ojadyC6
	5FNxJVC7wVirO9+n9wj4+SEKAN5vp0j60+icHHORh3h+zKmkKkrFE2GSRfmH9z40tmBj1yIpBgBby
	2tW6lGL0/3LG1/LSUjJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7MKl-00AZ5e-0N;
	Thu, 08 Jun 2023 20:34:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7MKg-00AZ49-34;
	Thu, 08 Jun 2023 20:34:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E518161212;
	Thu,  8 Jun 2023 20:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48CB7C433D2;
	Thu,  8 Jun 2023 20:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686256448;
	bh=sDQU8yDhZvEN0YygXlDwwk/pG5OO2+PNN+eimNV1mxQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fgaZ349JLx+w83grh2ZLXulv/+6NJAi3DgUkiDjdPUnEbtk4GQEssHtbOIddqu7NS
	 lPaC6AHuim2fJRANrT5DaAmdXiQpvBm+7mGFYRsrpE+oxJUOyxOcSTn5lKiyDxe1Or
	 n5YgMMfQ4bTaC2QJt/JnTYxj/givMqGUBBz3rUIry4SQD/wz5fgIIRzW+GMrEpzSFi
	 PbfnO38m/nfnN3xuhX7TtG4zZHxJFbZGDmEo4sAIkiZ9b2pSGKKgp/euyIGBlEVoLc
	 GjISgjtw2dBk6OSTF08aIBGYgRcFyZGTf1PvKvLV50bqV6sHmzKcOLVI2G/vh42+xc
	 r1JZZ8BI/NqLw==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-4f63ea7bfb6so1275382e87.3;
        Thu, 08 Jun 2023 13:34:08 -0700 (PDT)
X-Gm-Message-State: AC+VfDxHm8c66oL+VkNOr5+5x8N7rhOJBtaY12jcbbdJCNmuQjgccPrw
	YPYCy0uk/wwEiqcaKFDk4+PjrSUharcM4OBUww==
X-Google-Smtp-Source: ACHHUZ5SCj+1HRHRtKPyWx3l9LJOj9l0nyCPip7lrCiON1VeZXUrpVZAJ73MOZnz04qUR2b59Vv4/CBNUYxpj6dT0Jg=
X-Received: by 2002:a2e:9cd6:0:b0:2b1:d91b:51c3 with SMTP id
 g22-20020a2e9cd6000000b002b1d91b51c3mr4481468ljj.30.1686256446472; Thu, 08
 Jun 2023 13:34:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <ZFrPJQdwoxqFpzUO@probook>
In-Reply-To: <ZFrPJQdwoxqFpzUO@probook>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 8 Jun 2023 14:33:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLTj_L-V8HR=TzO6+r9Xew=yivaKG1ngCn+NCjgPZwZzw@mail.gmail.com>
Message-ID: <CAL_JsqLTj_L-V8HR=TzO6+r9Xew=yivaKG1ngCn+NCjgPZwZzw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org, 
	linux-realtek-soc@lists.infradead.org, linux-arm-kernel@axis.com, 
	linux-stm32@st-md-mailman.stormreply.com, chrome-platform@lists.linux.dev, 
	linux-samsung-soc@vger.kernel.org, openbmc@lists.ozlabs.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-rockchip@lists.infradead.org, 
	Geert Uytterhoeven <geert@linux-m68k.org>, linux-sunxi@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-actions@lists.infradead.org, linux-unisoc@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	Linux-OMAP <linux-omap@vger.kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, kernel@dh-electronics.com, 
	Olof Johansson <olof@lixom.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	"linux-oxnas@groups.io" <linux-oxnas@groups.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_133411_090260_817732F6 
X-CRM114-Status: GOOD (  23.40  )
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

T24gVHVlLCBNYXkgOSwgMjAyMyBhdCA0OjU14oCvUE0gSm9uYXRoYW4gTmV1c2Now6RmZXIKPGou
bmV1c2NoYWVmZXJAZ214Lm5ldD4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1heSAwMiwgMjAyMyBhdCAw
Mjo0MDoxOVBNIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKPiBbLi4uXQo+ID4gSSd2ZSBkdXN0
ZWQgb2ZmIG15IHNjcmlwdCBhbmQgbWFkZSBhIGJyYW5jaFsxXSB3aXRoIHRoZSByZXN1bHQuCj4g
PiBUaGVyZSdzIGp1c3QgYSBjb3VwbGUgb2YgZml4ZXMgbmVlZGVkIGFmdGVyIHRoZSBzY3JpcHQg
aXMgcnVuIChzZWUgdGhlCj4gPiB0b3AgY29tbWl0KS4gVGhlIGNyb3NzIGFyY2ggaW5jbHVkZXMg
YXJlIGFsbCBmaXhlZCB1cCBieSB0aGUgc2NyaXB0Lgo+ID4gZHRic19pbnN0YWxsIG1haW50YWlu
cyBhIGZsYXQgaW5zdGFsbC4gSSBjb21wYXJlZCB0aGUgbnVtYmVyIG9mIC5kdGJzCj4gPiBiZWZv
cmUgYW5kIGFmdGVyIHRvIGNoZWNrIHRoZSBzY3JpcHQuCj4gPgo+ID4gSSB0aGluayB0aGUgb25s
eSBpc3N1ZSByZW1haW5pbmcgaXMgZmluYWxpemluZyB0aGUgbWFwcGluZyBvZgo+ID4gcGxhdGZv
cm1zIHRvIHN1YmRpcnMuIFdoYXQgSSBoYXZlIGN1cnJlbnRseSBpcyBhIG1peHR1cmUgb2YgU29D
Cj4gPiBmYW1pbGllcyBhbmQgdmVuZG9ycy4gVGhlIG1vc3Qgbm90YWJsZSBhcmUgYWxsIHRoZSBG
cmVlc2NhbGUvTlhQCj4gPiBwbGF0Zm9ybXMsIHB4YSwgc29jZnBnYSwgYW5kIHN0bTMyLiBJdCdz
IG5vdCBjb25zaXN0ZW50IHdpdGggYXJtNjQKPiA+IGVpdGhlci4gT25jZSB0aGF0J3MgZmluYWxp
emVkLCBJIHN0aWxsIG5lZWQgdG8gZ28gdXBkYXRlIE1BSU5UQUlORVJTLgo+ID4KPiA+IEhlcmUn
cyB0aGUgY3VycmVudCBtYXBwaW5nOgo+ID4KPiA+IHZlbmRvcl9tYXAgPSB7Cj4gWy4uLl0KPiA+
ICAgICAnYXNwZWVkJyA6ICdhc3BlZWQnLAo+ID4gICAgICdhc3QyJyA6ICdhc3BlZWQnLAo+ID4g
ICAgICdmYWNlYm9vaycgOiAnYXNwZWVkJywKPiA+ICAgICAnaWJtJyA6ICdhc3BlZWQnLAo+Cj4g
PiAgICAgJ29wZW5ibWMnIDogJ2FzcGVlZCcsCj4KPiBUaGUgb3BlbmJtYyBmbGFzaCBsYXlvdXRz
IGFyZSBjdXJyZW50bHkgb25seSB1c2VkIGJ5IGFzcGVlZCBkZXZpY2V0cmVlcywKPiBidXQgdGhl
eSBkb24ndCByZWFsbHkgZGVwZW5kIG9uIGFueSBhc3BlZWQgZGV0YWlscy4gSXQgd291bGQgYmUg
cG9zc2libGUKPiB0byByZXVzZSB0aGVtIGluIE51dm90b24gQk1DIGRldmljZXRyZWVzIGluIHRo
ZSBmdXR1cmUsIGZvciBleGFtcGxlLgo+Cj4gSW4gdGhhdCBzZW5zZSwgSSB0aGluayBwdXR0aW5n
IHRoZW0gaW4gYSBzZXBhcmF0ZSAib3BlbmJtYyIgZGlyZWN0b3J5Cj4gd291bGQgYmUgc2xpZ2h0
bHkgYmV0dGVyLgoKQ291bGQgYmUgdXNlZCBvbiBhcm02NCBvciByaXNjdiB0b28gYXQgc29tZSBw
b2ludC4gV2UgZG8gc29tZSBjcm9zcwphcmNoIGluY2x1ZGVzLCBidXQgSU1PIGl0IHdvdWxkIGJl
IGJldHRlciB0byBtb3ZlIHRvCmluY2x1ZGUvZHQtYmluZGluZ3MvIG9yIHNvbWV3aGVyZSBvdXRz
aWRlIG9mIGFyY2gvLiBPdGhlciBjb21tb24KdGhpbmdzIEkgZGlkbid0IG1vdmUuIEkgY291bGQg
ZG8gdGhhdCBoZXJlIHRvby4gSSBwcmVmZXIgdG8gdGhhdCB0aGUKc3ViLWRpcmVjdG9yaWVzIGFy
ZSBqdXN0IGNoaXAgdmVuZG9ycy9mYW1pbGllcy4KClJvYgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
