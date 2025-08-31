Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F111BCA0FE8
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 15:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAQRrXgG+WNq80UL96tOmdtykf3S9IxrIUBiT4yi55k=; b=H+vX4czRke70zb
	rRwIDQiq0Lak/0qyStc40k4xsCtYbNObcBPCL1CSE+KSEyt1L1iOazikDKEnybW0i28Ue0GIoOoNK
	5BeMcPGi0ugYv5sU+0Nl06Vp9ic8M6Bjk5N9lg+C5qgQENGNjNQSBn47R4K3FyNyHAetzW57kgFC+
	8hgHpOJJtnggF+oclfbvT7p5+QiZM7YIdSFVuBBrTQU/3sYE4UDNJg4hs2Qnb+HdfCMNPYk9vluKu
	O71l3gFvIZamYbJ1vwIDBbfgCxcpsScZJXBmk0m7/KxDhjgHOPBo8tFsmlAiQHgP/ClXSdc6Ot5Rf
	M6Jz3ausgv8mhE5ERM+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjhL-0000000AKqF-18Sc;
	Sun, 31 Aug 2025 15:10:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjdV-0000000AKNu-1ay0;
	Sun, 31 Aug 2025 15:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=NZfUhY1EZQv1OuZe5tH097MUEDvYB4HeowDcrbjOqWg=; b=zr7VUttrCYLdhVOAGJ/Lr9oKmN
	G17tELZOSR5+6G4+83RfqgDQD/koYmtt9ulOu5Kclyt9jtnUg9Joo7kLYQ7y26JP3s70oJS1k8V1q
	VBlejvPkHAhDchJt1rPJPxDpVCHRVAqd+6aLiQ91iKqw8BprlR4WkqqgkRLxnyDZCJd9MG+ioCEtF
	D/R9aJP05KKdNhuapyq/iqDdbKSFoCxNqaLk7T0iI8tjtlohdhLRWMkHhsYgAKiR6wO0rWTMXEppn
	8BzRFiAA0xvrcP6jVybEF+pSEvWrkFGNwF29EOGMMAbhnyCfKJ6zlA/KPxEuWm6pUldy8GrqB9luh
	NU/pUbRg==;
Received: from i53875b56.versanet.de ([83.135.91.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usjdR-0001Dx-BJ; Sun, 31 Aug 2025 17:06:25 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v1 6/7] ARM: dts: rockchip: Add D-PHY for RK3368
Date: Sun, 31 Aug 2025 17:06:24 +0200
Message-ID: <8571992.T7Z3S40VBb@diego>
In-Reply-To: <20250831104855.45883-7-cn.liweihao@gmail.com>
References: <20250831104855.45883-1-cn.liweihao@gmail.com>
 <20250831104855.45883-7-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_080629_417527_828120FA 
X-CRM114-Status: GOOD (  13.83  )
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

QW0gU29ubnRhZywgMzEuIEF1Z3VzdCAyMDI1LCAxMjo0ODo1NCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIFdlaUhhbyBMaToKPiBSSzMzNjggaGFzIGEgSW5ub1NpbGljb24g
RC1QSFkgd2hpY2ggc3VwcG9ydHMgRFNJL0xWRFMvVFRMIHdpdGggbWF4aW11bQo+IHRyYXNuZmVy
IHJhdGUgb2YgMSBHYnBzIHBlciBsYW5lLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8
Y24ubGl3ZWloYW9AZ21haWwuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM2OC5kdHNpIHwgMTQgKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE0
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzNjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LmR0
c2kKPiBpbmRleCAwZTQ3YmY1OWEuLjY3NGEzNjc2ZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM2OC5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzNjguZHRzaQo+IEBAIC04ODQsNiArODg0LDIwIEBAIGRpc3BsYXlfc3Vi
c3lzdGVtOiBkaXNwbGF5LXN1YnN5c3RlbSB7Cj4gIAkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAg
CX07Cj4gIAo+ICsJdmlkZW9fcGh5OiB2aWRlby1waHlAZmY5NjgwMDAgewoKSSB0aGluayB0aGUg
bm9kZSBzaG91bGQgYmUgc29tZXRoaW5nIGxpa2UKZHNpX2RwaHk6IHBoeUBmZjk2ODAwMAoKCj4g
KwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzNjgtZHNpLWRwaHkiOwo+ICsJCXJlZyA9IDww
eDAgMHhmZjk2ODAwMCAweDAgMHg0MDAwPiwKPiArCQkgICAgICA8MHgwIDB4ZmY5NjAwMDAgMHgw
IDB4NDAwMD47Cj4gKwkJY2xvY2tzID0gPCZjcnUgU0NMS19NSVBJRFNJXzI0TT4sIDwmY3J1IFBD
TEtfRFBIWVRYMD4sCj4gKwkJCSA8JmNydSBQQ0xLX01JUElfRFNJMD47Cj4gKwkJY2xvY2stbmFt
ZXMgPSAicmVmIiwgInBjbGsiLCAicGNsa19ob3N0IjsKPiArCQkjY2xvY2stY2VsbHMgPSA8MD47
Cj4gKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9NSVBJRFBIWVRYPjsKPiArCQlyZXNldC1uYW1lcyA9
ICJhcGIiOwo+ICsJCSNwaHktY2VsbHMgPSA8MD47Cj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsK
PiArCX07Cj4gKwo+ICAJaGV2Y19tbXU6IGlvbW11QGZmOWEwNDQwIHsKPiAgCQljb21wYXRpYmxl
ID0gInJvY2tjaGlwLGlvbW11IjsKPiAgCQlyZWcgPSA8MHgwIDB4ZmY5YTA0NDAgMHgwIDB4NDA+
LAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
