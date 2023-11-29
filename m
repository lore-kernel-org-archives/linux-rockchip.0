Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D47EC07E97
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 08:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bzo9b4syeBVtYHW3nss58fodtN/OSj/4ddo5AGA/J4A=; b=f9ZV/Gz7/6qwSs
	tBEsqaQPDsrsuRxoX6xIilJlPRjFUa2AR/AaGxt3oJSlswRiw92PeI+GKY/ju/bbLZCVGseyAP3Bw
	xVUR1GrZE+VNoIlfv7lZzZe+NPYPdJcr0+ZHHWNEJ/ED0fg3WbtltfU/FYk60VtKhTXaI5OUI2Kf5
	PFIQLp1ah5TGuYhM8ssdbmIkZCw8SpRqkd+ypuBD+7M2GLBvHBpGDdfiacE8gKafOq2o2OsgZHNBJ
	lpOOSlC9IC4vSsucSHwMHpE6RsVi1VP0pwF3Ks7ZQhHDUBWsHrDLMcdR6z/Q+ff6wwyQ7TBUwUOIe
	6DeD5P2E2mSclspCVYPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8GEi-007WMh-3B;
	Wed, 29 Nov 2023 08:48:00 +0000
Received: from mail-yb1-f170.google.com ([209.85.219.170])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8GEf-007WLX-0u;
	Wed, 29 Nov 2023 08:47:58 +0000
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-db49ab94768so3541010276.2;
        Wed, 29 Nov 2023 00:47:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701247675; x=1701852475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLerLul424y9KF+UL/6zr3ivEhD1RgHSR/3xjytvLS8=;
        b=YlTwkseC+ErGqKC+70PPJ0NOeVh68NzCW/47ZwuYNJQ7m/TqXgEg0vJy96T00FYu+5
         TL5UnBaKSI7PV9x9t/siFq4ZK1Pe78aEwOnMXuBsaPlwolSfd3HFCj1GTflAHyaP9o1j
         lZN0cg2Ll0xYgPp8udzYob8G/Y6kdDqoSCrgu5bqWuMhQPEO2C86857QyZJIGysoE/oY
         IzAeihEk7Z9v4vrbHc69Y8VzS7gRNqO+NDIHokJRXL7x8/vGXSXgJiCkVz9qf/GZm1iY
         5Kyf0/fzB6yCcNodtsavYEEYVoAn7FI1pkbRT8ZQLxCzqiT+SCQSKvFL1AYAW6d5SiPm
         gJIg==
X-Gm-Message-State: AOJu0YwWvX9vJm7jXO3FepECfKjU3o9tNFlNmLGkZvcfeQxYsfzg9zhi
	ZWJXSzW8mmY87tgTvvmbAQWLjMZsQgHpvg==
X-Google-Smtp-Source: AGHT+IHQbh2MXWmQFsE80rDz7IplsF+cRL4zHkgLE7MUjILC4McTBQcuwDU/ogQreY/evE8BO2f5Wg==
X-Received: by 2002:a25:d54:0:b0:daf:11cd:d54a with SMTP id 81-20020a250d54000000b00daf11cdd54amr16402099ybn.36.1701247674801;
        Wed, 29 Nov 2023 00:47:54 -0800 (PST)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id n1-20020a254001000000b00d9a577d8434sm4096461yba.53.2023.11.29.00.47.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 00:47:54 -0800 (PST)
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dae0ab8ac3eso5797200276.0;
        Wed, 29 Nov 2023 00:47:54 -0800 (PST)
X-Received: by 2002:a25:3d1:0:b0:db4:47e1:407d with SMTP id
 200-20020a2503d1000000b00db447e1407dmr16074846ybd.60.1701247673674; Wed, 29
 Nov 2023 00:47:53 -0800 (PST)
MIME-Version: 1.0
References: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org> <ZWboWqELHbIrblnz@francesco-nb.int.toradex.com>
In-Reply-To: <ZWboWqELHbIrblnz@francesco-nb.int.toradex.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Nov 2023 09:47:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVSAgihFAuPecyrR+Wvzqr58z_fkWkShOSu+HnHzZnW2g@mail.gmail.com>
Message-ID: <CAMuHMdVSAgihFAuPecyrR+Wvzqr58z_fkWkShOSu+HnHzZnW2g@mail.gmail.com>
Subject: Re: [PATCH v3] docs: dt-bindings: add DTS Coding Style document
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, 
	Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michal Simek <michal.simek@amd.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	workflows@vger.kernel.org, linux-doc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_004757_323339_47261C48 
X-CRM114-Status: GOOD (  29.71  )
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

SGkgRnJhbmNlc2NvLAoKT24gV2VkLCBOb3YgMjksIDIwMjMgYXQgODoyOeKAr0FNIEZyYW5jZXNj
byBEb2xjaW5pIDxmcmFuY2VzY29AZG9sY2luaS5pdD4gd3JvdGU6Cj4gT24gU2F0LCBOb3YgMjUs
IDIwMjMgYXQgMDc6NDQ6MjJQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+
IERvY3VtZW50IHByZWZlcnJlZCBjb2Rpbmcgc3R5bGUgZm9yIERldmljZXRyZWUgc291cmNlcyAo
RFRTIGFuZCBEVFNJKSwKPiA+IHRvIGJyaW5nIGNvbnNpc3RlbmN5IGFtb25nIGFsbCAoc3ViKWFy
Y2hpdGVjdHVyZXMgYW5kIGVhc2UgaW4gcmV2aWV3cy4KPgo+IFRoYW5rIEtyenlzenRvZiwgd2Ug
aGFkIG1vc3Qgb2YgdGhpcyBjb2xsZWN0ZWQgYXMgQktNIGluIHNvbWUgaW50ZXJuYWwKPiBkb2N1
bWVudHMgYW5kIGl0J3MgZ3JlYXQgdG8gc2VlIHRoZSBlZmZvcnQgdG8gY29uc29saWRhdGUgdGhp
cyBhbmQgYWRkCj4gaXQgdG8gdGhlIGtlcm5lbCBkb2N1bWVudGF0aW9uLgo+Cj4gPiAtLS0KPiA+
ICtGb2xsb3dpbmcgb3JkZXIgb2YgcHJvcGVydGllcyBpbiBkZXZpY2Ugbm9kZXMgaXMgcHJlZmVy
cmVkOgo+ID4gKwo+ID4gKzEuIGNvbXBhdGlibGUKPiA+ICsyLiByZWcKPiA+ICszLiByYW5nZXMK
PiA+ICs0LiBTdGFuZGFyZC9jb21tb24gcHJvcGVydGllcyAoZGVmaW5lZCBieSBjb21tb24gYmlu
ZGluZ3MsIGUuZy4gd2l0aG91dAo+ID4gKyAgIHZlbmRvci1wcmVmaXhlcykKPiA+ICs1LiBWZW5k
b3Itc3BlY2lmaWMgcHJvcGVydGllcwo+ID4gKzYuIHN0YXR1cyAoaWYgYXBwbGljYWJsZSkKPiA+
ICs3LiBDaGlsZCBub2Rlcywgd2hlcmUgZWFjaCBub2RlIGlzIHByZWNlZGVkIHdpdGggYSBibGFu
ayBsaW5lCj4KPiBPbiBwb2ludCA0LCBkbyB5b3UgaGF2ZSBhIG1vcmUgZXhwbGljaXQgd2F5IHRv
IGRlZmluZSB3aGF0IGlzIGFuIGFjdHVhbAo+IHN0YW5kYXJkL2NvbW1vbiBwcm9wZXJ0eT8gWW91
IG1lbnRpb24gdGhlIHZlbmRvci1wcmVmaXhlcyBhcyBhbiBleGFtcGxlLAo+IGlzIHRoaXMganVz
dCBhbiBleGFtcGxlIG9yIHRoaXMgaXMgdGhlIHdob2xlIGRlZmluaXRpb24/CgpJIHRoaW5rIHRo
ZXJlIGFyZSB0aHJlZSBjbGFzc2VzIG9mIHN0YW5kYXJkIHByb3BlcnRpZXM6CiAgMS4gRGV2aWNl
IFRyZWUgU3BlY2lmaWNhdGlvbiAoZnJvbSBkZXZpY2V0cmVlLm9yZykKICAyLiBkdC1zY2hlbWEK
ICAzLiBDb21tb24gc3Vic3lzdGVtIGJpbmRpbmdzIChEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvKQogICAgIChtYXkgYmUgbW92ZWQgdG8gMikuCgo+IFdoYXQgd291bGQgYmUgdGhl
IG9yZGVyIGZvciB0aGlzIGZvciBleGFtcGxlIChmcm9tIGFuIGV4aXN0aW5nIERUUyBmaWxlKT8K
Pgo+ICAgICAgICAgcmVnX3NkaGMxX3ZtbWM6IHJlZ3VsYXRvci1zZGhjaTEgewo+ICAgICAgICAg
ICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gICAgICAgICAgICAgICAg
IHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9
IDwmcGluY3RybF9zZDFfcHdyX2VuPjsKPiAgICAgICAgICAgICAgICAgZW5hYmxlLWFjdGl2ZS1o
aWdoOwo+ICAgICAgICAgICAgICAgICBncGlvID0gPCZtYWluX2dwaW8wIDI5IEdQSU9fQUNUSVZF
X0hJR0g+Owo+ICAgICAgICAgICAgICAgICBvZmYtb24tZGVsYXktdXMgPSA8MTAwMDAwPjsKPiAg
ICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gICAg
ICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ICAgICAg
ICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICIrVjMuM19TRCI7Cj4gICAgICAgICAgICAgICAg
IHN0YXJ0dXAtZGVsYXktdXMgPSA8MjAwMD47Cj4gICAgICAgICB9Owo+Cj4gSSBndWVzcyB0aGUg
cG9pbnQgdGhhdCBpcyBub3Qgb2J2aW91cyB0byBtZSBoZXJlIGlzIHdoZXJlIGRvIHdlIHdhbnQK
PiBwaW5jdHJsLiBJIGxpa2UgaXQgYXQgcG9zaXRpb24gYmV0d2VlbiAzIGFuZCA0LCB0aGUgcmF0
aW9uYWxlIGlzIHRoYXQgaXMKPiBhIHZlcnkgZnJlcXVlbnQgcHJvcGVydHkgYW5kIHRoaXMgd2F5
IGl0IHdpbGwgYmUgaW4gYSBzaW1pbGFyIHBsYWNlIGZvcgo+IGV2ZXJ5IG5vZGUuCgpUaGUgcGlu
Y3RybCBwcm9wZXJ0aWVzIGFyZSBvbmx5IHByZXNlbnQgaW4gYm9hcmQgRFRTIGZpbGVzLCBub3Qg
aW4KU29DIERUU2kgZmlsZXMuICBUaGVyZSBhcmUgdHdvIGNsYXNzZXMgb2YgdGhlbToKICAxLiBF
eHRlbnNpb24gb2Ygb24tU29DIGRldmljZXMsIHdoZXJlIHRoZXkgYXJlIGFkZGVkIHRvIGFscmVh
ZHkKICAgICBleGlzdGluZyBub2RlcywgZGVmaW5lZCBpbiB0aGUgU29DIERUU2kgZmlsZXMsIGUu
Zy4gKGZyb20gdGhlIHNhbWUKICAgICBleGlzdGluZyBEVFMgZmlsZSk6CgogICAgICAgICAmY3Bz
dzNnIHsKICAgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogICAgICAg
ICAgICAgICAgIHBpbmN0cmwtMCA9IDwmcGluY3RybF9yZ21paTE+OwogICAgICAgICAgICAgICAg
IHN0YXR1cyA9ICJkaXNhYmxlZCI7CiAgICAgICAgIH07CgogIDIuIFB1cmUgYm9hcmQgZGV2aWNl
cywgaW4gbmV3IG5vZGVzIChlLmcuIHlvdXIgcmVndWxhdG9yIGV4YW1wbGUpLgogICAgIFRoZXNl
IGFyZSBsZXNzIGNvbW1vbiwgc28gSSBkb24ndCBldmVuIGtub3cgZnJvbSB0aGUgdG9wIG9mIG15
CiAgICAgbWluZCB3aGVuIEkgbGFzdCBhZGRlZCBvbmUsIGFuZCB3aGVyZSA7LSkKICAgICBJJ2Qg
Z3Vlc3MgYWZ0ZXIgYWxsIHN0YW5kYXJkIHByb3BlcnRpZXM/CgpHcntvZXRqZSxlZXRpbmd9cywK
CiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0t
IFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9y
ZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2Fs
bCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkg
anVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
