Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB63C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 08:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJp7UJraEDltZrY++ep9M6leTJN/R4aSBrlaXQnFjts=; b=OoVsG5JXC2clIg
	JeDEz+SNLWdIAVKborHmGqNOEBUdC1W7MYS+7URHwP5eNQ8UCwvqkokAsET8ea5EsFLoFQNmOZA9N
	It5oU6UxndT2qe6yNKs0DbcSfg3D5CDn70fTXWf1hvev49MpJe4P+WDCRs+g+zQRT/tFl6rt7Jyzn
	jhMHMJUk3rYBgV4saV38PBFHdKaRYVPIe4ic3d5OyT0QsAJNJK70TIhVWdBD8qeyeNfkltqjMBK4u
	oq0lxqAr7SznLvsXuCCDjhj4wsvGkb5BMf+juLiYVWTt49InfQiciaXYgexIzzZ6b9xwQFmChx8VJ
	tpuaQoX2Almo2GCaA3aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2o7o-0000000Fc9U-1xbj;
	Fri, 03 May 2024 08:18:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2o7j-0000000Fc63-2Jfh;
	Fri, 03 May 2024 08:18:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8723061CF4;
	Fri,  3 May 2024 08:18:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE542C116B1;
	Fri,  3 May 2024 08:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714724310;
	bh=Ar7uJX7Y9sXsbDOmIJMUCHFevTN4ih2GP+FjawYHoKU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cT/UZhzheEo8BNxry12VAnxMma0HNlH+1RB/bHS5QYg5IOSD4mj9+VCZlPjHcsW02
	 OrZ+ZycUrCzOTOvkD8dkC16GR/JbSBgaOd9JDrErk+YAWC2fz+xjWftfCN0N7BghHk
	 xEsJTrz9UZKrT/srpvSTzey8HFeOXP4hkOeA/z+KA0xCFWvNmxJpXEnuCfbD+XG2sv
	 zoVA2H6qKUvNZOdEaShKbDPliat7oTAhGXrnef4/3S3ajxDc0z+gkUC2vEixxsA4Kv
	 G0swc9lUWOKI956K6ZSLvtZuKLh5A6B8bJH4zsZ5LMruxVuMpUr3vhdriOpaX3po+l
	 I0Tog+m54kBCQ==
Date: Fri, 3 May 2024 09:18:24 +0100
From: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Alex Bee <knaerzche@gmail.com>
Cc: Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v4 0/5] Add RK816 PMIC support
Message-ID: <20240503081824.GI1227636@google.com>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
 <171472425816.1279735.1509285489643125462.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <171472425816.1279735.1509285489643125462.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_011831_694150_EEF38239 
X-CRM114-Status: GOOD (  20.70  )
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

T24gRnJpLCAwMyBNYXkgMjAyNCwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBUdWUsIDE2IEFwciAy
MDI0IDE4OjEyOjMyICswMjAwLCBBbGV4IEJlZSB3cm90ZToKPiA+IFRoaXMgc2VyaWVzIGFpbXMg
dG8gYWRkIHN1cHBvcnQgZm9yIFJvY2tjaGlwIFJLODE2IFBNSUMgc2VyaWVzLiBBcyBwZXIKPiA+
IGRhdGFzaGVldCBpdCdzIHRhcmdldGVkIGZvciBSSzMxMjYvUkszMTI4IChSSzgxNi0xKSwgUksx
MTA4IChSSzgxNi0yKSBhbmQKPiA+IFBYMy1TRSAoUks4MTYtMykgYnV0IG1pZ2h0IGJlIHVzZWQg
Zm9yIG90aGVyIFNvQ3MgYXMgd2VsbC4gVGhlIE1GRCBjb25zaXN0cwo+ID4gb2YgYW4gaW50ZWdy
YXRlZCBSVEMsIGEgR1BJTyBjb250cm9sbGVyLCB0d28gMzJrIGNsb2NrIG91dHB1dHMsIGEgcG93
ZXIKPiA+IGtleSwgMyBidWNrLSBhbmQgNiBsZG8gcmVndWxhdG9ycywgMyByZWd1bGF0b3Itc3dp
dGNoZXMsIGFuZCBjaGFyZ2VyIHdpdGgKPiA+IGludGVncmF0ZWQgZnVlbCBnYXVnZS4gQ2hhcmdl
ciBhbmQgZnVlbCBnYXVnZSBhcmUgbm90IHBhcnQgb2YgdGhpcyBzZXJpZXMuCj4gPiBUd28gb2Yg
dGhlIHN3aXRjaGVzIChvdGcvYm9vc3QpIGFyZSBwYXJ0IG9mIHRoZSBiaW5kaW5nLCBidXQgbm90
IG9mCj4gPiB0aGUgZHJpdmVyLiBUaGV5IG11c3Qgb25seSBldmVyIGJlIGVuYWJsZWQgaWYgbm8g
YmF0dGVyeSBjaGFyZ2luZyBpcwo+ID4gaGFwcGVuaW5nLCBidXQgaXQgd2lsbCBiZSBlbmFibGVk
IGF1dG9tYXRpY2FsbHkgaWYgYSBiYXR0ZXJ5IGlzIGF0dGFjaGVkCj4gPiBhbmQgYW4gZXh0ZXJu
YWwgcG93ZXIgc291cmNlIGlzIGNvbm5lY3RlZC4gVGh1cyB0aGF0IG5lZWRzIHNvbWUKPiA+IGlu
Y29ycG9yYXRpb24gb2YgYSB5ZXQgdG8gYmUgYWRkZWQgY2hhcmdlciBkcml2ZXIuCj4gPiBJbnRl
Z3JhdGlvbiBpbiB0aGUgZXhpc3Rpbmcgcms4eHgtaW5mcmFzdHJ1Y3R1cmUgd2FzIHByZXR0eSBz
dHJhaWdodGZvcndhcmQKPiA+IGFuZCBvbmx5IG5lZWRlZCB2ZXJ5IGxpdHRsZSB0d2Vha2luZy4g
SW4gb3JkZXIgdG8gbm90IGZ1cnRoZXIgYmxvYXQgdGhlCj4gPiBkcml2ZXIocykgdG9vIG11Y2gg
d2l0aCBhZGRpdGlvbmFsIGAjZGVmaW5lYHMgSSB0cmllZCB0byByZS11c2UgZXhpc3RpbmcKPiA+
IG9uZXMgd2hlcmV2ZXIgcG9zc2libGUuCj4gPiAKPiA+IFsuLi5dCj4gCj4gQXBwbGllZCwgdGhh
bmtzIQo+IAo+IFsxLzVdIGR0LWJpbmRpbmdzOiBtZmQ6IEFkZCByazgxNiBiaW5kaW5nCj4gICAg
ICAgY29tbWl0OiAwNmRmYjQxYjFjZjhkNjQzMjdlNWM0MzkxZTE2NWY0NjY1MDZjNGYwCj4gWzIv
NV0gbWZkOiByazh4eDogQWRkIFJLODE2IHN1cHBvcnQKPiAgICAgICBjb21taXQ6IGU5MDA2Zjgx
ZmFmOGU0MzhlYTgzNjI2ZGI1Nzg2MTBlNDlmMzE1NzYKPiBbMy81XSBwaW5jdHJsOiByazgwNTog
QWRkIHJrODE2IHBpbmN0cmwgc3VwcG9ydAo+ICAgICAgIGNvbW1pdDogMWJkOTdkNjRiNWYwYzAx
ZDAzZWNjOTQ3M2NjZmNmMTgwZGJiZjU0YQo+IFs0LzVdIHJlZ3VsYXRvcjogcms4MDg6IFN1cHBv
cnQgYXBwbHlfYml0IGZvciByazgwOF9zZXRfc3VzcGVuZF92b2x0YWdlX3JhbmdlCj4gICAgICAg
Y29tbWl0OiA5ZjRlODk5YzI4NmI1MTI3ZTI0NDNkNTBlMzdlZTIxMTJlZmJmYTJjCj4gWzUvNV0g
cmVndWxhdG9yOiByazgwODogQWRkIFJLODE2IHN1cHBvcnQKPiAgICAgICBjb21taXQ6IDVlYjA2
OGRhNzRhMGI0NDNmYjk5YTg5ZDllNTA2MjY5MTY0OWM0NzAKClN1Ym1pdHRlZCBmb3IgYnVpbGQg
dGVzdGluZy4KCklmIHN1Y2Nlc3NmdWwsIEknbGwgZm9sbG93LXVwIHdpdGggYSBQUi4KCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
