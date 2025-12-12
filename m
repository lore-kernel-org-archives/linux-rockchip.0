Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABBE0D43369
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 03:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEUocP+cyt0OaMaGAAiit04DhekLEIpsgjY4aiB/OJc=; b=i6eVmD17FK8Sky
	oANX803Oq2yasitPoEOdfhiCqKx6oeXilDdKTY1V0+VDDRwYN1PDhDqE3X5QW4OGa7rTBy8X8tC2E
	zIW3LFGlE8PuZH6lTRaMWEjjw3fh//4NwO3qRt7ULWh1h0MgOozzCqGjwmkmvpVic/WPRJdXvj3aI
	RMBM33jeLUhGO56kgyu7GPsjPow1Tm3mfJwChmgRRYhol2kRK8rN0D6fdq3S2n5VLn/QLVbY1GuJG
	yA97/dWo8AKevkFC5At/kN0wOgRRBiy3xL1b1II2VMXBsW8s82EbwmUiR61ZADZzOUTDfhlYAbLzn
	RI4KZns/D/hNr3Hh4egg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTuD4-000000002bM-2E2c;
	Fri, 12 Dec 2025 03:52:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTuD2-000000002aq-1rP4;
	Fri, 12 Dec 2025 03:52:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7B8D260121;
	Fri, 12 Dec 2025 03:52:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E70FC4CEF1;
	Fri, 12 Dec 2025 03:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765511567;
	bh=4aNjpdLHQX5WPy6vwTgIkcZd5b8rix/rORP2xiTO8Ko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sB+P7XpkJ1Dp/PpeK2FJ2O+T82CuOhDGaBXmo7cR0B8RkuP36VrBm4Uyip/QaW3nl
	 Nz8BbXrZzSOv2bJ2nZF/plsvKTfrPge0t49z0FlNLioys59JM9vRci5O3RXq9zE+O8
	 yz9siG0TBbYh3amgXggAN5QqXyxwe24HBeYCJxy1iALO2RgC8itcWQy7GWzVs/e+AV
	 sbCDJv4CSM8AGQB40OnlutDHJYA5NzA0yjQ6xPL96KNZUE8JHnLHTfIoELzgDlHAkK
	 dmaOwrweQcn2rTWhQQGpb2a8HbGD7iyovS39KVSX3NimvFxoWz4RtGBk4N9JdDEeuK
	 Ssab2LJW4WeFw==
Date: Fri, 12 Dec 2025 12:52:35 +0900
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	FUKAUMI Naoki <naoki@radxa.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dwc: Make Link Up IRQ logic handle already
 powered on PCIe switches
Message-ID: <pjn2gs43rqbe3odh6zvh4qaftxxl6qvdzpm6pgpadxeeid42ko@4a2qradscaqd>
References: <20251201063634.4115762-2-cassel@kernel.org>
 <f1059d5d-3fa5-423a-8093-0e99b65d5f4c@oss.qualcomm.com>
 <aTev28wihes6iJqs@dhcp-10-89-81-223>
 <dad4957c-ca13-4742-b46d-03f0478911d5@oss.qualcomm.com>
 <aTe1bA7lcVzFD5L7@dhcp-10-89-81-223>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aTe1bA7lcVzFD5L7@dhcp-10-89-81-223>
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

T24gVHVlLCBEZWMgMDksIDIwMjUgYXQgMDI6MzY6NDRQTSArMDkwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUdWUsIERlYyAwOSwgMjAyNSBhdCAxMDo1NzoxOEFNICswNTMwLCBLcmlzaG5h
IENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+ID4gT24gMTIvOS8yMDI1IDEwOjQyIEFNLCBOaWts
YXMgQ2Fzc2VsIHdyb3RlOgo+ID4gPiAKPiA+ID4gU28gSSBkb24ndCByZWFsbHkgdW5kZXJzdGFu
ZCB5b3VyIGNvbmNlcm4gd2l0aCB0aGlzIHNlcmllcywgYXQgbGVhc3Qgbm90IGlmCj4gPiA+IGl0
IGdvZXMgb24gdG9wIG9mIHlvdXIgc2VyaWVzOgo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1wY2kvMjAyNTExMjQtcGNpLXB3cmN0cmwtcmV3b3JrLXYxLTAtNzhhNzI2Mjc2ODNk
QG9zcy5xdWFsY29tbS5jb20vCj4gPiBIaSBOaWtsYXMsCj4gPiAKPiA+IElmIHRoaXMgc2VyaWVz
IGdvZXMgb24gdG9wIG9mIHRoZSBvdXIgc2VyaWVzIGkuZSBwd3JjdHJsIHJld29yayBzZXJpZXMs
IEkKPiA+IGRvbid0IGhhdmUgYW55IGNvbmNlcm5zLgo+ID4gTXkgb25seSBjb25jZXJuIGlzIGxp
bmsgdXAgSVJRIG5ldmVyIGZpcmVzIGlmIHRoaXMgcGF0Y2ggZ29lcyBiZWZvcmUgc2VyaWVzLgo+
ID4gCj4gPiAtIEtyaXNobmEgQ2hhaXRhbnlhLgo+IAo+IFRoaXMgcGF0Y2ggbWlzc2VkIHRoZSB2
Ni4xOSBtZXJnZSB3aW5kb3cgKGFuZCBzbyBkaWQgdGhlIHB3cmN0cmwgcmV3b3JrCj4gc2VyaWVz
KSwgc28gYXMgbG9uZyBhcyBNYW5pIHF1ZXVlcyB1cCBib3RoIGZvciB2Ni4yMCAod2l0aCB0aGUg
cHdyY3RybAo+IHJld29yayBzZXJpZXMgZ2V0dGluZyBhcHBsaWVkIGZpcnN0KSwgSSB0aGluayB3
ZSBhcmUgZ29vZC4KPiAKClRoZSBwbGFuIGlzIHRvIG1lcmdlIHB3cmN0cmwgc2VyaWVzIHRvIHY2
LjIwICh1bmxlc3Mgd2UgZ2V0IHN0cm9uZyBvYmplY3Rpb25zKSwKYnV0IG9uY2UgdGhhdCBoYXBw
ZW5zLCBRY29tIGRvZXNuJ3QgbmVlZCB0aGlzIHBhdGNoLgoKU28gaXQnZCBiZSBnb29kIGlmIHlv
dSBjYW4ganVzdCBsaW1pdCB0aGlzIHBhdGNoIHRvIGp1c3QgUm9ja2NoaXAuIFRoZW4gb25jZSB0
aGUKUm9ja2NoaXAgYWxzbyBtb3ZlcyB0byBwd3JjdHJsLCB3ZSBjYW4gcmV2ZXJ0IHRoaXMgcGF0
Y2ggKGFsc28gdGhlIHdob2xlIElSUQpiYXNlZCBsaW5rIHVwIHNpbmNlIHRoZSBSb290IFBvcnQg
aXMgbm90IGhvdHBsdWcgY2FwYWJsZSkuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43g
rqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
