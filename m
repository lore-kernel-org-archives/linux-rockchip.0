Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0790BC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 11:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Uj/oixcS8Vg1a53VPCLofoRSr9S9IJi14C0vn4gfdc=; b=oB9At1VprWgV8i
	tXbQSzYq2TYQidnFy9Q7YuT74XdIMg1I60RRWIZ0ZiAtSRzjKlQchBNRNaF72+mCHTOJeKV7IDJJF
	HcvNlGDeBGzD6nCiiJwGfGxIsG9kKGqOdZU4A+02PW9jnkHIt18BL/9EsxtW4vpyq5FxF+pDlnxuU
	RB8WMuMnskmob3HRmzV7Q0DY7WgQKJaUAdhEc0VgXGPjyLx2+wmvDbzE24sBelQ6ulkap9UM8yHgE
	g1emCVgK029+1X76+x7wHZ5+6wFmIqj0fpGDqXvKSU0ZuXtM5on4l2NHzBIXys+DTfGt7e9yzszIz
	/cnZxu95Uythev2yhCfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqC4G-00AmlO-Sx; Wed, 02 Nov 2022 11:38:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqC46-00Amil-BE; Wed, 02 Nov 2022 11:37:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F0B0561902;
	Wed,  2 Nov 2022 11:37:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FEA9C433C1;
	Wed,  2 Nov 2022 11:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667389068;
	bh=xIxMAiXF+JLgxByB3rSWOKdiFANqw7ABTjZNkKTK0GE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=STR5j3Syvq3KxkvdTPJ9msz/mG2Cf12VmYPzf6HSUrBrVN4T2PArCH913G5i0noJB
	 Ht/u99IWzgdDp+8MDfDi7c0WTT0nTb616vfFVRVtx5MJBA8UOnM3E/P491Ar+jRyrB
	 bo3JeG6mYAurrXvCyafudLPc8qkcMCxRErUtApoyN6iG6C/HoyEhj5BP2XqxNg82Me
	 BOAsN4nk1sbOaa+pEGyE/zb5mDWGIojSsSbiMLnIU8wlLL0OuVERbCrcKYjt/BBSDu
	 p5F5TviRu+MyiARR9VOeWR2xbd0dMQFWeq1DuH8Rp468nfb8gqjx8T7ddKLxX1P6ej
	 Vzcxr8TqakodQ==
Date: Wed, 2 Nov 2022 11:37:41 +0000
From: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mfd: Expect specific type for
 monitored-battery
Message-ID: <Y2JWhTcEvNxIwSB6@google.com>
References: <20221028231309.565451-1-krzysztof.kozlowski@linaro.org>
 <Y1+MNL+fCfreAqMh@google.com>
 <20221031192658.GA3286587-robh@kernel.org>
 <Y2D0As4ezi/031lL@google.com>
 <CAL_JsqJUx2FtpYWSkx3cOFcywSux7P2sPpvbVmaryMdo1+xA_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJUx2FtpYWSkx3cOFcywSux7P2sPpvbVmaryMdo1+xA_Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_043750_466007_8C5985F6 
X-CRM114-Status: GOOD (  22.87  )
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

T24gVHVlLCAwMSBOb3YgMjAyMiwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE9uIFR1ZSwgTm92IDEs
IDIwMjIgYXQgNToyNSBBTSBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4g
PiBPbiBNb24sIDMxIE9jdCAyMDIyLCBSb2IgSGVycmluZyB3cm90ZToKPiA+Cj4gPiA+IE9uIE1v
biwgT2N0IDMxLCAyMDIyIGF0IDA4OjQ5OjU2QU0gKzAwMDAsIExlZSBKb25lcyB3cm90ZToKPiA+
ID4gPiBPbiBGcmksIDI4IE9jdCAyMDIyLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4g
PiA+Cj4gPiA+ID4gPiBDb3JlIHNjaGVtYSBkb2VzIG5vdCBkZWZpbmUgdHlwZSBvZiBtb25pdG9y
ZWQtYmF0dGVyeSwgc28gdGhlIHNjaGVtYXMKPiA+ID4gPiA+IGFyZSBleHBlY3RlZCB0byByZWZl
cmVuY2UgcHJvcGVyIHR5cGUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9l
bmUta2I5MzAueWFtbCAgICAgIHwgNCArKystCj4gPiA+ID4gPiAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgxNy55YW1sIHwgMSArCj4gPiA+ID4gPiAg
MiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPgo+
ID4gPiA+IEFwcGxpZWQsIHRoYW5rcy4KPiA+ID4KPiA+ID4gTkFLLiBQbGVhc2UgZHJvcCBvciBy
ZXZlcnQuCj4gPgo+ID4gRHJvcHBpbmcgaXMgbm90IGEgcHJvYmxlbS4KPiA+Cj4gPiBXb3VsZCB5
b3UgbWluZCBwcm92aWRpbmcgc29tZSBjb250ZXh0Pwo+IAo+IEkgZGlkIGVsc2V3aGVyZSBpbiB0
aGUgc2VyaWVzLCBidXQgc2ltcGx5IHdlIGRvbid0IHdhbnQgdG8gZGVmaW5lIGEKPiB0eXBlIGZv
ciBhIHByb3BlcnR5IG11bHRpcGxlIHRpbWVzLiBJdCBzaG91bGQgYmUgZGVmaW5lZCBvbmNlCj4g
c29tZXdoZXJlIGNvbW1vbi4KCkFDSywgdGhhbmtzLgoKRHJvcHBlZC4KCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
