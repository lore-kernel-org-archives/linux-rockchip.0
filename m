Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 802CCC36010
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 17:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPILVCbr8KX2d3UBp3Mu4YHI+8krlhLDoevo0b16iB8=; b=dOX1gJKW84FzcR
	4yihnZ5vgiY7QyW6ohWxn14j05q3B7dy8NCbNa69gJgKRcwz8rzkbUl1Caqq27jWAMaC9AW+zyGWy
	A1r0kblmihWZxJVBVrWwqS9mMuxczZcbQNqX/v+4uzLWBmPL4O7srN82EJFWqG40Z4FutS6lMHU43
	6kLa1qEJboCM9MTvZ47BaBA2N/Wmoa+kZzFGKt1VX3z+C7SYFDulcanoddI7QU6DT1xiGsioQmKKY
	W447C41Bi6S96bn87Fo+HUhlgoqEWZVaLm8wyIOlQ3kAklrOyTZMAkwrqnTUeQLwjMBxQHgCsbaVr
	NBNzf63YBevPR2MGUbYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1ps5-00000001JR6-0ROc;
	Mon, 07 Apr 2025 17:02:53 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pBS-000000018iq-0pcQ
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Apr 2025 16:18:51 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-6ff37565154so41707187b3.3
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Apr 2025 09:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744042728; x=1744647528; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JX/CsfcApiydwjMPAUinCGMDhAd2IhhoMg3Tp/JQvVw=;
        b=oJ9bRUWpFQqqHvzv2fX2C/ICShQuj6Clyx0W4eF1N2rYwyC+e8Fk8lpKdG/tVBGPtf
         OJiK+iPj56y0RCAK+ob7dp6nXgZ3ltSWEDh622sbPnZaW84lyIk05UjurnzJqesLDk6d
         vPLvhPEu3DfmmdWLQFRzfBhzLOwPJcwUIBXef3ZCi3Y4L3IWX4mbt6/k+LRSHorIiuyH
         sIojEVW/yGadbSSSAewpb7BH0hGeO+gAWOcE6vzVubpYUZnNwgqS3js2RozcSBykoe0t
         ZktL1uucYTAFcLCU2+yDPcPnzFwjomckUrKqEohCZZmQ8ixdbOV/ZWUaLY5wvivNoftN
         QIZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744042728; x=1744647528;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JX/CsfcApiydwjMPAUinCGMDhAd2IhhoMg3Tp/JQvVw=;
        b=liRHIHHpfoIxOk/YW5fWTuHhthojhT7IM3uoD6T6Yqtwx0HABBEPnGS6OuSec4ZFa7
         9zqTsPijvUrdI+F3ICRrMZ1SAPGasSbHyOctNXaxQSmE+yAupa0w0BgpL1TYo8fjLUZK
         OuOXdfvX0MFnAsGaTwiB4QWSAcaw0pFbBxGpijsn91b9xlOWqnh6V/4nhVosC/AKyMt4
         tsSfhl9LtZ1fbaqTJ0jUrRDasq4cJIhO7gv51/amyDwGmj6XQ+ts1jK0vHHmajqguItd
         BZfnO0nANW/n5cxShxJysydRVnqS6IDt4cBY/FoO0KnqWX0EqakOkZ/eTSPKqhy4pd0t
         PjFg==
X-Forwarded-Encrypted: i=1; AJvYcCWF7KJuWQDeYYNjTirEgNSypHElmyT48d6Xbjk10RVAx7n/c23Pp1NW41+RtfUoyMZO3LO3NUDCoMrEodSOEA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxb0sovjWbivZ4Ir8uUKzoABx7kK85X7WWIotJGTaUoH0Kle39m
	kAl7vFHEewvBcaPV9j7r07gbG+BD7q/nB0kjEPvKtK7CfB0aJrRGrFKPHbuJWCgho+qADvhjz4F
	3Yz9ayLxtzG5StNkTTDLrkvuXl1LZ4Ob/JCqwXA==
X-Gm-Gg: ASbGncsApvbBugQxiQg17hgbw+DsZVm7Wu0eZ1vbuifj9M9knxqnibqQgGE/eDb9Jw7
	jfJ81PfSPCBfFJSjVdaE9CZlE6Yfj8eOFF32qcuSZnkI+dCT17GF8Uzapa5jVm7X4LufMcuhcnP
	qVRQ8yj8WFThMTbaphZFRTzLD4uco=
X-Google-Smtp-Source: AGHT+IHKMX4Ob6QTTm80PFpdHe5OW6JJqpgeMbRrvzhWKoI17ZKitrO/G0aPEV6gKHvE71Av+QnfoRhbc/Xsg7bIvR4=
X-Received: by 2002:a05:690c:640b:b0:6fb:1c5a:80ea with SMTP id
 00721157ae682-703f42fc252mr178401657b3.32.1744042728667; Mon, 07 Apr 2025
 09:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-18-076be7171a85@kernel.org> <CAPDyKFrFRrPVJ_t0JrAE1VTbS02hwr=L-EHtqb7CQiWzB1MnQg@mail.gmail.com>
 <20250407-aloof-fox-of-relaxation-62963a@sudeepholla> <CAL_Jsq+6GG3j3_S94SYLwdGN7x8fjf5WuGL4uHfmgW-fFb=dKQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+6GG3j3_S94SYLwdGN7x8fjf5WuGL4uHfmgW-fFb=dKQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 7 Apr 2025 18:18:12 +0200
X-Gm-Features: ATxdqUF_J2qNh9UdMVJ6Dqqt88GUYfovrcMe53xm4tXJ8-94vrSIdDD4MBgiib8
Message-ID: <CAPDyKFpX7aqcme9c=TZ3JT_DssRatvXPFWSNN-3k5K8pUZvgeg@mail.gmail.com>
Subject: Re: [PATCH 18/19] dt-bindings: arm/cpus: Add power-domains constraints
To: Rob Herring <robh@kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, 
	zhouyanjie@wanyeetech.com, Conor Dooley <conor@kernel.org>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Steen Hegelund <Steen.Hegelund@microchip.com>, Daniel Machon <daniel.machon@microchip.com>, 
	UNGLinuxDriver@microchip.com, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org, 
	imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_091850_244427_E93F61CA 
X-CRM114-Status: GOOD (  18.91  )
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

T24gTW9uLCA3IEFwciAyMDI1IGF0IDE0OjQ5LCBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
PiB3cm90ZToKPgo+IE9uIE1vbiwgQXByIDcsIDIwMjUgYXQgNzozMOKAr0FNIFN1ZGVlcCBIb2xs
YSA8c3VkZWVwLmhvbGxhQGFybS5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIEZyaSwgQXByIDA0LCAy
MDI1IGF0IDEyOjM2OjMzUE0gKzAyMDAsIFVsZiBIYW5zc29uIHdyb3RlOgo+ID4gPiBPbiBGcmks
IDQgQXByIDIwMjUgYXQgMDU6MDYsIFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+
IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gVGhlICJwb3dlci1kb21haW5zIiBhbmQgInBvd2VyLWRv
bWFpbnMtbmFtZXMiIHByb3BlcnRpZXMgYXJlIG1pc3NpbmcgYW55Cj4gPiA+ID4gY29uc3RyYWlu
dHMuIEFkZCB0aGUgY29uc3RyYWludHMgYW5kIGRyb3AgdGhlIGdlbmVyaWMgZGVzY3JpcHRpb25z
Lgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhA
a2VybmVsLm9yZz4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9jcHVzLnlhbWwgfCA4ICsrLS0tLS0tCj4gPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPiA+ID4KPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jcHVzLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2NwdXMueWFtbAo+ID4gPiA+
IGluZGV4IDZmNzRlYmZkMzhkZi4uNWJkNTgyMmRiOGFmIDEwMDY0NAo+ID4gPiA+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vY3B1cy55YW1sCj4gPiA+ID4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jcHVzLnlhbWwKPiA+ID4g
PiBAQCAtMzEzLDE5ICszMTMsMTUgQEAgcHJvcGVydGllczoKPiA+ID4gPiAgICAgIG1heEl0ZW1z
OiAxCj4gPiA+ID4KPiA+ID4gPiAgICBwb3dlci1kb21haW5zOgo+ID4gPiA+IC0gICAgZGVzY3Jp
cHRpb246Cj4gPiA+ID4gLSAgICAgIExpc3Qgb2YgcGhhbmRsZXMgYW5kIFBNIGRvbWFpbiBzcGVj
aWZpZXJzLCBhcyBkZWZpbmVkIGJ5IGJpbmRpbmdzIG9mIHRoZQo+ID4gPiA+IC0gICAgICBQTSBk
b21haW4gcHJvdmlkZXIgKHNlZSBhbHNvIC4uL3Bvd2VyX2RvbWFpbi50eHQpLgo+ID4gPiA+ICsg
ICAgbWF4SXRlbXM6IDEKPiA+ID4KPiA+ID4gVGhlcmUgYXJlIG1vcmUgdGhhbiBvbmUgaW4gc29t
ZSBjYXNlcy4gVGhlIG1vc3QgaXMgcHJvYmFibHkgdGhyZWUsIEkgdGhpbmsuCj4gPiA+Cj4gPgo+
ID4gKzEsIHRoZXJlIGFyZSB1c2VycyB1c2luZyAicGVyZiIgYW5kICJwc2NpIiB0b2dldGhlciBu
b3cuCj4KPiBXaGVyZT8gVGhhdCdzIGp1c3Qgd3JvbmcuCgpGb3IgU0NNSSBmb3IgZXhhbXBsZSwg
YnV0IG90aGVyIFFDIHBsYXRmb3JtcyB1c2UgaXQgdG9vLgoKInBzY2kiIGlzIGZvciBDUFUgcG93
ZXIgbWFuYWdlbWVudCAtIHdlIGRpc2N1c3NlZCB0aGUgYmFkIG5hbWUgInBzY2kiCmJlZm9yZSwg
YnV0IGFzIGl0J3MgYWxyZWFkeSB3aWRlbHkgZGVwbG95ZWQgbWF5YmUgbGVhdmUgaXQgYXMgaXM/
IEEKYmV0dGVyIG5hbWUgd291bGQgYmUgInBvd2VyIiwgb3Igc29tZXRoaW5nIGFsb25nIHRob3Nl
IGxpbmVzLgoicGVyZiIgaXMgZm9yIENQVSBwZXJmb3JtYW5jZSBzY2FsaW5nLgoKS2luZCByZWdh
cmRzClVmZmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
