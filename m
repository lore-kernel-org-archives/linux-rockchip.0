Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D2DC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 16:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7iwugQsTeun0vOzgmSikhWOM37I0pYGkW+UrTGjKox4=; b=T7Cu45oDJ/Wto4
	/x80Tj9ouVdwwTpXiW0KLxXT76Ay53u5pKubLdjxKhyV0Mg3B456ONGm0zNTMTLh1moBjYWq3YyFY
	YmiJ7DGnT2CC3E+zFIjj3aKBavmCuv0KTAP+3i4Mm0B6x2DFfjxi+Z/8G5+4G0u0EOmPTwGiZuv6p
	Fle3jZ0Byzap34UUct7/5Iv+K1GN5jBtv3xRzBns8QvP827MMKJ8vdsurg28j7lh9IEIAQZAqNNFa
	AaeIGQh1m8ohoQvRxLdsiouv9ynqYlNQW2+SwrFEIW9v0d5LDSUIduJkTkVHsrgckOUweYONMlCG0
	zZo92lMoso24QzJFYCig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rux19-0000000Cyyv-2fJf;
	Thu, 11 Apr 2024 16:11:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rux15-0000000CyxM-0pHc;
	Thu, 11 Apr 2024 16:11:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 896A760341;
	Thu, 11 Apr 2024 16:11:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 001FEC072AA;
	Thu, 11 Apr 2024 16:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712851870;
	bh=Co3kGhkNsPgacB/pabyCsenR+0gNcn0apDUzg988VHA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=rvm0S2oJrwiPhJs3eMOF4f2WjbhaHXPCHhoQzlhlvGzTckM5NUJlGvZE//UJTbZuk
	 7mUvnId3dLSEO383sQdQGizvtxlqOjpE6LHUGEUzOLcvm2FFMA5/b/WtwmbW9OxU3t
	 vraPDqamiI8esjKLmEPlXpKeb3GokCNr0IyDHPJwJEbgyjnyrMewIrl/lr5uw3SXYu
	 ufts0B5MaTMqZx4inTcApZhjiikn03+zpnbGKAZYEpPL3yc3b4UbwWwc/biOcTK9tx
	 O2EDKKXK1jYU6zNUiteXtEM8WNQ9P2BCMa9UpGqUhrAINiWUMdVs8dvmVCMdMSalCs
	 JbWrghBBIpbBg==
Date: Thu, 11 Apr 2024 11:11:08 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Will Deacon <will@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Michal Simek <michal.simek@amd.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Kettenis <kettenis@openbsd.org>,
	Tom Joseph <tjoseph@cadence.com>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/4] dt-bindings: PCI: mediatek,mt7621: add missing
 child node reg
Message-ID: <20240411161108.GA2184354@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240411142107.GA3537062-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_091111_363486_152FFC04 
X-CRM114-Status: GOOD (  29.09  )
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

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMDk6MjE6MDdBTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMDc6Mzk6MTdBTSAtMDUwMCwgQmpvcm4gSGVs
Z2FhcyB3cm90ZToKPiA+IE9uIFRodSwgQXByIDExLCAyMDI0IGF0IDA4OjEzOjE4QU0gKzAyMDAs
IFNlcmdpbyBQYXJhY3VlbGxvcyB3cm90ZToKPiA+ID4gT24gVGh1LCBBcHIgMTEsIDIwMjQgYXQg
ODowMeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPiA+ID4gPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+ID4gT24gMTAvMDQvMjAyNCAyMzoyNiwgQmpvcm4gSGVs
Z2FhcyB3cm90ZToKPiA+ID4gPiA+IE9uIFdlZCwgQXByIDEwLCAyMDI0IGF0IDA4OjE1OjE5UE0g
KzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiA+ID4gPj4gTVQ3NjIxIFBDSSBo
b3N0IGJyaWRnZSBoYXMgY2hpbGRyZW4gd2hpY2ggYXBwYXJlbnRseSBhcmUgYWxzbyBQQ0kgaG9z
dAo+ID4gPiA+ID4+IGJyaWRnZXMsIGF0IGxlYXN0IHRoYXQncyB3aGF0IHRoZSBiaW5kaW5nIHN1
Z2dlc3QuCj4gPiA+ID4gPgo+ID4gPiA+ID4gV2hhdCBkb2VzIGl0IGV2ZW4gbWVhbiBmb3IgYSBQ
Q0kgaG9zdCBicmlkZ2UgdG8gaGF2ZSBhIGNoaWxkIHRoYXQgaXMKPiA+ID4gPiA+IGFsc28gYSBQ
Q0kgaG9zdCBicmlkZ2U/Cj4gCj4gSXQgc2hvdWxkIHNheSAncm9vdCBwb3J0JyBpbnN0ZWFkIGFz
IHRoZSBiaW5kaW5nIGRlc2NyaXB0aW9uIGNvcnJlY3RseSAKPiBzYXlzLgoKT0ssIHRoYXQgbWFr
ZXMgYSBsb3QgbW9yZSBzZW5zZSwgYW5kIHdlIHNob3VsZCBmaXggdGhlIGNvbW1pdCBsb2cuCgo+
ID4gPiA+IEkgdGhpbmsgdGhlIHF1ZXN0aW9uIHNob3VsZCBiZSB0b3dhcmRzIE1lZGlhdGVrIGZv
bGtzLiBJIGRvbid0IGtub3cgd2hhdAo+ID4gPiA+IHRoaXMgaGFyZHdhcmUgaXMgZXhhY3RseSwg
anVzdCBsb29rcyBsaWtlIHBjaS1wY2ktYnJpZGdlLiBUaGUgZHJpdmVyCj4gPiA+ID4gY2FsbHMg
dGhlIGNoaWxkcmVuIGhvc3QgYnJpZGdlcyBhcyAicG9ydHMiLgo+ID4gPiAKPiA+ID4gWW91IGNh
biBzZWUgdGhlIHRvcG9sb2d5IGhlcmUgaW4gbXkgZmlyc3QgZHJpdmVyIHN1Ym1pdCBjb3ZlciBs
ZXR0ZXIKPiA+ID4gbWVzc2FnZSBbMF0uCj4gPiA+IAo+ID4gPiAgWzBdOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvQ0FNaHMtSC1CQStLekV3dURQemNtckRQZGdKQkZBMlhkWVRCdlQ0UjRN
RU9VQj1XUTFnQG1haWwuZ21haWwuY29tL3QvCj4gPiAKPiA+IE5vdGhpbmcgdW51c3VhbCBoZXJl
LCB0aGlzIGxvb2tzIGxpa2UgdGhlIHN0YW5kYXJkIFBDSWUgdG9wb2xvZ3kuCj4gPiAKPiA+IFdo
YXQgKm1pZ2h0KiBiZSB1bnVzdWFsIGlzIGRlc2NyaWJpbmcgdGhlIFJvb3QgUG9ydHMgaW4gRFQu
ICBTaW5jZQo+ID4gdGhleSBhcmUgc3RhbmRhcmQgUENJIGRldmljZXMsIHRoZXkgc2hvdWxkbid0
IG5lZWQgRFQgZGVzY3JpcHRpb24KPiA+IHVubGVzcyB0aGVyZSdzIHNvbWUgdW51c3VhbCBwb3dl
ci9jbG9jay9yZXNldCBjb250cm9sIG9yIHNvbWV0aGluZwo+ID4gdGhhdCBpcyBub3QgZGlzY292
ZXJhYmxlIHZpYSBQQ0kgZW51bWVyYXRpb24uCj4gCj4gSXQncyBvbmx5IHVudXN1YWwgYmVjYXVz
ZSB0eXBpY2FsbHkgdGhlcmUncyBvbmx5IDEgUlAgcGVyIGhvc3QgYnJpZGdlIAo+IGFuZCBwcm9w
ZXJ0aWVzIHdoaWNoIHJlYWxseSBhcHBseSB0byB0aGUgUlAgZ2V0IHN0dWNrIGluIHRoZSBob3N0
IGJyaWRnZSAKPiBub2RlIGJlY2F1c2Ugd2UgZG9uJ3QgaGF2ZSBhIFJQIG5vZGUuIEFuIGV4YW1w
bGUgaXMgcGVyc3QtZ3Bpb3MuIFRoYXQncyAKPiBub3QgYSBwcm9wZXJ0eSBvZiB0aGUgUlAgZWl0
aGVyLCBidXQgdGhlIFJQIGlzIHRoZSB1cHN0cmVhbSBzaWRlIG9mIGEgCj4gc2xvdCBhbmQgd2Ug
b2Z0ZW4gZG9uJ3QgaGF2ZSBhIG5vZGUgZm9yIHRoZSBkZXZpY2UgZWl0aGVyLgoKTWFrZXMgc2Vu
c2UuCgpJJ20gc3RpbGwgY29uZnVzZWQgYWJvdXQgb25lIHRoaW5nLCBtYXliZSBqdXN0IGJlY2F1
c2UgSSBkb24ndCByZWFsbHkKa25vdyBob3cgdG8gcmVhZCB0aGVzZSBiaW5kaW5ncy4gIFRoZSBi
aW5kaW5nIG5vdyBsb29rcyBsaWtlIHRoaXM6CgogIHByb3BlcnRpZXM6CiAgICBjb21wYXRpYmxl
OgogICAgICBjb25zdDogbWVkaWF0ZWssbXQ3NjIxLXBjaQoKICAgIHJlZzoKICAgICAgaXRlbXM6
CiAgICAgICAgLSBkZXNjcmlwdGlvbjogaG9zdC1wY2kgYnJpZGdlIHJlZ2lzdGVycwogICAgICAg
IC0gZGVzY3JpcHRpb246IHBjaWUgcG9ydCAwIFJDIGNvbnRyb2wgcmVnaXN0ZXJzICAgICAgICMg
QQogICAgICAgIC0gZGVzY3JpcHRpb246IHBjaWUgcG9ydCAxIFJDIGNvbnRyb2wgcmVnaXN0ZXJz
ICAgICAgICMgQQogICAgICAgIC0gZGVzY3JpcHRpb246IHBjaWUgcG9ydCAyIFJDIGNvbnRyb2wg
cmVnaXN0ZXJzICAgICAgICMgQQoKICBwYXR0ZXJuUHJvcGVydGllczoKICAgICdecGNpZUBbMC0y
XSwwJCc6CiAgICAgIHR5cGU6IG9iamVjdAogICAgICAkcmVmOiAvc2NoZW1hcy9wY2kvcGNpLXBj
aS1icmlkZ2UueWFtbCMKCiAgICAgIHByb3BlcnRpZXM6CiAgICAgICAgcmVnOiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIyBCCiAgICAgICAgICBtYXhJ
dGVtczogMQoKSXQgbG9va3MgbGlrZSB0aGUgIkEiIGl0ZW1zIGFyZSBzZXBhcmF0ZSB0aGluZ3Mg
ZnJvbSB0aGUgIkIiIGl0ZW1zPwoKQnV0IEkgdGhpbmsgdGhlIHJlbGV2YW50IGNvZGUgaXMgaGVy
ZToKCiAgbXQ3NjIxX3BjaWVfcHJvYmUKICAgIG10NzYyMV9wY2llX3BhcnNlX2R0CiAgICAgIHBj
aWUtPmJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCkgICAgICAg
ICAgICAgIyAxCiAgICAgIGZvcl9lYWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKG5vZGUsIGNo
aWxkKQogICAgICAgIG10NzYyMV9wY2llX3BhcnNlX3BvcnQKICAgICAgICAgIHBvcnQtPmJhc2Ug
PSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgc2xvdCArIDEpICAjIDIKCndo
ZXJlIGl0IGxvb2tzIGxpa2UgYm90aCAiMSIgYW5kICIyIiB1c2UgdGhlIGl0ZW1zIGluIHRoZSAi
QSIgbGlzdCwKaS5lLiwgcmVzb3VyY2VzIDAsIDEsIDIsIDMsIGFsbCBmcm9tIHRoZSBzYW1lIHBs
YXRmb3JtIGRldmljZS4gIElzCnRoZXJlIGNvZGUgdGhhdCB1c2VzIHRoZSAiQiIgaXRlbSB0aGF0
IHRoaXMgcGF0Y2ggYWRkcz8KCkJqb3JuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
