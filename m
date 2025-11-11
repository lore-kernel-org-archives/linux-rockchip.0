Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DDE3CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 03:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJhio+mqpwg96ZB+Yb55s4YoZCjvCE3jVm/UFcne1ug=; b=k3e6oubCQATvei
	WHiEoc1W4WsWg2JxPU8yXXBbGbcEcjzu8SRhlbJM63hStN2NLK9pXbdDff3qQSZMgiGnLN1BetjHG
	fflnty2wLpdxTHLc5LHDXy2HqZcZZcnNHoY3iJS1bwYmfIPgCK6j6IliDVI8IJaCwahlFsHv2OI8A
	VOcaytpk/zYGTvQ2ToJorvaT6fHrzP0cZuxm4Ed6ABlDP8UYdCoAYfmaoRuDiZRSqnS9m8brGUF0a
	wEwYhBjJNcjoNY5jQLLaIyVNXFNbnob/DNi1HT42KNbsywtxc9wC6tqa7G0SdRyfDxpjyJhTG8yGb
	vU2jrRO4cPlBGcissPZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIesy-00000006Qp7-1MWh;
	Tue, 11 Nov 2025 03:17:36 +0000
Received: from mail-m83148.xmail.ntesmail.com ([156.224.83.148])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIesv-00000006QoP-2AxR;
	Tue, 11 Nov 2025 03:17:35 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2920392a1;
	Tue, 11 Nov 2025 11:17:24 +0800 (GMT+08:00)
Message-ID: <05bd0efe-9a84-40e9-af07-51c0b0d865bf@rock-chips.com>
Date: Tue, 11 Nov 2025 11:17:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Damien Le Moal <dlemoal@kernel.org>,
 Anand Moon <linux.amoon@gmail.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [RESEND] Re: [PATCH] PCI: dw-rockchip: Skip waiting for link up
To: FUKAUMI Naoki <naoki@radxa.com>
References: <55EB0E5F655F3AFC+136b89fd-98d4-42af-a99d-a0bb05cc93f3@radxa.com>
 <aRCI5kG16_1erMME@ryzen>
 <F8B2B6FA2884D69A+b7da13f2-0ffb-4308-b1ba-0549bc461be8@radxa.com>
 <780a4209-f89f-43a9-9364-331d3b77e61e@rock-chips.com>
 <4487DA40249CC821+19232169-a096-4737-bc6a-5cec9592d65f@radxa.com>
 <363d6b4d-c999-43d4-866e-880ef7d0dec3@rock-chips.com>
 <0C31787C387488ED+fd39bfe6-0844-4a87-bf48-675dd6d6a2df@radxa.com>
 <dc932773-af5b-4af7-a0d0-8cc72dfbd3c7@rock-chips.com>
 <aRHb4S40a7ZUDop1@ryzen>
 <2n3wamm3txxc6xbmvf3nnrvaqpgsck3w4a6omxnhex3mqeujib@2tb4svn5d3z6>
 <aRJEDEEJr9Ic-RKN@fedora>
 <B721C8A516FDB604+a04b38d3-64ec-423f-9e4c-040c8d2aec76@radxa.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <B721C8A516FDB604+a04b38d3-64ec-423f-9e4c-040c8d2aec76@radxa.com>
X-HM-Tid: 0a9a70eb0e3b09cckunm01a7eea81458b7c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk5OTVZNQ05KSU5CSUMZQk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FKlailV5rqm923DDW0DU9rfU+TO/zidhTTeZUIGI9pQ9ppnHtt7efud90vTJpVC6/FOYjoiplSbH0R5EtAFYbldT2IzwOtsLUmRBFmpcAHH3p3yhIV3A3EpZ73wWPJHaJ3clVb2y/VshDuvK/8/n7XtUj8IMcVAW8xV6rbpOawI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=K5ABXh2/uhWraYUqJ9BUk7p0Ge5LHjETStkwwcjp/eo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_191734_174543_231C60F4 
X-CRM114-Status: GOOD (  14.84  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

5ZyoIDIwMjUvMTEvMTEg5pif5pyf5LqMIDEwOjA5LCBGVUtBVU1JIE5hb2tpIOWGmemBkzoKPiBP
biAxMS8xMS8yNSAwNDo1OSwgTmlrbGFzIENhc3NlbCB3cm90ZToKCi4uLgoKPiAKPiBMZWF2aW5n
IHRoZSBjb21taXQgbWVzc2FnZSBhc2lkZSwgSSdtIGN1cnJlbnRseSB0ZXN0aW5nIHdpdGggYSBy
ZXZlcnQgb2YgCj4gdGhlIHR3byBwYXRjaGVzLgo+IAo+IFZhbmlsbGEgdjYuMTgtcmM1LCBDT05G
SUdfUENJX0RZTkFNSUNfT0ZfTk9ERVM9eSwgcmV2ZXJ0IGVjOWZkNDk5YjljNiwgCj4gcmV2ZXJ0
IDBlMGI0NWFiNWQ3Ny4KPiAKPiBJdCB3b3JrcyBzdGFibHkgb24gdGhlIFJPQ0sgNUEuIFRoZSBs
aW5rIHNwZWVkIGlzIDJHYi9zLgo+IAo+IFRoZSBST0NLIDVDIGlzIHVuc3RhYmxlLiBJdCBpbml0
aWFsbHkgd29ya2VkIHdpdGggYSBsaW5rIHNwZWVkIG9mIDRHYi9zLCAKPiBidXQgZXZlbnR1YWxs
eSBzdGFydGVkIHNob3dpbmcga2VybmVsIG9vcHMuIFRoZSBkdHMgZmlsZXMgZm9yIHRoZSA1QSBh
bmQgCj4gNUMgYXJlIGNvbXBhdGlibGUgYW5kIGludGVyY2hhbmdlYWJsZSwgYnV0IGV2ZW4gdXNp
bmcgdGhlIDVBJ3MgZHRzIG9uIAo+IHRoZSA1QywgdGhlIG9wZXJhdGlvbiByZW1haW5zIHVuc3Rh
YmxlLgoKVGhlIGxpbmsgc3BlZWQgb24gUk9DSyA1QSBpcyAyR2IvcyBhbHNvIG1lYW5zIGl0J3Mg
ZG93bmdyYWRlZCBub3cuIERpZApST0NLIDVBIHdvcmsgdW5kZXIgdGhlIGxpbmsgc3BlZWQgb2Yg
NEdiL3MgYmVmb3JlPwoKSW4gY2FzZSBpdCdzIHNpZ25hbCBpbnRlZ3JpdHkgcmVsZXZhbnQsIHlv
dSBjb3VsZCBlbmFibGUgUENJRV9EV19ERUJVR0ZTCmFuZCByZWZlciB0byBEb2N1bWVudGF0aW9u
L0FCSS90ZXN0aW5nL2RlYnVnZnMtZHdjLXBjaWUgdG8gY29sbGVjdApSQVNERVMgaW5mbyBmcm9t
IHRoZXJlLgoKPiAKPiBJIHBsYW4gdG8gdGhvcm91Z2hseSBpbnZlc3RpZ2F0ZSB0aGUgUk9DSyA1
QydzIGJlaGF2aW9yIG9uIHY2LjEzLCBidXQgCj4gZm9yIG5vdywgSSBiZWxpZXZlIHJldmVydGlu
ZyB0aGUgdHdvIHBhdGNoZXMgaXMgdGhlIGNvcnJlY3QgYWN0aW9uLgo+IAo+IEJlc3QgcmVnYXJk
cywKPiAKPiAtLSAKPiBGVUtBVU1JIE5hb2tpCj4gUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBD
by4sIEx0ZC4KPiAKPj4gS2luZCByZWdhcmRzLAo+PiBOaWtsYXMKPj4KPiAKPiAKPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
