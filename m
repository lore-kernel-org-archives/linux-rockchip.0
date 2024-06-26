Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C122C3064D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 15:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0aDc1kP7u0pQOJKbzZgjXNBNO6m8SyMT3ZPDSnnmIg=; b=fmHTaXhf/aBInY
	jcHAl93Wsd0xK2rrr8Bv8J88Odn+iwA18FLJf/Lbnh5X34DNSHhiENy9WCJbrtXD36EVWb9gyc6LX
	+pXP4VF3+BfF7rxkyEg9JQKotxRw+sy4RuRYgvW/tcxEI2xigldkc5vjYolBiRCnW0s8yP3HTwMPJ
	1zgBEEgpPrIr5g9DdoZtXE+F8KuPMnr+O77UXgZlDoF2OdpNFwoI6dgcH/1mkx1UVxoz7kInuoJWv
	lSp6a8KrLIhL/UCYA4G6qkqjMZKTXTifEBTUFT7o5DPvyYQLFWKePQ4PKlrpyzrsok/mYVAWX8z+u
	M3bXvubDVDBJxb4/+wMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMUpT-00000007Rsi-0oN7;
	Wed, 26 Jun 2024 15:45:03 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMUpL-00000007Rqu-01YV;
	Wed, 26 Jun 2024 15:44:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 268A8CE2AF5;
	Wed, 26 Jun 2024 15:44:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C952C116B1;
	Wed, 26 Jun 2024 15:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719416692;
	bh=n4OVtT18I3FXKBdUsf9p+/05XLMgkzCu5iBmKdJSptU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=syYgb2ZqRg/UNp+WtArfo2u/rtjCYUDuT0Y0QsegV9F8edrHaQmiy3ZrRtkqAktpB
	 XWpRbzO3ZxL8t0TEXFtReC9KRXEYmmu9do/4yLFPEffcY3LCta1Z/3CmvMPQ1i02Z/
	 N40XkEtBlK8hxNTL/E0Gi318B6o1lbwlMvmG43VtgwcVihtBaI/oklQSJax7R8Hgpp
	 c/arl3iHLbnD4VymI3Kqr7Bhze7uXnzEIO6hUNMgZHY7b01OymjW42MT+kvp5FcrIr
	 7zlqfxm+Bk+OnfCH+ofbAqZ47Q7AmhVLYiD1eJ9Kdu+EevWojpCH3FHVdhPyFVt6ra
	 98XFQe+9sNWVQ==
Date: Wed, 26 Jun 2024 16:44:46 +0100
From: Lee Jones <lee@kernel.org>
To: Conor Dooley <conor@kernel.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: rk817: Fixup clocks and
 reference dai-common
Message-ID: <20240626154446.GD2504017@google.com>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
 <20240622-rk809-fixes-v2-1-c0db420d3639@collabora.com>
 <20240622-exquisite-absently-e35b2cf335e3@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240622-exquisite-absently-e35b2cf335e3@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_084455_246873_63CE0352 
X-CRM114-Status: GOOD (  11.21  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org, Furkan Kardame <f.kardame@manjaro.org>, Chris Zhong <zyw@rock-chips.com>, Michael Riesch <michael.riesch@wolfvision.net>, Chris Morgan <macromorgan@hotmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCAyMiBKdW4gMjAyNCwgQ29ub3IgRG9vbGV5IHdyb3RlOgoKPiBPbiBTYXQsIEp1biAy
MiwgMjAyNCBhdCAxMjo1NzoxOEFNICswMzAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4g
PiBFbnN1cmUgJ2Nsb2NrcycgcHJvcGVydHkgZG9lcyBub3QgYWxsb3cgbW9yZSB0aGFuIG9uZSBp
dGVtIGFuZCBhZGQgdGhlCj4gPiBtaXNzaW5nIHJlZmVyZW5jZSB0byBkYWktY29tbW9uIHNjaGVt
YS4KPiA+IAo+ID4gV2hpbGUgYXQgaXQsIG1vdmUgJ2Nsb2NrcyonIGFuZCAnI3NvdW5kLWRhaS1j
ZWxscycgcHJvcGVydGllcyB0byBrZWVwCj4gPiB0aGUgbGlzdCBvcmRlcmVkIGFscGhhYmV0aWNh
bGx5Lgo+ID4gCj4gPiBBZGRpdGlvbmFsbHksIGRyb3AgYWxsIHVzZWxlc3MvcmVkdW5kYW50IGRl
c2NyaXB0aW9ucy4KPiA+IAo+ID4gRml4ZXM6IDZjMzhjYTAzNDA2ZSAoImR0LWJpbmRpbmdzOiBt
ZmQ6IHJrODA4OiBDb252ZXJ0IGJpbmRpbmdzIHRvIHlhbWwiKQo+ID4gU2lnbmVkLW9mZi1ieTog
Q3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiAK
PiBJJ2QgYXJndWUgdGhhdCB0aGVzZSBzaG91bGQgbm90IGFsbCBiZSB0aGUgc2FtZSBjb21taXQs
IGJ1dCB3L2UuCgpBcmUgeW91IGFyZ3VpbmcgdGhhdCwgb3Igbm90PyA6KQoKPiBBY2tlZC1ieTog
Q29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4KCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
