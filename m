Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE8D5C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 17:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naRln59hqpeivU6Ktcm5U37S/5b9kiSsd6bmBCk6/5c=; b=Jq5/lZG/YRA8Ik
	SF1Oi/Mp1p8Fjx7Vm2SZTms5FGol7pAdiFzrsaAX7KSyngAkKSfU6JBfMmYmDidH1o/YuyWawrxVO
	dKk9/H7gGh02peNzMgqz+zz/vcIyJPakQx2KYj5d1WKZHHkrVwllVXhGOcCJmxlMQyS1y0LziM5vt
	hje+En6GWmVXX1CHd/1XLnJnzfyrFoOhWACmDQTduQr23D8aKDdNReYrMVaO+hxtLCoVdAp8c5ofr
	lXGQZsne1f5qXbZ1lYm17s8bSi7J8VxNeuwD+dyF2PxGsnYRANUIh/lkf5KOvt09PwuPU9Vf4geRo
	p/rGHNx3SvBy4tYgJkag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQL5-00000009MPW-0gEJ;
	Mon, 15 Apr 2024 17:41:55 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQL0-00000009MNV-27nl
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Apr 2024 17:41:52 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so3249292276.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Apr 2024 10:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713202908; x=1713807708; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aYgIyvMvRWICpRScbQV/k/jY5uYOgDdkXOWDfquSjCo=;
        b=yH89h4plfAGlKxrhUQ/cpE3NHb/32pl/uve2n08K0b2x/RbovzF79MAo/+1zItJcT/
         YbdUNzZVF3mgMfzDmopD1zgbMel+thsduhmGyyPz2s5vJvlnhTwdNgA85bYmxOPmeDFM
         7AEj6HmOybe9PyPAIqirwHithSgBFZ7kt7JXK8F++0J1JRc1w+46+yjji2rs4jO8Srde
         EIv/RRgt+nA6Wk+9J6DRZZdBsiWQorLWqEgTyn/7bFfiTq/VzdcUkwsInGeFW9rPFgGl
         SzUp9qYUiSmIAjh18xl7lxefHC13GD3DQYIJr/fR3eITPKYExsD2MgyS7rhA00HqK81C
         0prQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713202908; x=1713807708;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aYgIyvMvRWICpRScbQV/k/jY5uYOgDdkXOWDfquSjCo=;
        b=a0SQSuhTY2WO7c/bSfZBfjCRA8LqdDlFDW8YuP46HBhYxQGR/PoWw4s3BPSnoa8non
         11w8pIBSnd1wJ18jYmCIFdV2/6NDiMTYKetJIs/pOozrRhS6qs9HSXuUvf55o7MhRjxw
         pIhJyTJzd2t0dG0RweVVerc5XgdzXItl3LHJW41Xc8a/uaphvMPXxfJYs8HpRvyHPWQD
         G+Iez3WFuIDuR/OIhbGfJwUAy28Ha4VX5X/xjTd3UWIkzOyohXuyl2uOnFnh7YdmEEZM
         n0iT3+eORPKUnejnxEoDlGFg4sZbkCTaT+/pdaR7EJtJ8vogflnTJujcRQ+cQZvqJGUF
         OVjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBkWYozd1T8jlhW3yT2xodAMu4w91eqUdR9iP5VygiyaXGlRF/SCDquNOEvoeIfTWkOA3E4NF2bx1eWzpHTkrEcfwcAC+RXKkt5QXYif6niIwC
X-Gm-Message-State: AOJu0Yy5PjHjqLMDlBoi4ca90UxVvS4UK1wSZwsCrz3EWr14WoJe1YET
	pnJs0Ocg+RalHOwbgeUjlSl/6vtpjuNdwm7pcMcwniaYIbYP+Hbr93B01qe6jTI3NvzYp447kax
	Jo1Z3eYGlIL+wexJAEmBuj1Sjatr6yQ3pucvT6Q==
X-Google-Smtp-Source: AGHT+IHKpNfr2TaUgVv6Ugvchn9mUOD77xP6+GIEtmI5RLKRLLZLr1EmobTo6CX82MQ9pJIWGNHcl6abRXCvRtZsfeM=
X-Received: by 2002:a25:80c6:0:b0:dcb:aa26:50fe with SMTP id
 c6-20020a2580c6000000b00dcbaa2650femr10533953ybm.15.1713202908173; Mon, 15
 Apr 2024 10:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20240412222857.3873079-1-robh@kernel.org> <Zh0vXinxy7woerJQ@hu-bjorande-lv.qualcomm.com>
 <CAA8EJpqL2T4bJZqtZ9KF=V2NLnFxUjouA6_Hu_H07DofifZaoQ@mail.gmail.com>
 <CAL_Jsq+q3OLEMT=d8=d9o1D9deKGQ5TAtZg_bgptDPQ1cWcctw@mail.gmail.com> <CAL_JsqKSz_WVTTi7+AgjgDzXAnAqaxXM3i2NUv93nZSpyuZK5g@mail.gmail.com>
In-Reply-To: <CAL_JsqKSz_WVTTi7+AgjgDzXAnAqaxXM3i2NUv93nZSpyuZK5g@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Apr 2024 20:41:36 +0300
Message-ID: <CAA8EJporYZBfDoN6m0Wu2wGqq=Y+TskNCguMOHtDAz05eXS6LA@mail.gmail.com>
Subject: Re: [PATCH] arm/arm64: dts: Drop "arm,armv8-pmuv3" compatible usage
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>, soc@kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Dinh Nguyen <dinguyen@kernel.org>, 
	Tsahee Zidenberg <tsahee@annapurnalabs.com>, Antoine Tenart <atenart@kernel.org>, 
	Khuong Dinh <khuong@os.amperecomputing.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Robert Richter <rric@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, "Paul J. Murphy" <paul.j.murphy@intel.com>, 
	Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Heiko Stuebner <heiko@sntech.de>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Jisheng Zhang <jszhang@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, linux-fsd@tesla.com, 
	Michal Simek <michal.simek@amd.com>, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-realtek-soc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_104150_554515_339C065F 
X-CRM114-Status: GOOD (  15.83  )
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

T24gTW9uLCAxNSBBcHIgMjAyNCBhdCAyMDoxNSwgUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4KPiBPbiBNb24sIEFwciAxNSwgMjAyNCBhdCAxMjowNeKAr1BNIFJvYiBIZXJy
aW5nIDxyb2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIE1vbiwgQXByIDE1LCAyMDI0
IGF0IDExOjUy4oCvQU0gRG1pdHJ5IEJhcnlzaGtvdgo+ID4gPGRtaXRyeS5iYXJ5c2hrb3ZAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIE1vbiwgMTUgQXByIDIwMjQgYXQgMTY6NDYs
IEJqb3JuIEFuZGVyc3NvbiA8cXVpY19iam9yYW5kZUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4gPiA+
ID4KPiA+ID4gPiBPbiBGcmksIEFwciAxMiwgMjAyNCBhdCAwNToyODo1MVBNIC0wNTAwLCBSb2Ig
SGVycmluZyB3cm90ZToKPiA+ID4gPiBbLi5dCj4gPiA+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3FjbTIyOTAuZHRzaSAgICAgICAgICAgICAgICB8IDIgKy0KPiA+ID4gPiA+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vcWR1MTAwMC5kdHNpICAgICAgICAgICAgICAgIHwgMiArLQo+
ID4gPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zZG02MzAuZHRzaSAgICAgICAgICAg
ICAgICAgfCAyICstCj4gPiA+ID4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NkeDc1LmR0
c2kgICAgICAgICAgICAgICAgICB8IDIgKy0KPiA+ID4gPgo+ID4gPiA+IEFja2VkLWJ5OiBCam9y
biBBbmRlcnNzb24gPGFuZGVyc3NvbkBrZXJuZWwub3JnPgo+ID4gPgo+ID4gPiBOb3RlLCB3ZSdk
IG5lZWQgdG8gb3ZlcnJpZGUgUE1VIGNvbXBhdGlibGVzIGluIHNkbTYzNi5kdHNpIGFuZAo+ID4g
PiBzZG02NjAuZHRzaS4gSWRlYWxseSBpdCBzaG91bGQgY29tZSBhcyB0aGUgc2FtZSBwYXRjaC4K
PiA+Cj4gPiBVaCwgdGhhdCdzIGFuIEEgZm9yIHJldXNlLCBidXQgYW4gRiBmb3IgcmVhZGFiaWxp
dHkuLi4gSXQncyBzZG02MzIgYXMKPiA+IHdlbGwuIFdpbGwgZHJvcCBzZG02MzAuCj4KPiBBY3R1
YWxseSwgYXJlbid0IHRob3NlIEtyeW8gY29yZXMganVzdCBDb3J0ZXgtQTUzIGRlcml2YXRpdmVz
PyBTbyB0aGUKPiBBNTMgUE1VIGNvbXBhdGlibGUgaXMgYW4gaW1wcm92ZW1lbnQgb3ZlciB0aGUg
Z2VuZXJpYyBvbmUgc3RpbGwuIFdlCj4gY2FuJ3QganVzdCBhZGQga3J5bzI2MC1wbXUgY29tcGF0
aWJsZXMgYmVjYXVzZSB0aGF0IGJyZWFrcwo+IGNvbXBhdGliaWxpdHkuIFdlIGNvdWxkIGhhdmUg
YSBmYWxsYmFjaywgYnV0IHRoZW4gdGhhdCBpbnRyb2R1Y2VzIGEKPiBwYXR0ZXJuIHdlIGRvbid0
IHdhbnQuCgpJIHRoaW5rIGl0IGlzIGJlbGlldmVkIHRoYXQgR29sZCBjb3JlcyBhcmUgQTczLWRl
cml2YXRpdmVzLgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
