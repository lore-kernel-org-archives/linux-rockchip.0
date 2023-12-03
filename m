Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FC07C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 16:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCoQaf+lAvIn11yQopXc34wg+aRGyOAc6Nj5CcRichs=; b=dSee8cCidSdIWg
	6kep6Cf4JhgR5wlTApe/+78cc3HMuTKWLjl6tY8dsCGZyHzljsV+3LwMmNqqw/zPAU4Zn7G5ml0J7
	ojdMSdDBf0uFy7IAJHkGPmMyslRselEj+y7vuz1YiGCO+ccTSmJ/NdtthlXJi+Mf3bVBZlnUyoFyh
	kaghbGxUx7nNAH71QEB9y2T8AAQ7aE6bIM02rwDdh5+t7uSvZTTJMYUekR18u8VhSNAvRCRE+JYHK
	yo2YgpAFSgApVnNlboocr/5Zowa+50ScK1U+o7AWtqCup91INwoDqa5iuK8Vpes5+JR2W5UQmg4Nq
	dzuNsjwIYaQUBsCj6jpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9oyj-00152x-0I;
	Sun, 03 Dec 2023 16:05:57 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9oyf-0014zY-01;
	Sun, 03 Dec 2023 16:05:54 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9fa2714e828so507987266b.1;
        Sun, 03 Dec 2023 08:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701619551; x=1702224351; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OipUSxzsD6S96lKe3pW1Ij829Lf4+CHy2Zyn/H1QfkU=;
        b=Ozd3mXajkR1Za+bsCgxDLzQluIR2xPwSwMXNKQ0oCZpUjJCEnjFENHScv20VgSUs+1
         EMrkUbhv39wCRL8UiIgMUswm8km7VDfVdmnBPpgt4M05s/stRm4RUrvMyxic0G2Oef2V
         j1Q/0mgH7oziBCSBsuwRjbwJhsqt94YmOJw0CpZz/j43oX/2cMLRdSu097nRgysmXnzJ
         BEb4Tj9kERoGGd34BaWkr5aYGlrejkhicYY4mpjtvng+FSlps/7gSLRnwO7htOmtaAjn
         rZ6DWk/YXlTGY7lIDlpS/+RM4Mx73BCuor2OjZHJ9p4QLOCCpZph1qdKbOT0EgZaKJet
         YI9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701619551; x=1702224351;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OipUSxzsD6S96lKe3pW1Ij829Lf4+CHy2Zyn/H1QfkU=;
        b=HQ3VRO9b+E3+HfRP7D1RYwXAMmJ9kEX9SzcYh0XVLAHFPkdi9H+d1RDNsy6oUiuvgw
         0kHgnzmhwoaexzCxcHnWpEtxwtBffVaxEDGrH3DypYarkRj3qtmGVK1eUqqwseJ4Zsuv
         2QjFL7lCuIE5L8Hzyva22YC9xVxFOJ6k1HxgdYQGhhFIx/FmHiYH4MdMcBrnpqk845Xe
         nSbNZ/Xkdha+HD4697ivFf+RNITzr37jHT27hk2rHkGHtEY1gdXwoVP6mDI4DD+4dKnO
         2RZDAuaO+yAST9YD/PAXkHKuUOa/floVBqeDRY7pJKlHTzLXHSWrKSg/o6MwkLmbMEpB
         MOrA==
X-Gm-Message-State: AOJu0YzbDx655Enfs7JSliuDkpk8NqA8GfICgfhUWrlDqJ28ukZcribg
	ClZbYy8CQsS+DbNCAtbfGg==
X-Google-Smtp-Source: AGHT+IGWEjoREz6AbM1QO1M7NbnNBqGeWAPmrFYVApnunoUDw4fGNyQWKE4A95j88C9iyPV6OhCmIA==
X-Received: by 2002:a17:906:4c:b0:a04:1f99:3b48 with SMTP id 12-20020a170906004c00b00a041f993b48mr2632548ejg.74.1701619550620;
        Sun, 03 Dec 2023 08:05:50 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:3594:d4c7:658b:6ef7? ([2a02:810b:f40:4300:3594:d4c7:658b:6ef7])
        by smtp.gmail.com with ESMTPSA id fw15-20020a170906c94f00b009fca9484a62sm1011681ejb.200.2023.12.03.08.05.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Dec 2023 08:05:49 -0800 (PST)
Message-ID: <4dec2316-f840-44ab-a07a-3d7f0e5e6d8f@gmail.com>
Date: Sun, 3 Dec 2023 17:05:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] ARM: dts: rockchip: Add power-controller for
 RK3128
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
References: <20231202125144.66052-1-knaerzche@gmail.com>
 <6926340.F8r316W7xa@diego> <7a6eed43-477a-48a4-bd64-4528da920ffd@gmail.com>
 <4891026.6YUMPnJmAY@diego>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <4891026.6YUMPnJmAY@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_080553_049978_268C10ED 
X-CRM114-Status: GOOD (  23.10  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpBbSAwMi4xMi4yMyB1bSAxODo0NiBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+
IEhpIEFsZXgsCj4KPiBBbSBTYW1zdGFnLCAyLiBEZXplbWJlciAyMDIzLCAxNzozNjoxNSBDRVQg
c2NocmllYiBBbGV4IEJlZToKPj4gQW0gMDIuMTIuMjMgdW0gMTY6NTEgc2NocmllYiBIZWlrbyBT
dMO8Ym5lcjoKPj4+IEFtIFNhbXN0YWcsIDIuIERlemVtYmVyIDIwMjMsIDEzOjUxOjQxIENFVCBz
Y2hyaWViIEFsZXggQmVlOgo+Pj4+IEFkZCBwb3dlciBjb250cm9sbGVyIGFuZCBxb3Mgbm9kZXMg
Zm9yIFJLMzEyOCBpbiBvcmRlciB0byB1c2UKPj4+PiB0aGVtIGFzIHBvd2VyZG9tYWlucy4KPj4+
IGRvZXMgdGhlIHBvd2VyLWRvbWFpbiBjb250cm9sbGVyIHdvcmsgd2l0aCB0aGUgaW5jb21wbGV0
ZSBzZXQgb2YKPj4+IHBtLWRvbWFpbnMgdG9vPwo+PiBZZXMsIGl0IGRvZXMgLSB0aGUgbWlzc2lu
ZyBkb21haW5zIGNhbiByZXF1ZXN0IGlkbGUgb25seSBhbmQgY2FuJ3QgYmUKPj4gcG93ZXJlZCBv
bi9vZmYgLSBpZiBubyBvbmUgcmVxdWVzdHMgaWRsZSB0aGV5IGFyZSBqdXN0IHVwIGFsbCB0aGUg
dGltZS4KPj4KPj4+IFdoYXQgSSBoYXZlIGluIG1pbmQgaXMKPj4+IC0gYWRkaW5nIHRoZSBwb3dl
ci1jb250cm9sbGVyIG5vZGUgd2l0aCB0aGUgZXhpc3Rpbmcgc2V0IG9mIHBvd2VyLWRvbWFpbnMK
Pj4+IC0gdGhlIGdwdSBwbS1kb21haW4gaXMgaW4gdGhlcmUKPj4+IC0gYWRkaW5nIHRoZSBncHUg
cGFydHMKPj4gTXkgbWFpbiBjb25jZXJuIGFib3V0IGFkZGluZyB0aGVtIGxhdGVyIHdhcyB0aGUg
Y2hhbmdlIG9mIHRoZSBBQkkgYWZ0ZXIKPj4gdGhleSd2ZSBiZWVuIGV4cG9zZWQgaW4gdGhlIFNv
QyBEVC4gSWYgdGhhdCdzIG5vdCBhbiBpc3N1ZSAtIHN1cmU6IEkgY2FuCj4+IGFkZCB0aGVtIGlu
IGEgc2VwYXJhdGUgc2VyaWVzLgo+IEFuIEFCSSBjaGFuZ2Ugd291bGQgYmUgX2NoYW5naW5nXyB0
aGUgZG9tYWluLWlkcyBpbiB0aGUgcmszMTI4LXBvd2VyLmgKPiBJIHRoaW5rIDotKSAuCldlbGws
IGFuIGFkZGl0aW9uIGlzIHN0aWxsIGEgY2hhbmdlLgo+IFJpZ2h0IG5vdyB0aGUgZXhpc3Rpbmcg
ZG9tYWluIGlkcyBpbiB0aGUgaGVhZGVyIGFyZSBhbHJlYWR5IGV4cG9zZWQgdG8gdGhlCj4gd29y
bGQsIHNvIHNvbWVvbmUgY291bGQgYWxyZWFkeSB1c2UgdGhlbSwgYnV0IG5vdCB0aGUgbmV3IG9u
ZXMuCgpJJ20gZnVsbHkgYXdhcmUgdGhhdCBub3RoaW5nIHdvdWxkIGV2ZXIgaGFyZCBmYWlsIGFu
eXdoZXJlIGlmIHRoZSBuZXcgCmRvbWFpbiBpZHMgZ2V0IGFkZGVkIGxhdGVyLgoKTmV2ZXJ0aGVs
ZXNzIHdlIHN0YXJ0IHVzaW5nIGhlcmUgYW4gQUJJIHdoaWNoIGlzIGtub3duIHRvIGJlIGluY29t
cGxldGUuIApGb3Igbm8gcmVhc29uLCBhcyB0aGUgcGF0Y2hlcyAod2hpY2ggSSBhbSBub3cgYXNr
ZWQgdG8gcmVtb3ZlIGZyb20gdGhpcyAKc2VyaWVzKSBmb3IgY29tcGxldGlvbiBhcmUgYWxyZWFk
eSB0aGVyZSAoaGVyZSkuCgpBbnl3YXksIGlmIHlvdSBwcmVmZXIgaXQgdGhpcyB3YXk6IEknbSBw
bGVhc2VkIHRvIGRvIHNvLgoKQWxleAoKPgo+IEhlaWtvCj4KPj4+IEFuZCBhIHNlY29uZCBzZXJp
ZXMgd2l0aAo+Pj4gLSBwYXRjaDEgZnJvbSBoZXJlCj4+PiAtIGEgZHRzIHBhdGNoIGFkZGluZyB0
aGUgYWRkaXRpb25hbCBwbS1kb21haW5zIHRvIHJrMzEyOC5kdHNpCj4+PiAtIEkgZ3Vlc3MgcGF0
Y2gxIGFsc28gc2hvdWxkIGJlIHNwbGl0IGludG8gYSBwYXRjaCBhZGRpbmcgdGhlIGJpbmRpbmct
aWRzCj4+PiAgICAgYW5kIGEgc2VwYXJhdGUgcGF0Y2ggZm9yIHRoZSBjb2RlIGFkZGl0aW9uLgo+
PiBZZWFoLCBJIG5vdGljZWQgdGhpcyBhbHNvIDopCj4+Cj4+IFJlZ2FyZHMsCj4+Cj4+IEFsZXgK
Pj4KPj4+Cj4+PiBIZWlrbwo+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4IEJlZSA8a25hZXJ6
Y2hlQGdtYWlsLmNvbT4KPj4+PiAtLS0KPj4+PiAgICBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hp
cC9yazMxMjguZHRzaSB8IDEwMSArKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gICAgMSBm
aWxlIGNoYW5nZWQsIDEwMSBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMTI4LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9y
b2NrY2hpcC9yazMxMjguZHRzaQo+Pj4+IGluZGV4IDRlOGIzODYwNGVjZC4uYjcyOTA1ZGIwNGY3
IDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzEyOC5kdHNp
Cj4+Pj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMTI4LmR0c2kKPj4+PiBA
QCAtOCw2ICs4LDcgQEAKPj4+PiAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNv
bnRyb2xsZXIvYXJtLWdpYy5oPgo+Pj4+ICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1
cHQtY29udHJvbGxlci9pcnEuaD4KPj4+PiAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGluY3Ry
bC9yb2NrY2hpcC5oPgo+Pj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcmszMTI4LXBv
d2VyLmg+Cj4+Pj4gICAgCj4+Pj4gICAgLyB7Cj4+Pj4gICAgCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszMTI4IjsKPj4+PiBAQCAtMTMzLDYgKzEzNCwxMDYgQEAgc21wLXNyYW1AMCB7Cj4+Pj4g
ICAgCXBtdTogc3lzY29uQDEwMGEwMDAwIHsKPj4+PiAgICAJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszMTI4LXBtdSIsICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4+Pj4gICAgCQlyZWcgPSA8
MHgxMDBhMDAwMCAweDEwMDA+Owo+Pj4+ICsKPj4+PiArCQlwb3dlcjogcG93ZXItY29udHJvbGxl
ciB7Cj4+Pj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMTI4LXBvd2VyLWNvbnRyb2xs
ZXIiOwo+Pj4+ICsJCQkjcG93ZXItZG9tYWluLWNlbGxzID0gPDE+Owo+Pj4+ICsJCQkjYWRkcmVz
cy1jZWxscyA9IDwxPjsKPj4+PiArCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4+Pj4gKwo+Pj4+ICsJ
CQlwb3dlci1kb21haW5AUkszMTI4X1BEX1ZJTyB7Cj4+Pj4gKwkJCQlyZWcgPSA8UkszMTI4X1BE
X1ZJTz47Cj4+Pj4gKwkJCQljbG9ja3MgPSA8JmNydSBBQ0xLX0NJRj4sCj4+Pj4gKwkJCQkJIDwm
Y3J1IEhDTEtfQ0lGPiwKPj4+PiArCQkJCQkgPCZjcnUgRENMS19FQkM+LAo+Pj4+ICsJCQkJCSA8
JmNydSBIQ0xLX0VCQz4sCj4+Pj4gKwkJCQkJIDwmY3J1IEFDTEtfSUVQPiwKPj4+PiArCQkJCQkg
PCZjcnUgSENMS19JRVA+LAo+Pj4+ICsJCQkJCSA8JmNydSBBQ0xLX0xDREMwPiwKPj4+PiArCQkJ
CQkgPCZjcnUgSENMS19MQ0RDMD4sCj4+Pj4gKwkJCQkJIDwmY3J1IFBDTEtfTUlQST4sCj4+Pj4g
KwkJCQkJIDwmY3J1IEFDTEtfUkdBPiwKPj4+PiArCQkJCQkgPCZjcnUgSENMS19SR0E+LAo+Pj4+
ICsJCQkJCSA8JmNydSBBQ0xLX1ZJTzA+LAo+Pj4+ICsJCQkJCSA8JmNydSBBQ0xLX1ZJTzE+LAo+
Pj4+ICsJCQkJCSA8JmNydSBIQ0xLX1ZJTz4sCj4+Pj4gKwkJCQkJIDwmY3J1IEhDTEtfVklPX0gy
UD4sCj4+Pj4gKwkJCQkJIDwmY3J1IERDTEtfVk9QPiwKPj4+PiArCQkJCQkgPCZjcnUgU0NMS19W
T1A+Owo+Pj4+ICsJCQkJcG1fcW9zID0gPCZxb3NfZWJjPiwKPj4+PiArCQkJCQkgPCZxb3NfaWVw
PiwKPj4+PiArCQkJCQkgPCZxb3NfbGNkYz4sCj4+Pj4gKwkJCQkJIDwmcW9zX3JnYT4sCj4+Pj4g
KwkJCQkJIDwmcW9zX3ZpcD47Cj4+Pj4gKwkJCQkjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+
Pj4+ICsJCQl9Owo+Pj4+ICsKPj4+PiArCQkJcG93ZXItZG9tYWluQFJLMzEyOF9QRF9WSURFTyB7
Cj4+Pj4gKwkJCQlyZWcgPSA8UkszMTI4X1BEX1ZJREVPPjsKPj4+PiArCQkJCWNsb2NrcyA9IDwm
Y3J1IEFDTEtfVkRQVT4sCj4+Pj4gKwkJCQkJIDwmY3J1IEhDTEtfVkRQVT4sCj4+Pj4gKwkJCQkJ
IDwmY3J1IEFDTEtfVkVQVT4sCj4+Pj4gKwkJCQkJIDwmY3J1IEhDTEtfVkVQVT4sCj4+Pj4gKwkJ
CQkJIDwmY3J1IFNDTEtfSEVWQ19DT1JFPjsKPj4+PiArCQkJCXBtX3FvcyA9IDwmcW9zX3ZwdT47
Cj4+Pj4gKwkJCQkjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+Pj4+ICsJCQl9Owo+Pj4+ICsK
Pj4+PiArCQkJcG93ZXItZG9tYWluQFJLMzEyOF9QRF9HUFUgewo+Pj4+ICsJCQkJcmVnID0gPFJL
MzEyOF9QRF9HUFU+Owo+Pj4+ICsJCQkJY2xvY2tzID0gPCZjcnUgQUNMS19HUFU+Owo+Pj4+ICsJ
CQkJcG1fcW9zID0gPCZxb3NfZ3B1PjsKPj4+PiArCQkJCSNwb3dlci1kb21haW4tY2VsbHMgPSA8
MD47Cj4+Pj4gKwkJCX07Cj4+Pj4gKwo+Pj4+ICsJCQlwb3dlci1kb21haW5AUkszMTI4X1BEX0NS
WVBUTyB7Cj4+Pj4gKwkJCQlyZWcgPSA8UkszMTI4X1BEX0NSWVBUTz47Cj4+Pj4gKwkJCQljbG9j
a3MgPSA8JmNydSBIQ0xLX0NSWVBUTz4sCj4+Pj4gKwkJCQkJIDwmY3J1IFNDTEtfQ1JZUFRPPjsK
Pj4+PiArCQkJCXBtX3FvcyA9IDwmcW9zX2NyeXB0bz47Cj4+Pj4gKwkJCQkjcG93ZXItZG9tYWlu
LWNlbGxzID0gPDA+Owo+Pj4+ICsJCQl9Owo+Pj4+ICsJCX07Cj4+Pj4gKwl9Owo+Pj4+ICsKPj4+
PiArCXFvc19jcnlwdG86IHFvc0AxMDEyODA4MCB7Cj4+Pj4gKwkJY29tcGF0aWJsZSA9ICJyb2Nr
Y2hpcCxyazMxMjgtcW9zIiwgInN5c2NvbiI7Cj4+Pj4gKwkJcmVnID0gPDB4MTAxMjgwODAgMHgy
MD47Cj4+Pj4gKwl9Owo+Pj4+ICsKPj4+PiArCXFvc19ncHU6IHFvc0AxMDEyZDAwMCB7Cj4+Pj4g
KwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMxMjgtcW9zIiwgInN5c2NvbiI7Cj4+Pj4gKwkJ
cmVnID0gPDB4MTAxMmQwMDAgMHgyMD47Cj4+Pj4gKwl9Owo+Pj4+ICsKPj4+PiArCXFvc192cHU6
IHFvc0AxMDEyZTAwMCB7Cj4+Pj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMxMjgtcW9z
IiwgInN5c2NvbiI7Cj4+Pj4gKwkJcmVnID0gPDB4MTAxMmUwMDAgMHgyMD47Cj4+Pj4gKwl9Owo+
Pj4+ICsKPj4+PiArCXFvc19yZ2E6IHFvc0AxMDEyZjAwMCB7Cj4+Pj4gKwkJY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazMxMjgtcW9zIiwgInN5c2NvbiI7Cj4+Pj4gKwkJcmVnID0gPDB4MTAxMmYw
MDAgMHgyMD47Cj4+Pj4gKwl9Owo+Pj4+ICsKPj4+PiArCXFvc19lYmM6IHFvc0AxMDEyZjA4MCB7
Cj4+Pj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMxMjgtcW9zIiwgInN5c2NvbiI7Cj4+
Pj4gKwkJcmVnID0gPDB4MTAxMmYwODAgMHgyMD47Cj4+Pj4gKwl9Owo+Pj4+ICsKPj4+PiArCXFv
c19pZXA6IHFvc0AxMDEyZjEwMCB7Cj4+Pj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMx
MjgtcW9zIiwgInN5c2NvbiI7Cj4+Pj4gKwkJcmVnID0gPDB4MTAxMmYxMDAgMHgyMD47Cj4+Pj4g
Kwl9Owo+Pj4+ICsKPj4+PiArCXFvc19sY2RjOiBxb3NAMTAxMmYxODAgewo+Pj4+ICsJCWNvbXBh
dGlibGUgPSAicm9ja2NoaXAscmszMTI4LXFvcyIsICJzeXNjb24iOwo+Pj4+ICsJCXJlZyA9IDww
eDEwMTJmMTgwIDB4MjA+Owo+Pj4+ICsJfTsKPj4+PiArCj4+Pj4gKwlxb3NfdmlwOiBxb3NAMTAx
MmYyMDAgewo+Pj4+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMTI4LXFvcyIsICJzeXNj
b24iOwo+Pj4+ICsJCXJlZyA9IDwweDEwMTJmMjAwIDB4MjA+Owo+Pj4+ICAgIAl9Owo+Pj4+ICAg
IAo+Pj4+ICAgIAlnaWM6IGludGVycnVwdC1jb250cm9sbGVyQDEwMTM5MDAwIHsKPj4+Pgo+Pj4K
Pj4+Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
