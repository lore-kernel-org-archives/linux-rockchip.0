Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5649FC25B47
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Oct 2023 17:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5C/0XORZDyuIfRuPFzhd463ympRpf7gd6rCEjlZtrXU=; b=rxY0/VTXe4ySVl
	N2nTIf8aNDITZIclpWKe5pXyQRfX/tOty1KECpC45QNangrhk93CpToA7aJNBjFenV8Qdn6ITqDD8
	MdUar7ovaIZZt6gkGyDtvJJssa7ge7wu1s9AZ0E5LpP9neHgUnzjhenhQHbarvRrxFUHNIZhXkb6n
	/Mt9PyzlKgHqNEO5OeIhZXRWk7uCBS5uY6nOfjIj2SpzcLo6wSWSY0Edc6RM1FXY49260m10lHHv4
	ESG2QELCuhWVppVI9sEKZtfOmNmVj/po1QX793rKLeaEpfba89nsGqQmc3LNfT1ngiCsSWTVZwEwc
	ikPNHGodUDuWvWCiywVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qwQFB-00Go1p-2M;
	Fri, 27 Oct 2023 17:03:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qwQF8-00Go1K-14;
	Fri, 27 Oct 2023 17:03:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C126462924;
	Fri, 27 Oct 2023 17:03:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0204FC433CA;
	Fri, 27 Oct 2023 17:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698426209;
	bh=BfxsvhC4F9lgKCruOEQmZ10Exl7IYgbnsfHRmtm0NuY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=OpxFafWsVZ+deFU2cO2DlSnGVClbLbR7ulDy4qEtI9CWagcnrxC7Zi6Zlqo4096C7
	 gEPT7WMZtCw1+ejiIByjINtcant62lR6AXG4AWLUUpACJV52BJaePoJoSOIMpGyqDV
	 viJ8zql35rjy+7shtvnRzrJvlI0eCratoPEaUmH5GlEC4tT0K3m69yqiHiiaQyfAqD
	 mAjHySNjYep/Ps+vVRo2BKk+rSpnTRy3za88jj6//DqukIkuZAZx6r/XL89lno4mHg
	 dofQmRlf4hj2nMO9lXx4KB3rV2fP/cuADWcYwyl8nAIQSJG0GULCiJmu3DaywlMwcu
	 stFjaRBGsGGHg==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-507b96095abso3317837e87.3;
        Fri, 27 Oct 2023 10:03:28 -0700 (PDT)
X-Gm-Message-State: AOJu0Yz9o+pDxoPLs9Hi7CrIW9bCVF+4vbRE9U/a9AtaQJFZjdwbxnJ/
	Z2jMqHAtpI0p3IXnZMN86rZRKizyIrjMpisWjg==
X-Google-Smtp-Source: AGHT+IHJBBVNUhcAD3/MpN0+Oo67eI/jbR6jby2nErXAZsV4eVq8huXsTRKEm6EYfS7MX2n5YAd6TKWUQDnZ1WCgNX0=
X-Received: by 2002:a05:6512:2396:b0:503:343a:829f with SMTP id
 c22-20020a056512239600b00503343a829fmr3152037lfv.23.1698426207053; Fri, 27
 Oct 2023 10:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <20231027145422.40265-1-nks@flawful.org> <20231027145422.40265-2-nks@flawful.org>
 <CAL_JsqJh6aJb7_qsVnVNEABBg2utf0FPN+qYyOfsF2dAfZpd0w@mail.gmail.com> <ZTvh51PGCBhSjURY@x1-carbon>
In-Reply-To: <ZTvh51PGCBhSjURY@x1-carbon>
From: Rob Herring <robh@kernel.org>
Date: Fri, 27 Oct 2023 12:03:15 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKu9VxUrEbvyV0EFi-HhXstitu1sk0jQpbYqTDKY4N3=A@mail.gmail.com>
Message-ID: <CAL_JsqKu9VxUrEbvyV0EFi-HhXstitu1sk0jQpbYqTDKY4N3=A@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: PCI: dwc: rockchip: Add mandatory atu reg
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Niklas Cassel <nks@flawful.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Serge Semin <fancer.lancer@gmail.com>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231027_100330_475769_B6A77ABB 
X-CRM114-Status: GOOD (  19.38  )
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

T24gRnJpLCBPY3QgMjcsIDIwMjMgYXQgMTE6MTXigK9BTSBOaWtsYXMgQ2Fzc2VsIDxOaWtsYXMu
Q2Fzc2VsQHdkYy5jb20+IHdyb3RlOgo+Cj4gSGVsbG8gUm9iLAo+Cj4gT24gRnJpLCBPY3QgMjcs
IDIwMjMgYXQgMTA6NTg6MjhBTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBGcmks
IE9jdCAyNywgMjAyMyBhdCA5OjU24oCvQU0gTmlrbGFzIENhc3NlbCA8bmtzQGZsYXdmdWwub3Jn
PiB3cm90ZToKPiA+ID4KPiA+ID4gRnJvbTogTmlrbGFzIENhc3NlbCA8bmlrbGFzLmNhc3NlbEB3
ZGMuY29tPgo+ID4gPgo+ID4gPiBFdmVuIHRob3VnaCByb2NrY2hpcC1kdy1wY2llLnlhbWwgaW5o
ZXJpdHMgc25wcyxkdy1wY2llLnlhbWwKPiA+ID4gdXNpbmc6Cj4gPiA+Cj4gPiA+IGFsbE9mOgo+
ID4gPiAgIC0gJHJlZjogL3NjaGVtYXMvcGNpL3NucHMsZHctcGNpZS55YW1sIwo+ID4gPgo+ID4g
PiBhbmQgc25wcyxkdy1wY2llLnlhbWwgZG9lcyBoYXZlIHRoZSBhdHUgcmVnIGRlZmluZWQsIGlu
IG9yZGVyIHRvIGJlCj4gPiA+IGFibGUgdG8gdXNlIHRoaXMgcmVnLCB3aGlsZSBzdGlsbCBtYWtp
bmcgc3VyZSAnbWFrZSBDSEVDS19EVEJTPXknCj4gPiA+IHBhc3MsIHdlIG5lZWQgdG8gYWRkIHRo
aXMgcmVnIHRvIHJvY2tjaGlwLWR3LXBjaWUueWFtbC4KPiA+ID4KPiA+ID4gQWxsIGNvbXBhdGli
bGUgc3RyaW5ncyAocm9ja2NoaXAscmszNTY4LXBjaWUgYW5kIHJvY2tjaGlwLHJrMzU4OC1wY2ll
KQo+ID4gPiBzaG91bGQgaGF2ZSB0aGlzIHJlZy4KPiA+ID4KPiA+ID4gVGhlIHJlZ3MgaW4gdGhl
IGV4YW1wbGUgYXJlIHVwZGF0ZWQgdG8gYWN0dWFsbHkgbWF0Y2ggcGNpZTN4MiBvbiByazM1Njgu
Cj4gPgo+ID4gQnJlYWtpbmcgY29tcGF0aWJpbGl0eSBvbiB0aGVzZSBwbGF0Zm9ybXMgaXMgb2th
eSBiZWNhdXNlIC4uLj8KPgo+IEkgZG9uJ3QgZm9sbG93LCBjb3VsZCB5b3UgcGxlYXNlIGVsYWJv
cmF0ZT8KCkEgRFQgd2hpY2ggd2FzIHZhbGlkIHdpdGhvdXQgJ2F0dScgcmVnaW9uIGlzIG5vdyBu
b3QgdmFsaWQgd2l0aCB0aGlzCmNoYW5nZS4gSWYgSSdtIHJlYWRpbmcgdGhpcyBzY2hlbWEgd2l0
aCB0aGUgY2hhbmdlLCB0aGVuIG5vdCBoYXZpbmcKJ2F0dScgaXMgYW4gZXJyb3IgYW5kIHRoZSBP
UyBjYW4gdHJlYXQgaXQgYXMgYW4gZXJyb3IuIElmIGl0IGRvZXMsCnRoZW4gaXQgd291bGRuJ3Qg
d29yayB3aXRoIGV4aXN0aW5nIERUcy4gWW91IGNhbm5vdCBhZGQgbmV3IHJlcXVpcmVkCnByb3Bl
cnRpZXMgb3IgcmVxdWlyZWQgZW50cmllcy4KCklmIHlvdSBjYW4gc2F5IG5vIHVzZXJzIG9mIHRo
ZSBhZmZlY3RlZCBwbGF0Zm9ybXMgY2FyZSAoZS5nLiBvbmx5IHlvdQpoYXZlIGEgYm9hcmQpIG9y
IHRoZSBiaW5kaW5nIGlzIG5vdCB5ZXQgaW4gdXNlLCB0aGVuIGl0J3MgZmluZS4gQnV0CnlvdSBo
YXZlIHRvIHN0YXRlIHRoYXQganVzdGlmaWNhdGlvbi4gSSBzdXNwZWN0IHRoYXQgaXMgbm90IHRo
ZSBjYXNlCmhlcmUuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
