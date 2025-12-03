Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 044A4D12D4E
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 12:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1gE+TuycRhaJe8EBweUHruzAPhICHL4EiXi2b44ZDg=; b=eGUr3u0FxE2pV1
	Tw9DSEMHJCiAEw9AkbrbXxa+PAUPph48yBNDe3N92StQRDThw3E5DXMIiHozvW6/r9/2Sqf+dFO+E
	ByfGa+EdGdJVmPaku061zLYdsVfxaC0JY3UtqoadRWMLZDRWjNTFyXCXLDkIut1G9Gi34t2zohGM6
	kD3TRo+4EHp9mCd0vLq2hsDczm7c1v+WCwm17y7XHOCkB8P4mmoOL/2EDP7/E/8wqfZC/a5RBqkyJ
	hA8raKz+qzjyxkjRcq1mh8+Bv+40v6Q9bmaoOUkmj8BiW/+6G7kxHAUvHObhL/05oLjWHg7a904vy
	kSBC2uVN9QCJoFTVhTSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlWi-00000006X7t-3tWK;
	Wed, 03 Dec 2025 12:00:08 +0000
Received: from mail-m1973190.qiye.163.com ([220.197.31.90])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQlWg-00000006X74-0KJV
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 12:00:08 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2bd94477e;
	Wed, 3 Dec 2025 19:59:56 +0800 (GMT+08:00)
Message-ID: <31c64e8f-3129-4766-b735-84a26198e6d0@rock-chips.com>
Date: Wed, 3 Dec 2025 19:59:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/4] RFT: drm/rockchip: Create custom commit tail
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Linus Walleij <linusw@kernel.org>, Vicente Bergas <vicencb@gmail.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Marek Vasut <marek.vasut+renesas@mailbox.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Aradhya Bhatia <a-bhatia1@ti.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Aradhya Bhatia <aradhya.bhatia@linux.dev>
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org>
 <5d6e8e0e-3129-49f1-8c5f-c2f837a36139@rock-chips.com>
 <CACRpkdZwgsbVezfQBRP6pX-o8TLvtFMt+M+rL7GrTmeuzN8xvQ@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CACRpkdZwgsbVezfQBRP6pX-o8TLvtFMt+M+rL7GrTmeuzN8xvQ@mail.gmail.com>
X-HM-Tid: 0a9ae4155c6103abkunmdafda06941e8a2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk0eSFZPH0lKSE0ZShgdSkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=YAU3GdhcWgxEahXohg2T2PUXRrn7FEt4Pfj+0ryOWfo7paJh/sIHpwHv6eZGbRXhxOxqdKJ2csyeFBoVy4+DZvLN5e3fDu7EvsYzNoPJtnG8EXFOKZJpuxA1KGru6m6E+nXvtJFz0oqk2zPGjL9J8SiX0NwsHgxamdtZgnPSwQk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=2d07mvFdS01wxsxr01fOMc8tzwEqyFdVB0HHl3Od8g0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_040006_609925_97635C89 
X-CRM114-Status: GOOD (  11.52  )
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

T24gMTIvMy8yMDI1IDU6NTQgUE0sIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4gT24gV2VkLCBEZWMg
MywgMjAyNSBhdCA0OjEw4oCvQU0gQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMu
Y29tPiB3cm90ZToKPiAKPj4gSXQgc2VlbXMgdGhhdCBtdWx0aXBsZSBkcml2ZXJzIGN1cnJlbnRs
eSBkZXBlbmQgb24gdGhlIENSVEMgYmVpbmcKPj4gZW5hYmxlZCBhbmQgdGhleSBpbXBsZW1lbnQg
dGhlIHNhbWUgYXRvbWljX2NvbW1pdF90YWlsKCkuCj4+Cj4+IFdoeSBub3QgaW1wbGVtZW50IHRo
aXMgaW4gZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWxfcnBtKCkgaW5zdGVhZD8KPj4gT3Ig
d2h5IG5vdCB1c2UgYW5vdGhlciBjb21tb24gaGVscGVyIGZ1bmN0aW9uIGZvciB0aGlzPwo+IAo+
IFNvIG15IHYyIHZlcnNpb24gb2YgdGhlIHBhdGNoIHNlcmllcyBhZGRlZCBhIG5ldyBzcGVjaWFs
IGNhc2UKPiBoZWxwZXIgdGFpbCBmdW5jdGlvbiB0byBkbyB0aGF0Ogo+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI1MTExOC1tY2RlLWRybS1yZWdyZXNzaW9uLXYyLTMtNGZl
ZGYxMGIxOGY2QGxpbmFyby5vcmcvCj4gCj4gSXQgd2FzIHBvbGl0ZWx5IE5BQ0tlZCBmb3IgY29t
cGxpY2F0aW5nIHRoZSBoZWxwZXJzIGxpYnJhcnkgKHNob3J0IHN0b3J5KS4KPiAKPiBJdCdzIHBh
cnQgb2YgdGhlIHRyYWlsIG9mIGhvdyB3ZSBnb3QgdG8gdGhpcyBjdXJyZW50IHBhdGNoIHNlcmll
cy4KPgoKQWgsIGdvdCBpdC4gUGxlYXNlIHRha2UgYSBsb29rIGF0IG15IG90aGVyIGNvbW1lbnRz
IHRvIHNlZSBpZiB0aGVyZSdzCmEgY2hhbmNlIHRvIGNoYW5nZSB0aGUgYnJpZGdlIGZ1bmN0aW9u
cyB0byBhY2hpZXZlIHRoaXMuIFRoYW5rIHlvdS4KCi0tIApCZXN0LCAKQ2hhb3lpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
