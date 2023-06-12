Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98B19C88CB2
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 18:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KD8KkRsedlQuGHTMNMebxhkclZk0aCIKB5rXinpZdvQ=; b=Ku/iT+qrwY2Oxo
	5GBR19rdtaBTW+HRoTdj6pvcCdGSDUOBttzrq1HRDmCG8ljV6uM/7zjJeZdq4peMKxzDreK3uXAwe
	hsLCxO2uHvx/DSpFimw4IYSmzmzYl410WBbHvv5oanEKlRqjkBLE+PVtJGzfy6Hddb3dTfLNBru64
	IdLEuxi0OYjeHkNCIYpbo7+MPqevxIPvIcSZ+ldwrmujFalNy34ZNhzot6BS+LTtSBItOXOLROmU5
	f90MoeTlEveg4NvG5PF4tT8I8Uhf3JCqItDkjNRr834HBGyR1d3ukdLdLkbwNAOyzB9Wbh1swlPHe
	S+KG9nHp3ZgZJk/aFMIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8m6i-004uBH-0N;
	Mon, 12 Jun 2023 18:17:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8m6d-004u9r-20;
	Mon, 12 Jun 2023 18:17:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A2666623E2;
	Mon, 12 Jun 2023 18:17:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A08B2C433EF;
	Mon, 12 Jun 2023 18:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686593850;
	bh=aIVis3zgOCngnfMmwgBuVeG+/iKrmnOowlmIUV+paHI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n5n/9orbod8cmo3ZlSZq+q3v9s1JEnf2Sa4uJLUMrgOII1qaquSOhuepHl3fIUF2n
	 +dncfZDS6aLE7N8e/fDxJJes4MFT7sS240EjejOXi0oHxsUrf8fhC1jiWKkOPIjQbW
	 newqIPRW6XIZzq8JySqv1eMuk1ZeGSksIt+JaOAbFd2NJ+vHD9K4BQR1vcHQjvyOFY
	 yojO9w2pWRuJXETvSoPOoKqIYvGSs3gAnEmbky9i+u83nxU9v8UtiLImEDmvnb31Ue
	 Io4TaH78Rz41ZMfnyO1IAijddSeTN0ZEvAZjX/feIO4kwYYP+zSxf7KmDUznHkciU+
	 MeB6+M43iQovA==
Received: by pali.im (Postfix)
	id A820E7EB; Mon, 12 Jun 2023 20:17:26 +0200 (CEST)
Date: Mon, 12 Jun 2023 20:17:26 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Joyce Ooi <joyce.ooi@intel.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tom Joseph <tjoseph@cadence.com>, Shawn Guo <shawn.guo@linaro.org>,
	Rahul Tanwar <rtanwar@maxlinear.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Vidya Sagar <vidyas@nvidia.com>, Jisheng Zhang <jszhang@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Toan Le <toan@os.amperecomputing.com>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH 00/15] PCI: Convert to platform remove callback returning
 void
Message-ID: <20230612181726.itcctpkq57tfmdmo@pali>
References: <20230611132423.milnj2pnvjqzwino@pali>
 <20230612161927.GA1335109@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230612161927.GA1335109@bhelgaas>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_111731_755557_0FF66897 
X-CRM114-Status: GOOD (  31.09  )
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

T24gTW9uZGF5IDEyIEp1bmUgMjAyMyAxMToxOToyNyBCam9ybiBIZWxnYWFzIHdyb3RlOgo+IE9u
IFN1biwgSnVuIDExLCAyMDIzIGF0IDAzOjI0OjIzUE0gKzAyMDAsIFBhbGkgUm9ow6FyIHdyb3Rl
Ogo+ID4gT24gRnJpZGF5IDAyIEp1bmUgMjAyMyAxNjozNzozNCBCam9ybiBIZWxnYWFzIHdyb3Rl
Ogo+ID4gPiBPbiBUdWUsIE1heSAzMCwgMjAyMyBhdCAwNDowNzo0MlBNICswMjAwLCBVd2UgS2xl
aW5lLUvDtm5pZyB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIE1hciAyMSwgMjAyMyBhdCAwODozMTo1
M1BNICswMTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+ID4gPiA+IHRoaXMgc2VyaWVz
IGFkYXB0cyB0aGUgcGxhdGZvcm0gZHJpdmVycyBiZWxvdyBkcml2ZXJzL3BjaSB0bwo+ID4gPiA+
ID4gdXNlIHRoZSAucmVtb3ZlX25ldygpIGNhbGxiYWNrLiBDb21wYXJlZCB0byB0aGUgdHJhZGl0
aW9uYWwKPiA+ID4gPiA+IC5yZW1vdmUoKSBjYWxsYmFjayAucmVtb3ZlX25ldygpIHJldHVybnMg
bm8gdmFsdWUuIFRoaXMgaXMgYQo+ID4gPiA+ID4gZ29vZCB0aGluZyBiZWNhdXNlIHRoZSBkcml2
ZXIgY29yZSBkb2Vzbid0IChhbmQgY2Fubm90KSBjb3BlCj4gPiA+ID4gPiBmb3IgZXJyb3JzIGR1
cmluZyByZW1vdmUuIFRoZSBvbmx5IGVmZmVjdCBvZiBhIG5vbi16ZXJvIHJldHVybgo+ID4gPiA+
ID4gdmFsdWUgaW4gLnJlbW92ZSgpIGlzIHRoYXQgdGhlIGRyaXZlciBjb3JlIGVtaXRzIGEgd2Fy
bmluZy4KPiA+ID4gPiA+IFRoZSBkZXZpY2UgaXMgcmVtb3ZlZCBhbnlob3cgYW5kIGFuIGVhcmx5
IHJldHVybiBmcm9tCj4gPiA+ID4gPiAucmVtb3ZlKCkgdXN1YWxseSB5aWVsZHMgYSByZXNvdXJj
ZSBsZWFrLgo+ID4gLi4uCj4gCj4gPiBIZWxsbyBCam9ybiwgaXQgc2hvdWxkIGJlIGV4cGVjdGVk
IHRoYXQgb3RoZXIgY2hhbmdlcyBmb3IgUENJZSBkcml2ZXJzCj4gPiBzZW50IGJ5IG90aGVyIHBl
b3BsZSB3aGljaCB3ZXJlIHNlbnQgdG8gdGhlIGxpc3QgYmVmb3JlIHRoaXMgcGF0Y2gKPiA+IHNl
cmllcyBhbmQgYXJlIHN0aWxsIHdhaXRpbmcgZm9yIHRoZSByZXZpZXcgKGJlY2F1c2UgYXJlIHdp
dGhvdXQKPiA+IGNvbW1lbnRzKSwgd291bGQgYmUgcHJvY2Vzc2VkIGJlZm9yZSBhbmQgcGF0Y2hl
cyBzZW50IGxhdGVyLgo+IAo+IEkgZG9uJ3QgdGhpbmsgaXQncyBuZWNlc3NhcnkgdG8gZGVsYXkg
c2ltcGxlLCBlYXNpbHktcmV2aWV3ZWQgY2hhbmdlcwo+IGJlaGluZCBtb3JlIGNvbXBsaWNhdGVk
IG9uZXMuCj4gCj4gPiBBbHNvIEkgd291bGQgbGlrZSB0byBwb2ludCBvdXQgdGhhdCBpbiBwYXN0
IEkgaGF2ZSBzZW50IGZpeGVzIGZvciBQQ0llCj4gPiBtdmVidSBkcml2ZXIsIHdoaWNoIGlzIGN1
cnJlbnRseSBpbiB0aGUgYnJva2VuIHN0YXRlLiBBbmQgdGhpcyBpcyBhbHNvCj4gPiBvbiB3YWl0
aW5nIG9uIHRoZSBsaXN0Lgo+IAo+IFRoYW5rcyBmb3IgdGhpcyByZW1pbmRlci4gIFdvdWxkIHlv
dSBtaW5kIHJlcG9zdGluZyB0aGVtPyAgSSBwb2tlZAo+IGFyb3VuZCBpbiBwYXRjaHdvcmsgYW5k
IEkgbXVzdCBiZSBkb2luZyBzb21ldGhpbmcgd3JvbmcgYmVjYXVzZSBJCj4gY2FuJ3QgZmluZCAq
YW55KiBwYXRjaGVzIGZyb20geW91LCB0aG91Z2ggb2J2aW91c2x5IHRoZXJlIGFyZSBtYW55Lgo+
IAo+IElmIHlvdSByZXBvc3QgdGhlbSBhdCBsZWFzdCB3ZSdsbCBrbm93IHVuYW1iaWd1b3VzbHkg
d2hhdCBpcyBvbiB0aGUKPiB0YWJsZS4KPiAKPiBCam9ybgoKV2VsbCwgbXkgcGF0Y2hlcyBJIHJl
cG9zdGVkIG1vcmUgdGltZXMuIEFuZCBzb21lIHdlcmUgYWxzbyByZXBvc3RlZCBieQpvdGhlciBw
ZW9wbGUuIEkgZG8gbm90IGtub3cgaWYgdGhleSBhcmUgaW4gcGF0Y2h3b3JrLCBidXQgdGhleSBh
cmUgaW4KZW1haWwgYXJjaGl2ZS4gRm9yIGV4YW1wbGUgbGFzdCByZXBvc3Qgb2YgYWFyZHZhcmsg
cGF0Y2hlcyBhcmUgaGVyZToKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcGNpLzIwMjIw
OTI3MTQxOTI2Ljg4OTUtMS1rYWJlbEBrZXJuZWwub3JnLwpBbmQgc29tZSBvdGhlciBhYXJkdmFy
ayBhcmUgYWxzbyBoZXJlOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1wY2kvMjAyMjA3
MTExMjA2MjYuMTE0OTItMS1wYWxpQGtlcm5lbC5vcmcvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
