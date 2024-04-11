Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FDC0C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwkIcdmh5NbxIH+C1KLcEPk+TYvVjDAAti66itLmgCQ=; b=WWlZlrWgtuqACp
	WlTiPIFEYr2O42p5iS94SiSHs0HxG6JYLamS5JntM+4i2nOjmsWfvhZUIqnGJMixXDt3mtXRbI9ho
	6a3Yn9QNB2CRie2Zu2SlCVS2E2XtbT7dCrKiq4CBsLriabW9ACg2BfxvBpF4576e3+D/DCXoII0AJ
	ucAVEUwZUlGb5n2Ylon/O0Ygbg+jlm48Ra2Cp/IO6rhNsxbkJrCreIGXTDD8S95rN4hCdoWsleuOE
	YcZbeLYdFH2L2IggoMEkcvNHEDNPF4a8WyT9T8kXY1NQi9pa84ZTvJb03YIAffzGDgGJxlksl8JUE
	Fj84AqrazRaCJefXdJ5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruvIj-0000000CQab-14Kh;
	Thu, 11 Apr 2024 14:21:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruvId-0000000CQYE-2iDd;
	Thu, 11 Apr 2024 14:21:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8F1F760347;
	Thu, 11 Apr 2024 14:21:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07DE0C2BD10;
	Thu, 11 Apr 2024 14:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712845270;
	bh=RDt5jlNMS3ucSwKcH7tgpvFGKzTFvccMBgH0b+eayeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FmnqtmXmyodJdgHKHjF/o9qh0gQ3yPVudJEayUfxMetCRKixf7MadURZeFX5r6J9F
	 KZO4x26OQWLGTjpaYAKntJwCodgLP+aDt47OO2TKPR3PsJ4isKj268a8KfvYJVeiUA
	 xIhTuT3AZ/SJc2XgyX2Qg7zwimd9QfG4T/XfpBUGwOjo3qoholwNk1YikECUI0aeJ3
	 JKccakGSkbBD0N+gV6mcpbFZG4UhhKtCGsuBFNPpBXQ3yDfgtOIize3x3mLBOom0s0
	 clIRJHM0xExk3YKLWu8DH34d19gGTvnMgL6DQhTuO1wpS9k189rIpVZjfDsQEG42r9
	 nLPeassxXKhKg==
Date: Thu, 11 Apr 2024 09:21:07 -0500
From: Rob Herring <robh@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
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
Message-ID: <20240411142107.GA3537062-robh@kernel.org>
References: <CAMhs-H82Ymc=isxu6AX4_s1QnNpSSNt74--ED1j7JxpzE=eCRg@mail.gmail.com>
 <20240411123917.GA2180141@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240411123917.GA2180141@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_072111_881122_B2A382F3 
X-CRM114-Status: GOOD (  30.44  )
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

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMDc6Mzk6MTdBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUaHUsIEFwciAxMSwgMjAyNCBhdCAwODoxMzoxOEFNICswMjAwLCBTZXJnaW8g
UGFyYWN1ZWxsb3Mgd3JvdGU6Cj4gPiBPbiBUaHUsIEFwciAxMSwgMjAyNCBhdCA4OjAx4oCvQU0g
S3J6eXN6dG9mIEtvemxvd3NraQo+ID4gPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4g
d3JvdGU6Cj4gPiA+IE9uIDEwLzA0LzIwMjQgMjM6MjYsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4g
PiA+ID4gT24gV2VkLCBBcHIgMTAsIDIwMjQgYXQgMDg6MTU6MTlQTSArMDIwMCwgS3J6eXN6dG9m
IEtvemxvd3NraSB3cm90ZToKPiA+ID4gPj4gTVQ3NjIxIFBDSSBob3N0IGJyaWRnZSBoYXMgY2hp
bGRyZW4gd2hpY2ggYXBwYXJlbnRseSBhcmUgYWxzbyBQQ0kgaG9zdAo+ID4gPiA+PiBicmlkZ2Vz
LCBhdCBsZWFzdCB0aGF0J3Mgd2hhdCB0aGUgYmluZGluZyBzdWdnZXN0Lgo+ID4gPiA+Cj4gPiA+
ID4gV2hhdCBkb2VzIGl0IGV2ZW4gbWVhbiBmb3IgYSBQQ0kgaG9zdCBicmlkZ2UgdG8gaGF2ZSBh
IGNoaWxkIHRoYXQgaXMKPiA+ID4gPiBhbHNvIGEgUENJIGhvc3QgYnJpZGdlPwoKSXQgc2hvdWxk
IHNheSAncm9vdCBwb3J0JyBpbnN0ZWFkIGFzIHRoZSBiaW5kaW5nIGRlc2NyaXB0aW9uIGNvcnJl
Y3RseSAKc2F5cy4KCj4gPiA+ID4KPiA+ID4gPiBEb2VzIHRoaXMgbWVhbiBhIGRyaXZlciBiaW5k
cyB0byB0aGUgInBhcmVudCIgaG9zdCBicmlkZ2UsIGVudW1lcmF0ZXMKPiA+ID4gPiB0aGUgUENJ
IGRldmljZXMgYmVsb3cgaXQsIGFuZCBmaW5kcyBhICJjaGlsZCIgaG9zdCBicmlkZ2U/Cj4gPiAK
PiA+IFllcywgdGhhdCBpcyBleGFjdGx5IHdoYXQgeW91IGNhbiBzZWUgb24gZW51bWVyYXRpb24u
Cj4gPiAKPiA+IFRoZSBmb2xsb3dpbmcgaXMgYSB0eXBpY2FsIGJvb3QgdHJhY2Ugd2hlcmUgYWxs
IGJyaWRnZXMgaGFzIGEgZGV2aWNlIGFsc28gYmVsb3c6Cj4gPiAKPiA+IG10NzYyMS1wY2kgMWUx
NDAwMDAucGNpZTogaG9zdCBicmlkZ2UgL3BjaWVAMWUxNDAwMDAgcmFuZ2VzOgo+ID4gbXQ3NjIx
LXBjaSAxZTE0MDAwMC5wY2llOiAgIE5vIGJ1cyByYW5nZSBmb3VuZCBmb3IgL3BjaWVAMWUxNDAw
MDAsIHVzaW5nIFtidXMgMDAtZmZdCj4gPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6ICAgICAg
TUVNIDB4MDA2MDAwMDAwMC4uMHgwMDZmZmZmZmZmIC0+IDB4MDA2MDAwMDAwMAo+ID4gbXQ3NjIx
LXBjaSAxZTE0MDAwMC5wY2llOiAgICAgICBJTyAweDAwMWUxNjAwMDAuLjB4MDAxZTE2ZmZmZiAt
PiAweDAwMDAwMDAwMDAKPiA+IG10NzYyMS1wY2kgMWUxNDAwMDAucGNpZTogUENJRTAgZW5hYmxl
ZAo+ID4gbXQ3NjIxLXBjaSAxZTE0MDAwMC5wY2llOiBQQ0lFMSBlbmFibGVkCj4gPiBtdDc2MjEt
cGNpIDFlMTQwMDAwLnBjaWU6IFBDSUUyIGVuYWJsZWQKPiA+IG10NzYyMS1wY2kgMWUxNDAwMDAu
cGNpZTogUENJIGhvc3QgYnJpZGdlIHRvIGJ1cyAwMDAwOjAwCj4gCj4gMWUxNDAwMDAucGNpZSBp
cyBhIGhvc3QgYnJpZGdlLiAgSXQgaGFzIHNvbWUgQ1BVLXNwZWNpZmljIGJ1cyBvbiB0aGUKPiB1
cHN0cmVhbSBzaWRlLCBzdGFuZGFyZCBQQ0kgKGRvbWFpbiAwMDAwLCBidXNlcyAwMC1mZikgb24g
dGhlCj4gZG93bnN0cmVhbSBzaWRlLgo+IAo+ID4gcGNpIDAwMDA6MDA6MDAuMDogWzBlOGQ6MDgw
MV0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMAo+ID4gcGNpIDAwMDA6MDA6MDEuMDogWzBlOGQ6MDgw
MV0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMAo+ID4gcGNpIDAwMDA6MDA6MDIuMDogWzBlOGQ6MDgw
MV0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMAo+IAo+ID4gcGNpIDAwMDA6MDE6MDAuMDogWzFiMjE6
MDYxMV0gdHlwZSAwMCBjbGFzcyAweDAxMDE4NQo+IAo+ID4gcGNpIDAwMDA6MDA6MDAuMDogUENJ
IGJyaWRnZSB0byBbYnVzIDAxLWZmXQo+ID4gcGNpIDAwMDA6MDA6MDAuMDogICBicmlkZ2Ugd2lu
ZG93IFtpbyAgMHgwMDAwLTB4MGZmZl0KPiA+IHBjaSAwMDAwOjAwOjAwLjA6ICAgYnJpZGdlIHdp
bmRvdyBbbWVtIDB4MDAwMDAwMDAtMHgwMDBmZmZmZl0KPiA+IHBjaSAwMDAwOjAwOjAwLjA6ICAg
YnJpZGdlIHdpbmRvdyBbbWVtIDB4MDAwMDAwMDAtMHgwMDBmZmZmZiBwcmVmXQo+IAo+IDAwOjAw
LjAgbG9va3MgbGlrZSBhIFBDSWUgUm9vdCBQb3J0IHRvIGJ1cyAwMS4gIFRoaXMgaXMgbm90IGEg
aG9zdAo+IGJyaWRnZTsgaXQncyBqdXN0IGEgc3RhbmRhcmQgUENJLXRvLVBDSSBicmlkZ2Ugd2l0
aCBQQ0kgb24gYm90aCB0aGUKPiB1cHN0cmVhbSBhbmQgZG93bnN0cmVhbSBzaWRlcy4KPiAKPiA+
IHBjaSAwMDAwOjAyOjAwLjA6IFsxYjIxOjA2MTFdIHR5cGUgMDAgY2xhc3MgMHgwMTAxODUKPiAK
PiA+IHBjaSAwMDAwOjAwOjAxLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMi1mZl0KPiA+IHBjaSAw
MDAwOjAwOjAxLjA6ICAgYnJpZGdlIHdpbmRvdyBbaW8gIDB4MDAwMC0weDBmZmZdCj4gPiBwY2kg
MDAwMDowMDowMS4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDAwMDAwMDAwLTB4MDAwZmZmZmZd
Cj4gPiBwY2kgMDAwMDowMDowMS4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDAwMDAwMDAwLTB4
MDAwZmZmZmYgcHJlZl0KPiAKPiAwMDowMS4wIGlzIGFub3RoZXIgUm9vdCBQb3J0IHRvIGJ1cyAw
Mi4KPiAKPiA+IHBjaSAwMDAwOjAzOjAwLjA6IFsxYjIxOjA2MTFdIHR5cGUgMDAgY2xhc3MgMHgw
MTAxODUKPiAKPiA+IHBjaSAwMDAwOjAwOjAyLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMy1mZl0K
PiA+IHBjaSAwMDAwOjAwOjAyLjA6ICAgYnJpZGdlIHdpbmRvdyBbaW8gIDB4MDAwMC0weDBmZmZd
Cj4gPiBwY2kgMDAwMDowMDowMi4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDAwMDAwMDAwLTB4
MDAwZmZmZmZdCj4gPiBwY2kgMDAwMDowMDowMi4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDAw
MDAwMDAwLTB4MDAwZmZmZmYgcHJlZl0KPiA+IHBjaV9idXMgMDAwMDowMzogYnVzbl9yZXM6IFti
dXMgMDMtZmZdIGVuZCBpcyB1cGRhdGVkIHRvIDAzCj4gCj4gQW5kIDAwOjAyLjAgaXMgYSB0aGly
ZCBSb290IFBvcnQgdG8gYnVzIDAzLgo+IAo+ID4gcGNpIDAwMDA6MDA6MDAuMDogUENJIGJyaWRn
ZSB0byBbYnVzIDAxXQo+ID4gcGNpIDAwMDA6MDA6MDAuMDogICBicmlkZ2Ugd2luZG93IFtpbyAg
MHgwMDAwLTB4MGZmZl0KPiA+IHBjaSAwMDAwOjAwOjAwLjA6ICAgYnJpZGdlIHdpbmRvdyBbbWVt
IDB4NjAwMDAwMDAtMHg2MDBmZmZmZl0KPiA+IHBjaSAwMDAwOjAwOjAwLjA6ICAgYnJpZGdlIHdp
bmRvdyBbbWVtIDB4NjAxMDAwMDAtMHg2MDFmZmZmZiBwcmVmXQo+ID4gcGNpIDAwMDA6MDA6MDEu
MDogUENJIGJyaWRnZSB0byBbYnVzIDAyXQo+ID4gcGNpIDAwMDA6MDA6MDEuMDogICBicmlkZ2Ug
d2luZG93IFtpbyAgMHgxMDAwLTB4MWZmZl0KPiA+IHBjaSAwMDAwOjAwOjAxLjA6ICAgYnJpZGdl
IHdpbmRvdyBbbWVtIDB4NjAyMDAwMDAtMHg2MDJmZmZmZl0KPiA+IHBjaSAwMDAwOjAwOjAxLjA6
ICAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4NjAzMDAwMDAtMHg2MDNmZmZmZiBwcmVmXQo+ID4gcGNp
IDAwMDA6MDA6MDIuMDogUENJIGJyaWRnZSB0byBbYnVzIDAzXQo+ID4gcGNpIDAwMDA6MDA6MDIu
MDogICBicmlkZ2Ugd2luZG93IFtpbyAgMHgyMDAwLTB4MmZmZl0KPiA+IHBjaSAwMDAwOjAwOjAy
LjA6ICAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4NjA0MDAwMDAtMHg2MDRmZmZmZl0KPiA+IAo+ID4g
PiBJIHRoaW5rIHRoZSBxdWVzdGlvbiBzaG91bGQgYmUgdG93YXJkcyBNZWRpYXRlayBmb2xrcy4g
SSBkb24ndCBrbm93IHdoYXQKPiA+ID4gdGhpcyBoYXJkd2FyZSBpcyBleGFjdGx5LCBqdXN0IGxv
b2tzIGxpa2UgcGNpLXBjaS1icmlkZ2UuIFRoZSBkcml2ZXIKPiA+ID4gY2FsbHMgdGhlIGNoaWxk
cmVuIGhvc3QgYnJpZGdlcyBhcyAicG9ydHMiLgo+ID4gCj4gPiBZb3UgY2FuIHNlZSB0aGUgdG9w
b2xvZ3kgaGVyZSBpbiBteSBmaXJzdCBkcml2ZXIgc3VibWl0IGNvdmVyIGxldHRlcgo+ID4gbWVz
c2FnZSBbMF0uCj4gPiAKPiA+ICBbMF06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQU1o
cy1ILUJBK0t6RXd1RFB6Y21yRFBkZ0pCRkEyWGRZVEJ2VDRSNE1FT1VCPVdRMWdAbWFpbC5nbWFp
bC5jb20vdC8KPiAKPiBOb3RoaW5nIHVudXN1YWwgaGVyZSwgdGhpcyBsb29rcyBsaWtlIHRoZSBz
dGFuZGFyZCBQQ0llIHRvcG9sb2d5Lgo+IAo+IFdoYXQgKm1pZ2h0KiBiZSB1bnVzdWFsIGlzIGRl
c2NyaWJpbmcgdGhlIFJvb3QgUG9ydHMgaW4gRFQuICBTaW5jZQo+IHRoZXkgYXJlIHN0YW5kYXJk
IFBDSSBkZXZpY2VzLCB0aGV5IHNob3VsZG4ndCBuZWVkIERUIGRlc2NyaXB0aW9uCj4gdW5sZXNz
IHRoZXJlJ3Mgc29tZSB1bnVzdWFsIHBvd2VyL2Nsb2NrL3Jlc2V0IGNvbnRyb2wgb3Igc29tZXRo
aW5nCj4gdGhhdCBpcyBub3QgZGlzY292ZXJhYmxlIHZpYSBQQ0kgZW51bWVyYXRpb24uCgpJdCdz
IG9ubHkgdW51c3VhbCBiZWNhdXNlIHR5cGljYWxseSB0aGVyZSdzIG9ubHkgMSBSUCBwZXIgaG9z
dCBicmlkZ2UgCmFuZCBwcm9wZXJ0aWVzIHdoaWNoIHJlYWxseSBhcHBseSB0byB0aGUgUlAgZ2V0
IHN0dWNrIGluIHRoZSBob3N0IGJyaWRnZSAKbm9kZSBiZWNhdXNlIHdlIGRvbid0IGhhdmUgYSBS
UCBub2RlLiBBbiBleGFtcGxlIGlzIHBlcnN0LWdwaW9zLiBUaGF0J3MgCm5vdCBhIHByb3BlcnR5
IG9mIHRoZSBSUCBlaXRoZXIsIGJ1dCB0aGUgUlAgaXMgdGhlIHVwc3RyZWFtIHNpZGUgb2YgYSAK
c2xvdCBhbmQgd2Ugb2Z0ZW4gZG9uJ3QgaGF2ZSBhIG5vZGUgZm9yIHRoZSBkZXZpY2UgZWl0aGVy
LgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
