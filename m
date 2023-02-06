Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83958C05027
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Feb 2023 16:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dVo4Mnb04BqTdS+WPeLke4doBLaTTeIAk0U102qroA=; b=ZJrYbLAzNMm66+
	91r0iEFUR8q1xettpX6y7U5OFxnPMpSzMlraaa8rwcfH5xQSyDiHaMBXHVFFgpcE0vo4osSuA91JK
	taR26H+0ioYMrsZQ8V5HgM5qh3yyfrFybpglFAqF9iHkz2FT8bp8akkaflh+/DkPHskzM6vymLYlN
	ITqZbiEIOHyic1+crTLdM5hYMnhClqvj3cAuw7QbD0ngfx4xncTQ5TPWrbj8UIfY7wbu3yYelshXi
	Fr1p/LAQee/dc9Br+SCno4OFiwKXRNxGhs3+/xyUQfWB26JHvQ9HwaElWKJHrM66QH6PDEUXVRzPZ
	qAleSLbe4OM06fpy5ghQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP46S-009EF6-Lx; Mon, 06 Feb 2023 16:12:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP3hS-00925m-TJ; Mon, 06 Feb 2023 15:46:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C8CF360F4D;
	Mon,  6 Feb 2023 15:46:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D813C433AE;
	Mon,  6 Feb 2023 15:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675698392;
	bh=joRqx9Li9igfnC0oG6IHKkgO3cLoL5bazL6HXykW/Yk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=JKn8eNaNJ4rikGY741Uy2+0jJ1t1CJnAt8eg4J/uwsGU91pzRtO8LzlwrMivN/3gp
	 NceZa7of2rRpKnlzWWzal3WG40MtjMiIMZbaaoryIEx5QnsmTtPNSjX1udoaGNzRgT
	 G+0+/6/mSUKlYDeinY+kmlCkoNaAKjbzQ/q6lmdGksIlr79l0R/s2IlClC45wK/H/E
	 fJpyE8hsh7Nvh7Mo7QpuruZlyTxIR5J+/Sc4WgFdeTJJXmiyjrjIITLKZjrsHzdSZd
	 FEGytUJ0kxZNmw6G78c7gyEYYv0ewaiHvm/ZsVrn0EfCLdlY3P0oMyVb9DDjyQy+q2
	 tg7Sjb+4UeVag==
Received: by mail-vs1-f48.google.com with SMTP id y8so13136414vsq.0;
        Mon, 06 Feb 2023 07:46:32 -0800 (PST)
X-Gm-Message-State: AO0yUKWZD3aXQYTT04/lujD1+afFKUD7IzkKJDpemaYSScPEGDox81E6
	zJVQLF4LV1fa6w4wv2zUgNd4zx1SWXZ2TsAi0g==
X-Google-Smtp-Source: AK7set8Tk9obdWMlC2bGawE53EVM/Oy5EZ7J8YanM63uhthmowerxVZw/LM6nc9a1zR0V1hhJv6Nifwjl9aigUei0n0=
X-Received: by 2002:a67:cc1d:0:b0:3f3:5ce0:85ab with SMTP id
 q29-20020a67cc1d000000b003f35ce085abmr38443vsl.26.1675698390984; Mon, 06 Feb
 2023 07:46:30 -0800 (PST)
MIME-Version: 1.0
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
 <20230203182119.GA615242-robh@kernel.org> <87f5097d-1cd0-e09f-e759-8592a9165ea6@gmail.com>
 <5647788.DvuYhMxLoT@diego>
In-Reply-To: <5647788.DvuYhMxLoT@diego>
From: Rob Herring <robh@kernel.org>
Date: Mon, 6 Feb 2023 09:46:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJJcRx0XAJmsS6Q-AmNGDd+bWPVgW1yLBq6o2kmxiEFAg@mail.gmail.com>
Message-ID: <CAL_JsqJJcRx0XAJmsS6Q-AmNGDd+bWPVgW1yLBq6o2kmxiEFAg@mail.gmail.com>
Subject: Re: [PATCH v6 01/17] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, hjc@rock-chips.com, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com, 
	neil.armstrong@linaro.org, robert.foss@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	philippe.cornu@foss.st.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-usb@vger.kernel.org, linus.walleij@linaro.org, inki.dae@samsung.com, 
	sw0312.kim@samsung.com, kyungmin.park@samsung.com, alim.akhtar@samsung.com, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_074635_067920_A067F188 
X-CRM114-Status: GOOD (  26.62  )
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

T24gU3VuLCBGZWIgNSwgMjAyMyBhdCA4OjEyIEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+Cj4gSGksCj4KPiBBbSBGcmVpdGFnLCAzLiBGZWJydWFyIDIwMjMsIDIw
OjAyOjU0IENFVCBzY2hyaWViIEpvaGFuIEpvbmtlcjoKPiA+Cj4gPiBPbiAyLzMvMjMgMTk6MjEs
IFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gPiBPbiBUaHUsIERlYyAyMiwgMjAyMiBhdCAwMzoyMjox
NFBNICswMTAwLCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4gPiA+PiBDb252ZXJ0IHJvY2tjaGlwLWx2
ZHMudHh0IHRvIFlBTUwuCj4gPiA+Pgo+ID4gPj4gQ2hhbmdlZDoKPiA+ID4+ICAgQWRkIHBvd2Vy
LWRvbWFpbnMgcHJvcGVydHkuCj4gPiA+PiAgIFJlcXVpcmVtZW50cyBiZXR3ZWVuIFBYMzAgYW5k
IFJLMzI4OAo+ID4gPj4KPiA+ID4+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEpvbmtlciA8amJ4NjI0
NEBnbWFpbC5jb20+Cj4gPiA+PiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4KPiA+ID4+IC0tLQo+ID4gPj4KPiA+ID4+IENoYW5nZWQgVjM6Cj4gPiA+PiAgIEZpbGVu
YW1lIG1hdGNoaW5nIGNvbXBhdGlibGUgc3R5bGUKPiA+ID4+ICAgRHJvcCAiUmVndWxhdG9yIHBo
YW5kbGUgZm9yICIKPiA+ID4+ICAgU3BlY2lmeSBwcm9wZXJ0aWVzIGFuZCByZXF1aXJlbWVudHMg
cGVyIFNvQwo+ID4gPj4gICBTb3J0IG9yZGVyIGFuZCByZXN0eWxlCj4gPiA+Pgo+ID4gPj4gQ2hh
bmdlZCBWMjoKPiA+ID4+ICAgRml4IHRpdGxlCj4gPiA+PiAtLS0KPiA+ID4+ICAuLi4vZGlzcGxh
eS9yb2NrY2hpcC9yb2NrY2hpcCxsdmRzLnlhbWwgICAgICAgfCAxNzAgKysrKysrKysrKysrKysr
KysrCj4gPiA+PiAgLi4uL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtbHZkcy50eHQgICAgICAg
IHwgIDkyIC0tLS0tLS0tLS0KPiA+ID4+ICAyIGZpbGVzIGNoYW5nZWQsIDE3MCBpbnNlcnRpb25z
KCspLCA5MiBkZWxldGlvbnMoLSkKPiA+ID4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsbHZkcy55
YW1sCj4gPiA+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLWx2ZHMudHh0Cj4gPiA+Cj4gPgo+ID4g
PiBXaGF0J3MgdGhlIHBsYW4gZm9yIHRoZXNlIHBhdGNoZXM/IERvbid0IHNlZSB0aGVtIGluIGxp
bnV4LW5leHQgc3RpbGwuCj4gPiA+IERvIHlvdSB3YW50IG1lIHRvIHRha2UgcGF0Y2hlcyAxLTg/
Cj4gPgo+ID4gSGksCj4gPgo+ID4gVGhlIGRpc3BsYXkgcGF0Y2hlcyBub3JtYWxseSBnbyB0aHJv
dWdoIHRoZSBEUk0gZ2l0Lgo+ID4gUGF0Y2ggMiBtdXN0IG1lcmdlIHdpdGggZ3JmLnlhbWwuCj4g
PiBIZWlrbyBoYXMgbWVyZ2VkIG5vdyAzIFBIWSByZWxhdGVkIHBhdGNoZXMgdG8gZ3JmLnlhbWwg
Zmlyc3QuCj4gPgo+ID4gW1BBVENIIHY2IDAyLzE3XSBkdC1iaW5kaW5nczogc29jOiByb2NrY2hp
cDogZ3JmOiBhZGQgcm9ja2NoaXAsbHZkcy55YW1sCj4gPgo+ID4gU2VlIGN1cnJlbnQKPiA+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xpbnV4
LXJvY2tjaGlwLmdpdC9sb2cvP2g9Zm9yLW5leHQmcXQ9Z3JlcCZxPWpvbmtlcgo+ID4KPiA+IE5v
dCBzdXJlIHdoYXQgSGVpa28ncyBwbGFucyBhcmUuCj4gPiBQYXRjaCAyIHJlcGxhY2VzICBvbmx5
IGEgZGVzY3JpcHRpb24gdGV4dCBhbmQgc29tZSBhY2NvbGFkZXMgcmVtb3ZhbCwgc28gbm90ICJ0
b28iIGltcG9ydGFudC4KPiA+Cj4gPiBJIHVyZ2VudCB0aGVuIHlvdSBjb3VsZCBtZXJnZSB3aXRo
b3V0IGNvbmZsaWN0Ogo+ID4gMSwgMy04Cj4KPiBTbyBJJ3ZlIGFwcGxpZWQgcGF0Y2hlcyAxLTcg
dG8gdGhlIGRybS10cmVlIG5vdy4KClRoYXQgd291bGQgaGF2ZSBiZWVuIGdvb2QgYSBtb250aCBh
Z28uIE5vdyB0aGVzZSB3b24ndCBsYW5kIHRpbCA2LjQuCjooIEZvciB0aGF0IHJlYXNvbiwgaWYg
aXQgaXMgYWZ0ZXIgdGhlIGRybS1taXNjIGN1dG9mZiwgSSBwcmVmZXIgdG8KdGFrZSBEVCBiaW5k
aW5ncyB2aWEgbXkgdHJlZS4KCj4gRm9yIHRoZSBHUkYtcGF0Y2gsIEkndmUgZHJvcHBlZCB0aGUg
cXVvdGVzIGNoYW5nZXMsIGFzIHRoZXkgYXJlIHNvbWV3aGF0Cj4gdW5yZWxhdGVkIHRvIHRoZSBs
dmRzIGluY2x1c2lvbiBhbmQgc28gcHJldmVudGVkIGFueSBjb25mbGljdHMgd2hlbiBhcHBseWlu
Zwo+IHRoZSByZXN0IHRvIHRoZSBEUk0gdHJlZS4KCk9ubHkgMSBodW5rIG5lZWRlZCB0byBiZSBk
cm9wcGVkIHRvIGF2b2lkIHRoZSBjb25mbGljdCAod2hpY2ggYWxzbwpkcm9wcGVkIHF1b3Rlcyku
IElmIGFsbCB0aGUgcXVvdGUgY2hhbmdlcyB3ZXJlIGRyb3BwZWQsIHBsZWFzZSBzZW5kCmFub3Ro
ZXIgcGF0Y2ggZm9yIHRoYXQuCgo+IEBSb2IsIGlmIHlvdSBjb3VsZCBwaWNrIHRoZSBmdXNiMzAy
IHBhdGNoIChudW1iZXI4KSwgdGhhdCB3b3VsZCBiZSBncmVhdAoKV2lsbCBkby4KClJvYgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
