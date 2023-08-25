Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 667EEC71133
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 14:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0h1k/2jWo0gofS9V3lf1Hgxb2XZqVlh4EMEaX9nb3KI=; b=d8ArSW3KN9cfiw
	/O5Pdt9f15YjUBSolamfW4jJTXSrzcK6TtFB/TcRtm0MhVlMD3SgZMGKjvHWFyx1+yL6oKiOlP6P7
	WYVD6TtqxP1oGi9ZeJQ/Gw2lnEN7jRESI2CPkqtG0wtIoptxHFv0Z1A4JVAVR256k/APqtRf23jtN
	LBT236lLWbEdxo19F2TCyVtU7HwN8t5e7IEy2vsazX1cTxhtdIhpfC0JBqu7C85lT30oFHev+T2J4
	tecEosgXlGHs5hPlfovmOtAmYhrYOTr/n6//H0mWlGoycvEDAYfUF/0aXne7D1RpfreFmQrsUrR/D
	xHoxnArjeK1/vo0VLdfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZY0K-005cHQ-0p;
	Fri, 25 Aug 2023 14:41:40 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZY0G-005cG6-1w;
	Fri, 25 Aug 2023 14:41:38 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99c3c8adb27so122838066b.1;
        Fri, 25 Aug 2023 07:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692974492; x=1693579292;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t/Nyi2UtJHS2L8Ejnis0sIFHEs44gVXKzFV9je3/KrQ=;
        b=m5YpFddniJdsweLpDiBMuTrwp/DFZA7ALBdWjy/ou8KTRnc7m1IFRI+d6jSHq0CEAM
         QhFVj47cdxI+vCV4+9qbuh3aoDvvBm2JOgyx8jY9qcLLmmtrJkkqfq+aSlE7T8wv+4iP
         uhe7HLkAu15rpIFabmISxrkvwM5L47q3+A/GaN/Zxe1GeBVJesIitTuCJOHfqnTe+pnm
         nP2UxSHrwwfBZ0P6xfMo5V+2hntqsaNAGeYTsIgWO5h8S9W/2ESYbh+GDXW9yUOO5yFM
         LLOejgrH7OPsyUOcMRfUViC3pludGiVGC9VygBQV532P5MSingkpNeSPgkrDQZ3GAMq9
         vPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692974492; x=1693579292;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t/Nyi2UtJHS2L8Ejnis0sIFHEs44gVXKzFV9je3/KrQ=;
        b=bmHHDtjcoNv1/l9bEgLNz/sqr3u7JkIK0U1YYqgWI2r/EEj6M8s2iVY7s0vXMgqCgA
         khnSHzggRKF1623ffzbsZaGku69DW/h53RHpEaHbSJ4p0GL5ZJzxrIA+Ns0e/yk0hqib
         RPUzahwiuNuTyLoh0B0mD0N9cpxk+fiPODCqb74BDEcltnYe/OnNACIhIsjjEi3jK3/E
         uqbeusrPTFIuw9CQnOU+I6xBg+4UJ2IQ4kiEg2jLKe8tkuxnWB6dB1GJDOd8gT838Vfr
         397cV7aY+TpIOtYFYCPCdKowob1aTIf1FWorunHwwEhpQzSGSbj3tXPF/GtBH2mhLmXU
         NKVw==
X-Gm-Message-State: AOJu0YwcXhyIqjPQf9LmEkekaR2ULQTxQsX5vDoPaheoVGzTamAnoY3f
	Ec+kShIaYXa8g+sRuQWUyg+/FqpTH9OEoGpuAjk=
X-Google-Smtp-Source: AGHT+IFTa6AUo8YGThRRtKjSHjpALqvs56DSmtO34KA77It9bSY9eo+tp2QfZnFxYx9KevR2d+AoL9gNtc1jHFksSmA=
X-Received: by 2002:a17:906:cc16:b0:9a1:870e:cc9d with SMTP id
 ml22-20020a170906cc1600b009a1870ecc9dmr14271003ejb.18.1692974492214; Fri, 25
 Aug 2023 07:41:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAF6AEGs4p0xXJjsNug45CFiP0n-5h7wpdy22YBryjrnWFROESg@mail.gmail.com>
 <29c7-64e8bc00-3-6afffd8@162524261>
In-Reply-To: <29c7-64e8bc00-3-6afffd8@162524261>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 25 Aug 2023 07:41:19 -0700
Message-ID: <CAF6AEGsdR4XMQ73mwNEE-fntPFLbQrxmzdoWchjReoVXKexdVw@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm: ci: Force db410c to host mode
To: Helen Mae Koike Fornazier <helen.koike@collabora.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Vignesh Raman <vignesh.raman@collabora.com>, dri-devel@lists.freedesktop.org, 
	emma@anholt.net, linux-doc@vger.kernel.org, david.heidelberg@collabora.com, 
	linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, 
	corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, 
	gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, 
	daniels@collabora.com, martin.blumenstingl@googlemail.com, 
	robclark@freedesktop.org, anholt@google.com, 
	linux-mediatek@lists.infradead.org, mripard@kernel.org, 
	matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, 
	angelogioacchino.delregno@collabora.com, neil.armstrong@linaro.org, 
	guilherme.gallo@collabora.com, linux-kernel@vger.kernel.org, 
	tzimmermann@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_074136_638075_69B7D673 
X-CRM114-Status: GOOD (  37.06  )
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

T24gRnJpLCBBdWcgMjUsIDIwMjMgYXQgNzozNOKAr0FNIEhlbGVuIE1hZSBLb2lrZSBGb3JuYXpp
ZXIKPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gRnJpZGF5LCBBdWd1
c3QgMjUsIDIwMjMgMTE6MzAgLTAzLCBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdy
b3RlOgo+Cj4gPiBPbiBGcmksIEF1ZyAyNSwgMjAyMyBhdCA2OjU24oCvQU0gSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIEZyaSwg
MjUgQXVnIDIwMjMsIFZpZ25lc2ggUmFtYW4gPHZpZ25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4g
d3JvdGU6Cj4gPiA+ID4gRm9yY2UgZGI0MTBjIHRvIGhvc3QgbW9kZSB0byBmaXggbmV0d29yayBp
c3N1ZSB3aGljaCByZXN1bHRzIGluIGZhaWx1cmUKPiA+ID4gPiB0byBtb3VudCByb290IGZzIHZp
YSBORlMuCj4gPiA+ID4gU2VlIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9nZngtY2kv
bGludXgvLS9jb21taXQvY2I3MmE2MjliOGMxNWM4MGE1NGRkYTUxMDc0M2NlZmQxYzRiNjViOAo+
ID4gPiA+Cj4gPiA+ID4gU2luY2UgdGhpcyBmaXggaXMgbm90IHNlbnQgdXBzdHJlYW0sIGFkZCBp
dCB0byBidWlsZC5zaCBzY3JpcHQKPiA+ID4gPiBiZWZvcmUgYnVpbGRpbmcgdGhlIGtlcm5lbCBh
bmQgZHRzLiBCZXR0ZXIgYXBwcm9hY2ggd291bGQgYmUKPiA+ID4gPiB0byB1c2UgZGV2aWNldHJl
ZSBvdmVybGF5cy4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFZpZ25lc2ggUmFtYW4g
PHZpZ25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVy
cy9ncHUvZHJtL2NpL2J1aWxkLnNoIHwgNCArKysrCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vY2kvYnVpbGQuc2ggYi9kcml2ZXJzL2dwdS9kcm0vY2kvYnVpbGQuc2gKPiA+ID4gPiBpbmRl
eCA3YjAxNDI4N2EwNDEuLmMzOTgzNGJkNmJkNyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vY2kvYnVpbGQuc2gKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vY2kvYnVp
bGQuc2gKPiA+ID4gPiBAQCAtNzAsNiArNzAsMTAgQEAgaWYgWyAteiAiJENJX01FUkdFX1JFUVVF
U1RfUFJPSkVDVF9QQVRIIiBdOyB0aGVuCj4gPiA+ID4gICAgICBmaQo+ID4gPiA+ICBmaQo+ID4g
PiA+Cj4gPiA+ID4gKyMgRm9yY2UgZGI0MTBjIHRvIGhvc3QgbW9kZSB0byBmaXggbmV0d29yayBp
c3N1ZSB3aGljaCByZXN1bHRzIGluIGZhaWx1cmUgdG8gbW91bnQgcm9vdCBmcyB2aWEgTkZTLgo+
ID4gPiA+ICsjIFNlZSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
Ly0vY29tbWl0L2NiNzJhNjI5YjhjMTVjODBhNTRkZGE1MTA3NDNjZWZkMWM0YjY1YjgKPiA+ID4g
PiArc2VkIC1pICcvJnVzYiB7Lywvc3RhdHVzID0gIm9rYXkiOy9zL3N0YXR1cyA9ICJva2F5Ijsv
JlxuXHRkcl9tb2RlID0gImhvc3QiOy8nIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9hcHE4MDE2
LXNiYy5kdHMKPiA+ID4gPiArCj4gPiA+Cj4gPiA+IEl0IHNlZW1zIGxpa2UgYSByZWFsbHkgYmFk
IGlkZWEgdG8gbWUgdG8gaGF2ZSB0aGUgQ0kgYnVpbGQgbW9kaWZ5IHRoZQo+ID4gPiBzb3VyY2Ug
dHJlZSBiZWZvcmUgYnVpbGRpbmcuCj4gPiA+Cj4gPiA+IFRoZSBrZXJuZWwgYmVpbmcgYnVpbHQg
d2lsbCBoYXZlIGEgZGlydHkgZ2l0IHJlcG8sIGFuZCB0aGUgbG9jYWx2ZXJzaW9uCj4gPiA+IHdp
bGwgaGF2ZSAtZGlydHkgaW4gaXQuCj4gPiA+Cj4gPiA+IEkgdGhpbmsgaXQgd291bGQgYmUgYmV0
dGVyIHRvIGRvIG91dC1vZi10cmVlIGJ1aWxkcyBhbmQgYXNzdW1lIHRoZQo+ID4gPiBzb3VyY2Ug
aXMgcmVhZC1vbmx5Lgo+ID4KPiA+IFdlIGhhdmUgdGhlICR7dGFyZ2V0X2JyYW5jaH0tZXh0ZXJu
YWwtZml4ZXMgbWVjaGFuaXNtIHRvIG1lcmdlCj4gPiBuZWNlc3NhcnkgY2hhbmdlcyBiZWZvcmUg
YnVpbGRpbmcgdGhlIGtlcm5lbCBmb3IgQ0kuICBXaGljaCBpcwo+ID4gbmVjZXNzYXJ5IGZvciBh
IGNvdXBsZSBvZiByZWFzb25zOgo+Cj4gU2hvdWxkIHdlIGNyZWF0ZSBhbiBvZmZpY2lhbCB0b3Bp
Yy9kcm0tY2ktZXh0ZXJuYWwtZml4ZXMgYnJhbmNoID8KCkhtbSwgbWF5YmUuLiBJIGd1ZXNzIGFz
IHdlIGV4cGFuZCB0aGlzIHRvIG1vcmUgZHJpdmVyIHRyZWVzLCBhbmQgd2FudAp0byBiZSBhYmxl
IHRvIHJlLXJ1biBDSSBpbiB0aGUgZHJtIHRyZWUgYWZ0ZXIgbWVyZ2VzIHRvCmRybS1uZXh0L2Ry
bS1maXhlcywgd2UgbWF5YmUgd2FudCB0byBoYXZlIGNlbnRyYWwKZHJtLW5leHQtZXh0ZXJuYWwt
Zml4ZXMgYW5kIGRybS1maXhlcy1leHRlcm5hbC1maXhlcy4gIEkgZ3Vlc3Mgd2UgY2FuCmtlZXAg
dGhvc2UgYmFzZWQgb24gZHJtLW5leHQgYW5kIGRybS1maXhlcz8gIEFuZCBpZiB0aGVyZSB3b3Vs
ZCBiZQpjb25mbGljdHMgYmVjYXVzZSwgc2F5LCAke2RyaXZlcn0tbmV4dCBpcyBiZWhpbmQgZHJt
LW5leHQsIHRoZW4KJHtkcml2ZXJ9LW5leHQgY291bGQgYmUgcmViYXNlZCBvbiBkcm0tbmV4dD8K
CkJSLAotUgoKPiBSZWdhcmRzLAo+IEhlbGVuCj4KPiA+Cj4gPiAxKSBwYXRjaGVzIGxpa2UgdGhp
cyB3aGljaCBhcmVuJ3QgYXBwcm9wcmlhdGUgdXBzdHJlYW0gYnV0IG5lY2Vzc2FyeQo+ID4gZHVl
IHRvIHRoZSBDSSBsYWIgc2V0dXAKPiA+IDIpIHRhcmdldCBicmFuY2ggaWYgb2Z0ZW4gYmFzZWQg
b24gYW4gZWFybHkgLXJjLCBhbmQgaXQgaXNuJ3QgdW5oZWFyZAo+ID4gb2YgdG8gbmVlZCBzb21l
IGZpeCBmb3Igc29tZSBib2FyZCBvciBhbm90aGVyIHdoaWNoIGlzbid0IGFwcHJvcHJpYXRlCj4g
PiB0byBsYW5kIHZpYSBkcm0tbmV4dAo+ID4KPiA+IFdlIHNob3VsZCB1c2UgdGhlIC1leHRlcm5h
bC1maXhlcyBicmFuY2ggbWVjaGFuaXNtIGZvciBwYXRjaGVzIGxpa2UgdGhpcyBvbmUuCj4gPgo+
ID4gQlIsCj4gPiAtUgo+ID4KPiA+ID4gPiAgZm9yIG9wdCBpbiAkRU5BQkxFX0tDT05GSUdTOyBk
bwo+ID4gPiA+ICAgIGVjaG8gQ09ORklHXyRvcHQ9eSA+PiBkcml2ZXJzL2dwdS9kcm0vY2kvJHtL
RVJORUxfQVJDSH0uY29uZmlnCj4gPiA+ID4gIGRvbmUKPiA+ID4KPiA+ID4gRGl0dG8gZm9yIHRo
ZSBjb25maWcgY2hhbmdlcyBpbiB0aGUgY29udGV4dCBoZXJlLiBUaG9zZSBhcmUgZmlsZXMgaW4K
PiA+ID4gZ2l0LCBkb24ndCBjaGFuZ2UgdGhlbS4KPiA+ID4KPiA+ID4gU2hvdWxkbid0IHRoaXMg
dXNlIHNvbWV0aGluZyBsaWtlICdzY3JpcHRzL2NvbmZpZyAtLWVuYWJsZScgb3IKPiA+ID4gJ3Nj
cmlwdHMvY29uZmlnIC0tZGlzYWJsZScgb24gdGhlIC5jb25maWcgZmlsZSB0byBiZSB1c2VkIGZv
ciBidWlsZGluZwo+ID4gPiBpbnN0ZWFkPwo+ID4gPgo+ID4gPgo+ID4gPiBCUiwKPiA+ID4gSmFu
aS4KPiA+ID4KPiA+ID4KPiA+ID4gLS0KPiA+ID4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
