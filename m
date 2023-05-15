Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3B3C77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDhXqgA6hOEgFmGaP/IXcmq3r7esQQmNUxV5+IDddT4=; b=RL1qs/7X92eqYx
	df2Cyw3O4gmDCuvuXdOBjJ4rDqmCvmewCq8NxggCH7CuRBsKtrR1LvzoUpOTO/miQD2BhxeBaQADe
	9AAcsA2imN/U0jfqe5k9jdSIP8C68OTBvAMnaptheZNkfFsZTs7YFmjZO0KFE/8yKuxtpv4b9QKnb
	k+0KNWAsdoyof4BqUzsnlUBF2bbokvuwovMWbE6dJedRPPTemFQbgMOsqowCIpPncghgJB0AWHT4e
	PLpqxR5QZKxyAN7Vm4dtdLYrTo39UnbJXwsaJRhU14aJWovT3VvfCq9zvGJMut6mZLQe3ELSHsceZ
	FWDAGyRfx1qGIAUaOsCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pya3v-002Z5p-2P;
	Mon, 15 May 2023 15:24:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pya3s-002Z57-3B
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:24:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5747762647;
	Mon, 15 May 2023 15:24:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DED9C4339B;
	Mon, 15 May 2023 15:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684164271;
	bh=TOYagaF2OGRnswyh28jqySIaCoaZNMX7ZtxpN/6ZW4k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YlZp68+dEDaJDBwLsJHJrfG7G5nP96VM+syGAf5B6w7O5ESdeNbuMgY19mwuHPI7I
	 VBqbc3WMtkgj/G+pmssyh59OmJFajE1+7+gUlJCanH4TttBQf8PDqP8/+3lX9XBlvu
	 Y/FfVwyAbXqZbb2vv2raN4GU1oBFh1J7pgUD551wZS4bYnCmhaQTKd9Mjfebcmok7u
	 bFETCw0/c3xdRPkCz38urceAQDaSAHTFNXKIPVSIEm3GZoof/BMNptH/t4sYRFfYio
	 tDo6DAPEJmHpGKIeHsUqOs6d5Idjbu1M0Bea41a88K0XNMLQrTtl2FLhrtR+KLqVa5
	 b2x0E4PaLNhBQ==
Date: Mon, 15 May 2023 16:24:25 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: [GIT PULL] Immutable branch between MFD, Clk, Input, Pinctrl, RTC,
 Power, Regulator and Sound due for the v6.5 merge window
Message-ID: <20230515152425.GV10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_082433_114779_609EEE3D 
X-CRM114-Status: GOOD (  13.02  )
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

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGFjOWE3ODY4MWI5MjE4
Nzc1MTg3NjNiYTBlODkyMDIyNTQzNDlkMWI6CgogIExpbnV4IDYuNC1yYzEgKDIwMjMtMDUtMDcg
MTM6MzQ6MzUgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoK
CiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2xlZS9tZmQu
Z2l0IHRiLW1mZC1jbGstaW5wdXQtcGluY3RybC1wb3dlci1ydGMtc291bmQtdjYuNQoKZm9yIHlv
dSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDkyNDc2NGFhNWYyZTcwNWY0NmY1NDg2MTFlNmE5ZDZi
OTg2YWU4ODA6CgogIHBpbmN0cmw6IHJrODA1OiBBZGQgcms4MDYgcGluY3RybCBzdXBwb3J0ICgy
MDIzLTA1LTE1IDE2OjIxOjAxICswMTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbW11dGFibGUgYnJhbmNoIGJldHdl
ZW4gTUZELCBDbGssIElucHV0LCBQaW5jdHJsLCBSVEMsIFBvd2VyLCBSZWd1bGF0b3IgYW5kIFNv
dW5kIGR1ZSBmb3IgdGhlIHY2LjUgbWVyZ2Ugd2luZG93CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNlYmFzdGlhbiBSZWlj
aGVsICg5KToKICAgICAgY2xrOiBSSzgwODogUmVkdWNlICdzdHJ1Y3Qgcms4MDgnIHVzYWdlCiAg
ICAgIG1mZDogcms4MDg6IENvbnZlcnQgdG8gZGV2aWNlIG1hbmFnZWQgcmVzb3VyY2VzCiAgICAg
IG1mZDogcms4MDg6IFVzZSBkZXZfZXJyX3Byb2JlCiAgICAgIG1mZDogcms4MDg6IFJlcGxhY2Ug
J3N0cnVjdCBpMmNfY2xpZW50JyB3aXRoICdzdHJ1Y3QgZGV2aWNlJwogICAgICBtZmQ6IHJrODA4
OiBTcGxpdCBpbnRvIGNvcmUgYW5kIGkyYwogICAgICBtZmQ6IHJrOHh4LWkyYzogVXNlIGRldmlj
ZV9nZXRfbWF0Y2hfZGF0YQogICAgICBkdC1iaW5kaW5nczogbWZkOiBBZGQgcms4MDYgYmluZGlu
ZwogICAgICBtZmQ6IHJrOHh4OiBBZGQgcms4MDYgc3VwcG9ydAogICAgICBwaW5jdHJsOiByazgw
NTogQWRkIHJrODA2IHBpbmN0cmwgc3VwcG9ydAoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21m
ZC9yb2NrY2hpcCxyazgwNi55YW1sICAgIHwgNDA2ICsrKysrKysrKysrKysrKysrKysrCiBkcml2
ZXJzL2Nsay9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArLQog
ZHJpdmVycy9jbGsvY2xrLXJrODA4LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMzQg
Ky0KIGRyaXZlcnMvaW5wdXQvbWlzYy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAyICstCiBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAyMSArLQogZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvbWZkL3tyazgwOC5jID0+IHJrOHh4LWNvcmUuY30gICAg
ICAgICAgICAgIHwgMzUyICsrKysrKy0tLS0tLS0tLS0tCiBkcml2ZXJzL21mZC9yazh4eC1pMmMu
YyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE4NSArKysrKysrKysKIGRyaXZlcnMvbWZk
L3JrOHh4LXNwaS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTI0ICsrKysrKwogZHJp
dmVycy9waW5jdHJsL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0K
IGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXJrODA1LmMgICAgICAgICAgICAgICAgICAgIHwgMTg5
ICsrKysrKysrLS0KIGRyaXZlcnMvcG93ZXIvc3VwcGx5L0tjb25maWcgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAyICstCiBkcml2ZXJzL3JlZ3VsYXRvci9LY29uZmlnICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAgMiArLQogZHJpdmVycy9ydGMvS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgIDIgKy0KIGluY2x1ZGUvbGludXgvbWZkL3JrODA4LmggICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgNDE3ICsrKysrKysrKysrKysrKysrKysrLQogc291bmQvc29j
L2NvZGVjcy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KIDE2IGZp
bGVzIGNoYW5nZWQsIDE0NjQgaW5zZXJ0aW9ucygrKSwgMjgyIGRlbGV0aW9ucygtKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2No
aXAscms4MDYueWFtbAogcmVuYW1lIGRyaXZlcnMvbWZkL3tyazgwOC5jID0+IHJrOHh4LWNvcmUu
Y30gKDcxJSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9yazh4eC1pMmMuYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL3JrOHh4LXNwaS5jCgotLSAKTGVlIEpvbmVzIFvm
nY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
