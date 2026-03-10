Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D34FD2D9A
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 13:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUOkml8Pmw0Ksy9n0I3atqaaClUC1XAs6sVoJrxPnjI=; b=lUdWkbCf4dfWwS
	AHzQAGqvq3u2Sgq9+otvSVhCwuo3R9MZCaJUYoheh9yzZP3kNxPwH1RX6zK98y2j8nCelsXOmKjks
	569zVXv5L39ajD1PSr6rz4WTwsAC8oVLdepjVjkB5PGLfuADf1nLJ59l13blm8BOliSENFS8fFRw/
	HJ2ll7tBOgYm+lcnoPO7dzpBXJF7DOAjNfPwJcxCkb1cJxZNtAtT7tYd/UHvCVFtSk7Seafputas6
	frN7toMlCVI6Ke8fyjZu7VpcSypKw456ez+lh/sL2ghboAtQJVy5yenDodAIoMzVyynb7YOhIgFv/
	8O3M2uYbOmcOnra863tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzxZD-00000009dmx-1L11;
	Tue, 10 Mar 2026 13:56:11 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzxZ9-00000009dlv-33LR;
	Tue, 10 Mar 2026 13:56:09 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 539B3433BD;
	Tue, 10 Mar 2026 13:55:53 +0000 (UTC)
Message-ID: <375c7c30c184d331c199876e45920976030f3cbc.camel@hadess.net>
Subject: Re: [PATCH 25/61] net/bluetooth: Prefer IS_ERR_OR_NULL over manual
 NULL check
From: Bastien Nocera <hadess@hadess.net>
To: Philipp Hahn <phahn-oss@avm.de>, amd-gfx@lists.freedesktop.org, 
	apparmor@lists.ubuntu.com, bpf@vger.kernel.org, ceph-devel@vger.kernel.org,
 	cocci@inria.fr, dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
 	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
 kvm@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-block@vger.kernel.org, 	linux-bluetooth@vger.kernel.org,
 linux-btrfs@vger.kernel.org, 	linux-cifs@vger.kernel.org,
 linux-clk@vger.kernel.org, 	linux-erofs@lists.ozlabs.org,
 linux-ext4@vger.kernel.org, 	linux-fsdevel@vger.kernel.org,
 linux-gpio@vger.kernel.org, 	linux-hyperv@vger.kernel.org,
 linux-input@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, 	linux-media@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org, 
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 ntfs3@lists.linux.dev, 	samba-technical@lists.samba.org,
 sched-ext@lists.linux.dev, 	target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, 	v9fs@lists.linux.dev
Cc: Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg
	 <johan.hedberg@gmail.com>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Date: Tue, 10 Mar 2026 14:55:52 +0100
In-Reply-To: <20260310-b4-is_err_or_null-v1-25-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
	 <20260310-b4-is_err_or_null-v1-25-bd63b656022d@avm.de>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-GND-Sasl: hadess@hadess.net
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvkeduudelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkuffhvfevffgjfhgtgfgfggesthhqredttderjeenucfhrhhomhepuegrshhtihgvnhcupfhotggvrhgruceohhgruggvshhssehhrgguvghsshdrnhgvtheqnecuggftrfgrthhtvghrnhepieffgfehtedtgefgjeeggfffgeeuvdegveekveejfeekkedujeehteffueefffeunecukfhppedvrgdtudemvgefgeemvggtjeefmegtfhdvtdemsggrgeefmegrieejieemtgdvugefmeejrgehfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemvgefgeemvggtjeefmegtfhdvtdemsggrgeefmegrieejieemtgdvugefmeejrgehfedphhgvlhhopeglkffrvheimedvrgdtudemvgefgeemvggtjeefmegtfhdvtdemsggrgeefmegrieejieemtgdvugefmeejrgehfegnpdhmrghilhhfrhhomhephhgruggvshhssehhrgguvghsshdrnhgvthdpqhhiugepheefleeufeegfeefueffpdhmohguvgepshhmthhpohhuthdpnhgspghrtghpthhtohepheejpdhrtghpthhtohepphhhrghhnhdqohhsshesrghvmhdruggvpdhrtghpthhtoheprghmugdqghhfgieslhhishhtshdrfhhrvggvu
 ggvshhkthhophdrohhrghdprhgtphhtthhopegrphhprghrmhhorheslhhishhtshdruhgsuhhnthhurdgtohhmpdhrtghpthhtohepsghpfhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegtvghphhdquggvvhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohgttghisehinhhrihgrrdhfrh
X-GND-State: clean
X-GND-Score: -100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_065607_922658_77A04CBE 
X-CRM114-Status: GOOD (  10.64  )
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

T24gVHVlLCAyMDI2LTAzLTEwIGF0IDEyOjQ4ICswMTAwLCBQaGlsaXBwIEhhaG4gd3JvdGU6Cj4g
UHJlZmVyIHVzaW5nIElTX0VSUl9PUl9OVUxMKCkgb3ZlciB1c2luZyBJU19FUlIoKSBhbmQgYSBt
YW51YWwgTlVMTAo+IGNoZWNrLgo+IAo+IENoYW5nZSBnZW5lcmF0ZWQgd2l0aCBjb2NjaW5lbGxl
Lgo+IAo+IFRvOiBNYXJjZWwgSG9sdG1hbm4gPG1hcmNlbEBob2x0bWFubi5vcmc+Cj4gVG86IEpv
aGFuIEhlZGJlcmcgPGpvaGFuLmhlZGJlcmdAZ21haWwuY29tPgo+IFRvOiBMdWl6IEF1Z3VzdG8g
dm9uIERlbnR6IDxsdWl6LmRlbnR6QGdtYWlsLmNvbT4KPiBDYzogbGludXgtYmx1ZXRvb3RoQHZn
ZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVk
LW9mZi1ieTogUGhpbGlwcCBIYWhuIDxwaGFobi1vc3NAYXZtLmRlPgoKUmV2aWV3ZWQtYnk6IEJh
c3RpZW4gTm9jZXJhIDxoYWRlc3NAaGFkZXNzLm5ldD4KCj4gLS0tCj4gwqBuZXQvYmx1ZXRvb3Ro
L21nbXQuYyB8IDYgKysrLS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9uZXQvYmx1ZXRvb3RoL21nbXQuYyBiL25l
dC9ibHVldG9vdGgvbWdtdC5jCj4gaW5kZXgKPiBhNzIzOGZkM2IwM2JiNTRmMzlhZjFhZmVlNzRk
YzFhY2Q5MzFjMzI0Li4wNmQyZGE2N2JiZTE0ZTE3ZWU0NzhhYTkzOWQKPiBlMjY1MjZjMzMzZDkx
IDEwMDY0NAo+IC0tLSBhL25ldC9ibHVldG9vdGgvbWdtdC5jCj4gKysrIGIvbmV0L2JsdWV0b290
aC9tZ210LmMKPiBAQCAtNDE2OSw3ICs0MTY5LDcgQEAgc3RhdGljIHZvaWQgc2V0X2RlZmF1bHRf
cGh5X2NvbXBsZXRlKHN0cnVjdAo+IGhjaV9kZXYgKmhkZXYsIHZvaWQgKmRhdGEsIGludCBlcnIp
Cj4gwqAJCW1nbXRfcGh5X2NvbmZpZ3VyYXRpb25fY2hhbmdlZChoZGV2LCBjbWQtPnNrKTsKPiDC
oAl9Cj4gwqAKPiAtCWlmIChza2IgJiYgIUlTX0VSUihza2IpKQo+ICsJaWYgKCFJU19FUlJfT1Jf
TlVMTChza2IpKQo+IMKgCQlrZnJlZV9za2Ioc2tiKTsKPiDCoAo+IMKgCW1nbXRfcGVuZGluZ19m
cmVlKGNtZCk7Cj4gQEAgLTU3MzAsNyArNTczMCw3IEBAIHN0YXRpYyB2b2lkIHJlYWRfbG9jYWxf
b29iX2RhdGFfY29tcGxldGUoc3RydWN0Cj4gaGNpX2RldiAqaGRldiwgdm9pZCAqZGF0YSwKPiDC
oAkJCcKgIE1HTVRfU1RBVFVTX1NVQ0NFU1MsICZtZ210X3JwLCBycF9zaXplKTsKPiDCoAo+IMKg
cmVtb3ZlOgo+IC0JaWYgKHNrYiAmJiAhSVNfRVJSKHNrYikpCj4gKwlpZiAoIUlTX0VSUl9PUl9O
VUxMKHNrYikpCj4gwqAJCWtmcmVlX3NrYihza2IpOwo+IMKgCj4gwqAJbWdtdF9wZW5kaW5nX2Zy
ZWUoY21kKTsKPiBAQCAtODI3Nyw3ICs4Mjc3LDcgQEAgc3RhdGljIHZvaWQKPiByZWFkX2xvY2Fs
X29vYl9leHRfZGF0YV9jb21wbGV0ZShzdHJ1Y3QgaGNpX2RldiAqaGRldiwgdm9pZCAqZGF0YSwK
PiDCoAkJCQkgbWdtdF9ycCwgc2l6ZW9mKCptZ210X3JwKSArCj4gZWlyX2xlbiwKPiDCoAkJCQkg
SENJX01HTVRfT09CX0RBVEFfRVZFTlRTLCBjbWQtPnNrKTsKPiDCoGRvbmU6Cj4gLQlpZiAoc2ti
ICYmICFJU19FUlIoc2tiKSkKPiArCWlmICghSVNfRVJSX09SX05VTEwoc2tiKSkKPiDCoAkJa2Zy
ZWVfc2tiKHNrYik7Cj4gwqAKPiDCoAlrZnJlZShtZ210X3JwKTsKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
