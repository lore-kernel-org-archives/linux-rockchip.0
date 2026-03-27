Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EE2210BA432
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 06:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkxnGeJKj0keJTeXjnQL4R3ZqMeoZIyXEJIxJ8Uwz2g=; b=uEgEsCEVxoz3L3
	VguSeEMjuzZ6Jzg9GS/kGy1ls/BbkIPcGYLk7dzyIWcprq27rzm/tidyCPsMLkudxqjwqEMQQ3Yr8
	UDMWF9WQ4N/WVFIXnIPWRsjtYAVnyAoknpW7jvFwC3qEyercENnrBeY/H1fOAdaK5mPpzEMOuJ6zS
	hzRDY9dhlYOktxCxDMoYp/rKz989MDc4/WbAIJBfJ6lor5Xi5KabjpOjPgzUJOsBDqiSR6Y056m3R
	2EJJAVmnV7a6R/v4fCHVsoDxY/MFc9VNU8tyRpZ15xNrSOHyjw6g0L/7ATHVN9p1EdfsPsj3MMR3j
	+3GIiTdO7i6uol70yTxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6148-00000006qLt-2Vr1;
	Fri, 27 Mar 2026 06:53:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6144-00000006qL4-2o0k;
	Fri, 27 Mar 2026 06:53:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EF2E340AB1;
	Fri, 27 Mar 2026 06:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5247EC19423;
	Fri, 27 Mar 2026 06:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774594383;
	bh=+6taD/KYX6s6aOGsQO53ivGa0KI2dG/K2GEdTZ29IxI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uM9tWBQSBzeOskmqaDM0QvWoV4jUNiC4DsBlIKIFg7In21qbXcrgvL+npIdvVsRu4
	 qrE69iQ+kiDSqXlcivHy16z+fEY80xVdn90vInQTF9nPU0Nfe7+PBampXS2wO/gG+p
	 NgAISEoCyX1+VSpZjmfa/Wk2xePLkgGitS5duT/iqLt2Xz6gmhtYoyq/3bAsUtsGq+
	 2OtE88H/kNHCxHKSKe13LzCtkcFHYUQtieBVLEZ/RgfH2fMVrGZXCU2jVD0wDWvbDI
	 /UHVNy1S2RfsSIT/lKpdHdy0Vk/hccjI1KCqeAffyJ+BOUCNvP4IiTCz7QCM5HVlUz
	 YXDRsPrcv0reg==
Date: Fri, 27 Mar 2026 12:22:46 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, netdev@vger.kernel.org, 
	spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: Re: [PATCH v5 phy-next 10/27] scsi: ufs: qcom: keep parallel track
 of PHY power state
Message-ID: <gq4sswslkjaoe5hhxe2mz6z57uiumotqknkryadvfsstj4srx4@qgenqekgrqv4>
References: <20260319223241.1351137-1-vladimir.oltean@nxp.com>
 <20260319223241.1351137-11-vladimir.oltean@nxp.com>
 <ezrcjjwtg5n76w4m65l27szu5mywx66ti3xuprkfcp3x6quvbf@2rew4zrnnbt2>
 <20260325114309.3k7xkfrffpxp5xq4@skbuf>
 <vu3cxpynr5mu2fzkrtmjcwijc5jz323wlnbc3r7lp2wxqmhydx@z5xhgf4myw2d>
 <20260325115731.genmq2yew2p4dvbs@skbuf>
 <20260326080444.gbesciaa5zwvcgoy@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260326080444.gbesciaa5zwvcgoy@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_235304_751871_FFEDF6FD 
X-CRM114-Status: GOOD (  21.30  )
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

T24gVGh1LCBNYXIgMjYsIDIwMjYgYXQgMTA6MDQ6NDRBTSArMDIwMCwgVmxhZGltaXIgT2x0ZWFu
IHdyb3RlOgo+IE9uIFdlZCwgTWFyIDI1LCAyMDI2IGF0IDAxOjU3OjMxUE0gKzAyMDAsIFZsYWRp
bWlyIE9sdGVhbiB3cm90ZToKPiA+IE9uIFdlZCwgTWFyIDI1LCAyMDI2IGF0IDA1OjIxOjE0UE0g
KzA1MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gSSBiZWxpZXZlIEkgYWRk
ZWQgdGhlIHBvd2VyX2NvdW50IGNoZWNrIGZvciBwaHlfZXhpdCgpLiBCdXQgc2luY2UgdGhhdCBn
b3QKPiA+ID4gbW92ZWQsIHRoZSBjaGVjayBiZWNvbWVzIG5vIGxvbmdlciBuZWNlc3NhcnkuCj4g
PiAKPiA+IEZZSSwgdGhlIHBvd2VyX2NvdW50IGtlZXBzIHRyYWNrIG9mIHRoZSBiYWxhbmNlIG9m
IHBoeV9wb3dlcl9vbigpIGFuZAo+ID4gcGh5X3Bvd2VyX29mZigpIGNhbGxzLCB3aGVyZWFzIGl0
IGlzIHRoZSBpbml0X2NvdW50IGtlZXBzIHRyYWNrIG9mCj4gPiBwaHlfaW5pdCgpIGFuZCBwaHlf
ZXhpdCgpIGNhbGxzLiBUaGV5IGFyZSBvbmx5IHJlbGF0ZWQgdG8gdGhlIGV4dGVudAo+ID4gdGhh
dCB5b3UgbXVzdCByZXNwZWN0IHRoZSBwaHlfaW5pdCgpIC0+IHBoeV9wb3dlcl9vbigpIC0+IHBo
eV9wb3dlcl9vZmYoKQo+ID4gLT4gcGh5X2V4aXQoKSBzZXF1ZW5jZS4gQnV0IGluIGFueSBjYXNl
LCBib3RoIHNob3VsZCBiZSBjb25zaWRlcmVkCj4gPiBQSFktaW50ZXJuYWwgZmllbGRzLiBUaGUg
Ik9yZGVyIG9mIEFQSSBjYWxscyIgc2VjdGlvbiBmcm9tCj4gPiBEb2N1bWVudGF0aW9uL2RyaXZl
ci1hcGkvcGh5L3BoeS5yc3QgbWVudGlvbnMgdGhlIG9yZGVyIHRoYXQgSSBqdXN0Cj4gPiBkZXNj
cmliZWQgYWJvdmUsIGFuZCBjb25zdW1lcnMgc2hvdWxkIGp1c3QgZW5zdXJlIHRoZXkgZm9sbG93
IHRoYXQuCj4gCj4gT2ssIHNvIHdlIGNhbiBjbG9zZSB0aGlzIHRvcGljIG9mICJjaGVja2luZyB0
aGUgcG93ZXJfY291bnQgbm90IG5lZWRlZCIKPiBieSBsaW5raW5nIHRvIHRoZSBjb252ZXJzYXRp
b24gd2hpY2ggc3B1biBvZmYgaGVyZToKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIw
MjYwMzI1MTIwMTIyLjI2NTk3My0xLW1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0u
Y29tLwo+IAoKU3VyZS4KCj4gTWFuaSwgSSBzcGVudCBzb21lIG1vcmUgdGltZSB0byBmaWd1cmUg
b3V0IHdoYXQncyByZWFsbHkgZ29pbmcgb24gd2l0aAo+IHRoaXMgdW5leHBlY3RlZCBwaHlfcG93
ZXJfb2ZmKCkgY2FsbC4gRG8geW91IHRoaW5rIHlvdSBjb3VsZAo+IHJlZ3Jlc3Npb24tdGVzdCB0
aGUgcGF0Y2ggYXR0YWNoZWQ/Cj4gCgpJIHRlc3RlZCB0aGUgcGF0Y2guIEJ1dCBpdCBmYWlscyB1
ZnNfcWNvbV9wb3dlcl91cF9zZXF1ZW5jZSgpIGlmIFBIWSB3YXMgYWxyZWFkeQpwb3dlcmVkIG9u
OgoKWyAgIDMxLjUxMzMyMV0gcWNvbS1xbXAtdWZzLXBoeSAxZDg3MDAwLnBoeTogcGh5IGluaXRp
YWxpemF0aW9uIHRpbWVkLW91dApbICAgMzEuNTEzMzM1XSB1ZnNoY2QtcWNvbSAxZDg0MDAwLnVm
c2hjOiBGYWlsZWQgdG8gY2FsaWJyYXRlIFBIWTogLTExMApbICAgMzEuNTY1MjczXSB1ZnNoY2Qt
cWNvbSAxZDg0MDAwLnVmc2hjOiBFbmFibGluZyB0aGUgY29udHJvbGxlciBmYWlsZWQKCkZ1bm55
IHRoaW5nIGlzLCBpdCBkaWRuJ3QgYWZmZWN0IHRoZSBmdW5jdGlvbmFsaXR5IHNpbmNlIHRoZSBV
RlMgY29yZSByZXRyaWVzCnVmc2hjZF9oYmFfZW5hYmxlKCkgYW5kIGluIHRoZSBlcnJvciBwYXRo
IG9mIHVmc19xY29tX3Bvd2VyX3VwX3NlcXVlbmNlKCksCnBoeV9wb3dlcl9vZmYoKSBnZXRzIGNh
bGxlZCBhbmQgdGhhdCBjYXVzZXMgdGhlIG5leHQgdHJ5IHRvIHN1Y2NlZWQuIFNvIGl0IGlzCmV2
aWRlbnQgdGhhdCwgaWYgUEhZIHdhcyBhbHJlYWR5IHBvd2VyZWQgT04sIGl0IHNob3VsZCBiZSBw
b3dlcmVkIG9mZiBiZWZvcmUKdWZzX3Fjb21fcGh5X3Bvd2VyX29uKCkuIEFuZCBkdWUgdG8gdGhl
IFVGUyBkcml2ZXIgZGVzaWduLAp1ZnNfcWNvbV9wb3dlcl91cF9zZXF1ZW5jZSgpIGNhbiBnZXQg
Y2FsbGVkIG11bHRpcGxlIHRpbWVzLiBTbyB3ZSBjYW5ub3QganVzdApyZW1vdmUgcGh5X3Bvd2Vy
X29mZigpLgoKQmVsb3cgZGlmZiBvbiB0b3Agb2YgeW91ciBwYXRjaCBmaXhlcyB0aGUgaXNzdWU6
CgpgYGAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLXFjb20uYyBiL2RyaXZlcnMv
dWZzL2hvc3QvdWZzLXFjb20uYwppbmRleCBlZDA2NzI0N2Q3MmEuLjJjOWZlMDNmMzQ5ZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5jCisrKyBiL2RyaXZlcnMvdWZzL2hv
c3QvdWZzLXFjb20uYwpAQCAtNTY3LDYgKzU2Nyw4IEBAIHN0YXRpYyBpbnQgdWZzX3Fjb21fcG93
ZXJfdXBfc2VxdWVuY2Uoc3RydWN0IHVmc19oYmEgKmhiYSkKICAgICAgICBpZiAocmV0KQogICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKIAorICAgICAgIHVmc19xY29tX3BoeV9wb3dlcl9vZmYo
aG9zdCk7CisKICAgICAgICByZXQgPSB1ZnNfcWNvbV9waHlfc2V0X2dlYXIoaG9zdCwgbW9kZSk7
CiAgICAgICAgaWYgKHJldCkgewogICAgICAgICAgICAgICAgZGV2X2VycihoYmEtPmRldiwgIiVz
OiBwaHlfc2V0X21vZGVfZXh0KCkgZmFpbGVkLCByZXQgPSAlZFxuIiwKYGBgCgotIE1hbmkKCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
