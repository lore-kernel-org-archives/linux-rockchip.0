Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B5EAC3601A
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 13:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/oUYWGevaaR91Tk+UjfYLKjdCIgcYXU5XZbrBpNons=; b=gLFvPIRwi0Mrqt
	ThlbIgubAjtS6ThWpMc/Vw6WkFxXQsk/5VtMbc8n4tyAd50rErPllN83vVH6Mv34mWb3QOkqB3CtL
	9wzTr4R79lj5QgeRXJGmfrLVNkVIb7C8WUTM0tP27xGU0zX0/wXKb4VmRknm45IVGjZFCg/4uzR6g
	Sr631sMhYqZKD38j5dySpvzDVQJaP3iWaqQECzQbOsJvng4sRQvqQuPmSPRP6ykL5ifb8mVDXdJMO
	4NWNJI6lLASAeECucC8+eyRt82y0Stnc5Ev0PSIJ6IS1oWf97LdnZsxV+iiD+vb8kTnFCzj/AYcCy
	1m93WBba7pVpqW99N9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0gnc-0000000Bluf-2eHJ;
	Fri, 04 Apr 2025 13:09:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0gnZ-0000000Bltl-1el0;
	Fri, 04 Apr 2025 13:09:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7C09945053;
	Fri,  4 Apr 2025 13:09:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEA23C4CEF3;
	Fri,  4 Apr 2025 13:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743772168;
	bh=dXvLo65uum190+DYUNNlALy+j1eqU6jZE1YhXB2VRzw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=GDd3H0n4Z0vbzhOAKBtX4aBm2VvNF3+IHAlBZcY+prFuXi8cUpHIAmcgMJANZtdgc
	 SadmKjqoeeP3emGC4LnYFxHT6I2Z5k4Qigi/ixTpN0IjDgoC2YwqzWaLtiFw6MVdWY
	 R51uqx4Vo1nBKrHVzBG0y29dCta48Jc5BLa59kSTc1THSL1yXM0eoSE65ifw4Hc4m9
	 SWymD+qBgYbMWGz01AIzxcp4EAbHrwklRmWGHBAZsGAPODfBKuc22jPpwnuD0PsKUb
	 4WzCQ8fABsmztu+A1EYwZSW/Iy8dxRsSFMwWpTf8Ntbimo0rh1MzNq8RAHcck28ns7
	 PlZqBwK10PG0Q==
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac7bd86f637so330850766b.1;
        Fri, 04 Apr 2025 06:09:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV7u+haG7jWTke96wzQRe+lBxqYWPbA4ZkMn7koL/JeK3Y75WmnIbti3K+/KkdfGEC6qRbs3qZo9IS9+e5NGCY=@lists.infradead.org, AJvYcCWT2aCIi4i6lnO8VZqvp1K4QcmQhUt7T9p6DTtzz0gYhyUvUcS2qri+SoZZioprSVj6dhDaIyDU6UfvnY2wjPs=@lists.infradead.org, AJvYcCXBtgZn4aoQtMlQIC8njIuRSMCnTtZaa1t6tBIuQ5vETggp1AciE82i1QTzWp4dilPGX56tFpKvQud5QXudsxsaHA==@lists.infradead.org, AJvYcCXkgbPZv4c5kYQswuLbircMpqhFT9bZGBaVOkM+tmKU6y7cjxwj7Z7/q5E0h+xR7650hpcQirgbJ99La7ss@lists.infradead.org
X-Gm-Message-State: AOJu0YxoiwQIC6OoAEhZgP52gNSDmS6osb9VDcGb0an8Sk6kqnQ7pHN/
	1SRRLL2FCl5SpsFUsIGURpWfRcw9C7opMdU0eS1YDWxsEHOUe95Ri+Q6C7wfCsy9CsC0vMF6OsE
	jlHL9f0P874c6muHiMUDX0BxqHA==
X-Google-Smtp-Source: AGHT+IFIyAD0iksJ2rEYwVDKxfXp9paMa26qoweWItquite8ZOPf4g5g6GK5SE+pbTwu/1QEMoBYtzOxpeaG2eY6PCU=
X-Received: by 2002:a17:907:6e8e:b0:ac2:d5d3:2b77 with SMTP id
 a640c23a62f3a-ac7d2e1b9c5mr344142866b.8.1743772167150; Fri, 04 Apr 2025
 06:09:27 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-18-076be7171a85@kernel.org> <CAPDyKFrFRrPVJ_t0JrAE1VTbS02hwr=L-EHtqb7CQiWzB1MnQg@mail.gmail.com>
In-Reply-To: <CAPDyKFrFRrPVJ_t0JrAE1VTbS02hwr=L-EHtqb7CQiWzB1MnQg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 4 Apr 2025 08:09:15 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKygxhcQ=PZW84sfiW7BVXKF839vfNyxS9GwAXuqmN=8g@mail.gmail.com>
X-Gm-Features: ATxdqUFqb3GyPW1xY4MYIKArvKkAjEGffj80G84cX0XvObx4_cAf9jnDsr6emp0
Message-ID: <CAL_JsqKygxhcQ=PZW84sfiW7BVXKF839vfNyxS9GwAXuqmN=8g@mail.gmail.com>
Subject: Re: [PATCH 18/19] dt-bindings: arm/cpus: Add power-domains constraints
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Viresh Kumar <vireshk@kernel.org>, 
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
	Conor Dooley <conor@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org, 
	imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_060929_474191_9EFD747A 
X-CRM114-Status: GOOD (  15.79  )
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

T24gRnJpLCBBcHIgNCwgMjAyNSBhdCA1OjM34oCvQU0gVWxmIEhhbnNzb24gPHVsZi5oYW5zc29u
QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gRnJpLCA0IEFwciAyMDI1IGF0IDA1OjA2LCBSb2Ig
SGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBUaGUgInBvd2Vy
LWRvbWFpbnMiIGFuZCAicG93ZXItZG9tYWlucy1uYW1lcyIgcHJvcGVydGllcyBhcmUgbWlzc2lu
ZyBhbnkKPiA+IGNvbnN0cmFpbnRzLiBBZGQgdGhlIGNvbnN0cmFpbnRzIGFuZCBkcm9wIHRoZSBn
ZW5lcmljIGRlc2NyaXB0aW9ucy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyAo
QXJtKSA8cm9iaEBrZXJuZWwub3JnPgo+ID4gLS0tCj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9jcHVzLnlhbWwgfCA4ICsrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jcHVzLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2NwdXMueWFtbAo+ID4gaW5kZXggNmY3NGVi
ZmQzOGRmLi41YmQ1ODIyZGI4YWYgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvYXJtL2NwdXMueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2FybS9jcHVzLnlhbWwKPiA+IEBAIC0zMTMsMTkgKzMxMywxNSBAQCBw
cm9wZXJ0aWVzOgo+ID4gICAgICBtYXhJdGVtczogMQo+ID4KPiA+ICAgIHBvd2VyLWRvbWFpbnM6
Cj4gPiAtICAgIGRlc2NyaXB0aW9uOgo+ID4gLSAgICAgIExpc3Qgb2YgcGhhbmRsZXMgYW5kIFBN
IGRvbWFpbiBzcGVjaWZpZXJzLCBhcyBkZWZpbmVkIGJ5IGJpbmRpbmdzIG9mIHRoZQo+ID4gLSAg
ICAgIFBNIGRvbWFpbiBwcm92aWRlciAoc2VlIGFsc28gLi4vcG93ZXJfZG9tYWluLnR4dCkuCj4g
PiArICAgIG1heEl0ZW1zOiAxCj4KPiBUaGVyZSBhcmUgbW9yZSB0aGFuIG9uZSBpbiBzb21lIGNh
c2VzLiBUaGUgbW9zdCBpcyBwcm9iYWJseSB0aHJlZSwgSSB0aGluay4KClVubGVzcyBJIG1pc3Nl
ZCBpdCwgdGVzdGluZyBzYXlzIG90aGVyd2lzZS4gV2hhdCB3b3VsZCB0aGUgbmFtZXMgYmUgaWYK
bW9yZSB0aGFuIDEgZW50cnk/CgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
