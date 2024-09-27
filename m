Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B2C1CDD1D2
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 18:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=bFkZYAILinGwegM6cIM/fMnsDdYIeqvu51acKFs6xso=; b=028c4Txjg68Rn4
	ZUN8m9ZtxD5HHH5yGwkWFFfzrZfPmkQ4LnNmMe4Bor1uBJNpMNRdRRRg5XAvbiDOC48fRDAMH1HNx
	nVHiaeXvRMvqmZLkdsovWR/0F5lleTU4Cq7Zab14wKGXGNpXWyolnounig8vHidljtnOI5pMztHYd
	Q68JSXV3EKkTKVPYhrqwpTmkZMT0mZKxtYlAXTL+5QXdIYmD5+HtoF4r2OaDDsw7gnyMdbQLbyaI7
	4EDq0pkO/JEQ63tlFhEYUemT9dYPLT4dds8ahb3KGQMpUigLLzEa4WPV6jRjabbXcarQ2js+nmCY/
	pEvRUdm91S/5H+XTMg5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suFdE-0000000Bqyd-41s9;
	Fri, 27 Sep 2024 18:23:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suFc1-0000000Bqt9-2z6h;
	Fri, 27 Sep 2024 18:22:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 19EA45C558E;
	Fri, 27 Sep 2024 18:22:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8520AC4CEC4;
	Fri, 27 Sep 2024 18:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727461360;
	bh=Aj6QsXN9+wurRdEhLLOgrIKRi1TKrZH9iLUL4lOE1aI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=HrJ9iO9Y/DzVq8thg17WFcf91NweE6AOMVZnFbBW6wetlh8Dzbd9hwP61HNIEw7qx
	 Sw+FwQQ+5GuwF5ZyKG6x6LYW+HRsm9H8+TvvynPjlDLbb+Con37B2qfukao8pNaVKg
	 aMhjTDC7cWr07Vr6bhNfgFo/LHSAoAgxfQpdbCejz0NJplLsM8hXHSyJoTwCZNIjRo
	 KdXgeciJAPYNeaEE+CwCSyEUGQgyePSXJTqJC34wGJOnsfGgkkWO16f/Zv+J3LByVK
	 Zsy+GXUswnLxIZ878CbvnmLfxy6BHDZDc0BrbGQu0wgZHTZdIvBVU/3PojaWCftmL8
	 IOZQINqOzH48g==
Date: Fri, 27 Sep 2024 13:22:38 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/6] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
Message-ID: <20240927182238.GA85539@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgSgwx0kuV-boF14_WXiPkE8KXxOWOfS2e_QOWMKgKSLnA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_112241_819917_A110571F 
X-CRM114-Status: GOOD (  15.43  )
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

T24gRnJpLCBTZXAgMjcsIDIwMjQgYXQgMDE6NDc6NDRQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBPbiBNb24sIDIgU2VwdCAyMDI0IGF0IDAwOjAzLCBBbmFuZCBNb29uIDxsaW51eC5hbW9v
bkBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IFJlZmFjdG9yIHRoZSBjbG9jayBoYW5kbGluZyBp
biB0aGUgUm9ja2NoaXAgUENJZSBkcml2ZXIsCj4gPiBpbnRyb2R1Y2luZyBhIG1vcmUgcm9idXN0
IGFuZCBlZmZpY2llbnQgbWV0aG9kIGZvciBlbmFibGluZyBhbmQKPiA+IGRpc2FibGluZyBjbG9j
a3MgdXNpbmcgY2xrX2J1bGsqKCkgQVBJLiBVc2luZyB0aGUgY2xrX2J1bGsgQVBJcywKPiA+IHRo
ZSBjbG9jayBoYW5kbGluZyBmb3IgdGhlIGNvcmUgY2xvY2tzIGJlY29tZXMgbXVjaCBzaW1wbGVy
Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGxpbnV4LmFtb29uQGdtYWlsLmNv
bT4KPiAKPiBEbyB5b3UgaGF2ZSBhbnkgcmV2aWV3IGNvbW1lbnRzIG9uIHRoaXMgc2VyaWVzPwoK
TG9va3MgbGlrZSBuaWNlIHdvcmssIHRoYW5rcy4gIE1pbm9yIHRpcHMgYmVsb3cuICBXZSdsbCBz
dGFydCBhcHBseWluZwpQQ0kgcGF0Y2hlcyB0byB2Ni4xMy1yYzEgYWZ0ZXIgaXQgaXMgdGFnZ2Vk
LiAgSXQgbG9va3MgbGlrZSB0aGVzZSB3aWxsCmFwcGx5IGNsZWFubHksIHNvIG5vIHJlYmFzaW5n
IG5lZWRlZC4KCiAgLSBJdCB3b3VsZCBiZSBoZWxwZnVsIGlmIHlvdSBjYW4gYWRkIGEgY292ZXIg
bGV0dGVyICgwL24pLCB3aGljaCBpcwogICAgYSBnb29kIHBsYWNlIGZvciB0aGUgb3ZlcmFsbCBk
aWZmc3RhdCBhbmQgc2VyaWVzLWxldmVsIGNoYW5nZWxvZy4KCiAgLSBUaGlzIHY1IHNlcmllcyBh
ZGRzIGRyaXZlcnMvcGh5IHBhdGNoZXMsIHdoaWNoIGFyZSBhbHNvIHJlbGF0ZWQgdG8KICAgIHJv
Y2tjaGlwLCBidXQgd2lsbCBiZSBoYW5kbGVkIGJ5IGEgZGlmZmVyZW50IG1haW50YWluZXIsIHNv
IGJlc3QKICAgIHRvIHNlbmQgdGhlbSBhcyBzZXBhcmF0ZSBzZXJpZXMgKGFuZCBvZiBjb3Vyc2Ug
c2VuZCB0aGUgcGh5CiAgICBwYXRjaGVzIHRvIHRoZSByaWdodCBtYWludGFpbmVyLCBsaW51eC1w
aHksIGV0YykuCgogIC0gImI0IGFtIC1vL3RtcC8gMjAyNDA5MDExODMyMjEuMjQwMzYxLTItbGlu
dXguYW1vb25AZ21haWwuY29tIgogICAgY29tcGxhaW5zIGFib3V0IHNvbWV0aGluZywgSSBkdW5u
byBob3cgdG8gZml4OgoKICAgICAgQ2hlY2tpbmcgYXR0ZXN0YXRpb24gb24gYWxsIG1lc3NhZ2Vz
LCBtYXkgdGFrZSBhIG1vbWVudC4uLgogICAgICAtLS0KCeKclyBbUEFUQ0ggdjUgMS82XSBQQ0k6
IHJvY2tjaGlwOiBTaW1wbGlmeSBjbG9jayBoYW5kbGluZyBieSB1c2luZyBjbGtfYnVsayooKSBm
dW5jdGlvbgoJ4pyXIFtQQVRDSCB2NSAyLzZdIFBDSTogcm9ja2NoaXA6IFNpbXBsaWZ5IHJlc2V0
IGNvbnRyb2wgaGFuZGxpbmcgYnkgdXNpbmcgcmVzZXRfY29udHJvbF9idWxrKigpIGZ1bmN0aW9u
CgninJcgW1BBVENIIHY1IDMvNl0gUENJOiByb2NrY2hpcDogUmVmYWN0b3Igcm9ja2NoaXBfcGNp
ZV9kaXNhYmxlX2Nsb2NrcyBmdW5jdGlvbiBzaWduYXR1cmUKCeKclyBbUEFUQ0ggdjUgNC82XSBw
aHk6IHJvY2tjaGlwLXBjaWU6IFNpbXBsaWZ5IGVycm9yIGhhbmRsaW5nIHdpdGggZGV2X2Vycl9w
cm9iZSgpCgninJcgW1BBVENIIHY1IDUvNl0gcGh5OiByb2NrY2hpcC1wY2llOiBDaGFuZ2UgdG8g
dXNlIGRldm1fY2xrX2dldF9lbmFibGVkKCkgaGVscGVyCgninJcgW1BBVENIIHY1IDYvNl0gcGh5
OiByb2NrY2hpcC1wY2llOiBVc2UgcmVnbWFwX3JlYWRfcG9sbF90aW1lb3V0IGZvciBQQ0llIHJl
ZmVyZW5jZSBjbGsgUExMIHN0YXR1cwoJLS0tCgninJcgQkFEU0lHOiBES0lNL2dtYWlsLmNvbQoK
ICAtIEluIDMvNiBhbmQgNi82IGNvbW1pdCBsb2dzLCBhZGQgcGFyZW5zIGFmdGVyIGZ1bmN0aW9u
IG5hbWVzIGFzCiAgICB5b3UgZGlkIGVsc2V3aGVyZS4KCiAgLSBTdXBlciBuaXQ6IEluIDUvNiwg
cy9DaGFuZ2UgdG8gdXNlL1VzZS8uICBFdmVyeSBwYXRjaCBpcyBhIGNoYW5nZSwKICAgIHNvICJD
aGFuZ2UgdG8iIGRvZXNuJ3QgYWRkIGFueSBpbmZvcm1hdGlvbi4KCkJqb3JuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
