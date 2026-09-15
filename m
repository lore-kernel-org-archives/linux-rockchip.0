Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5784C88E75
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 10:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UQG3Mfb0i5GIemSXG/OPl8n3b+ZEZhmPt4j+yaJqwY=; b=Oso3z2AKPNbCWN
	LiedKbGMSPmoJLvmqyp2WxqW1cDnvHCScbqFln98GhiBN0B/jFfKeLYcV36/65WAGAjLab0d5Vmtu
	vqLCAmyxb8JmtffXTBXVqIZCYZfCgShM50B+E/CBxq7RbOq8uZzHGv1EslYDT1GMDsYhFmqLMVuHQ
	LWfX3/ffR4wZyJLqnS8buGotuvLHVzIV+/6A32jOsJWRnNSFC07KilGykN4c2VIyI+mLrHk2GtKbN
	qoXW1w7CbIZIDGP8Cgr8bTD1eisoK4TeAwlUUsM4vWGuRKSPYh9Xxf2nrewrsjxMIgSV+zefZE0tT
	i6S4YGdKtMHQB0Pu3vFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QJo-00000005tyl-3mHQ;
	Tue, 15 Sep 2026 10:23:16 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QJl-00000005tx9-1L7i
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 10:23:15 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c29440ee0e7so201359166b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 03:23:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789467791; cv=none;
        d=google.com; s=arc-20260327;
        b=Rjh9iRAcydQwwGhTFiSk+WFImyEgCM7rtxPtGBwGratABSjNxeZ7VbJZph2eacjb2A
         siKS7i38eXvNLQ5OhNA/FP32lk8qEcUSF518AyPH7OPseD7VKuTY/93eIJlDTMUX+Qdq
         fiqXRPtESaEHaYon3ZTHor2LdpVb+3no6u+GM8oYlgNoS/D9lEMJRmSSxeUyauSagyL0
         8V7ZQER2B0IRHHqPHgtQJTN/MH3D+a2LqEr0aHjS85DjXGhw2nLuczqAw7Pe1uyhi/da
         c6xiYFCTbSxyZWXlj3i/uGhoCJNkaVpdq8y6fL6oNKoZLxiGYqcW/7GGn/yGzc3gyRLy
         Au9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nYoTXRWm9dXxQab97Avfkm/YI6364EPnV/puvJGLZtc=;
        fh=Zc9cJXnACRASlhIUcDWC9FITDJY0kotAu5hVAxf0h80=;
        b=Bm5knMNOpndy5Q3sI0MH11QzBUARq+slBtSDXpCE5sv18Y/H1IJWeQFwuC2XnbPwZQ
         dDIelET53BsH0BwrF1j5+evFnXeQ3WbyAZ0DBM2gU+0VMu7f5lDVju2rSlxU1Z1vX2CL
         5bsm5NM2Aj9tK48U/74QoQ/nKUXjqFY8KN1XhBmag2APd/bf5m2cPJr9tDcXEAvz8K6I
         lWGS7V9aYcgrOE3gqCulbt0tpbss0ha89EO1cV5cjSWrKUKYZvo3CAngDe5k4VyTIe9G
         AZzYLI49+bpW6iqWKDLzhnqBpSHCFTcTBpRa4hh5vRFT7fYLssUlI8/ZrjZB+dFvGE93
         Q8bQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789467791; x=1790072591; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=nYoTXRWm9dXxQab97Avfkm/YI6364EPnV/puvJGLZtc=;
        b=A3HNq0ZV3W/rTicHrs4nlJfKEZ1wVI02+xDmg17XfMW4xI9o9C5P1Vw/mwpNHtZK5y
         YXKk12QvCwA8OERQOeCtnIRxFWq/xbtSwOoKyHOoB8xCdR4IjBJNjHBE985TWQG2qby2
         cOWUs7v0VTlhH6heXzSHNDj1uL0yqMpouwkSxqG3tBaxFCJwsDMKRG5gDIarFGFLP28s
         zCDpRaPVSwVSDQjIj7BjfDJQ4X3EV+etFv4MIzOEnIdatyudK7XhmiLeRjqiOlWACrLS
         egNnB6g50YMzeFp+YmoJg++AraIzCtV3e25jECNYDMDZSGTFgF3tRoC6JssARQ7r9izP
         R0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467791; x=1790072591;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nYoTXRWm9dXxQab97Avfkm/YI6364EPnV/puvJGLZtc=;
        b=G6yGpwtXENTtEanCpE9qIondf+G7qoUPyrwO1KPQGn56KyZJydUaR7L4yNR3HTiyDZ
         LFYLG9/tBCNMOHQxXZm9TOggbGfhQdyfRui9lsOUAGkWP7DgUiJ0SzQxaH5nZz01i9KD
         H65cNakk4hFgWRaOATqHaZWRko5m+fUAv/motGencehLEAVB8zZb13jqWCTKGs9lf+5S
         Lnu4Lo3XRgyF6UcyGwNjU1M+1LssDsjEbSt1MB2WFR8CO2EIXoO+TL5OqQ+SrjtWJqH0
         HTbu7eWC/JJusZDLo5n4oKEztfl1ur0YW2KzXNdOnNX6FWSdjDhR6h9GMbnlirxtGGjB
         vYNA==
X-Forwarded-Encrypted: i=1; AKwUvBy7cTFpjw4us2Ev5sgGeB3ejodatSeiwtfx79q6Elbx/3FzcwP7ZcCLRUCmqO+vLVT7JckrAxyUmaYLN+WJZw==@lists.infradead.org
X-Gm-Message-State: AFuF++mFaawAMccgYljcIKAFj7Y+Ud1QCcZMb8txI02fyTaR0LjGmvPv
	jIBL2YOjV9Kp4MPqsdoAf/E8Zp2cxTkDMWMrwFK9rVEMBO0Za3lgklxUWinorjGDZzHuDQGfFie
	efgf9k0jp0nANo7nxy5/LppO/H0bXQF4=
X-Gm-Gg: AYBFou29ufiXflPJ/swgQSx8iHwU3GfAjXcVOC7nmws7ejaU+7ACBbrWY5GopKrtb5Z
	I/2qFBgx5GMxSW3Pbf6nnjHOcwoUVXoBIzt4xjvDGcBtrVEGqXY8acmJiYDhVAj/LGeVN20uJdS
	sqjjTZZlFX6NyKGYxOAfFzYRFo6nh3iwJ9WSLnN19X6eOZ8y+GTWrlpWUPrpBpI6FNsx0WfIjzg
	ZdZOjd7Q/9oqGka1ayZ8taeSrwYbInTIU8GwO0FdmFj7/yHnKuSX3RlyXD+YP0VYUpQij9AwH5c
	pATbL27rfO92ePflm9GBVuGsVLcOHge/ZUl9+H9EfNA9MISOKN2WRRJvYQ==
X-Received: by 2002:a17:907:3d56:b0:c25:6c9a:88bc with SMTP id
 a640c23a62f3a-c29b87339e8mr775899466b.19.1789467791028; Tue, 15 Sep 2026
 03:23:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260913185849.907479-3-coiaprant@gmail.com> <178941747711.22033.8495700704733189874@kernel.org>
In-Reply-To: <178941747711.22033.8495700704733189874@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 15 Sep 2026 18:22:59 +0800
X-Gm-Features: AcwNN1XIwap_FwM1kV5GNhNfjY4yI0txPnJoW2RyomCTNzqIwhUfgmMQ2h9aiaE
Message-ID: <CALj3r0ge_AVi=jrUZh_T8cEt954S_Ah7Hi4QxkccjEm6zug_Ag@mail.gmail.com>
Subject: Re: [PATCH net-next v5 02/11] dt-bindings: phy: rockchip:
 naneng-combphy: add rockchip,sgmii-mac-sel property
To: netdev-bot+sashiko@kernel.org
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org, 
	maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org, 
	linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz, 
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_032313_428906_9F7674EE 
X-CRM114-Status: GOOD (  17.24  )
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

PG5ldGRldi1ib3Qrc2FzaGlrb0BrZXJuZWwub3JnPiDkuo4yMDI25bm0OeaciDE15pel5ZGo5LqM
IDA0OjI05YaZ6YGT77yaCj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNo
aWtvIEFJIHJldmlldyBmb3VuZCAxIHBvdGVudGlhbAo+IGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+
Cj4gQ3JpdGljYWw6IDAgwrcgSGlnaDogMCDCtyBNZWRpdW06IDAgwrcgTG93OiAxCj4KPiAtIFtM
b3ddIENvbmNlcm4gKHZhbGlkYXRlZCBhcyBOT1QgYSBkZWZlY3QgaW4gdGhlIHNlcmllcyBjb250
ZXh0KTogdGhlCj4gICBiaW5kaW5nIGFkZHMgYHJvY2tjaGlwLHNnbWlpLW1hYy1zZWxgIHdoaWxl
LCBhdCB0aGlzIGNvbW1pdCBhbG9uZSwgbm/igKYKPgo+IC0tCj4KPiBkdC1iaW5kaW5nczogcGh5
OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hpcCxzZ21paS1tYWMtc2VsIHBy
b3BlcnR5Cj4KPiBUaGlzIGFkZHMgYW4gb3B0aW9uYWwgcm9ja2NoaXAsc2dtaWktbWFjLXNlbCBw
cm9wZXJ0eSB0byB0aGUgbmFuZW5nLWNvbWJwaHkKPiBiaW5kaW5nIHNvIGEgYm9hcmQgY2FuIHNl
bGVjdCB3aGV0aGVyIHRoZSBSSzM1NjggU0dNSUkgaW50ZXJmYWNlIGlzIHJvdXRlZAo+IHRvIEdN
QUMwIG9yIEdNQUMxLiAgVGhlIHByb3BlcnR5IGlzIHJlc3RyaWN0ZWQgdG8gdGhlIFJLMzU2OCBj
b21wYXRpYmxlIHZpYQo+IHRoZSBleGlzdGluZyBhbGxPZiBjb25kaXRpb25hbCBhbmQgZGVmYXVs
dHMgdG8gMSAoR01BQzEpLgo+Cj4gW1NldmVyaXR5OiBMb3ddCj4gQXQgdGhpcyBjb21taXQgYWxv
bmUsIGlzIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgcmVhZCBieSBhbnl0aGluZz8KPgo+IHJvY2tj
aGlwX2NvbWJwaHlfcGFyc2VfZHQoKSBpbgo+IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1uYW5lbmctY29tYnBoeS5jIGRvZXMgbm90IGxvb2sgaXQgdXAsCj4gc3RydWN0IHJvY2tj
aGlwX2NvbWJwaHlfZ3JmY2ZnIGhhcyBubyBwaXBlX3NnbWlpX21hY19zZWwgZGVzY3JpcHRvciwg
YW5kCj4gbm8gaW4tdHJlZSBEVFMgc2V0cyBpdCwgc28gYSBrZXJuZWwgYnVpbHQgZnJvbSBleGFj
dGx5IHRoaXMgY29tbWl0IHdvdWxkCj4gc2lsZW50bHkgaWdub3JlIHRoZSBwcm9wZXJ0eS4KPgo+
IFRoaXMgcmVzb2x2ZXMgaXRzZWxmIGxhdGVyIGluIHRoZSBzYW1lIHNlcmllczogInBoeTogcm9j
a2NoaXA6Cj4gbmFuZW5nLWNvbWJwaHk6IGFkZCBTR01JSSBNQUMgc2VsZWN0aW9uIGZvciBSSzM1
NjgiIGFkZHMgdGhlIHBhcnNpbmcKPgo+ICAgICAgICAgcHJpdi0+c2dtaWlfbWFjX3NlbCA9IDE7
Cj4gICAgICAgICBkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2LCAicm9ja2NoaXAsc2dtaWkt
bWFjLXNlbCIsICZwcml2LT5zZ21paV9tYWNfc2VsKTsKPgo+IGFsb25nIHdpdGggdGhlIFJLMzU2
OCBwaXBlLUdSRiBkZXNjcmlwdG9yCj4KPiAgICAgICAgIC5waXBlX3NnbWlpX21hY19zZWwgICAg
ID0geyAweDAwNDAsIDEsIDEsIDB4MDAsIDB4MDEgfSwKPgo+IGFuZCB0aGUgd3JpdGUgaW4gdGhl
IFBIWV9UWVBFX1NHTUlJIHBhdGggb2YgcmszNTY4X2NvbWJwaHlfY2ZnKCksIGFuZAo+ICJhcm02
NDogZHRzOiByb2NrY2hpcDogcmszNTY4LXBob3RvbmljYXQ6IGVuYWJsZSBTR01JSSBMQU4gcG9y
dCIgYWRkcyB0aGUKPiBmaXJzdCB1c2VyOgo+Cj4gICAgICAgICAmY29tYnBoeTIgewo+ICAgICAg
ICAgICAgICAgICByb2NrY2hpcCxzZ21paS1tYWMtc2VsID0gPDA+Owo+ICAgICAgICAgICAgICAg
ICBzdGF0dXMgPSAib2theSI7Cj4gICAgICAgICB9Owo+Cj4gU28gdGhpcyBpcyBub3RlZCBvbmx5
IGZvciB0aGUgcmVjb3JkLCBzaW5jZSB0aGUgYmluZGluZyBhbmQgaXRzIGNvbnN1bWVyCj4gYmVp
bmcgc3BsaXQgYWNyb3NzIGNvbnNlY3V0aXZlIHBhdGNoZXMgaXMgdGhlIG5vcm1hbCBzZXJpZXMg
bGF5b3V0Lgo+Cj4gVGhlIHJlbWFpbmluZyBwb2ludCBpcyBhIGRlc2lnbiBxdWVzdGlvbiByYXRo
ZXIgdGhhbiBhIGJ1ZzogaXMgYSByYXcKPiB1aW50MzIgTUFDIGluZGV4IHRoZSBpbnRlcmZhY2Ug
cHJlZmVycmVkIGhlcmUsIG9yIHdvdWxkIGEgcGhhbmRsZSB0byB0aGUKPiBHTUFDIGNvbnRyb2xs
ZXIgbm9kZSBiZSBhIGJldHRlciBmaXQgZm9yIGRlc2NyaWJpbmcgdGhlIHJvdXRpbmc/CgpUaGUg
cHJvcGVydHkgbWFwcyBkaXJlY3RseSBvbnRvIGEgc2luZ2xlIGJpdCBpbiB0aGUgY29tYm8gUEhZ
J3Mgb3duCkdSRiByZWdpc3RlciAoUElQRV9HUkZfWFBDU19DT04wIGJpdCAxKSwgd2hpY2ggc2Vs
ZWN0cyB3aGV0aGVyIHRoZQpTR01JSSBsYW5lIGlzIHJvdXRlZCB0byBHTUFDMCBvciBHTUFDMS4g
SXQgZGVzY3JpYmVzIGEgbXV4IHNldHRpbmcKaW5zaWRlIHRoZSBQSFksIG5vdCBhIHJlbGF0aW9u
c2hpcCB0byB0aGUgR01BQyBub2RlLiBBIHBoYW5kbGUgd291bGQKaW50cm9kdWNlIGFuIGV4dHJh
IGRlcGVuZGVuY3kgZWRnZSBiZXR3ZWVuIHRoZSBjb21ibyBQSFkgbm9kZSBhbmQgdGhlCkdNQUMg
bm9kZSBmb3Igbm8gYmVuZWZpdCwgYW5kIHRoZSByYXcgdmFsdWUgbWF0Y2hlcyBob3cgdGhlIEJT
UCBhbmQKdGhlIHN1cnJvdW5kaW5nIEdSRiBwcm9wZXJ0aWVzIGRlc2NyaWJlIHNpbWlsYXIgbXV4
ZXMuCgpTbyBJJ2xsIGtlZXAgdGhlIHVpbnQzMiBmb3JtLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
