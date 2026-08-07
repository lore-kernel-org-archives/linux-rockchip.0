Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A29F0C2A09B
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 13:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJtLRCK/LzqSlT+OuPSyaH6wQoqUbejQBIdx/fSU3M8=; b=A0VyDFdav8rzzv
	U1EaiK+kmNhNhnbIgNgPfixiqQWsuaf4o+o6N+PqOXiS4n65fUrUjRH4GeVj97BVw3ml4MGebY1Tx
	fEjhVfW3IKvY0BzVQl6PJsN1VO2jJpfrDlWdif77zgqPvUxt/3/ccwAZvaCQbx3ea4KQPKkLRKm+8
	R1SLE9nRMafJx2Mk8epasVYDsxpXvzARQg+LoWMeVkpGXOvTziHX5jxcWQSw77hCuKFksS1GC3zlR
	OTZLgEDO5I+S4xz52waXPW2nVA5L3/cgYR27mc0iDsuBQYoU5OCERV/QZt/EXi5LdJHuV4Q4xYcde
	lYkiiwFOo46ir75AkEKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKFU-000000083vv-2aTf;
	Fri, 07 Aug 2026 13:04:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKFS-000000083ui-2arR;
	Fri, 07 Aug 2026 13:04:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 39B0140400;
	Fri,  7 Aug 2026 13:04:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE9EA1F000E9;
	Fri,  7 Aug 2026 13:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786107870;
	bh=3fFhzIq+MX51w32vSTa4ODaYitxoGagZp/jBOQAA+Dc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VWcIOhramT7rlH4zrA6e5BFyTjoOlov24iXYDz8kaOJkaDjLfD3eG20QFCXdguwaH
	 MKCTmUk8n/8lSvg7PpdrXY05CiL97s9VmZ43NGAEoRduTA07WhGAUzWhVDv55zRLhS
	 NUpkce6/LgMSqrI0rVV2g5h1EqZt7voXks1iBdI0gF2iDZewmgTHhVvqTbdCSPZIql
	 3DJtcirSnFCw3adO6AodMECcyS38t22JBWXKoP3VbeiOBN9ufewerxS7f5k4Xk9A1Y
	 tbzLXaQUUDuIcqo/9tvflD3rM6mVjIQSR3IzZNbHgXZMPiz0lsochVt+z/07f9pAjb
	 NEnzmNIZUAU5g==
Date: Fri, 7 Aug 2026 15:04:20 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Thomas =?utf-8?Q?Niederpr=C3=BCm?= <dubito@online.de>, Simon Wright <simon@symple.nz>, 
	Diederik de Haas <diederik@cknow-tech.com>, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v5 05/10] phy: rockchip: samsung-hdptx: Handle
 uncommitted PHY config changes
Message-ID: <wuoofxrtk3ieb5ukmk4jed3oyeqhyyttdo7fidz7qyingswtki@53vy32pjjqja>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-5-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-5-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NDhQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IEFueSBjaGFuZ2VzIHRvIHRoZSBQSFkgbGluayByYXRlIGFuZC9vciBjb2xv
ciBkZXB0aCBkb25lIHZpYSB0aGUgSERNSQo+IFBIWSBjb25maWd1cmF0aW9uIEFQSSBhcmUgbm90
IGltbWVkaWF0ZWx5IHByb2dyYW1tZWQgaW50byB0aGUgaGFyZHdhcmUsCj4gYnV0IGFyZSBkZWxh
eWVkIHVudGlsIHRoZSBQSFkgdXNhZ2UgY291bnQgZ2V0cyBpbmNyZW1lbnRlZCBmcm9tIDAgdG8g
MSwKPiB0aGF0IGlzIHdoZW4gaXQgaXMgcG93ZXJlZCBvbiBvciB3aGVuIHRoZSBQTEwgY2xvY2sg
ZXhwb3NlZCB0aHJvdWdoCj4gdGhlIENDRiBBUEkgaXMgcHJlcGFyZWQsIHdoaWNoZXZlciBjb21l
cyBmaXJzdC4KPiAKPiBTaW5jZSB0aGUgY2xvY2sgbWlnaHQgcmVtYWluIGluIHByZXBhcmVkIHN0
YXRlIGFmdGVyIHN1YnNlcXVlbnQgUEhZCj4gY29uZmlnIGNoYW5nZXMsIHRoZSBwcm9ncmFtbWlu
ZyBjYW4gYWxzbyBiZSB0cmlnZ2VyZWQgdmlhCj4gY2xrX29wcy5zZXRfcmF0ZSgpLiAgSG93ZXZl
ciwgZnJvbSB0aGUgY2xvY2sgY29uc3VtZXIgcGVyc3BlY3RpdmUgKGkuZS4KPiBWT1AyIGRpc3Bs
YXkgY29udHJvbGxlciksIHRoZSAocGl4ZWwpIGNsb2NrIHJhdGUgZG9lc24ndCB2YXJ5IHdpdGgg
YnBjLAo+IGFzIHRoYXQgaXMgaGFuZGxlZCBpbnRlcm5hbGx5IGJ5IHRoZSBQSFkgYW5kIHJlZmxl
Y3RlZCBpbiB0aGUgVERNUwo+IGNoYXJhY3RlciByYXRlIG9ubHkuCj4gCj4gQXMgYSBjb25zZXF1
ZW5jZSwgY2hhbmdpbmcgdGhlIGJwYyB3aGlsZSBwcmVzZXJ2aW5nIHRoZSBtb2RlbGluZSBtYXkK
PiBsZWFkIHRvIG91dC1vZi1zeW5jIGlzc3VlcyBiZXR3ZWVuIENDRiBhbmQgSERNSSBQSFkgY29u
ZmlnIHN0YXRlLAo+IGJlY2F1c2UgdGhlIC5zZXRfcmF0ZSgpIGNhbGxiYWNrIGlzIG5vdCBpbnZv
a2VkIHdoZW4gY2xvY2sgcmF0ZSByZW1haW5zCj4gY29uc3RhbnQuICBUaGlzIG1heSBhbHNvIGhh
cHBlbiB3aGVuIHRoZSBQSFkgUExMIGhhcyBiZWVuIHByZS1wcm9ncmFtbWVkCj4gYnkgYW4gZXh0
ZXJuYWwgZW50aXR5LCBlLmcuIHRoZSBib290bG9hZGVyLCB3aGljaCBpcyBhY3R1YWxseSBhCj4g
cmVncmVzc2lvbiBpbnRyb2R1Y2VkIGJ5IHRoZSByZWNlbnQgRlJMIHBhdGNoZXMuCgpEb24ndCBt
ZW50aW9uICdwYXRjaGVzJyBpbiBkZXNjcmlwdGlvbi4gT25jZSB0aGUgcGF0Y2ggZ2V0cyBtZXJn
ZWQsIGl0IGJlY29tZXMgYQpjb21taXQuIElmIG5lZWRlZCwgcmVmZXJlbmNlIHRoZSBvZmZlbmRp
bmcgY29tbWl0KHMpIGRpcmVjdGx5LgoKPiAKPiBJbnRyb2R1Y2UgYSBwbGxfY29uZmlnX2RpcnR5
IGZsYWcgdG8ga2VlcCB0cmFjayBvZiB1bmNvbW1pdHRlZCBQSFkKPiBjb25maWcgY2hhbmdlcyBh
bmQgdXNlIGl0IGluIGNsa19vcHMuZGV0ZXJtaW5lX3JhdGUoKSB0byBpbnZhbGlkYXRlIHRoZQo+
IGN1cnJlbnQgY2xvY2sgcmF0ZSAoYXMga25vd24gYnkgQ0NGKSBhbmQsIGNvbnNlcXVlbnRseSwg
ZW5zdXJlIHRob3NlCj4gY2hhbmdlcyBhcmUgcHJvZ3JhbW1lZCBpbnRvIGhhcmR3YXJlIHZpYSBj
bGtfb3BzLnNldF9yYXRlKCkuCj4gCj4gTW9yZW92ZXIsIHByb2NlZWQgd2l0aCBhIHNpbWlsYXIg
Zml4IGluIHBoeV9vcHMucG93ZXJfb24oKSBjYWxsYmFjaywgdG8KPiBoYW5kbGUgdGhlIHNjZW5h
cmlvIHdoZXJlIHRoZSBDQ0YgQVBJIGlzIG5vdCB1c2VkIGR1ZSB0byBvcGVyYXRpbmcgaW4KPiBG
UkwgbW9kZSwgd2hpbGUgdGhlIGNsb2NrIGlzIHN0aWxsIGluIGEgcHJlcGFyZWQgc3RhdGUgYW5k
IHRodXMKPiBwcmV2ZW50aW5nIHJrX2hkcHR4X3BoeV9jb25zdW1lcl9nZXQoKSB0byBhcHBseSB0
aGUgdXBkYXRlZCBQSFkKPiBjb25maWd1cmF0aW9uLgo+IAo+IEZpeGVzOiBkZTVkYmE4MzMxMTgg
KCJwaHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhkcHR4OiBBZGQgSERNSSAyLjEgRlJMIHN1cHBvcnQi
KQo+IEZpeGVzOiA5ZDBlYzUxZDdjMjIgKCJwaHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhkcHR4OiBB
ZGQgaGlnaCBjb2xvciBkZXB0aCBtYW5hZ2VtZW50IikKPiBUZXN0ZWQtYnk6IFRob21hcyBOaWVk
ZXJwcsO8bSA8ZHViaXRvQG9ubGluZS5kZT4KPiBUZXN0ZWQtYnk6IFNpbW9uIFdyaWdodCA8c2lt
b25Ac3ltcGxlLm56Pgo+IFRlc3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tu
b3ctdGVjaC5jb20+ICAjIE5hbm9QQy1UNiBMVFMKPiBSZXZpZXdlZC1ieTogQW5keSBZYW4gPGFu
ZHkueWFuQHJvY2stY2hpcHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRl
YSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4K
Ci0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/g
rrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
