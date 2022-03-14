Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3945EC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 15:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tG4KGRuM9U2vbTNdQg7knXHykBvPblBgUcy/8V40Bc=; b=2FPdILNuRV6E7X
	MIokRqsKPZ4FrItH9VzxB1Ysx5KKhSxEKf+iaP0IJFuxT2mnQT+YC8dfG4lPJj5UhTi4UQ0eXKz5k
	qzt9m1WGg10DcCMxM4Qp0cbuje8GkIFvF69BnsSHTnrCTPt0ilIs6KGcZRbbBdh9SUXG1fecfMr9s
	3/alzQSu6cTEl0gjq1eFKz8fgNWYO+DquBukv5QbStnka498x0Dd63mSR62ypqnBoEyTWFF7bqrzx
	s+5qD2ALTA8gY884NYuD23wEPoejl2Cl8yYrGDCeRP2JdURLsKysXOLtkLufhqnQEnX4alxD6D9l1
	GUQHGBv1HT1ynPJdYGDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTmnF-005qYr-14; Mon, 14 Mar 2022 15:39:33 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTmnB-005qXW-W2; Mon, 14 Mar 2022 15:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1647272337;
 bh=0hiQdLYzzJrthQHxIhtX0qW9S2gMLh89hdfAM3B+VpA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=M0/CkdUgHniD7my+WJFaXS8on2DZoU1UHIumjJY5/RLve9LM0/8rrNW21QQAz90xK
 slsFpODg4S9QyM78LqFlRSM9d/S6hOM/0x25yyct1wRenI+dYZ2Bqr7D5zwaichfKl
 iRRF6kPJmt5FQyFDrn3184Z0XUlQOsMH7LGNrK8c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.151.147] ([217.61.151.147]) by web-mail.gmx.net
 (3c-app-gmx-bap56.server.lan [172.19.172.126]) (via HTTP); Mon, 14 Mar 2022
 16:38:56 +0100
MIME-Version: 1.0
Message-ID: <trinity-0f1389c2-6d2b-4499-a2fc-3cb93f4d09cb-1647272336831@3c-app-gmx-bap56>
From: Frank Wunderlich <frank-w@public-files.de>
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org, Damien
 Le Moal <damien.lemoal@opensource.wdc.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org, Andrew Lunn
 <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>, Hans
 de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Aw: Re: [PATCH v6 3/6] ARM: dts: spear13xx: Fix sata node name
Date: Mon, 14 Mar 2022 16:38:56 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220314034940.rxkgue2kllnqhucp@vireshk-i7>
References: <20220311210357.222830-1-linux@fw-web.de>
 <20220311210357.222830-4-linux@fw-web.de>
 <20220314034940.rxkgue2kllnqhucp@vireshk-i7>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:gLht/1WascKmAkHg0tigkfra0fk/gYur/IiTTMyyGSmcqwrhVynoTW1YUGql3lgRW5ger
 mr12NMylEOhVVALt80u84ZjKVBJ7oI7WqUrWb/y/OBKCMtUra5ihwbKArSFZ48al4xvyGvZIatZc
 qPw+YSSsjtiAU9rOy1BerK6PqUP/yOza87QD0B6s53j7t/F2lFW3Xe7UrjmcriDTvRkmKWtJCMrF
 ySC9cjsPCU5IlctIX9DIy8McWyMOmjjQe4/7EhuseuCN1qDetJTTTaqHNqOjmCc+Ov6wkDwHIS5u
 sE=
X-UI-Out-Filterresults: notjunk:1;V03:K0:P7tFke7m43c=:1oXfuKyenANOYRAc66LkBH
 cVYLR8BkFV9yGq6h5Cit41aVWt3DcoBXnFIcJzt1mTDjAe0DmxngO8L6jeCoPRsolhVm0ZtSu
 IdXGjL8mhV7xFv3XH+TkMigzy+9ztqKB2ZZ+Bdlg4voJlHu0mWpUEj5xXR9p7sZ1Yu0kp+zdm
 K0Z+UhFD99hfNjsenukQ6dmMw7EduTiM2v5jkLSzSEk41v9P/kDsegjxrq9EI1LSBYNmeWOvk
 DcO4bCa7B0Y9goU/p3td+VEvFyQozMa2fFFR3jsXad+J0NsuRQ2KCvdA5xwRPOm76n22IkL7x
 RYYMVS/ts8/S5g/jBZrpBQSSXdv9TfPbxgucfhI7MkYneu29nmTQEv3r7nmlrbzlDMUUZ9AJ6
 J3n78jqaduZ2tTtOpCUL6ZDLDSR++qiM/WKSzO5vJyZc/BVdb3NPUl6vWb7K4UMopvzMEGzon
 Jv6F49GZ7lAdSsw1U/vM+gcSuBbbPtkQPBsSBqzrF/Wu+j++/g3/ll2jcGnahhojK0tO5bCa2
 3uDUdamaugIC/X9BUzS0JqakB2Z2PULqJlphjCuRzw9xPk0BLZUPDAy4L/0LAubmtqtactreL
 J5KqriwpQm3aZvR/3OG6DL/dA2uvtR8mPktV5DgJ8K92+SkDHfW+KUjeGGE88GiFsu/A0dqMC
 5xrpYuuveosYcslnNHfV6W7AXDlmgUDbVSW7mmX/7C4lObY0ZugyXUBxLvEXN/f22vk+E+Xlg
 kUULzqwqxwAlZxSRBHp1UPfO5ZlLJ9CuCoVoNHaSvYSwzpquEJqx2TgEJiiuFQ3DrzCKyzqW4
 TrU16gE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_083930_406549_72D1B9BE 
X-CRM114-Status: GOOD (  17.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGksCgp0aGFua3MgZm9yIGZvciBjaGVja2luZyB0aGUgc3BlYXItcGF0Y2guCgo+IEdlc2VuZGV0
OiBNb250YWcsIDE0LiBNw6RyeiAyMDIyIHVtIDA0OjQ5IFVocgo+IFZvbjogIlZpcmVzaCBLdW1h
ciIgPHZpcmVzaC5rdW1hckBsaW5hcm8ub3JnPgo+Cj4gT24gMTEtMDMtMjIsIDIyOjAzLCBGcmFu
ayBXdW5kZXJsaWNoIHdyb3RlOgo+ID4gRnJvbTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0Bw
dWJsaWMtZmlsZXMuZGU+Cj4gPiAKPiA+IEFmdGVyIGNvbnZlcnRpbmcgdGhlIGJpbmRpbmcgdG8g
eWFtbCB0aGUgbm9kZSBuYW1lIGRvZXMKPiA+IG5vdCBtYXRjaCB0aGUgc3RhbmRhcmQgcGF0dGVy
biwgY2hhbmdlIGl0Lgo+ID4gCj4gPiBhcmNoL2FybS9ib290L2R0cy9zcGVhcjEzNDAtZXZiLmR0
LnlhbWw6IGFoY2lAYjEwMDAwMDA6Cj4gPiAkbm9kZW5hbWU6MDogJ2FoY2lAYjEwMDAwMDAnIGRv
ZXMgbm90IG1hdGNoICdec2F0YShALiopPyQnCj4gPiAJRnJvbSBzY2hlbWE6IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hdGEvYWhjaS1wbGF0Zm9ybS55YW1sCj4gPiAKPiA+IEZp
eGVzOiAwNzY1OGQ5YTY1OWIgKCJTUEVBcjEzeHg6IEFkZCBkdHMgYW5kIGR0c2kgZmlsZXMiKQo+
IAo+IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBjb3JyZWN0LiBUaGUgYWJvdmUgcGF0Y2ggaXMgY29y
cmVjdC4gVGhlIGZpcnN0Cj4gcGF0Y2ggaW4gdGhpcyBzZXJpZXMgY2hhbmdlcyB0aGUgbmFtZXMg
YW5kIHRoYXQncyB3aGVyZSB0aGluZ3MgYnJlYWsuCgppdCdzIHJpZ2h0IHRoYXQgbXkgYmluZGlu
ZyB3aWxsIGJyZWFrIGl0LCBidXQgdGhlIG5vZGVzIGFyZSBub3QgbmFtZWQgdGhlIHJpZ2h0IHdh
eS4KQW5kIGkgdXNlZCB0aGUgY29tbWl0IHRoYXQgaW50cm9kdWNlcyB0aGUgd3Jvbmcgbm9kZS1u
YW1lcy4KTWF5YmUgZml4ZXMtdGFnIGlzIHdyb25nIGluIHRoaXMgY2FzZS4KCj4gSSB0aGluayB5
b3UgY291bGQgaGF2ZSBhZGRlZCB0aGVzZSBwYXRjaGVzIGJlZm9yZSBjaGFuZ2luZyB0byB5YW1s
IGFuZAo+IHRoZW4gbm90aGluZyB3b3VsZCBldmVyIGhhdmUgYnJva2VuLgo+IAo+IFNpbmNlIHRo
aXMgaXNuJ3QgYSBiaWcgZGVhbCBhbnl3YXksIEkgdGhpbmsgeW91IGNhbiBqdXN0IGRyb3AgdGhl
Cj4gRml4ZXMgdGFnIGhlcmUsIGFuZCBvdGhlciBkdHMgcGF0Y2hlcyB5b3UgaGF2ZS4KCnJlZ2Fy
ZHMgRnJhbmsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
