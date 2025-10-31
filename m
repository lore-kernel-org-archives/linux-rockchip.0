Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 543B8CCF9FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 15:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWnAOpPsDxhUcHy9Pi/Fh7bry/gjf1lHgYT4NvziXmo=; b=ct1cu19yJ4wC82
	7d2YnRxk6hyqpzCmRPob819phr/ob8Sgqn4OFJJXanqDiymP7b6PKEgoxAlRBLEn+vHfcJVPr2IMx
	Tk6wwcXJqyiAxbPG9SjjiLBun//c9NFv1vrvwwXMxYcH9jxexMtLCbazxGrFH9W6EoJ3amB9kw4BY
	TJojPH00piDn2ao95m9GFc0sHznLxJPWflhHJvV0z/64QHrLAD+PN4qZkc8/P63SG5/K28Jetd+VP
	fT8/mhVg2sC/Yr5kzkiQBXEO0sAYxhbjkhS/0dymKKwpyEicf510QNyb/IxuP1tPIVEjJcCxqE22H
	rafXP0P91s4mUss7AIKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEqkY-00000006Ibr-0bms;
	Fri, 31 Oct 2025 15:09:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEqkW-00000006IbG-2Pd5;
	Fri, 31 Oct 2025 15:09:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5E7A960299;
	Fri, 31 Oct 2025 15:09:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 504C7C4CEE7;
	Fri, 31 Oct 2025 15:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761923347;
	bh=dsl1X60Vh2ZeNLMhUsaAvRkzH1LwyS7ZETYmT0LfrBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jVNzPGI5+ZvQlLxEGKN1nU4jZfNwbhqupe4HdsG4AaDM2QnoiW2eXYPkrOdVAkdG2
	 O7TCLv4x+g45yK9AGgO11rk7RQZ6crAss8HcYt6DMZnKb+VzIn4zRbl03HZ5OOLSZy
	 CwKaFBoDCEypMVjvqlkEwQjI75PfRxkHpMhBQwBP+96sFVmQhIp/P7VBaXroOTYuzk
	 /8hYfSK6sf80lVoVjS7LUljsnKOA6Qg3Lb638AeR4dJlkGppKLkxJLmHXrZnB3HA7I
	 RH5HVpBQxJr1hDpaoXaAJlm8IWjlKkAA6lqqgXk5WKTIpPu3Bed2fVw6KY+AFEOHez
	 DhAnnSH1ufjxA==
Date: Fri, 31 Oct 2025 20:38:53 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Anand Moon <linux.amoon@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] PCI: dw-rockchip: Add remove callback for
 resource cleanup
Message-ID: <ushhqxwggsmji2vfhk2onb7yzme2ajziruvynlkvfbhaxxk3ht@5ov7qn6i3i52>
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-2-linux.amoon@gmail.com>
 <b2micr4atfax2sgolsublmjk4kwvbmdnqjlk2lb7cflzeycm5i@bi62lg75ilo6>
 <15087240.uLZWGnKmhe@workhorse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15087240.uLZWGnKmhe@workhorse>
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

T24gRnJpLCBPY3QgMzEsIDIwMjUgYXQgMDE6Mjk6MjVQTSArMDEwMCwgTmljb2xhcyBGcmF0dGFy
b2xpIHdyb3RlOgo+IE9uIEZyaWRheSwgMzEgT2N0b2JlciAyMDI1IDA5OjM2OjA1IENlbnRyYWwg
RXVyb3BlYW4gU3RhbmRhcmQgVGltZSBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBP
biBNb24sIE9jdCAyNywgMjAyNSBhdCAwODoyNToyOVBNICswNTMwLCBBbmFuZCBNb29uIHdyb3Rl
Ogo+ID4gPiBJbnRyb2R1Y2UgYSAucmVtb3ZlKCkgY2FsbGJhY2sgdG8gdGhlIFJvY2tjaGlwIERl
c2lnbldhcmUgUENJZQo+ID4gPiBjb250cm9sbGVyIGRyaXZlciB0byBlbnN1cmUgcHJvcGVyIHJl
c291cmNlIGRlaW5pdGlhbGl6YXRpb24gZHVyaW5nCj4gPiA+IGRldmljZSByZW1vdmFsLiBUaGlz
IGluY2x1ZGVzIGRpc2FibGluZyBjbG9ja3MgYW5kIGRlaW5pdGlhbGl6aW5nIHRoZQo+ID4gPiBQ
Q0llIFBIWS4KPiA+ID4gCj4gPiAKPiA+IEhvdyBjYW4geW91IHJlbW92ZSBhIGRyaXZlciB0aGF0
IGlzIG9ubHkgYnVpbHQtaW4/IFlvdSBhcmUganVzdCBzZW5kaW5nIHNvbWUKPiA+IHBvaW50bGVz
cyBwYXRjaGVzIHRoYXQgd2VyZSBub3QgdGVzdGVkIGFuZCBkb2VzIG5vdCBtYWtlIHNlbnNlIGF0
IGFsbC4KPiAKPiBUaGUgYmV0dGVyIHF1ZXN0aW9uIHdvdWxkIGJlOiB3aHkgZG9lcyBLY29uZmln
IG1ha2UgUENJRV9ST0NLQ0hJUF9EVwo+IGEgYm9vbCByYXRoZXIgdGhhbiBhIHRyaXN0YXRlPyBJ
IHNlZSBvdGhlciBQQ0lFX0RXIGRyaXZlcnMgdXNpbmcKPiB0cmlzdGF0ZSwgc28gdGhpcyBkb2Vz
bid0IHNlZW0gbGlrZSBhIHRlY2huaWNhbCBsaW1pdGF0aW9uIHdpdGggdGhlCj4gSVAuCj4gCgpU
aGUgbGltaXRhdGlvbiBpcyBkdWUgdG8gaXJxY2hpcCBtYWludGFpbmVycyBub3QgYWxsb3dpbmcg
KG9yIHJlY29tbWVuZGluZykgdG8KcmVtb3ZlIGEgY29udHJvbGxlciBkcml2ZXIgd2hpY2ggaW1w
bGVtZW50cyBhbiBpcnFjaGlwLiBTbyBpZiBhbnkgY29udHJvbGxlcgpkcml2ZXIgdGhhdCBkb2Vz
IHNvLCB3ZSBtYWtlIHRoZW0gYnVpbHQtaW4uIFJlY2VudGx5LCBJIHN1Z2dlc3RlZCBzb21lCmNv
bnRyb2xsZXIgZHJpdmVycyB0byBiZSB0cmlzdGF0ZSwgYnV0IHdpdGhvdXQgdGhlIHJlbW92ZSgp
IGNhbGxiYWNrLiBUaGlzIHdpbGwKYWxsb3cgdGhlIGNvbnRyb2xsZXIgZHJpdmVycyB0byBiZSBi
dWlsdCBhcyBhIG1vZHVsZSwgYnV0IG5vdCBnZXQgcmVtb3ZlZApkdXJpbmcgcnVudGltZS4KClRo
ZSByZWFzb24gd2h5IGFuIGlycWNoaXAgY29udHJvbGxlciBzaG91bGQgbm90IGJlIHJlbW92ZWQg
ZHVyaW5nIHJ1bnRpbWUgaXMKdGhhdCB0aGUgY29uY2VybnMgYXJvdW5kIGRpc3Bvc2luZyB0aGUg
SVJRcyBjb25zdW1lZCBieSB0aGUgY2xpZW50IGRyaXZlcnMuCkN1cnJlbnQgaXJxY2hpcCBmcmFt
ZXdvcmsgZG9lc24ndCBndWFyYW50ZWUgdGhhdCBhbGwgSVJRcyB3b3VsZCBiZSBkaXNwb3NlZCB3
aGVuCnRoZSBjb250cm9sbGVyIGlzIHJlbW92ZWQuCgpCdXQgaXJyZXNwZWN0aXZlIG9mIHRoZSBh
Ym92ZSBleHBsYW5hdGlvbiwgbXkgc3RhdGVtZW50IHdhcyBjb3JyZWN0IHRoYXQgdGhpcwpwYXRj
aCBpcyBwb2ludGxlc3MuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
