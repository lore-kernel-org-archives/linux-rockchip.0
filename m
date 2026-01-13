Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08126C9EC9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 10:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Px+gtYfqyOU6wAOysZPgyqlyl9WeI7R6MePkOxhylp0=; b=rfmtoI8jefUfrH
	2PVmRHXxr69QmxF2kmQkCFf9Fm0WeQa6p0Mcvv1ef7RC75TUcE1BOVnwPG4C6ujifzbdLTuPljruO
	HKbfHOuN8yIN8Fb6/cQ30sB2UAg7iPcg/pB+rgPICQ+SFFkfVEXFPIEBJGRo2M2b7xOQgizUri/zV
	KPap0+qvrpRYbY1nY9SuQcTRXG/1BJ5xQsw+ctPKAImOiCb91wkvFF9Q4HDLxsfo/rGBFo480zPP7
	N3SxZ0MhE2Si5w/y+iJkhC/6d8C9vAXU/mwB5vY8eZEv/Ph2mNW/A9lHqM3vmzGeFWOPOGcli3T93
	35GYBE+lcrE0zV2OkjzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbYt-00000006tnn-1PTv;
	Tue, 13 Jan 2026 10:23:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbYq-00000006tmq-0rfc;
	Tue, 13 Jan 2026 10:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=6ylbTK+s07aeU0l2xyJb3WSMSQ84x36el2OEjXIsKPs=; b=1hNETfxyp9S74G3V6/h4ziny6j
	C8e9NIl9LUIJaNkw6aOE8o+SxQJ8J6BRGZELlgT/3PQIpN0Ke3FGfNAR76cuJIiguJseulWU0dviK
	RI+9VIhMF/rFfw67LoxJm48zfdi57d6wdW4eS6zqGAoq5AIhTP55VmA0geP2eiE6vbc2djA5QjpgA
	34UMSos08JFkBbB+5Fp3t0I9yKMurXk0fC/iuHWJrlCPzZYBmnli/g2yXJVHE9o3FWM5hUKhFv28S
	vLEnHGS/nqy12O7DM1MWg5r/1mLqqlv3q2qv6molfxoYwUeg4LO3IpKidKQmpH3yWDUkiEuBB0Q7v
	ca7wudCA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfbYj-0025LV-LC; Tue, 13 Jan 2026 11:23:34 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 guptarud@gmail.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rudraksha Gupta <guptarud@gmail.com>,
 Kamil =?UTF-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>,
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 2/3] mfd: rk8xx-core: Configure `rk808-clkout2` function
Date: Tue, 13 Jan 2026 11:23:31 +0100
Message-ID: <2159404.K71DO8KEF6@diego>
In-Reply-To: <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_022340_267159_1B3A431D 
X-CRM114-Status: GOOD (  15.74  )
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

SGksCgpBbSBEaWVuc3RhZywgMTMuIEphbnVhciAyMDI2LCAwNzo0MjoyNSBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFJ1ZHJha3NoYSBHdXB0YSB2aWEgQjQgUmVsYXk6Cj4g
RnJvbTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KPiAKPiBXaGlsZSB0aGUg
V2lmaSBhbmQgQmx1ZXRvb3RoIGNoaXAgYXJlIGRlZmluZWQgaW4gdGhlIFBpbmVwaG9uZSBQcm8n
cwo+IERUUywgaXQgYWN0dWFsbHkgaXNuJ3QgYWJsZSB0byBiZSB1c2VkLiBMZXQncyBkZWZpbmUg
cms4MDgtY2xrb3V0MiBzbwo+IHRoYXQgdXNlcnNwYWNlIGNhbiBhY3R1YWxseSBpbnRlcmFjdCB3
aXRoIFdpZmkgYW5kIEJsdWV0b290aAoKTmVlZHMgb2Ygb25lIHNwZWNpYWwgZGV2aWNlIGRvbid0
IHJlYWxseSBqdXN0aWZ5IGNoYW5naW5nIGNvcmUgZHJpdmVycy4KU28gdGhpcyBjb21taXQgbWVz
c2FnZSBkZWZpbml0bHkgbmVlZHMgYSBtb3JlIGdlbmVyYWwgZGVzY3JpcHRpb24gb24Kd2h5IHRo
aXMgaXMgbmVlZGVkLgoKPiBDby1kZXZlbG9wZWQtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5A
YnJpeGl0Lm5sPgo+IFNpZ25lZC1vZmYtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJpeGl0
Lm5sPgo+IFNpZ25lZC1vZmYtYnk6IEthbWlsIFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+
Cj4gU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gU2lnbmVkLW9m
Zi1ieTogUnVkcmFrc2hhIEd1cHRhIDxndXB0YXJ1ZEBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvbWZkL3JrOHh4LWNvcmUuYyAgfCAxICsKPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCB8
IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jIGIvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jCj4g
aW5kZXggZGVmNDU4N2ZkZmI4Li42MDIyMTg2OTQzMzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9t
ZmQvcms4eHgtY29yZS5jCj4gKysrIGIvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jCj4gQEAgLTI4
Miw2ICsyODIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJrODA4X3JlZ19kYXRhIHJrODE4X3By
ZV9pbml0X3JlZ1tdID0gewo+ICAJeyBSSzgxOF9INVZfRU5fUkVHLAkgIEJJVCgwKSwJICAgIFJL
ODE4X0g1Vl9FTiB9LAo+ICAJeyBSSzgwOF9WQl9NT05fUkVHLAkgIE1BU0tfQUxMLAkgICAgVkJf
TE9fQUNUIHwKPiAgCQkJCQkJICAgIFZCX0xPX1NFTF8zNTAwTVYgfSwKPiArCXsgUks4MDhfQ0xL
MzJPVVRfUkVHLCBDTEszMktPVVQyX0ZVTkNfTUFTSywgQ0xLMzJLT1VUMl9GVU5DIH0sCgpTbyBu
b3cgeW91J3JlIHVuY29uZGl0aW9uYWxseSBlbmFibGluZyB0aGlzIGNsb2NrIG91dHB1dCwgd2l0
aG91dCBhbnlib2R5CmJlaW5nIGFibGUgdG8gdHVybiBpdCBvZmYgYWdhaW4/CgpQbGVhc2UgbG9v
ayBhdCBkcml2ZXJzL2Nsay9jbGstcms4MDguYyBhbmQgYWRhcHQgaXQgdG8gaGFuZGxlIHRoZSBy
azh4eAp2YXJpYW50cywgYXMgdGhhdCBwcm92aWRlcyBhIHJlYWwgY2xvY2sgZHJpdmVyIHRoYXQg
eW91ciB3aWZpIG5vZGUgY2FuCnVzZS4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
