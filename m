Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 018B5CA101F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 08:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zuVoEryvgYab3usDq3kx7yO2dcuWAPJJi/gHpt4INE=; b=eP4ESgZFeVkLjb
	gvUbFwtZHpAXu90R9uKRc/jDD/qg96xmwwFcoR86F82yoZ8w+djgY+VXVTzhacY8NR0mWolOaop2h
	5i/yCS0ExsPBo1Sn45cT5oI/FvBWkA2UtwmfxptmDPf0S2rCWHw0EZJFv03gxpcKcYDkodiTBjLqY
	P4B4SUM9/9dghD03dgPcDRJEuEbDCbxYh6+M9WdEjctmC6eMYKZ0Zdv5ElxVrH1BVa+2vgJPo+/wH
	1Eqeydy3UvAdEjc8v1vK5Wn961FVq6vkbPhrUExovSYhy9O76lQUJ7IFFGzpbWAzptCKAOq9ExD5n
	kpettr2mimXkNj1xZCMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwz8U-00000007vF9-1XcK;
	Fri, 12 Sep 2025 08:28:02 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwz8R-00000007vCM-0Ud1
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 08:28:00 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-34fed7add35so11000901fa.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 01:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757665677; x=1758270477; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zi88VRbZEuFnGbKkriA0LDu6mR+gOJpwP4/2p/PnZ1A=;
        b=ZnUnQv/H8g4s5q2Gm43UgaskdcysLL7XsaPwwqtecEeBbonQFY4oWRjGAQUODZNJUC
         98e3mDfQ0ZqhYgjlCtj1/+wnK1Xu4iL5Jj1U9XH+qQ4+Pt+jtsA9xRlclpV5njdhpuUw
         O9R7RL0pRno7W2mFX+JzMoTtrrR/2bOgtIJmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665677; x=1758270477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zi88VRbZEuFnGbKkriA0LDu6mR+gOJpwP4/2p/PnZ1A=;
        b=cYorlklEj1y0ccCxSVNo04JJeAST5VQfKiMYgGke0UVeWFrG+YZYcmebQbW2hO4nKB
         uqc8/WNreL/OI8fQxLGYW3VLczDnYhNlZ7JGwokhNuUkGJ6+49iDMUR1o6IxdT+xuUbV
         3WkLDEQWXYdP8UGglSjQFS5G/0e+Gxph0rUkEd5qyx8XwgdOfZs5/8zXgk27DO/TT300
         slntLFIs0UiK3O5krSbfXejt08o/lVBx2ueMmC3S5wTLMjxYC6wB0Udo5R9WJnp8H4PS
         KvN3W7FB5fJVl7lFBGdqRp/ky1T/ULEFbY2XkwFb3jEFDqFZj8JmoupMPRJh5i+tSI3R
         yL1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVoot+XLcTbKLf/zlPsA6a7+g6Yw3HEsduhSN4phqs6YghlKXh4+NJIbrjkbs3JccP3XMT3ru6IXjRDjfJKzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnCc/5dqMHVNpqNORMG6IekumltFMWkQWT3YD+MqKPAWuSVCBW
	grp/Cc7HXEY6CV4wUJoWlvZX9Jc+rZ+pTXXyaYN/I6NInzv9b/47jIfEhvBjqu0yKlmJHQdMrua
	t8DqvzfM3A1KCQEkjYaLAHa+UFMoqikzkCR4DLm4U
X-Gm-Gg: ASbGncugkBuVkafdRtPlniyjgsFq9c2+PxIai86Nqn1CtNJGJQVmzyWG1jw2ir6m1fe
	OwsvcqblaBu5Wd8toOBSRH/04h0pfAng5DsEwszPloXXqhaUvlMAAHof2R8NV5s6mXzJMIbTCNg
	Q/ZFb6neu2KFF/U8DHeKRo/70aQXFcJvfpK18R8uSLIUuY7YlVEL2owKILlb2gmUvAAmIs/Hl6a
	rXwZSg3nXWvWcrHnmFdM7JEo6szIP1wDiuq+g==
X-Google-Smtp-Source: AGHT+IGuFu/6x8GGdyKs3uZP46gycKBj+oJ6yMQK+fd/K5sFBfDmEqPc/X66Qf0G8U/XPK4phpEvZh/Ddpcm0n+c0BE=
X-Received: by 2002:a05:651c:4350:20b0:336:6481:1549 with SMTP id
 38308e7fff4ca-3513aeb2e2amr5142751fa.12.1757665676867; Fri, 12 Sep 2025
 01:27:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250911151001.108744-1-ariel.dalessandro@collabora.com>
 <20250911151001.108744-2-ariel.dalessandro@collabora.com> <20250912-alluring-turaco-of-conversion-dca193@kuoka>
In-Reply-To: <20250912-alluring-turaco-of-conversion-dca193@kuoka>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 12 Sep 2025 16:27:45 +0800
X-Gm-Features: Ac12FXxVG1RuSVKZojzF8lrEoj8T-u7pZlbyr1abmA13aynWyYRO-SXBCvUw2XE
Message-ID: <CAGXv+5GovP7NuG042AwfmtC-sPJMGuFAm6iZ0iqNZgU0VE+qmQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/12] dt-bindings: media: Convert MediaTek mt8173-mdp
 bindings to DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "Ariel D'Alessandro" <ariel.dalessandro@collabora.com>, airlied@gmail.com, 
	amergnat@baylibre.com, andrew+netdev@lunn.ch, andrew-ct.chen@mediatek.com, 
	angelogioacchino.delregno@collabora.com, broonie@kernel.org, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, davem@davemloft.net, 
	dmitry.torokhov@gmail.com, edumazet@google.com, flora.fu@mediatek.com, 
	heiko@sntech.de, houlong.wei@mediatek.com, jeesw@melfas.com, 
	kernel@collabora.com, krzk+dt@kernel.org, kuba@kernel.org, 
	lgirdwood@gmail.com, linus.walleij@linaro.org, 
	louisalexis.eyraud@collabora.com, luiz.dentz@gmail.com, 
	maarten.lankhorst@linux.intel.com, marcel@holtmann.org, 
	matthias.bgg@gmail.com, mchehab@kernel.org, minghsiu.tsai@mediatek.com, 
	mripard@kernel.org, p.zabel@pengutronix.de, pabeni@redhat.com, 
	robh@kernel.org, sean.wang@kernel.org, simona@ffwll.ch, 
	support.opensource@diasemi.com, tiffany.lin@mediatek.com, tzimmermann@suse.de, 
	yunfei.dong@mediatek.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-bluetooth@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
	netdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_012759_232150_0B978330 
X-CRM114-Status: GOOD (  25.38  )
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

T24gRnJpLCBTZXAgMTIsIDIwMjUgYXQgMjowNuKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIFNlcCAxMSwgMjAyNSBhdCAxMjowOTo1
MFBNIC0wMzAwLCBBcmllbCBEJ0FsZXNzYW5kcm8gd3JvdGU6Cj4gPiBDb252ZXJ0IHRoZSBleGlz
dGluZyB0ZXh0LWJhc2VkIERUIGJpbmRpbmdzIGZvciBNZWRpYVRlayBNVDgxNzMgTWVkaWEgRGF0
YQo+ID4gUGF0aCB0byBhIERUIHNjaGVtYS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBcmllbCBE
J0FsZXNzYW5kcm8gPGFyaWVsLmRhbGVzc2FuZHJvQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+
ICAuLi4vYmluZGluZ3MvbWVkaWEvbWVkaWF0ZWssbXQ4MTczLW1kcC55YW1sICAgfCAxNjkgKysr
KysrKysrKysrKysrKysrCj4gPiAgLi4uL2JpbmRpbmdzL21lZGlhL21lZGlhdGVrLW1kcC50eHQg
ICAgICAgICAgIHwgIDk1IC0tLS0tLS0tLS0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE2OSBpbnNl
cnRpb25zKCspLCA5NSBkZWxldGlvbnMoLSkKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL21lZGlhdGVrLG10ODE3My1tZHAueWFt
bAo+ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWVkaWEvbWVkaWF0ZWstbWRwLnR4dAo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbWVkaWF0ZWssbXQ4MTczLW1kcC55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL21lZGlhdGVrLG10ODE3My1t
ZHAueWFtbAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMDAu
LjhjYTMzYTczM2M0NzgKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9tZWRpYXRlayxtdDgxNzMtbWRwLnlhbWwKPiA+IEBA
IC0wLDAgKzEsMTY5IEBACj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAg
T1IgQlNELTItQ2xhdXNlKQo+ID4gKyVZQU1MIDEuMgo+ID4gKy0tLQo+ID4gKyRpZDogaHR0cDov
L2RldmljZXRyZWUub3JnL3NjaGVtYXMvbWVkaWEvbWVkaWF0ZWssbXQ4MTczLW1kcC55YW1sIwo+
ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1s
Iwo+ID4gKwo+ID4gK3RpdGxlOiBNZWRpYVRlayBNVDgxNzMgTWVkaWEgRGF0YSBQYXRoCj4gPiAr
Cj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAtIEFyaWVsIEQnQWxlc3NhbmRybyA8YXJpZWwuZGFs
ZXNzYW5kcm9AY29sbGFib3JhLmNvbT4KPiA+ICsKPiA+ICtkZXNjcmlwdGlvbjoKPiA+ICsgIE1l
ZGlhIERhdGEgUGF0aCBpcyB1c2VkIGZvciBzY2FsaW5nIGFuZCBjb2xvciBzcGFjZSBjb252ZXJz
aW9uLgo+ID4gKwo+ID4gK3Byb3BlcnRpZXM6Cj4gPiArICBjb21wYXRpYmxlOgo+ID4gKyAgICBv
bmVPZjoKPiA+ICsgICAgICAtIGVudW06Cj4gPiArICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTcz
LW1kcC1yZG1hCj4gPiArICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTczLW1kcC1yc3oKPiA+ICsg
ICAgICAgICAgLSBtZWRpYXRlayxtdDgxNzMtbWRwLXdkbWEKPiA+ICsgICAgICAgICAgLSBtZWRp
YXRlayxtdDgxNzMtbWRwLXdyb3QKPgo+IFdoeSB0aGVyZSBpcyBubyBtZWRpYXRlayxtdDgxNzMt
bWRwIGhlcmU/IFdoYXQgZG9lcyB0aGlzIGNvbXBhdGlibGUKPiByZXByZXNlbnQ/Cj4KPiA+ICsg
ICAgICAtIGl0ZW1zOgo+ID4gKyAgICAgICAgICAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtbWRw
LXJkbWEKPgo+IFN0aWxsIHN1c3BpY2lvdXMuIERldmljZSBjYW5ub3QgYmUgc2ltdWxhdGFub3Vz
bHk6IGNvbXBhdGlibGUgYW5kIG5vdAo+IGNvbXBhdGlibGUuIFRoaXMgaXMgbm90IGEgd2VsbCBr
bm93biBjYXQgdGhhdCBoYXMgc3VwZXJwb3NpdGlvbiBvZiB0d28KPiBzdGF0ZXMsIHdoZW5lbnZl
ciB5b3UgbG9vayB0aGUgb3RoZXIgd2F5Lgo+Cj4gTWF5YmUgdGhlIG9sZCBiaW5kaW5nIHdhcyBp
bmNvcnJlY3QsIG1heWJlIHRoZSBpbi10cmVlIERUUyBpcyBpbmNvcnJlY3QuCj4gV2hpY2hldmVy
IHRoZSByZWFzb24sIHRoaXMgbXVzdCBiZSBpbnZlc3RpZ2F0ZWQgYW5kIGRvY3VtZW50ZWQsIGJl
Y2F1c2UKPiBieSBzdGFuZGFyZCBydWxlcyB0aGlzIGlzIHdyb25nLiBFYWNoIHdyb25nIGNvZGUg
bmVlZHMgdmVyeSBjbGVhcgo+IGV4cGxhbmF0aW9ucyAoYW5kICJzb21lb25lIGRpZCBpdCIgaXMg
bm90IGEgZ29vZCBlbm91Z2ggZXhwbGFuYXRpb24pLgoKTXkgZ3Vlc3MgaXMgdGhhdCAibWVkaWF0
ZWssbXQ4MTczLW1kcCIgaXMgbWVhbnQgdG8gc2VydmUgYXMgYSBzaW5nbGUKZW50cnkgcG9pbnQg
Zm9yIHRoZSBpbXBsZW1lbnRhdGlvbiB0byBiaW5kIHRoZSBkcml2ZXIgdG8uIFRoZSBNRFAgaXMK
YSBEYXRhIFBpcGVsaW5lIGFuZCB0aGVyZSBjb3VsZCBiZSBtdWx0aXBsZSBpbnN0YW5jZXMgb2Yg
dGhlIHNhbWUKSVAgYmxvY2ssIGFzIHNlZW4gaW4gdGhlIG9yaWdpbmFsIGV4YW1wbGUuCgpUaGUg
ZGF0YXNoZWV0IEkgaGF2ZSBkb2Vzbid0IGNvdmVyIHRoZSAiUkRNQSIgYmxvY2sgc3BlY2lmaWNh
bGx5LCBzbwpJIGNhbid0IHNheSB3aGV0aGVyIHRoZXJlIGlzIGFuIGFjdHVhbCBkaWZmZXJlbmNl
IGJldHdlZW4gdGhlIHR3byBSRE1BCmJsb2Nrcy4KCgpDaGVuWXUKCj4gPiArICAgICAgICAgIC0g
Y29uc3Q6IG1lZGlhdGVrLG10ODE3My1tZHAKPiA+ICsKPiA+ICsgIHJlZzoKPiA+ICsgICAgbWF4
SXRlbXM6IDEKPiA+ICsKPiA+ICsgIGNsb2NrczoKPiA+ICsgICAgbWluSXRlbXM6IDEKPiA+ICsg
ICAgbWF4SXRlbXM6IDIKPiA+ICsKPiA+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gPiArICAgIG1heEl0
ZW1zOiAxCj4gPiArCj4gPiArICBpb21tdXM6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4g
PiArICBtZWRpYXRlayx2cHU6Cj4gPiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2Rl
ZmluaXRpb25zL3BoYW5kbGUKPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiArICAgICAgcGhhbmRs
ZSB0byBNZWRpYXRlayBWaWRlbyBQcm9jZXNzb3IgVW5pdCBmb3IgSFcgQ29kZWMgZW5jb2RlL2Rl
Y29kZSBhbmQKPiA+ICsgICAgICBpbWFnZSBwcm9jZXNzaW5nLgo+ID4gKwo+ID4gK3JlcXVpcmVk
Ogo+ID4gKyAgLSBjb21wYXRpYmxlCj4gPiArICAtIHJlZwo+ID4gKyAgLSBjbG9ja3MKPiA+ICsg
IC0gcG93ZXItZG9tYWlucwo+ID4gKwo+ID4gK2FsbE9mOgo+ID4gKyAgLSBpZjoKPiA+ICsgICAg
ICBwcm9wZXJ0aWVzOgo+ID4gKyAgICAgICAgY29tcGF0aWJsZToKPiA+ICsgICAgICAgICAgY29u
dGFpbnM6Cj4gPiArICAgICAgICAgICAgY29uc3Q6IG1lZGlhdGVrLG10ODE3My1tZHAtcmRtYQo+
ID4gKyAgICB0aGVuOgo+ID4gKyAgICAgIHByb3BlcnRpZXM6Cj4gPiArICAgICAgICBjbG9ja3M6
Cj4gPiArICAgICAgICAgIGl0ZW1zOgo+ID4gKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IE1h
aW4gY2xvY2sKPiA+ICsgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBNdXRleCBjbG9jawo+ID4g
KyAgICBlbHNlOgo+ID4gKyAgICAgIHByb3BlcnRpZXM6Cj4gPiArICAgICAgICBjbG9ja3M6Cj4g
PiArICAgICAgICAgIGl0ZW1zOgo+ID4gKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IE1haW4g
Y2xvY2sKPiA+ICsKPiA+ICsgIC0gaWY6Cj4gPiArICAgICAgcHJvcGVydGllczoKPiA+ICsgICAg
ICAgIGNvbXBhdGlibGU6Cj4gPiArICAgICAgICAgIGNvbnRhaW5zOgo+ID4gKyAgICAgICAgICAg
IGVudW06Cj4gPiArICAgICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE3My1tZHAtcmRtYQo+ID4g
KyAgICAgICAgICAgICAgLSBtZWRpYXRlayxtdDgxNzMtbWRwLXdkbWEKPiA+ICsgICAgICAgICAg
ICAgIC0gbWVkaWF0ZWssbXQ4MTczLW1kcC13cm90Cj4gPiArICAgIHRoZW46Cj4gPiArICAgICAg
cmVxdWlyZWQ6Cj4gPiArICAgICAgICAtIGlvbW11cwo+ID4gKwo+ID4gKyAgLSBpZjoKPiA+ICsg
ICAgICBwcm9wZXJ0aWVzOgo+ID4gKyAgICAgICAgY29tcGF0aWJsZToKPiA+ICsgICAgICAgICAg
Y29udGFpbnM6Cj4gPiArICAgICAgICAgICAgY29uc3Q6IG1lZGlhdGVrLG10ODE3My1tZHAKPiA+
ICsgICAgdGhlbjoKPiA+ICsgICAgICByZXF1aXJlZDoKPiA+ICsgICAgICAgIC0gbWVkaWF0ZWss
dnB1Cj4gPiArCj4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gPiArCj4gPiArZXhh
bXBsZXM6Cj4gPiArICAtIHwKPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL210
ODE3My1jbGsuaD4KPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL21lbW9yeS9tdDgxNzMt
bGFyYi1wb3J0Lmg+Cj4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9tdDgxNzMt
cG93ZXIuaD4KPiA+ICsKPiA+ICsgICAgc29jIHsKPiA+ICsgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDI+Owo+ID4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4gPiArCj4gPiArICAgICAg
ICBtZHBfcmRtYTA6IHJkbWFAMTQwMDEwMDAgewo+ID4gKyAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAibWVkaWF0ZWssbXQ4MTczLW1kcC1yZG1hIiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgIm1lZGlhdGVrLG10ODE3My1tZHAiOwo+ID4gKyAgICAgICAgICAgIHJlZyA9IDwwIDB4MTQw
MDEwMDAgMCAweDEwMDA+Owo+ID4gKyAgICAgICAgICAgIGNsb2NrcyA9IDwmbW1zeXMgQ0xLX01N
X01EUF9SRE1BMD4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgPCZtbXN5cyBDTEtfTU1fTVVU
RVhfMzJLPjsKPiA+ICsgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZzcG0gTVQ4MTczX1BP
V0VSX0RPTUFJTl9NTT47Cj4gPiArICAgICAgICAgICAgaW9tbXVzID0gPCZpb21tdSBNNFVfUE9S
VF9NRFBfUkRNQTA+Owo+ID4gKyAgICAgICAgICAgIG1lZGlhdGVrLHZwdSA9IDwmdnB1PjsKPiA+
ICsgICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICBtZHBfcmRtYTE6IHJkbWFAMTQwMDIwMDAg
ewo+ID4gKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTczLW1kcC1yZG1h
IjsKPiA+ICsgICAgICAgICAgICByZWcgPSA8MCAweDE0MDAyMDAwIDAgMHgxMDAwPjsKPiA+ICsg
ICAgICAgICAgICBjbG9ja3MgPSA8Jm1tc3lzIENMS19NTV9NRFBfUkRNQTE+LAo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIDwmbW1zeXMgQ0xLX01NX01VVEVYXzMySz47Cj4gPiArICAgICAgICAg
ICAgcG93ZXItZG9tYWlucyA9IDwmc3BtIE1UODE3M19QT1dFUl9ET01BSU5fTU0+Owo+ID4gKyAg
ICAgICAgICAgIGlvbW11cyA9IDwmaW9tbXUgTTRVX1BPUlRfTURQX1JETUExPjsKPiA+ICsgICAg
ICAgIH07Cj4KPiBNeSBwcmV2aW91cyBjb21tZW50IGFwcGxpZXMuCj4KPiBLZWVwIG9uZSBvciB0
d28gZXhhbXBsZXMuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
