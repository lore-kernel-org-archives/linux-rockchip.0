Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D6FEEB59B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Sep 2023 06:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLpGvzB1dBLlisiZ3xY+1uQjm/nmDEHSmSlbrjdx34c=; b=CdPa/BDPMGj7hc
	jBGm6UoF619ZPEx8mlkVlthv2WGRfsGbh0CiOo1pBLUUugFMMGA8SCiSZo50ZEcZU4Hb+e9bdi5fT
	dJN3HcKaiYtZzLU1YbGc/mDnW21k2228hrv3uwEqUA2+s0ZEEUNvr9TSa3e+HuLI5bEJa6+czrpN9
	2+lTloaCzKWFGGOLL7HaDPEN6Wp1PdF7T5vlZPpa22o6igCfJkhLlusXD7MC7a98FLNF3UDoxD/oB
	GjswAdQwXhSxbxI8ew2VmjVkptqlVDV2Mhmu8fy6PkScd2Ov7udST0ChrnxxysRkMmF6j6Mpm5iRs
	6wvUkqhHW7d3qNZpc+jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgJpt-004s5g-37;
	Wed, 13 Sep 2023 06:58:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgJpp-004s2q-1h
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Sep 2023 06:58:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qgJpl-00010A-4Y; Wed, 13 Sep 2023 08:58:45 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qgJpk-005wdx-9L; Wed, 13 Sep 2023 08:58:44 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qgJpj-0064HV-L3; Wed, 13 Sep 2023 08:58:43 +0200
Date: Wed, 13 Sep 2023 08:58:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	kernel@pengutronix.de,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: add support for io-domain
 dependency
Message-ID: <20230913065843.GF637806@pengutronix.de>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-2-s.hauer@pengutronix.de>
 <CACRpkdYxRdToUM3JcEeNK_K87D5WDzzSLvVEbtqqdQEhz3k_Ow@mail.gmail.com>
 <CAGb2v65G-8EECNjqnpKCxqAD5nATAb0S7AA_WMiGXYOR1avrvg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v65G-8EECNjqnpKCxqAD5nATAb0S7AA_WMiGXYOR1avrvg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_235849_565760_BCA13D00 
X-CRM114-Status: GOOD (  30.78  )
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

T24gV2VkLCBTZXAgMTMsIDIwMjMgYXQgMTI6Mzc6NTRQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIFR1ZSwgU2VwIDEyLCAyMDIzIGF0IDQ6MDfigK9QTSBMaW51cyBXYWxsZWlqIDxs
aW51cy53YWxsZWlqQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4KPiA+IFRvcCBwb3N0aW5nIHRvIGJy
aW5nIFNhcmF2YW5hIEthbm5hbiBpbnRvIHRoaXMgZGlzY3Vzc2lvbi4KPiA+Cj4gPiBUaGlzIGxv
b2tzIGxpa2UgYSBiaWcgaGFjayB0byBtZSwgU2FyYXZhbmEgaGFzIGJlZW4gd29ya2luZwo+ID4g
dGlyZWxlc3NseSB0byBtYWtlIHRoZSBkZXZpY2UgdHJlZSBwcm9iZSBvcmRlciAic29ydCBpdHNl
bGYgb3V0Igo+ID4gYW5kIEkgYW0gcHJldHR5IHN1cmUgdGhpcyBpc3N1ZSBuZWVkcyB0byBiZSBm
aXhlZCBhdCB0aGUgRFQKPiA+IGNvcmUgbGV2ZWwgYW5kIG5vdCBpbiBhIGRyaXZlci4KPiAKPiBX
ZSBjb3VsZCBtZXJnZSBhbGwgdGhlIElPIGRvbWFpbiBzdHVmZiBpbnRvIHRoZSBwaW5jdHJsIG5v
ZGUvZHJpdmVyLAo+IGxpa2UgaXMgZG9uZSBmb3IgQWxsd2lubmVyPyBNYXliZSB0aGF0IHdvdWxk
IHNpbXBsaWZ5IHRoaW5ncyBhIGJpdD8KCkkgdGhvdWdodCBhYm91dCB0aGlzIGFzIHdlbGwuIE9u
IFJvY2tjaGlwIHRoZSBwaW5jdHJsIGRyaXZlciBhbmQgdGhlIElPCmRvbWFpbiBkcml2ZXIgZXZl
biB3b3JrIG9uIHRoZSBzYW1lIHJlZ2lzdGVyIHNwYWNlLCBzbyBwdXR0aW5nIHRoZXNlCmludG8g
YSBzaW5nbGUgbm9kZS9kcml2ZXIgd291bGQgZXZlbiBmZWVsIG1vcmUgbmF0dXJhbCB0aGFuIHdo
YXQgd2UgaGF2ZQpub3cuCkhvd2V2ZXIsIHdpdGggdGhhdCB0aGUgcGluY3RybCBub2RlIHdvdWxk
IGdldCB0aGUgc3VwcGxpZXMgdGhhdCB0aGUgSU8KZG9tYWluIG5vZGUgbm93IGhhcyBhbmQgd2Ug
d291bGQgbmV2ZXIgZ2V0IGludG8gdGhlIHByb2JlIG9mIHRoZSBwaW5jdHJsCmRyaXZlciBkdWUg
dG8gdGhlIGNpcmN1bGFyIGRlcGVuZGVuY2llcy4KCj4gCj4gSUlSQyBvbiBBbGx3aW5uZXIgU29D
cyB0aGUgUE1JQyBwaW5zIGRvbid0IGhhdmUgYSBzZXBhcmF0ZSBwb3dlciByYWlsLAo+IG9yIGlm
IHRoZXkgZG8gdGhleSBhbG1vc3QgY2VydGFpbmx5IHVzZSB0aGUgZGVmYXVsdCBJL08gcmFpbCB0
aGF0IGlzCj4gYWx3YXlzIG9uLCBhbmQgc28gd2Ugb21pdCBpdCB0byB3b3JrIGFyb3VuZCB0aGUg
ZGVwZW5kZW5jeSBjeWNsZS4KCkkgbG9va2VkIGludG8gc3VuNTBpIGFzIGFuIGV4YW1wbGUuIFRo
aXMgb25lIGhhcyB0d28gcGluY3RybCBub2RlcywgcGlvCmFuZCByX3Bpby4gT25seSB0aGUgZm9y
bWVyIGhhcyBzdXBwbGllcyB3aGVyZWFzIHRoZSBsYXR0ZXIsIHdoZXJlIHRoZQpQTUlDIGlzIGNv
bm5lY3RlZCB0bywgaGFzIChmb3VuZCBpbiBzdW41MGktYTY0LXBpbmVwaG9uZS5kdHNpKToKCiZy
X3BpbyB7CgkvKgoJICogRklYTUU6IFdlIGNhbid0IGFkZCB0aGF0IHN1cHBseSBmb3Igbm93IHNp
bmNlIGl0IHdvdWxkCgkgKiBjcmVhdGUgYSBjaXJjdWxhciBkZXBlbmRlbmN5IGJldHdlZW4gcGlu
Y3RybCwgdGhlIHJlZ3VsYXRvcgoJICogYW5kIHRoZSBSU0IgQnVzLgoJICoKCSAqIHZjYy1wbC1z
dXBwbHkgPSA8JnJlZ19hbGRvMj47CgkgKi8KfTsKCkF0IGxlYXN0IGl0IHNob3cgbWUgdGhhdCBJ
IGFtIG5vdCB0aGUgZmlyc3Qgb25lIHdobyBoYXMgdGhpcyBwcm9ibGVtIDspCgpXZSBjb3VsZCBh
ZGQgdGhlIHN1cHBsaWVzIHRvIHRoZSBwaW5ncm91cCBzdWJub2RlcyBvZiB0aGUgcGluY3RybCBk
cml2ZXIKdG8gYXZvaWQgdGhhdCwgYnV0IGFzIFNhcmF2YW5hIGFscmVhZHkgbWVuaW9uZWQsIHRo
YXQgd291bGQgZmVlbCBsaWtlCm92ZXJraWxsLgoKU2FzY2hhCgotLSAKUGVuZ3V0cm9uaXggZS5L
LiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3
dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAg
ICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVz
aGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
