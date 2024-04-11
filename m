Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D204C001CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 17:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FW2YKl2Oo4/mI5YkoVJI4r2x5CxOUfxB2XnxP9khE9o=; b=bk8t1ml5qtp+h0
	Q0B1o/ptMQx08+VH7auLxObt0m8tGv6OBlMqjWg0ZCBC+UHbL826eqIoFdS5+1gs7KI/nnWErQpDv
	4oOt75+zFRkwwzOs68xqyvUTrtVEjTZo2pPIlXFIA375bpFNClqx5E0t+QIJc3vcj6V1ef0XpmVbv
	kj4MgfM2FPJ+jGI6I2c12pdBe12eCFte7hCcrIuqEWoPivzygTLrrKGE28x+ke6G/fA/bWcRXdcvt
	TsyDCAQdT4hFNrj33LGEiRqWCyWtFBZTYfJiVNExctqjF+UByYuosqPGT1uNb5SfN+nhra+ETNoV8
	tprYryDA+drZ0KrkPRuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruyQo-0000000DS8h-17VW;
	Thu, 11 Apr 2024 17:41:50 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruyQj-0000000DS67-10AA;
	Thu, 11 Apr 2024 17:41:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2531FCE1BB4;
	Thu, 11 Apr 2024 17:41:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61D7BC2BBFC;
	Thu, 11 Apr 2024 17:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712857302;
	bh=DoJYSiMJhYT9Zt6gL2BrmpCKBnw00cmz4PnYnC16w5w=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=D57Dm9naJovNyxjN+f4aK9UEhia+7xBZ5MkhbWxsEKsouoD9VR5HyxJ5oTVAWHCjb
	 dtJXrqqBbam7Ebzp9GS7S90fyxedAGal4WgfiO7sOcXo5myFf7hNnj0B/EH10Jxhsz
	 8TiWXIpMKl7BCob/OsWv+skUeQDl/S0KYW0Vr/5EuGpJ16JCqcWzxaUvuHKJ9XUbbi
	 CSENDnGpBt9rbplij+sVAGrhpZAtha0txZMtw6gUe8PkUKXdOJXiNbJsYo2NDTOcQL
	 Y6PMOlqq3rqEDmXL2M0h33mpmxiQYTqjK5SqIn+kAlSm5TTPnngLQiq4aeZWDOr0eP
	 I7UAhbLSYWkLg==
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-343d7ff2350so8129f8f.0;
        Thu, 11 Apr 2024 10:41:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXW5vmeXt+DXJMfqq8V5cVXdltnWUjMrxKgm3R1yQz1KTCfR+yyO/pvrmiR0H7I0Xs5MZkn7nUaGyyB/FLsJ49JUnmOFCm/0bWSZhTOMjMExUoOFpNdiFVk5cW3eQ139u2cszc8hDQK6iIJFOH52SsxLT/p53YZy94pzb4Jp+ya0/XD+fwB/6puMmvkai8OCcK0be/Ms/MvwWz7okmgGV9OEv0B4kj6gcuToZyhediXLSY2GGBIfn7pjsQUUkDP2BOxyw==
X-Gm-Message-State: AOJu0YyGF2A4eFE1MHBD5CigUCq2Qi+GvTPN1CdtZuY+j/j3MrRTzuiW
	KgK+4t0EUV6PDTBEvgX2Ek3BKuWYeT2f365uYdRkx25gKh7KpEtyVzaYrw0is59vmSXFd3dWXVW
	eHpBoI3CKG6D7a2FAgSevRYvE5A==
X-Google-Smtp-Source: AGHT+IGTYTnd27cZwUZ7kXUf6/DQ0pj9531II4F7GuikLZRsZ/ZfHrcFFNL5HrA9aNOfAtjGuv7mboSXH/hsVf3pPeQ=
X-Received: by 2002:a19:f60a:0:b0:517:535b:9f2d with SMTP id
 x10-20020a19f60a000000b00517535b9f2dmr231054lfe.25.1712857280506; Thu, 11 Apr
 2024 10:41:20 -0700 (PDT)
MIME-Version: 1.0
References: <20240411142107.GA3537062-robh@kernel.org> <20240411161108.GA2184354@bhelgaas>
In-Reply-To: <20240411161108.GA2184354@bhelgaas>
From: Rob Herring <robh@kernel.org>
Date: Thu, 11 Apr 2024 12:41:07 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKaJR9v=EEwm=rGf-XtXhhSd4_U2FUJoCoN_mcvPBtPBA@mail.gmail.com>
Message-ID: <CAL_JsqKaJR9v=EEwm=rGf-XtXhhSd4_U2FUJoCoN_mcvPBtPBA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: PCI: mediatek,mt7621: add missing
 child node reg
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Sergio Paracuellos <sergio.paracuellos@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Jim Quinlan <jim2101024@gmail.com>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Will Deacon <will@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Srikanth Thokala <srikanth.thokala@intel.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Marek Vasut <marek.vasut+renesas@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>, Michal Simek <michal.simek@amd.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Mark Kettenis <kettenis@openbsd.org>, 
	Tom Joseph <tjoseph@cadence.com>, Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_104145_674074_CF37E7A8 
X-CRM114-Status: GOOD (  33.92  )
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

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMTE6MTHigK9BTSBCam9ybiBIZWxnYWFzIDxoZWxnYWFz
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMDk6MjE6MDdB
TSAtMDUwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBUaHUsIEFwciAxMSwgMjAyNCBhdCAw
NzozOToxN0FNIC0wNTAwLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiBPbiBUaHUsIEFwciAx
MSwgMjAyNCBhdCAwODoxMzoxOEFNICswMjAwLCBTZXJnaW8gUGFyYWN1ZWxsb3Mgd3JvdGU6Cj4g
PiA+ID4gT24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgODowMeKAr0FNIEtyenlzenRvZiBLb3psb3dz
a2kKPiA+ID4gPiA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4g
PiA+IE9uIDEwLzA0LzIwMjQgMjM6MjYsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiA+ID4gPiA+
IE9uIFdlZCwgQXByIDEwLCAyMDI0IGF0IDA4OjE1OjE5UE0gKzAyMDAsIEtyenlzenRvZiBLb3ps
b3dza2kgd3JvdGU6Cj4gPiA+ID4gPiA+PiBNVDc2MjEgUENJIGhvc3QgYnJpZGdlIGhhcyBjaGls
ZHJlbiB3aGljaCBhcHBhcmVudGx5IGFyZSBhbHNvIFBDSSBob3N0Cj4gPiA+ID4gPiA+PiBicmlk
Z2VzLCBhdCBsZWFzdCB0aGF0J3Mgd2hhdCB0aGUgYmluZGluZyBzdWdnZXN0Lgo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiBXaGF0IGRvZXMgaXQgZXZlbiBtZWFuIGZvciBhIFBDSSBob3N0IGJyaWRn
ZSB0byBoYXZlIGEgY2hpbGQgdGhhdCBpcwo+ID4gPiA+ID4gPiBhbHNvIGEgUENJIGhvc3QgYnJp
ZGdlPwo+ID4KPiA+IEl0IHNob3VsZCBzYXkgJ3Jvb3QgcG9ydCcgaW5zdGVhZCBhcyB0aGUgYmlu
ZGluZyBkZXNjcmlwdGlvbiBjb3JyZWN0bHkKPiA+IHNheXMuCj4KPiBPSywgdGhhdCBtYWtlcyBh
IGxvdCBtb3JlIHNlbnNlLCBhbmQgd2Ugc2hvdWxkIGZpeCB0aGUgY29tbWl0IGxvZy4KPgo+ID4g
PiA+ID4gSSB0aGluayB0aGUgcXVlc3Rpb24gc2hvdWxkIGJlIHRvd2FyZHMgTWVkaWF0ZWsgZm9s
a3MuIEkgZG9uJ3Qga25vdyB3aGF0Cj4gPiA+ID4gPiB0aGlzIGhhcmR3YXJlIGlzIGV4YWN0bHks
IGp1c3QgbG9va3MgbGlrZSBwY2ktcGNpLWJyaWRnZS4gVGhlIGRyaXZlcgo+ID4gPiA+ID4gY2Fs
bHMgdGhlIGNoaWxkcmVuIGhvc3QgYnJpZGdlcyBhcyAicG9ydHMiLgo+ID4gPiA+Cj4gPiA+ID4g
WW91IGNhbiBzZWUgdGhlIHRvcG9sb2d5IGhlcmUgaW4gbXkgZmlyc3QgZHJpdmVyIHN1Ym1pdCBj
b3ZlciBsZXR0ZXIKPiA+ID4gPiBtZXNzYWdlIFswXS4KPiA+ID4gPgo+ID4gPiA+ICBbMF06IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQU1ocy1ILUJBK0t6RXd1RFB6Y21yRFBkZ0pCRkEy
WGRZVEJ2VDRSNE1FT1VCPVdRMWdAbWFpbC5nbWFpbC5jb20vdC8KPiA+ID4KPiA+ID4gTm90aGlu
ZyB1bnVzdWFsIGhlcmUsIHRoaXMgbG9va3MgbGlrZSB0aGUgc3RhbmRhcmQgUENJZSB0b3BvbG9n
eS4KPiA+ID4KPiA+ID4gV2hhdCAqbWlnaHQqIGJlIHVudXN1YWwgaXMgZGVzY3JpYmluZyB0aGUg
Um9vdCBQb3J0cyBpbiBEVC4gIFNpbmNlCj4gPiA+IHRoZXkgYXJlIHN0YW5kYXJkIFBDSSBkZXZp
Y2VzLCB0aGV5IHNob3VsZG4ndCBuZWVkIERUIGRlc2NyaXB0aW9uCj4gPiA+IHVubGVzcyB0aGVy
ZSdzIHNvbWUgdW51c3VhbCBwb3dlci9jbG9jay9yZXNldCBjb250cm9sIG9yIHNvbWV0aGluZwo+
ID4gPiB0aGF0IGlzIG5vdCBkaXNjb3ZlcmFibGUgdmlhIFBDSSBlbnVtZXJhdGlvbi4KPiA+Cj4g
PiBJdCdzIG9ubHkgdW51c3VhbCBiZWNhdXNlIHR5cGljYWxseSB0aGVyZSdzIG9ubHkgMSBSUCBw
ZXIgaG9zdCBicmlkZ2UKPiA+IGFuZCBwcm9wZXJ0aWVzIHdoaWNoIHJlYWxseSBhcHBseSB0byB0
aGUgUlAgZ2V0IHN0dWNrIGluIHRoZSBob3N0IGJyaWRnZQo+ID4gbm9kZSBiZWNhdXNlIHdlIGRv
bid0IGhhdmUgYSBSUCBub2RlLiBBbiBleGFtcGxlIGlzIHBlcnN0LWdwaW9zLiBUaGF0J3MKPiA+
IG5vdCBhIHByb3BlcnR5IG9mIHRoZSBSUCBlaXRoZXIsIGJ1dCB0aGUgUlAgaXMgdGhlIHVwc3Ry
ZWFtIHNpZGUgb2YgYQo+ID4gc2xvdCBhbmQgd2Ugb2Z0ZW4gZG9uJ3QgaGF2ZSBhIG5vZGUgZm9y
IHRoZSBkZXZpY2UgZWl0aGVyLgo+Cj4gTWFrZXMgc2Vuc2UuCj4KPiBJJ20gc3RpbGwgY29uZnVz
ZWQgYWJvdXQgb25lIHRoaW5nLCBtYXliZSBqdXN0IGJlY2F1c2UgSSBkb24ndCByZWFsbHkKPiBr
bm93IGhvdyB0byByZWFkIHRoZXNlIGJpbmRpbmdzLiAgVGhlIGJpbmRpbmcgbm93IGxvb2tzIGxp
a2UgdGhpczoKPgo+ICAgcHJvcGVydGllczoKPiAgICAgY29tcGF0aWJsZToKPiAgICAgICBjb25z
dDogbWVkaWF0ZWssbXQ3NjIxLXBjaQo+Cj4gICAgIHJlZzoKPiAgICAgICBpdGVtczoKPiAgICAg
ICAgIC0gZGVzY3JpcHRpb246IGhvc3QtcGNpIGJyaWRnZSByZWdpc3RlcnMKPiAgICAgICAgIC0g
ZGVzY3JpcHRpb246IHBjaWUgcG9ydCAwIFJDIGNvbnRyb2wgcmVnaXN0ZXJzICAgICAgICMgQQo+
ICAgICAgICAgLSBkZXNjcmlwdGlvbjogcGNpZSBwb3J0IDEgUkMgY29udHJvbCByZWdpc3RlcnMg
ICAgICAgIyBBCj4gICAgICAgICAtIGRlc2NyaXB0aW9uOiBwY2llIHBvcnQgMiBSQyBjb250cm9s
IHJlZ2lzdGVycyAgICAgICAjIEEKPgo+ICAgcGF0dGVyblByb3BlcnRpZXM6Cj4gICAgICdecGNp
ZUBbMC0yXSwwJCc6Cj4gICAgICAgdHlwZTogb2JqZWN0Cj4gICAgICAgJHJlZjogL3NjaGVtYXMv
cGNpL3BjaS1wY2ktYnJpZGdlLnlhbWwjCj4KPiAgICAgICBwcm9wZXJ0aWVzOgo+ICAgICAgICAg
cmVnOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIyBC
Cj4gICAgICAgICAgIG1heEl0ZW1zOiAxCj4KPiBJdCBsb29rcyBsaWtlIHRoZSAiQSIgaXRlbXMg
YXJlIHNlcGFyYXRlIHRoaW5ncyBmcm9tIHRoZSAiQiIgaXRlbXM/Cj4KPiBCdXQgSSB0aGluayB0
aGUgcmVsZXZhbnQgY29kZSBpcyBoZXJlOgo+Cj4gICBtdDc2MjFfcGNpZV9wcm9iZQo+ICAgICBt
dDc2MjFfcGNpZV9wYXJzZV9kdAo+ICAgICAgIHBjaWUtPmJhc2UgPSBkZXZtX3BsYXRmb3JtX2lv
cmVtYXBfcmVzb3VyY2UocGRldiwgMCkgICAgICAgICAgICAgIyAxCj4gICAgICAgZm9yX2VhY2hf
YXZhaWxhYmxlX2NoaWxkX29mX25vZGUobm9kZSwgY2hpbGQpCj4gICAgICAgICBtdDc2MjFfcGNp
ZV9wYXJzZV9wb3J0Cj4gICAgICAgICAgIHBvcnQtPmJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVt
YXBfcmVzb3VyY2UocGRldiwgc2xvdCArIDEpICAjIDIKPgo+IHdoZXJlIGl0IGxvb2tzIGxpa2Ug
Ym90aCAiMSIgYW5kICIyIiB1c2UgdGhlIGl0ZW1zIGluIHRoZSAiQSIgbGlzdCwKPiBpLmUuLCBy
ZXNvdXJjZXMgMCwgMSwgMiwgMywgYWxsIGZyb20gdGhlIHNhbWUgcGxhdGZvcm0gZGV2aWNlLiAg
SXMKPiB0aGVyZSBjb2RlIHRoYXQgdXNlcyB0aGUgIkIiIGl0ZW0gdGhhdCB0aGlzIHBhdGNoIGFk
ZHM/CgpUaGUgQSBpdGVtcyBhcmUgaW4gdGhlIGhvc3QgYWRkcmVzcyBzcGFjZS4gVGhlIEIgaXRl
bSBpcyBhIFBDSQphZGRyZXNzLiBTcGVjaWZpY2FsbHksIGZvciBQQ0kgZGV2aWNlcywgdGhlIGZp
cnN0IGVudHJ5IGlzIGNvbmZpZwpzcGFjZSB3aXRoIGp1c3QgdGhlIGRldmljZSBhbmQgZnVuY3Rp
b24gKGRldmZuKS4gVGhlIGZvcm1hdCBpcyBkZWZpbmVkCmluIHRoZSBPcGVuRmlybXdhcmUgUENJ
IGJ1cyBzdXBwbGVtZW50LgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
