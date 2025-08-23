Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6771CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 13:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GckViZ9T+Q+Jkdm0k71XdNKDxrrSz1QopLuHW+82Tq0=; b=rLAW7EU5dIpN8e
	mQxFP6iewXtJ77ytP2sDmnN0VLpEsFZf+tJJyMNRh4Tqx9pr8E74Kuzds1MU1pqVwIxLYhG0qwWRW
	es+xN4+s8deZznVVY5ls/7idugSRxmJ2Yj8024jURpvh/W8n2E4spTbSm/IY3l440JlMAzj4f4iW3
	eRIbj+6DqG6r938g1LYqbURcVjTyjlT9fkS+OPSxbFITxhDoxLSQRly5qWBNxjCcW8YKJmeaMOiUQ
	2ypvdceoKFDJB/NipIawB4OPef/I5KNScnB2WC/iHQpLYVZhMgFj/Sf71/tGQSRJms7GAwvNT3O8A
	7V2cis/WAvf4LcHXPOmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upoOI-00000004o4A-3ooK;
	Sat, 23 Aug 2025 13:34:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upoLB-00000004nve-2VBs;
	Sat, 23 Aug 2025 13:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1755955885; bh=xD2qXS1OqnfB4ixy8P2YWslAr2PFZXWLVpd7ffyzsoE=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=oj1ZnTEfJLanuyfTM903xQPlU1Q1ZxAOk61DCfYlJ81rLe+UCgVorD+rNBM0WSbY3
	 iCFG1hYq5ahEN1wheZwwBpTatA1fO5PoMtm6H5MiTM7rYTIZ3hUd2KxN27T02sSdz0
	 4KrouToU9aj5/NKGP7IQl9VzsD7SrnuR08gHdHA8=
Date: Sat, 23 Aug 2025 15:31:24 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: maud_spierings@hotmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Fix the headphone detection on
 the orangepi 5 plus
Message-ID: <q47mi7iyx4nu3tkrtsjrghlultm3kj4zz73uekffalm2vwjck7@btiiymy6fohy>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	maud_spierings@hotmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20250823-orangepi5-v1-0-ae77dd0e06d7@hotmail.com>
 <20250823-orangepi5-v1-1-ae77dd0e06d7@hotmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250823-orangepi5-v1-1-ae77dd0e06d7@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_063130_076413_BECF00DB 
X-CRM114-Status: GOOD (  18.32  )
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

SGVsbG8gTWF1ZCwKCk9uIFNhdCwgQXVnIDIzLCAyMDI1IGF0IDAyOjQzOjUwUE0gKzAyMDAsIE1h
dWQgU3BpZXJpbmdzIHZpYSBCNCBSZWxheSB3cm90ZToKPiBGcm9tOiBNYXVkIFNwaWVyaW5ncyA8
bWF1ZF9zcGllcmluZ3NAaG90bWFpbC5jb20+Cj4gCj4gVGhlIGxvZ2ljIG9mIHRoZSBoZWFkcGhv
bmUgZGV0ZWN0IHBpbiBzZWVtcyB0byBiZSBpbnZlcnRlZCwgd2l0aCB0aGlzCj4gY2hhbmdlIGhl
YWRwaG9uZXMgYWN0dWFsbHkgb3V0cHV0IHNvdW5kIHdoZW4gcGx1Z2dlZCBpbi4KPiAKPiBWZXJp
ZmllZCBieSBjaGVja2luZyAvc3lzL2tlcm5lbC9kZWJ1Zy9ncGlvIGFuZCBieSBsaXN0ZW5pbmcu
CgpUaGlzIGNhbiBhbHNvIGJlIHRlc3RlZCBieToKCiAgZXZ0ZXN0IC9kZXYvaW5wdXQvYnktcGF0
aC9wbGF0Zm9ybS1zb3VuZC1ldmVudAoKV2hpY2ggc2hvd3MgaW52ZXJ0ZWQgb3V0cHV0IHdpdGhv
dXQgdGhpcyBwYXRjaC4KClJldmlld2VkLWJ5OiBPbmTFmWVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+
CgoKPiBGaXhlczogMjM2ZDIyNWUxZWU3ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBib2Fy
ZCBkZXZpY2UgdHJlZSBmb3IgcmszNTg4LW9yYW5nZXBpLTUtcGx1cyIpCj4gU2lnbmVkLW9mZi1i
eTogTWF1ZCBTcGllcmluZ3MgPG1hdWRfc3BpZXJpbmdzQGhvdG1haWwuY29tPgo+IC0tLQo+IFRo
ZXJlIHdhcyBhIGJpZyBjaGFuZ2UgYXQgc29tZSBwb2ludCBzbyBpdCB3aWxsIHRha2Ugc29tZSBl
ZmZvciB0byBwb3J0Cj4gaXQgYmFjayB0aGF0IGZhci4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cyB8IDIgKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRz
Cj4gaW5kZXggMTIxZTRkMWMzZmE1ZGFiMGQwOGVkZjdjYmE2OTJhNzY1YjQ4ZjdiNC4uODIyMmYx
ZmFlOGZhZGM1Y2JiNGVmMTZiM2RiNWVkOTc1ZWQ0MzkxNSAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cwo+
IEBAIC03Nyw3ICs3Nyw3IEBAICZhbmFsb2dfc291bmQgewo+ICAJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKPiAgCXBpbmN0cmwtMCA9IDwmaHBfZGV0ZWN0PjsKPiAgCXNpbXBsZS1hdWRpby1j
YXJkLGF1eC1kZXZzID0gPCZzcGVha2VyX2FtcD4sIDwmaGVhZHBob25lX2FtcD47Cj4gLQlzaW1w
bGUtYXVkaW8tY2FyZCxocC1kZXQtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BEMyBHUElPX0FDVElWRV9M
T1c+Owo+ICsJc2ltcGxlLWF1ZGlvLWNhcmQsaHAtZGV0LWdwaW9zID0gPCZncGlvMSBSS19QRDMg
R1BJT19BQ1RJVkVfSElHSD47Cj4gIAlzaW1wbGUtYXVkaW8tY2FyZCx3aWRnZXRzID0KPiAgCQki
TWljcm9waG9uZSIsICJPbmJvYXJkIE1pY3JvcGhvbmUiLAo+ICAJCSJNaWNyb3Bob25lIiwgIk1p
Y3JvcGhvbmUgSmFjayIsCj4gCj4gLS0gCj4gMi41MC4xCj4gCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
