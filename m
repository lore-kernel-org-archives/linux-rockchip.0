Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFCA1C47089
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 22:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1lKVsggDFIsItmKUqCDv4q42TLhYdcKANlzrzaxtdw=; b=MaVCFqvhmF+dho
	h3x0NHVwfi1dRA4j/+Rk0vzt2wI0uI6rwgWKBLhPNv0PyzsA3hAeX1XAXekrQg3HmCOE0A0Kdfcyr
	s9KQAjKmk1dXNF34peDprsshRMerzrDJ/XBgNjcUrbL7gyas8Yk0d5aA6ySJ+MqYB1vREKrnaarHW
	JdW7MtnzsO/lrQfXJHlJTHpD2Ou+uBC5oYetQrgcRUqIUEJiYAF0i5xhx5jecnMHKYYChhExd5J6D
	gNY+edndr1AxGvlSNvrCK9GwVDAhABnNEVwhMiO2fXnC90NgfSmxNcPZKYoRcyIsJrLtyC3KV4XZ8
	012kz71k9mHfZbLdv79g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JoJ-00BCwX-QR; Mon, 05 Dec 2022 22:19:39 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Jo8-00BCoF-3S
	for linux-rockchip@lists.infradead.org; Mon, 05 Dec 2022 22:19:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1670278762;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r/SpJiKMRZzsA13nt/vHo0GTokdNpO5dXKV/2C5VsvI=;
	b=ih586JWuZPX0OoQKho9f4XX9XuxHjI05ii0gItXWIGhvtPBM/uZU5dpOUnS12GSu7Edjcx
	imZ7ZHXkZN6HpeHSfuMQTS5uSlFtJSJkdPFXCtAHcw81soa+dv1IiXcthoo6Zw3qzgaKhK
	INzJbeaje+n3BxiTKDrZfvHIVxxccmM=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-640-FxOWGXqJNJGi70B5YOHnQA-1; Mon, 05 Dec 2022 17:19:20 -0500
X-MC-Unique: FxOWGXqJNJGi70B5YOHnQA-1
Received: by mail-ej1-f70.google.com with SMTP id ga41-20020a1709070c2900b007aef14e8fd7so371100ejc.21
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Dec 2022 14:19:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r/SpJiKMRZzsA13nt/vHo0GTokdNpO5dXKV/2C5VsvI=;
        b=WJwdZLjSE/mV9/pBike3yRLFXrYSv17TUpq9ljn8QxWwG0sT/mHw6v2drAwE1q7ZBI
         wpW2YO0H7YvZHk20VLz9HNSl5o5e2cAEEfIJtwfW2fV8G9r7ArqSUuGplT8iEejpIJfX
         /EQFzL/rOih8ruW6lk64B9syOlv2g7cr2K6B86ghC/T82bb1/2P1jmnpzw1bJ2JL/CU1
         Ajdpf3I1u1Osdz3ZNoGwifwhDwGvfXAVdBoD78a7y1y5R5rtZGHqCMCBdA2hb4bJATJq
         dEWR/DU5x6b4/ySkQKbpJO6ZgFw/peKfEc7K+npdcLP0m6mSN8ic8yL6Yo1dXq9ahz7K
         Oi3A==
X-Gm-Message-State: ANoB5pmQgIYdyqMjlqzAeIPbodlwYwCdIsEgRfzTn3HeEYmTsR0OZ3+M
	aS8P0AgmnP19iYxk60NIvsQlTnKlUzUZUZcS+We60Xpld6NJ/cMdoKfJWaeaxSZthyqmm4yOMba
	vLK5mFLbypbUwZxWhX2zrcAgmN2CqzRFD
X-Received: by 2002:a17:906:402:b0:7a6:fc0f:6fe6 with SMTP id d2-20020a170906040200b007a6fc0f6fe6mr68328921eja.694.1670278759569;
        Mon, 05 Dec 2022 14:19:19 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4/AZjHdk4blrYZTy+WUNqF0ehBqnPpjtR2Q0U1GDaaqR6yRlJDcKawBK9sFngjEIEqwh3gGA==
X-Received: by 2002:a17:906:402:b0:7a6:fc0f:6fe6 with SMTP id d2-20020a170906040200b007a6fc0f6fe6mr68328906eja.694.1670278759272;
        Mon, 05 Dec 2022 14:19:19 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81? (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
        by smtp.gmail.com with ESMTPSA id g26-20020a056402181a00b004618a89d273sm286672edy.36.2022.12.05.14.19.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 14:19:18 -0800 (PST)
Message-ID: <2186e672-8795-8da0-32a3-e6dba00ff504@redhat.com>
Date: Mon, 5 Dec 2022 23:19:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 0/9] fix reset line polarity for Goodix touchscreen
 controllers
To: Quentin Schulz <foss+kernel@0leil.net>,
 Samuel Holland <samuel@sholland.org>, Bastien Nocera <hadess@hadess.net>,
 =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Angus Ainslie <angus@akkea.ca>, Ondrej Jirman <megous@megous.com>,
 Icenowy Zheng <icenowy@aosc.io>, Andy Gross <agross@kernel.org>,
 Aleksei Mamlin <mamlinav@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 David Jander <david@protonic.nl>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Lukasz Majewski <lukma@denx.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Chen-Yu Tsai <wens@csie.org>, Michael Riesch
 <michael.riesch@wolfvision.net>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_141928_246269_C2D7054D 
X-CRM114-Status: GOOD (  36.83  )
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

SGkgUXVlbnRpbiwKCk9uIDEyLzUvMjIgMTQ6NDAsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+IEZy
b206IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+
Cj4gCj4gVGhlIEdvb2RpeCB0b3VjaHNjcmVlbiBjb250cm9sbGVyIGhhcyBhIHJlc2V0IGxpbmUg
YWN0aXZlIGxvdy4gSXQgaGFwcGVucyB0bwo+IGFsc28gYmUgdXNlZCB0byBjb25maWd1cmUgaXRz
IGkyYyBhZGRyZXNzIGF0IHJ1bnRpbWUuIElmIHRoZSByZXNldCBsaW5lIGlzCj4gaW5jb3JyZWN0
bHkgYXNzZXJ0ZWQsIHRoZSBhZGRyZXNzIHdpbGwgYmUgd3JvbmdseSBjb25maWd1cmVkLiBUaGlz
IGNvc3QgbWUgYSBmZXcKPiBob3VycywgdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgd2h5IHRoZSB0b3Vj
aHNjcmVlbiB3b3VsZG4ndCB3b3JrLgo+IAo+IFRoZSBkcml2ZXIgaXMgImFzc2VydGluZyIgdGhp
cyByZXNldCBHUElPIGJ5IHNldHRpbmcgaXRzIG91dHB1dCB0byAwLCBwcm9iYWJseQo+IHRvIHJl
ZmxlY3QgdGhlIHBoeXNpY2FsIHN0YXRlIG9mIHRoZSBsaW5lLiBIb3dldmVyLCB0aGlzIHJlbGll
cyBvbiB0aGUgZmFjdCB0aGF0Cj4gdGhlIERldmljZSBUcmVlIG5vZGUgc2V0dGluZyB0aGUgcmVz
ZXQgbGluZSBwb2xhcml0eSB0byBhY3RpdmUgaGlnaCwgd2hpY2ggaXMKPiBpbmNvcnJlY3Qgc2lu
Y2UgdGhlIHJlc2V0IGlzIGFjdGl2ZSBsb3cgaW4gaGFyZHdhcmUuCj4gCj4gVG8gZml4IHRoaXMg
aW5jb25zaXN0ZW5jeSwgdGhlIHBvbGFyaXR5IGlzIGludmVydGVkIHRvIG5vdCBjb25mdXNlIHRo
ZSB1c2VyCj4gYWJvdXQgdGhlIHJlc2V0IGxpbmUgcG9sYXJpdHkuIFRoaXMgb2J2aW91c2x5IHJl
cXVpcmVzIHRvIGZpeCB0aGUgRFQgc2luY2UgbW9zdAo+IHVzZXJzIGhhZCB0aGUgImluY29ycmVj
dCIgdmFsdWUgaW4gdGhlcmUsIGl0IG5lZWRzIHRvIGJlIGludmVydGVkLgo+IE5vdGUgdGhhdCB0
aGUgdjIgaGlnaGxpZ2h0ZWQgdGhhdCBJIHdhcyBub3QgdGhlIG9ubHkgb25lIHRoYXQgZ290IGNv
bmZ1c2VkIHNpbmNlCj4gUFJUOE1NIGJvYXJkIGhhcyB0aGUgImNvcnJlY3QiIEhXIHJlcHJlc2Vu
dGF0aW9uIGZvciB0aGlzIGxpbmUgaW4gRFQgKHdoaWNoIGRvZXMKPiBub3QgbWF0Y2ggd2hhdCB0
aGUgZHJpdmVyIHdhcyBleHBlY3RpbmcpLgo+IAo+IFRoaXMgaXMgbWFya2VkIGFzIFJGQyBiZWNh
dXNlIEkgY2FuIG5laXRoZXIgdGVzdCBBQ1BJIHN1cHBvcnQgbm9yIGJvYXJkcyBJIGRvbid0Cj4g
b3duLiBQbGVhc2UgdGVzdCBvbiB0aGUgYm9hcmRzIHlvdSBoYXZlIHRoYXQgYXJlIGltcGFjdGVk
IGJ5IHRoaXMgcGF0Y2hzZXQgYW5kCj4gZ2l2ZSB5b3VyIFRlc3RlZC1CeS4KCkkgaGF2ZSB0ZXN0
ZWQgdGhpcyBvbiBhIHg4Ni9BQ1BJIGRldmljZSB3aGVyZSB3ZSBhY3R1YWxseSBuZWVkIHRvIHJl
c2V0CnRoZSBjb250cm9sbGVyIGF0IGJvb3QgdG8gZ2V0IGl0IHRvIHdvcmsgYW5kIHRoaW5ncyBz
dGlsbCB3b3JrIGZpbmUgdGhlcmUKYWZ0ZXIgdGhpcyBzZXJpZXMuCgpJJ3ZlIGFsc28gcmV2aWV3
ZCBwYXRjaGVzIDEtMyBhbmQgdGhleSBsb29rIGdvb2QgdG8gbWUgdG8uCgpTbyBmb3IgcGF0Y2hl
cyAxLTMgeW91IG1heSBhZGQgbXk6CgpUZXN0ZWQtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRl
QHJlZGhhdC5jb20+ClJldmlld2VkLWJ5OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQu
Y29tPgoKUmVnYXJkcywKCkhhbnMKCgoKCgo+IERvIHdlIGFsc28gbWFrZSB0aGlzIHBhdGNoIHNl
cmllcyBvbmx5IG9uZSBwYXRjaHNldCBzaW5jZSB0aGUgRFQgcGF0Y2hlcyBkZXBlbmQKPiBvbiB0
aGUgZHJpdmVyIHBhdGNoIGFuZCB2aWNlLXZlcnNhPyBJbiB3aGljaCB0cmVlIHdvdWxkIHRoaXMg
Z28/Cj4gCj4gVGhhbmtzLAo+IFF1ZW50aW4KPiAKPiBUbzogQmFzdGllbiBOb2NlcmEgPGhhZGVz
c0BoYWRlc3MubmV0Pgo+IFRvOiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+
IFRvOiBEbWl0cnkgVG9yb2tob3YgPGRtaXRyeS50b3Jva2hvdkBnbWFpbC5jb20+Cj4gVG86IFJv
YiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+Cj4gVG86IEtyenlzenRvZiBLb3psb3dza2kg
PGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZz4KPiBUbzogU2hhd24gR3VvIDxzaGF3
bmd1b0BrZXJuZWwub3JnPgo+IFRvOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXgu
ZGU+Cj4gVG86IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+
Cj4gVG86IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KPiBUbzogTlhQIExpbnV4
IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgo+IFRvOiBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5v
cmc+Cj4gVG86IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4gVG86
IFNhbXVlbCBIb2xsYW5kIDxzYW11ZWxAc2hvbGxhbmQub3JnPgo+IFRvOiBBbmR5IEdyb3NzIDxh
Z3Jvc3NAa2VybmVsLm9yZz4KPiBUbzogQmpvcm4gQW5kZXJzc29uIDxhbmRlcnNzb25Aa2VybmVs
Lm9yZz4KPiBUbzogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bzb21haW5saW5lLm9yZz4K
PiBUbzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBUbzogRGF2aWQgSmFuZGVy
IDxkYXZpZEBwcm90b25pYy5ubD4KPiBUbzogQW5ndXMgQWluc2xpZSA8YW5ndXNAYWtrZWEuY2E+
Cj4gVG86IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gVG86IE1pY2hhZWwgUmll
c2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4KPiBUbzogS29ucmFkIER5YmNpbyA8
a29ucmFkLmR5YmNpb0Bzb21haW5saW5lLm9yZz4KPiBUbzogQW5nZWxvR2lvYWNjaGlubyBEZWwg
UmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9Ac29tYWlubGluZS5vcmc+Cj4gVG86IEd1
aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4gVG86IEphZ2FuIFRla2kgPGphZ2FuQGFt
YXJ1bGFzb2x1dGlvbnMuY29tPgo+IFRvOiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNv
bT4KPiBUbzogSWNlbm93eSBaaGVuZyA8aWNlbm93eUBhb3NjLmlvPgo+IFRvOiBBbGVrc2VpIE1h
bWxpbiA8bWFtbGluYXZAZ21haWwuY29tPgo+IFRvOiBMdWthc3ogTWFqZXdza2kgPGx1a21hQGRl
bnguZGU+Cj4gVG86IEZyaWVkZXIgU2NocmVtcGYgPGZyaWVkZXIuc2NocmVtcGZAa29udHJvbi5k
ZT4KPiBDYzogbGludXgtaW5wdXRAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXN1bnhpQGxpc3Rz
LmxpbnV4LmRldgo+IENjOiBsaW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gU2lnbmVkLW9mZi1ieTogUXVlbnRpbiBT
Y2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPiAtLS0KPiBDaGFu
Z2VzIGluIHYzOgo+IC0gQ2MnaW5nIHBlb3BsZSB3aG8gY29udHJpYnV0ZWQgdG8gRFRTIG9mIGlt
cGFjdGVkIGJvYXJkcywKPiAtIHJlbW92ZWQgUFJUOE1NIERUUyBjaGFuZ2Ugc2luY2UgaXQncyBi
ZWVuIHJlcG9ydGVkIHRoZSBwb2xhcml0eSBpcyBhY3R1YWxseQo+ICAgY29ycmVjdCAoZ29lcyB0
aHJvdWdoIGFuIGludmVydGVyKSwga2VlcGluZyB0aGUgYXBwcm9wcmlhdGUgZm9sa3MgaW4gQ2Mg
dGhvdWdoCj4gICBzaW5jZSBpdCdkIGJlIGEgZ29vZCBpZGVhIHRvIGNoZWNrIHRoaXMgcGF0Y2gg
c2VyaWVzIGFueXdheXMsCj4gLSBhZGRlZCBBQ1BJX0dQSU9fUVVJUktfTk9fSU9fUkVTVFJJQ1RJ
T04gdG8gYWNwaV9ncGlvX21hcHBpbmcgcXVpcmtzIHRvIG1ha2UKPiAgIGdwaW9saWItYWNwaSBj
b3JlIHJlc3BlY3QgR1BJT0RfQVNJUyBmbGFnIGluIGdwaW9kX2dldCwKPiAtIGNoZWNrZWQgc2No
ZW1hdGljcyBvZjoKPiAgIC0gcGluZXBob25lOiBodHRwczovL2ZpbGVzLnBpbmU2NC5vcmcvZG9j
L1BpbmVQaG9uZS9QaW5lUGhvbmUlMjB2MS4yJTIwUmVsZWFzZWQlMjBTY2hlbWF0aWMucGRmCj4g
ICAtIHBpbmV0YWI6IGh0dHBzOi8vZmlsZXMucGluZTY0Lm9yZy9kb2MvUGluZVRhYi9QaW5lVGFi
JTIwU2NoZW1hdGljJTIwdjEuMi0yMDE5MTEyNS5wZGYKPiAgIC0gcHgzMCBldmI6IGh0dHBzOi8v
b3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS9pbWFnZXMvZC9kYi9QeDMwX21pbmlfZXZiX3YxMF8y
MDE4MDUyOC5wZGYKPiAgIC0gcm9ja3BybzY0OiBodHRwczovL2ZpbGVzLnBpbmU2NC5vcmcvZG9j
L3JvY2twcm82NC9yb2NrcHJvNjRfdjIxLVNDSC5wZGYKPiAgIC0gbGlicmVtNSBkZXZraXQ6IGh0
dHBzOi8vc291cmNlLnB1cmkuc20vTGlicmVtNS9kdmstbXg4bS1ic2IvYmxvYi9tYXN0ZXIvZHZr
LW14OG0tYnNiLnBkZgo+IAo+ICAgQWxsIHNlZW1zIHRvIGJlIGRpcmVjdGx5IGNvbm5lY3RlZCB0
byB0aGUgR1BJTyBvbiB0aGUgU29DIHNpZGUsIHdpdGhvdXQgYW4KPiAgIGludmVydGVyIG9uIHRo
ZSBsaW5lLgo+IC0gTGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIyMTEw
My11cHN0cmVhbS1nb29kaXgtcmVzZXQtdjItMC0yYzM4ZmIwM2EzMDBAdGhlb2Jyb21hLXN5c3Rl
bXMuY29tCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIGltcGxlbWVudGVkIEFDUEkgc3VwcG9ydCBh
cyBzdWdnZXN0ZWQgYnkgSGFucywKPiAtIHJlbW92ZWQgUWNvbSBTQzcxODAgVHJvZ2Rvci1iYXNl
ZCBkZXZpY2VzIGNoYW5nZXMgYXMgdGhleSBhcmUgbm90IHVzaW5nIHRoaXMgR29vZGl4IGRyaXZl
ciwKPiAtIGFkZGVkIGNvbW1lbnQgb24gaG93IHRvIHJlYWQgZ3Bpb2RfcmVxdWVzdF9vdXRwdXQg
YW5kIHRoZSBHUElPIERUIHBvbGFyaXR5LAo+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvci8yMDIyMTEwMy11cHN0cmVhbS1nb29kaXgtcmVzZXQtdjEtMC04N2I0OWFlNTg5
ZjFAdGhlb2Jyb21hLXN5c3RlbXMuY29tCj4gCj4gLS0tCj4gUXVlbnRpbiBTY2h1bHogKDkpOgo+
ICAgICAgIElucHV0OiBnb29kaXggLSBhZGQgbWFjcm8gZm9yIGdwaW8gbWFwcGluZwo+ICAgICAg
IElucHV0OiBnb29kaXggLSBtYWtlIGdwaW9kX2dldCBob25vciBHUElPRF9BU0lTCj4gICAgICAg
SW5wdXQ6IGdvb2RpeCAtIGZpeCByZXNldCBwb2xhcml0eQo+ICAgICAgIEFSTTogZHRzOiBpbXg6
IGZpeCB0b3VjaHNjcmVlbiByZXNldCBHUElPIHBvbGFyaXR5Cj4gICAgICAgQVJNOiBkdHM6IHN1
bnhpOiBmaXggdG91Y2hzY3JlZW4gcmVzZXQgR1BJTyBwb2xhcml0eSBvbiBXZXhsZXIgVEFCNzIw
MCB0YWJsZXQKPiAgICAgICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGZpeCB0b3VjaHNjcmVlbiBy
ZXNldCBHUElPIHBvbGFyaXR5Cj4gICAgICAgYXJtNjQ6IGR0czogbGlicmVtNTogZml4IHRvdWNo
c2NyZWVuIHJlc2V0IEdQSU8gcG9sYXJpdHkKPiAgICAgICBhcm02NDogZHRzOiBxY29tOiBtc204
OTk4LWZ4dGVjOiBmaXggdG91Y2hzY3JlZW4gcmVzZXQgR1BJTyBwb2xhcml0eQo+ICAgICAgIGFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBmaXggdG91Y2hzY3JlZW4gcmVzZXQgR1BJTyBwb2xhcml0eQo+
IAo+ICBhcmNoL2FybS9ib290L2R0cy9pbXg2cS1rcC5kdHNpICAgICAgICAgICAgICAgICAgICB8
ICAyICstCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC1rb250cm9uLWJsLTQzLmR0cyAgICAg
ICAgIHwgIDIgKy0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3VuN2ktYTIwLXdleGxlci10YWI3MjAw
LmR0cyAgICAgfCAgMiArLQo+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LWFtYXJ1bGEt
cmVsaWMuZHRzICAgICB8ICAyICstCj4gIC4uLi9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vY2Vhbmlj
LTUyMDUtNWlubWZkLmR0cyAgIHwgIDIgKy0KPiAgLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktYTY0LXBpbmVwaG9uZS5kdHNpICAgfCAgMiArLQo+ICAuLi4vYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1hNjQtcGluZXRhYi5kdHMgICAgICB8ICAyICstCj4gIC4uLi9ib290L2R0cy9mcmVl
c2NhbGUvaW14OG1xLWxpYnJlbTUtZGV2a2l0LmR0cyAgIHwgIDIgKy0KPiAgYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL21zbTg5OTgtZnh0ZWMtcHJvMS5kdHMgICAgfCAgMiArLQo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtZXZiLmR0cyAgICAgICAgICB8ICAyICstCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIHwgIDIgKy0K
PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZXZiMS12MTAuZHRzICAgfCAg
MiArLQo+ICBkcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL2dvb2RpeC5jICAgICAgICAgICAgICAg
ICB8IDU0ICsrKysrKysrKysrKysrKysrKy0tLS0KPiAgMTMgZmlsZXMgY2hhbmdlZCwgNTYgaW5z
ZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6IDc2ZGNkNzM0
ZWNhMjMxNjhjYjAwODkxMmMwZjY5ZmY0MDg5MDUyMzUKPiBjaGFuZ2UtaWQ6IDIwMjIxMTAzLXVw
c3RyZWFtLWdvb2RpeC1yZXNldC1hYTFjNjU5OTRmNTcKPiAKPiBCZXN0IHJlZ2FyZHMsCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
