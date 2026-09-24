Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34F78C98314
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 07:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWB3Zlo/CsL4IbI2gKl8LihzxkkPuhK0/MZWU1kbhPk=; b=her159cplPxOqK
	j2zFeFRDhnItR6KjmAenAuJ0ExAYtn5HMUii1tQo8n8NmQgeUcoKvbJ/5TiHHu4QACB8JdGrFKogf
	MqclaRVdwIXLudpoO1pw27Z8D6OLLaOPm1xK2htYUuH8fkvxPzyVXk8u8N7BzuTKxRmPR21+pbEfN
	9BF/WDuMBw56VI/3z+8RTIcfE+9SWkhudCHwG9kS/YKva925yu+mxaFULuVs3G/yZMj08S/k/y7wL
	U29iB3NvoyQlA8fCvaA5pStNVi1Jrh2Jg811sku4Wt7QbbE3SaNG0hG3Y+kR+sBXV71qOrL9x+CwT
	CgUdlRK0y66Qc6LtE01g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9eFW-0000000ALYJ-3gGq;
	Thu, 24 Sep 2026 07:52:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9eFV-0000000ALY1-2smf
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 07:52:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 718824128C
	for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 07:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53F021F0089B
	for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 07:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790236329;
	bh=flhXc27wZ7lq+96q79C1lo9pyNK1W5OvD7SOTlgsYQY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=Ptqlc8kxRS/O4MemHmjZ01Ds3sA61fs3CTI+JusAagmLQsN1Akqn2+RqNvZW8Uu1B
	 fkVtGl19o2GvoAfTGg+wN4khUgWOJ9FZX6ktZ8KPNQnifbt782gXCEup9k83OVKU2t
	 EPotrLbjrIE8X+v32os82VcQO6ZZF9OCqIB3J9O376A1cE7zOP/KVOHPHmH04n7+6z
	 tdkyUv/Up2f/Iz9O8fAfZSk8Nri0naYfsAwGJoOlvBHaXT1tsMl7JNC0kw9wS2Iska
	 V2pq+RIOw9lvDpy2GpXUcGS99+p1HdKg7KmPutL/KHb/YUGMP+2Bo5mPAMtHNBa5Oe
	 8VnDmcBpmgBvw==
Received: by mail-lr2-f35.google.com with SMTP id 38308e7fff4ca-3a302a4e42aso13123121fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 00:52:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvByrsXk6yGqNB39H8fZP7hKNXf09iia09O2w+dTXEuWx23yFQdfbjvFBNrH2GfDt2vN416Q/1xGPljzuZoT2HQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mwhQ9xIxHJncqiiDvOPb1cO6Al2ZrGq5KT/KY3PSy7SDdJWx19
	wXuL56vq0ZhwOs6RXhoph0lcY+Jq3J7Z5ZMdvBbh7UikwY83Ly6l8BOJBTNglkNRj3yNCwqw4ci
	EmaWM5gUCtdynwrEkPEah489OpC7ei3U=
X-Received: by 2002:a05:6512:6c8:b0:5b8:b419:b7b with SMTP id
 2adb3069b0e04-5b8e0a18d1cmr355916e87.49.1790236328001; Thu, 24 Sep 2026
 00:52:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <20260916-drm-bridge-every-panel-v3-12-83afb4f1a707@bootlin.com>
 <arInho2bsfJiCgjV@houat> <DLNCQEG62F5N.O98WAO4U2FJO@bootlin.com>
In-Reply-To: <DLNCQEG62F5N.O98WAO4U2FJO@bootlin.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 24 Sep 2026 09:51:53 +0200
X-Gmail-Original-Message-ID: <CAD++jLkk-a0MrQUiaDD8OoDDoYVwBwSjFTj5ZBy=Xo7MS4+01g@mail.gmail.com>
X-Gm-Features: AclHuK8rPixm6Txa-uGEDmLc8FjUZWkrHeBO_IgguNN-8bSfUZSDFWgY_JslL90
Message-ID: <CAD++jLkk-a0MrQUiaDD8OoDDoYVwBwSjFTj5ZBy=Xo7MS4+01g@mail.gmail.com>
Subject: Re: [PATCH v3 12/19] drm/mcde: dsi: don't create a panel_bridge
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Maxime Ripard <mripard@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Paul Kocialkowski <paulk@sys-base.io>, Inki Dae <inki.dae@samsung.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sean Paul <sean@poorly.run>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Albert Esteve <aesteve@redhat.com>, 
	Anusha Srivatsa <asrivats@redhat.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	asahi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-samsung-soc@vger.kernel.org
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

SGkgTHVjYSwKCnNvcnJ5IGZvciBteSBzbG93bmVzcyEKCk9uIFRodSwgU2VwIDI0LCAyMDI2IGF0
IDk6MDHigK9BTSBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPiB3cm90
ZToKPiBPbiBUdWUgU2VwIDIyLCAyMDI2IGF0IDk6MDkgQU0gQ0VTVCwgTWF4aW1lIFJpcGFyZCB3
cm90ZToKCj4gPj4gLSAgICB9IGVsc2UgaWYgKGJyaWRnZSkgewo+ID4+ICsgICAgaWYgKCFicmlk
Z2UpIHsKPiA+PiArICAgICAgICAgICAgZGV2X2VycihkZXYsICJubyBicmlkZ2VcbiIpOwo+ID4+
ICsgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+PiArICAgIH0gZWxzZSBpZiAoIWRybV9i
cmlkZ2VfaXNfcGFuZWwoYnJpZGdlKSkgewo+ID4+ICAgICAgICAgICAgICAvKiBUT0RPOiBBVjgx
MDAgSERNSSBlbmNvZGVyIGdvZXMgaGVyZSBmb3IgZXhhbXBsZSAqLwo+ID4+ICAgICAgICAgICAg
ICBkZXZfaW5mbyhkZXYsICJjb25uZWN0ZWQgdG8gbm9uLXBhbmVsIGJyaWRnZSAodW5zdXBwb3J0
ZWQpXG4iKTsKPiA+PiAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gPgo+ID4gSSB3b25k
ZXIgaWYgd2Ugc3RpbGwgbmVlZCB0aGF0IGJyYW5jaC4gRXZlcnkgcGFuZWwgaXMgYSBicmlkZ2Ug
bm93LCBhbmQKPiA+IGl0IGxvb2tzIGxpa2Ugd2UgZG9uJ3QgaGF2ZSBhbnkgc3BlY2lmaWMgcGFu
ZWwgaGFuZGxpbmcgaW4gdGhpcyBkcml2ZXIsCj4gPiBzbyBJIGd1ZXNzIGl0IHN1cHBvcnRzIGJy
aWRnZXMgYWxyZWFkeT8KPiA+Cj4gPiBMaW51cywgZG8geW91IGtub3cgd2h5IHRoaXMgY29uZGl0
aW9uIHdhcyBoZXJlIGluIHRoZSBmaXJzdCBwbGFjZT8KPgo+IEkgaGFkIHRoZSBzYW1lIHRob3Vn
aHQgd2hpbGUgd3JpdGluZyB0aGUgcGF0Y2gsIGJ1dCBJIGNob3NlIHRvIGJlCj4gY29uc2VydmF0
aXZlLgo+Cj4gTGludXMsIHVubGVzcyB5b3UgaGF2ZSBtb3JlIGluZm8gSSdtIGdvaW5nIHRvIGFw
cGx5IHRoZSBwYXRjaCBhcwo+IGlzLiBSZW1vdmluZyB0aGlzIHNwZWNpYWwgY2FzZSB3b3VsZCBi
ZSB3ZWxjb21lIGFzIGEgbGF0ZXIgcGF0Y2guCgpJJ2Qgc2F5IGdvIGFoZWFkIGFzLWlzLgoKSSBk
byBoYXZlIHRoZSBpZGVhIHRvIGNvZGUgdXAgYW5kIHN1Ym1pdCB0aGUgQVY4MTAwIGVuY29kZXIK
YW5kIEkgaGF2ZSB0aGUgaGFyZHdhcmUgdG8gdGVzdCBpdCwgYnV0IGV2ZXJ5IG90aGVyIHVzZXIg
c2hvdWxkCmJlIHVzaW5nIHBhbmVscyBkaXJlY3RseSwgYW5kIEkgd291bGQgYmUgdGhlIG9ubHkg
bm9uLXBhbmVsCnVzZXIgc28gSSBjYW4gZGVhbCB3aXRoIGl0IHdoZW4gaXQgY29tZXMgdXAuCgpZ
b3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
