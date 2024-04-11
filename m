Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CE15CD128A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 12:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=WzUO8wpTW3livzVY2QIK1G+G/En+2fQTCYkEhxtwmtA=; b=OxeZujpUzQRVRt
	3XNn8+tFWL/2ZgU1nIBy8+xJGdJf5jWRIJV47EzUA5Pos5OsIiB/W22iH9cNy5nmGl5AO2zFQViJS
	sG1aFlkjU+l4xD8OOl3hqpvDBMOKBJz0Nr7yFs1VxXt6a9NZ9KAOBTdt2A2lWvnCe03WLHWnWa1KX
	Y3n+PaILrWxnes7owVs86yEt9YsUy9bc7VqU9W0hemEMPs0QkN2IsVryfYbWgF9YLSkr0ELO8Rd7U
	h9+ww2pz6UFIP7B/wh1cBPgsbxjhE+Cf5HlQXDW1JA0KOSsswspmCfrRouLtKFURtr7XHU3PE00bk
	CYXdE5xO05PjECeFsJgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rutiA-0000000Byra-2Ata;
	Thu, 11 Apr 2024 12:39:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruti5-0000000Bypv-0F1T;
	Thu, 11 Apr 2024 12:39:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AC6DC61E18;
	Thu, 11 Apr 2024 12:39:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 100DCC433C7;
	Thu, 11 Apr 2024 12:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712839159;
	bh=kzcjv8gmNpZtAiYk2xJYEcr+JLyXL9rAALV5gNvHuVM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=WfwX59yMLWiCJvrRPA5bcIh6V0ewqtK6+e8oYkw9Dpoq3tHpVf4o0lLaA6was3uLL
	 poLPAXCuUuzNI1uiV3b2Q62RyMZ3WzJ5+GToGIQMOLDEguO9loiBfEgEtpX4BFgMzf
	 FU6ZSQHaxXNHYs3JTveKjTqmhKYlljX8L9atvgPqGTmmyQDxgNq4gpiYnOONkrp7kQ
	 L4+eQ5V5ns8mjSLTCH5YE4SSeyTIQccryVcGAIDQSDXPXIZeZaCtAKVEzoZ1udf+pg
	 rdkeoBVwA/A+uPcr7jKvO+gXrpMBRtCml7FwSgLPe+562zKqgDJ0NQITP2HpMoNETh
	 jVcjb8HkraS+g==
Date: Thu, 11 Apr 2024 07:39:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
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
Message-ID: <20240411123917.GA2180141@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMhs-H82Ymc=isxu6AX4_s1QnNpSSNt74--ED1j7JxpzE=eCRg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_053921_227556_112FF69F 
X-CRM114-Status: GOOD (  22.91  )
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

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMDg6MTM6MThBTSArMDIwMCwgU2VyZ2lvIFBhcmFjdWVs
bG9zIHdyb3RlOgo+IE9uIFRodSwgQXByIDExLCAyMDI0IGF0IDg6MDHigK9BTSBLcnp5c3p0b2Yg
S296bG93c2tpCj4gPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiBP
biAxMC8wNC8yMDI0IDIzOjI2LCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiBPbiBXZWQsIEFw
ciAxMCwgMjAyNCBhdCAwODoxNToxOVBNICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3Rl
Ogo+ID4gPj4gTVQ3NjIxIFBDSSBob3N0IGJyaWRnZSBoYXMgY2hpbGRyZW4gd2hpY2ggYXBwYXJl
bnRseSBhcmUgYWxzbyBQQ0kgaG9zdAo+ID4gPj4gYnJpZGdlcywgYXQgbGVhc3QgdGhhdCdzIHdo
YXQgdGhlIGJpbmRpbmcgc3VnZ2VzdC4KPiA+ID4KPiA+ID4gV2hhdCBkb2VzIGl0IGV2ZW4gbWVh
biBmb3IgYSBQQ0kgaG9zdCBicmlkZ2UgdG8gaGF2ZSBhIGNoaWxkIHRoYXQgaXMKPiA+ID4gYWxz
byBhIFBDSSBob3N0IGJyaWRnZT8KPiA+ID4KPiA+ID4gRG9lcyB0aGlzIG1lYW4gYSBkcml2ZXIg
YmluZHMgdG8gdGhlICJwYXJlbnQiIGhvc3QgYnJpZGdlLCBlbnVtZXJhdGVzCj4gPiA+IHRoZSBQ
Q0kgZGV2aWNlcyBiZWxvdyBpdCwgYW5kIGZpbmRzIGEgImNoaWxkIiBob3N0IGJyaWRnZT8KPiAK
PiBZZXMsIHRoYXQgaXMgZXhhY3RseSB3aGF0IHlvdSBjYW4gc2VlIG9uIGVudW1lcmF0aW9uLgo+
IAo+IFRoZSBmb2xsb3dpbmcgaXMgYSB0eXBpY2FsIGJvb3QgdHJhY2Ugd2hlcmUgYWxsIGJyaWRn
ZXMgaGFzIGEgZGV2aWNlIGFsc28gYmVsb3c6Cj4gCj4gbXQ3NjIxLXBjaSAxZTE0MDAwMC5wY2ll
OiBob3N0IGJyaWRnZSAvcGNpZUAxZTE0MDAwMCByYW5nZXM6Cj4gbXQ3NjIxLXBjaSAxZTE0MDAw
MC5wY2llOiAgIE5vIGJ1cyByYW5nZSBmb3VuZCBmb3IgL3BjaWVAMWUxNDAwMDAsIHVzaW5nIFti
dXMgMDAtZmZdCj4gbXQ3NjIxLXBjaSAxZTE0MDAwMC5wY2llOiAgICAgIE1FTSAweDAwNjAwMDAw
MDAuLjB4MDA2ZmZmZmZmZiAtPiAweDAwNjAwMDAwMDAKPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBj
aWU6ICAgICAgIElPIDB4MDAxZTE2MDAwMC4uMHgwMDFlMTZmZmZmIC0+IDB4MDAwMDAwMDAwMAo+
IG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUENJRTAgZW5hYmxlZAo+IG10NzYyMS1wY2kgMWUx
NDAwMDAucGNpZTogUENJRTEgZW5hYmxlZAo+IG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUENJ
RTIgZW5hYmxlZAo+IG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUENJIGhvc3QgYnJpZGdlIHRv
IGJ1cyAwMDAwOjAwCgoxZTE0MDAwMC5wY2llIGlzIGEgaG9zdCBicmlkZ2UuICBJdCBoYXMgc29t
ZSBDUFUtc3BlY2lmaWMgYnVzIG9uIHRoZQp1cHN0cmVhbSBzaWRlLCBzdGFuZGFyZCBQQ0kgKGRv
bWFpbiAwMDAwLCBidXNlcyAwMC1mZikgb24gdGhlCmRvd25zdHJlYW0gc2lkZS4KCj4gcGNpIDAw
MDA6MDA6MDAuMDogWzBlOGQ6MDgwMV0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMAo+IHBjaSAwMDAw
OjAwOjAxLjA6IFswZThkOjA4MDFdIHR5cGUgMDEgY2xhc3MgMHgwNjA0MDAKPiBwY2kgMDAwMDow
MDowMi4wOiBbMGU4ZDowODAxXSB0eXBlIDAxIGNsYXNzIDB4MDYwNDAwCgo+IHBjaSAwMDAwOjAx
OjAwLjA6IFsxYjIxOjA2MTFdIHR5cGUgMDAgY2xhc3MgMHgwMTAxODUKCj4gcGNpIDAwMDA6MDA6
MDAuMDogUENJIGJyaWRnZSB0byBbYnVzIDAxLWZmXQo+IHBjaSAwMDAwOjAwOjAwLjA6ICAgYnJp
ZGdlIHdpbmRvdyBbaW8gIDB4MDAwMC0weDBmZmZdCj4gcGNpIDAwMDA6MDA6MDAuMDogICBicmlk
Z2Ugd2luZG93IFttZW0gMHgwMDAwMDAwMC0weDAwMGZmZmZmXQo+IHBjaSAwMDAwOjAwOjAwLjA6
ICAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4MDAwMDAwMDAtMHgwMDBmZmZmZiBwcmVmXQoKMDA6MDAu
MCBsb29rcyBsaWtlIGEgUENJZSBSb290IFBvcnQgdG8gYnVzIDAxLiAgVGhpcyBpcyBub3QgYSBo
b3N0CmJyaWRnZTsgaXQncyBqdXN0IGEgc3RhbmRhcmQgUENJLXRvLVBDSSBicmlkZ2Ugd2l0aCBQ
Q0kgb24gYm90aCB0aGUKdXBzdHJlYW0gYW5kIGRvd25zdHJlYW0gc2lkZXMuCgo+IHBjaSAwMDAw
OjAyOjAwLjA6IFsxYjIxOjA2MTFdIHR5cGUgMDAgY2xhc3MgMHgwMTAxODUKCj4gcGNpIDAwMDA6
MDA6MDEuMDogUENJIGJyaWRnZSB0byBbYnVzIDAyLWZmXQo+IHBjaSAwMDAwOjAwOjAxLjA6ICAg
YnJpZGdlIHdpbmRvdyBbaW8gIDB4MDAwMC0weDBmZmZdCj4gcGNpIDAwMDA6MDA6MDEuMDogICBi
cmlkZ2Ugd2luZG93IFttZW0gMHgwMDAwMDAwMC0weDAwMGZmZmZmXQo+IHBjaSAwMDAwOjAwOjAx
LjA6ICAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4MDAwMDAwMDAtMHgwMDBmZmZmZiBwcmVmXQoKMDA6
MDEuMCBpcyBhbm90aGVyIFJvb3QgUG9ydCB0byBidXMgMDIuCgo+IHBjaSAwMDAwOjAzOjAwLjA6
IFsxYjIxOjA2MTFdIHR5cGUgMDAgY2xhc3MgMHgwMTAxODUKCj4gcGNpIDAwMDA6MDA6MDIuMDog
UENJIGJyaWRnZSB0byBbYnVzIDAzLWZmXQo+IHBjaSAwMDAwOjAwOjAyLjA6ICAgYnJpZGdlIHdp
bmRvdyBbaW8gIDB4MDAwMC0weDBmZmZdCj4gcGNpIDAwMDA6MDA6MDIuMDogICBicmlkZ2Ugd2lu
ZG93IFttZW0gMHgwMDAwMDAwMC0weDAwMGZmZmZmXQo+IHBjaSAwMDAwOjAwOjAyLjA6ICAgYnJp
ZGdlIHdpbmRvdyBbbWVtIDB4MDAwMDAwMDAtMHgwMDBmZmZmZiBwcmVmXQo+IHBjaV9idXMgMDAw
MDowMzogYnVzbl9yZXM6IFtidXMgMDMtZmZdIGVuZCBpcyB1cGRhdGVkIHRvIDAzCgpBbmQgMDA6
MDIuMCBpcyBhIHRoaXJkIFJvb3QgUG9ydCB0byBidXMgMDMuCgo+IHBjaSAwMDAwOjAwOjAwLjA6
IFBDSSBicmlkZ2UgdG8gW2J1cyAwMV0KPiBwY2kgMDAwMDowMDowMC4wOiAgIGJyaWRnZSB3aW5k
b3cgW2lvICAweDAwMDAtMHgwZmZmXQo+IHBjaSAwMDAwOjAwOjAwLjA6ICAgYnJpZGdlIHdpbmRv
dyBbbWVtIDB4NjAwMDAwMDAtMHg2MDBmZmZmZl0KPiBwY2kgMDAwMDowMDowMC4wOiAgIGJyaWRn
ZSB3aW5kb3cgW21lbSAweDYwMTAwMDAwLTB4NjAxZmZmZmYgcHJlZl0KPiBwY2kgMDAwMDowMDow
MS4wOiBQQ0kgYnJpZGdlIHRvIFtidXMgMDJdCj4gcGNpIDAwMDA6MDA6MDEuMDogICBicmlkZ2Ug
d2luZG93IFtpbyAgMHgxMDAwLTB4MWZmZl0KPiBwY2kgMDAwMDowMDowMS4wOiAgIGJyaWRnZSB3
aW5kb3cgW21lbSAweDYwMjAwMDAwLTB4NjAyZmZmZmZdCj4gcGNpIDAwMDA6MDA6MDEuMDogICBi
cmlkZ2Ugd2luZG93IFttZW0gMHg2MDMwMDAwMC0weDYwM2ZmZmZmIHByZWZdCj4gcGNpIDAwMDA6
MDA6MDIuMDogUENJIGJyaWRnZSB0byBbYnVzIDAzXQo+IHBjaSAwMDAwOjAwOjAyLjA6ICAgYnJp
ZGdlIHdpbmRvdyBbaW8gIDB4MjAwMC0weDJmZmZdCj4gcGNpIDAwMDA6MDA6MDIuMDogICBicmlk
Z2Ugd2luZG93IFttZW0gMHg2MDQwMDAwMC0weDYwNGZmZmZmXQo+IAo+ID4gSSB0aGluayB0aGUg
cXVlc3Rpb24gc2hvdWxkIGJlIHRvd2FyZHMgTWVkaWF0ZWsgZm9sa3MuIEkgZG9uJ3Qga25vdyB3
aGF0Cj4gPiB0aGlzIGhhcmR3YXJlIGlzIGV4YWN0bHksIGp1c3QgbG9va3MgbGlrZSBwY2ktcGNp
LWJyaWRnZS4gVGhlIGRyaXZlcgo+ID4gY2FsbHMgdGhlIGNoaWxkcmVuIGhvc3QgYnJpZGdlcyBh
cyAicG9ydHMiLgo+IAo+IFlvdSBjYW4gc2VlIHRoZSB0b3BvbG9neSBoZXJlIGluIG15IGZpcnN0
IGRyaXZlciBzdWJtaXQgY292ZXIgbGV0dGVyCj4gbWVzc2FnZSBbMF0uCj4gCj4gIFswXTogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL0NBTWhzLUgtQkErS3pFd3VEUHpjbXJEUGRnSkJGQTJY
ZFlUQnZUNFI0TUVPVUI9V1ExZ0BtYWlsLmdtYWlsLmNvbS90LwoKTm90aGluZyB1bnVzdWFsIGhl
cmUsIHRoaXMgbG9va3MgbGlrZSB0aGUgc3RhbmRhcmQgUENJZSB0b3BvbG9neS4KCldoYXQgKm1p
Z2h0KiBiZSB1bnVzdWFsIGlzIGRlc2NyaWJpbmcgdGhlIFJvb3QgUG9ydHMgaW4gRFQuICBTaW5j
ZQp0aGV5IGFyZSBzdGFuZGFyZCBQQ0kgZGV2aWNlcywgdGhleSBzaG91bGRuJ3QgbmVlZCBEVCBk
ZXNjcmlwdGlvbgp1bmxlc3MgdGhlcmUncyBzb21lIHVudXN1YWwgcG93ZXIvY2xvY2svcmVzZXQg
Y29udHJvbCBvciBzb21ldGhpbmcKdGhhdCBpcyBub3QgZGlzY292ZXJhYmxlIHZpYSBQQ0kgZW51
bWVyYXRpb24uCgpCam9ybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
