Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB534C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 17:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xirAAHNYKs2IsmlvTq3R/bmgaH+hO9yIeycv4idfGGw=; b=iabUK8gtiJeC3K
	giGn5xGijUpF2mK7K4tvVUDKe8J+e4KJUa0D6Qaat8dtevggP/OqqcHzw8B9YPdNlFasURp4dm4O0
	s+PcNCYF4KC/f1zwZaB/SXwFRBQK/WjYINcaRzUFF3AOYgClGiy84mAwBJfjaVGXSbAbiZjm52sub
	BbbWBDp46t1Lg0RzS4ogPvLaM58Zwu8XifC9UJVxRlEyFAb8g8O6Xgvt++8tAV/nzSlHrfck05nlG
	VQDIqh/T+xSQpIDIml5Zb55ZPE2ci1pXyCmP8pJGokiEklLJsQHpLAc4+p5U5gJPwoDTnd26fJ8W3
	ckXOAy9AgFhBcUH9pwIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPo0-00000009Fqc-2yag;
	Mon, 15 Apr 2024 17:07:44 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPmQ-00000009Eaa-1VRG;
	Mon, 15 Apr 2024 17:06:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 43BD1CE0E50;
	Mon, 15 Apr 2024 17:06:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82539C113CC;
	Mon, 15 Apr 2024 17:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713200763;
	bh=4a9TlTGikPdPtvIswhMDPVXsOAtTJIQPwslpOZDf9fY=;
	h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
	b=envm3gPjZkPR25rFILSSoDGtvq58d0n5TS2Ogmxra3RmmqJOLqTClzNaQo60Rcy/8
	 axCfm2/V7ALzK2j+/+nve1rMfBSKxfrc/66w1h9SakHpGtRH39qBxvnQIWELc/JNt1
	 70y5d3MUtd06wenDYBRLLmN9O8hgIPdUs+/sO+G2y5beX4FDbqCiauXeAdrQXsfWnB
	 PckYPDZC66KLbwdVo1CdwHkuaE+chrIGFCZZCCb53eAm56qC0RIamfBj/CR5RSCwYK
	 oRbMjLRnnDWF2GpgqY32AMqlw6eI3R983vlkCtFSx5kVqwvNCfGp/PfehO9ZBJzbmk
	 asMALYe/CuGnA==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2da08b06e0dso37134861fa.2;
        Mon, 15 Apr 2024 10:06:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUVpXsvDO30RtIB5j/4Mq4QoLJLavQ/VDHBIzZrCmqbufSyyWE1fHY9tZ3Uy10itpbS39QHyfFRIiiWY5Xcq4VfgwH8tXvhipV39k+WS/9Ys81BS3rkwdWweyyTj7ZVwlhTpAwwZk6OfY6DWRubuPf3VzBHPF8FymQEqqwzsB9zvCtd/wGskFEKqHDYi8rbyoIWbDZvf19hUnWB4td5QI22olcDyjSYQ06Tw9GP3tlf/GajQt6rETZ8u51pr2eGckviUS4OUAD5B3Ga07V7fzJRJFDX2hYrW5s/vgnCDZLV8Qsxh+AKnUoq6w==
X-Gm-Message-State: AOJu0YyIzXmtXEXsJiHFvIEQSFohB6M3sW7yd2taN4bMLaz1BMJC6xb0
	++IhVs2xFkjKvQhvSS9hKYoasi7VipotpeiI4qGuflI2HxohTjnKWwbbIAZWExvQo5IZzgl5BPa
	maMsi95bmIJXGIyM7Db6g5luAGw==
X-Google-Smtp-Source: AGHT+IGj52gH0/Dg5INd/xZRyWwlGDPcfmpSpbX0KU82iJTE7+TtYLQcTn0dGxCxYIzg49fhJoCRFzAjpf+6SCkqXUk=
X-Received: by 2002:a2e:b0ef:0:b0:2da:320a:68d9 with SMTP id
 h15-20020a2eb0ef000000b002da320a68d9mr3627965ljl.13.1713200741392; Mon, 15
 Apr 2024 10:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <20240412222857.3873079-1-robh@kernel.org> <Zh0vXinxy7woerJQ@hu-bjorande-lv.qualcomm.com>
 <CAA8EJpqL2T4bJZqtZ9KF=V2NLnFxUjouA6_Hu_H07DofifZaoQ@mail.gmail.com>
In-Reply-To: <CAA8EJpqL2T4bJZqtZ9KF=V2NLnFxUjouA6_Hu_H07DofifZaoQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 15 Apr 2024 12:05:26 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+q3OLEMT=d8=d9o1D9deKGQ5TAtZg_bgptDPQ1cWcctw@mail.gmail.com>
Message-ID: <CAL_Jsq+q3OLEMT=d8=d9o1D9deKGQ5TAtZg_bgptDPQ1cWcctw@mail.gmail.com>
Subject: Re: [PATCH] arm/arm64: dts: Drop "arm,armv8-pmuv3" compatible usage
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
X-CRM114-CacheID: sfid-20240415_100606_861367_F6018C89 
X-CRM114-Status: GOOD (  10.95  )
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

T24gTW9uLCBBcHIgMTUsIDIwMjQgYXQgMTE6NTLigK9BTSBEbWl0cnkgQmFyeXNoa292CjxkbWl0
cnkuYmFyeXNoa292QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCAxNSBBcHIgMjAyNCBh
dCAxNjo0NiwgQmpvcm4gQW5kZXJzc29uIDxxdWljX2Jqb3JhbmRlQHF1aWNpbmMuY29tPiB3cm90
ZToKPiA+Cj4gPiBPbiBGcmksIEFwciAxMiwgMjAyNCBhdCAwNToyODo1MVBNIC0wNTAwLCBSb2Ig
SGVycmluZyB3cm90ZToKPiA+IFsuLl0KPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9x
Y20yMjkwLmR0c2kgICAgICAgICAgICAgICAgfCAyICstCj4gPiA+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vcWR1MTAwMC5kdHNpICAgICAgICAgICAgICAgIHwgMiArLQo+ID4gPiAgYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3NkbTYzMC5kdHNpICAgICAgICAgICAgICAgICB8IDIgKy0KPiA+
ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zZHg3NS5kdHNpICAgICAgICAgICAgICAgICAg
fCAyICstCj4gPgo+ID4gQWNrZWQtYnk6IEJqb3JuIEFuZGVyc3NvbiA8YW5kZXJzc29uQGtlcm5l
bC5vcmc+Cj4KPiBOb3RlLCB3ZSdkIG5lZWQgdG8gb3ZlcnJpZGUgUE1VIGNvbXBhdGlibGVzIGlu
IHNkbTYzNi5kdHNpIGFuZAo+IHNkbTY2MC5kdHNpLiBJZGVhbGx5IGl0IHNob3VsZCBjb21lIGFz
IHRoZSBzYW1lIHBhdGNoLgoKVWgsIHRoYXQncyBhbiBBIGZvciByZXVzZSwgYnV0IGFuIEYgZm9y
IHJlYWRhYmlsaXR5Li4uIEl0J3Mgc2RtNjMyIGFzCndlbGwuIFdpbGwgZHJvcCBzZG02MzAuCgpS
b2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
