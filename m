Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03FF2C55838
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 18:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0Iel5iDiPCZuQ34IwEaRTAE5Oc+hVJoz8T+9tmRo2E=; b=zRiyJHCm2VSdik
	NDXAS7fx6saGMk3Te6FuDLf63zKqbpIuh3/Du7pa/LOUzFyHc4jgGPpMTIGrSBDrjuzyqjZUGbGUi
	tRqTF/DoeEhwImiJflHzM4PXEFTv2Xr/RUoazfgOxFWyeXNndhU/xLHrRcqc+OU2HErXQnN9rrv63
	ovWveM4V4utcZy4WUfAZDrbBMTS1HfByaXvqHA+Q9h5GstUmIhaFgIjoeQm3pouwJUXuZiYTX83kb
	xvyk27/P5b+fMbFVSGxAigKL3iuFUsV7Xbvtwfsv7Tz+C5lQN4HPhke10M3/NTmXZN6ictnthPvZu
	5kRHbJlSA5UbnowqlVVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqx9o-00000000LdD-2mOw;
	Mon, 03 Aug 2026 18:13:00 +0000
Received: from ms.puri.sm ([135.181.196.210])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqx9k-00000000Lao-42Md;
	Mon, 03 Aug 2026 18:12:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=puri.sm; s=smtp2;
	t=1785780772; bh=HNTPaYDGutREzLTVPWESt82E01iFz+jQ39UPafEurv0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=J4qIa0M3q9Mja66JJpMWCm3Si2k+eQxKBPYsxWlsjhzfhFhyNWkHOce9T4N2rqDaA
	 kEmxNLjWJMeQEHDhJ5UGXkpeibsTQ5FNwkQR0x7UnO77zXdxXGMA00/OFQkd/fCgSc
	 6gZulAcTEPaP0/4e+WFabqGthdJvYdZUuaEdjBfYKwQQ3V4pyKcPDqIGq8SVIBvdNT
	 XG4o2BAoNJclC5KD2v8WfgpNg7zAq0p3jURjCMHKPQ58y8ibkwVhykQHlXlncggeTq
	 mDrVCDZBH3C/DsnWTYfXBbi4VpA/j86hwwBXQPHp1E0qCCB5XIeh536HehZjTFh+3v
	 36zRINnOxbN2Q==
Received: from pliszka.localnet (79.184.66.106.ipv4.supernova.orange.pl [79.184.66.106])
	by ms.puri.sm (Postfix) with ESMTPSA id A9F351F617;
	Mon, 03 Aug 2026 11:12:47 -0700 (PDT)
From: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>,
 Olivier Benjamin <olivier.benjamin@bootlin.com>,
 Manuel Traut <manut@mecka.net>,
 Alexander Warnecke <awarnecke002@hotmail.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 Shawn Guo <shawnguo@kernel.org>, david@ixit.cz
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 phone-devel@vger.kernel.org, imx@lists.linux.dev,
 David Heidelberg <david@ixit.cz>, stable@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: imx8mq-librem5: Dongwoon DW9714 coil requires
 higher voltage
Date: Mon, 03 Aug 2026 20:12:44 +0200
Message-ID: <yJywMSNTQGGZm3rbxd56Yw@puri.sm>
In-Reply-To: <20260801-pp-pro-camera-v1-4-7b4d90788f9f@ixit.cz>
References: <20260801-pp-pro-camera-v1-0-7b4d90788f9f@ixit.cz>
 <20260801-pp-pro-camera-v1-4-7b4d90788f9f@ixit.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_111257_176366_49494137 
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

T24gc29ib3RhLCAxIHNpZXJwbmlhIDIwMjYgMDI6MzU6MjMgY3phcyDFm3JvZGtvd29ldXJvcGVq
c2tpIGxldG5pIERhdmlkIApIZWlkZWxiZXJnIHZpYSBCNCBSZWxheSB3cm90ZToKPiBGcm9tOiBE
YXZpZCBIZWlkZWxiZXJnIDxkYXZpZEBpeGl0LmN6Pgo+IAo+IEJ5IGRhdGFzaGVldCB0aGUgVkRE
IChpbi1rZXJuZWwgbmFtZWQgdmNjKSByYW5nZSBpcyBiZXR3ZWVuIDIuMyB0byA0LjMgVi4KPiBV
c3VhbGx5IGl0J3MgYXJvdW5kIDIuOCBWLiBIZXJlIGl0IG1hdGNoZXMgdGhlIHJlZ192Y2FtXzJ2
OC4KCkl0IGRvZXNuJ3QgLSBWQ0FNXzJWOCBpc24ndCBjb25uZWN0ZWQgdG8gRFc5NzE0IChhbmQg
bmVpdGhlciBpcyBDU0lfMVY4KTsgClZDQU1fQUZWREQgaXMuCgo+IDEuOCBWIGhlcmUgaXMgbGlr
ZWx5IHVzZWQgZm9yIGkyYyBsZXZlbCBzaGlmdGVyLgoKSSdtIG5vdCBzdXJlIHdoZXJlIHlvdSd2
ZSBnb3QgYW4gSTJDIGxldmVsIHNoaWZ0ZXIgZnJvbSwgdGhlcmUncyBub25lIGludm9sdmVkIAp0
aGVyZS4gQ1NJXzFWOCBpcyBwYXNzZWQgdG8gdGhlIHJlYXIgY2FtZXJhIG1vZHVsZSBhcyBET1ZE
RCBhbmQgaXMgY29uc3VtZWQgYnkgClM1SzNMNiBhcyBWRERJTywgYW5kIGJvdGggUzVLM0w2IGFu
ZCBEVzk3MTQgYXJlIGNvbm5lY3RlZCB0byBJMkM0X1NEQS8KSTJDNF9TQ0wsIG9wZXJhdGluZyBh
dCB0aGUgMS44ViBsZXZlbCwgb25seSB0aG91Z2ggYW4gRU1JIGZpbHRlciAoRjcgaW4gdGhlIApz
Y2hlbWF0aWMpLgoKPiAKPiBGaXhlczogZjAwZGYyYmRiNTEyICgiYXJtNjQ6IGR0czogaW14OG1x
LWxpYnJlbTU6IGRlc2NyaWJlIHRoZSB2b2ljZSBjb2lsCj4gbW90b3IgZm9yIGZvY3VzIGNvbnRy
b2wiKSBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEhl
aWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlL2lteDhtcS1saWJyZW01LmR0c2kgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS5kdHNpCj4gYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS5kdHNpIGluZGV4Cj4gZjVkNTI5YzViYWYzZS4u
NTgzY2JhMmQzYmViZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEtbGlicmVtNS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2Nh
bGUvaW14OG1xLWxpYnJlbTUuZHRzaQo+IEBAIC0xMTY3LDE3ICsxMTY3LDE3IEBAICZpMmM0IHsK
PiAgCXBpbmN0cmwtMSA9IDwmcGluY3RybF9pMmM0X2dwaW8+Owo+ICAJc2NsLWdwaW9zID0gPCZn
cGlvNSAyMCAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+ICAJc2RhLWdw
aW9zID0gPCZncGlvNSAyMSAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+
ICAJc3RhdHVzID0gIm9rYXkiOwo+IAo+ICAJdmNtQGMgewo+ICAJCWNvbXBhdGlibGUgPSAiZG9u
Z3dvb24sZHc5NzE0IjsKPiAgCQlyZWcgPSA8MHgwYz47Cj4gLQkJdmNjLXN1cHBseSA9IDwmcmVn
X2NzaV8xdjg+Owo+ICsJCXZjYy1zdXBwbHkgPSA8JnJlZ192Y2FtXzJ2OD47Cj4gIAl9Owo+IAo+
ICAJYmF0OiBmdWVsLWdhdWdlQDM2IHsKPiAgCQljb21wYXRpYmxlID0gIm1heGltLG1heDE3MDU1
IjsKPiAgCQlyZWcgPSA8MHgzNj47Cj4gIAkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzM+Owo+
ICAJCWludGVycnVwdHMgPSA8MjAgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPiAgCQlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
