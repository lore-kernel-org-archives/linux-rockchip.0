Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C8EA105F7BC
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 15:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRrQqaJuy+qE6E6ndYD5kyvHvjXfkCAthHTkDcvDNKE=; b=Ldv4EvKoHRX+4X
	cAjZn2MthIThsZKbNkHAPX/eWBXvsHlP7dsySBl1A//Wa+RAf85thOeLlPWYWozFo/BdYgkrfGL9q
	xKr6AU41nb7KttKJ06SHPXbDmKMAwkg9kaQI0k01csHmhMszLlIJKuwVIkyX9V4U4ibyalJns1fFL
	HQxlDxSBxlEXjDhp6iGTmOqB48tliNwtksaCiCko1hup5GarmTPX0xLQpXCYCONg3hjMYnGC+sQAf
	WPHrJD06Z/WUyqGtA3K0LGga+EaqY2fE2gsEzN773fSUKnuVmLqrfT3Rgc1LTgCBFXdnNQrEM/dWB
	AArSyB6b9xFxR+SP8wEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w14OU-00000000Y1z-2izt;
	Fri, 13 Mar 2026 15:25:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w14OS-00000000Y0s-0wRi;
	Fri, 13 Mar 2026 15:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=FBGeKWKKKMA/GYKVdnALvhIQ+8mrBUlUzmRZ9SlygL8=; b=siZ3hLr/RBuaALUlg0nh7FZcY7
	lWf5bv5S/xfRiWZ7Kz/z2JTrBN3OdMkK4ZjW9DJWtdfXn3BiamcMdU31fI5nlqK48075qsDryk5NH
	gMPGOKk/7zQbpuhCsELAjcw2ffuRfNmj/bRb/3yCjIAgf3VGvPr8YLOiGyT4QVagg/qo5NXKdtFyN
	hQVidV3y9NX/XujTtkD5r+6ixUjpWNGCb3nX7jc28er9fN7xsVcXIoqvIFC+OeZgn6UW20Ch0J/kX
	Nd0GrGT+Jf7HZDJJi2VpQbCE4WWBJs9KF7xvbTEYEhFJCaPJ+bhRaMz1yrZC93UrHH7tK2jxby+xw
	CNQ9m07Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: ulf.hansson@linaro.org, Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Fix the RV1103B compatible
Date: Fri, 13 Mar 2026 16:25:30 +0100
Message-ID: <12853156.O9o76ZdvQC@phil>
In-Reply-To: <20260313130835.708066-1-festevam@gmail.com>
References: <20260313130835.708066-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_082540_283429_9DAC6B52 
X-CRM114-Status: GOOD (  14.52  )
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

QW0gRnJlaXRhZywgMTMuIE3DpHJ6IDIwMjYsIDE0OjA4OjM1IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgRmFiaW8gRXN0ZXZhbToKPiBGcm9tOiBGYWJpbyBFc3RldmFtIDxm
ZXN0ZXZhbUBuYWJsYWRldi5jb20+Cj4gCj4gUlYxMTAzQiB1c2VzIHRoZSBzYW1lIERlc2lnbldh
cmUgTVNIQyBjb250cm9sbGVyIElQIHZlcnNpb24gYXMgUkszNTc2Lgo+IAo+IFRoZXkgaGF2ZSBu
byAiY2l1LWRyaXZlIiBub3IgImNpdS1zYW1wbGUiIGNsb2NrcyBhbmQgdXNlIHRoZSBwaGFzZQo+
IHR1bmluZyBpbnNpZGUgdGhlIGNvbnRyb2xsZXIuCj4gCj4gRml4IGl0IGFjY29yZGluZ2x5Lgo+
IAo+IEZpeGVzOiA1MTdiMWUzYzk0NTUgKCJkdC1iaW5kaW5nczogbW1jOiByb2NrY2hpcC1kdy1t
c2hjOiBBZGQgUlYxMTAzQiBjb21wYXRpYmxlIikKPiBTdWdnZXN0ZWQtYnk6IFNoYXduIExpbiA8
c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEZhYmlvIEVzdGV2YW0g
PGZlc3RldmFtQG5hYmxhZGV2LmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgoKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21tYy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwgfCA1ICsrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL3JvY2tjaGlwLWR3LW1zaGMueWFtbAo+
IGluZGV4IGE3NTIwOWJkMjcxMC4uNDk2NWJiNTE4YzU0IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9ja2NoaXAtZHctbXNoYy55YW1sCj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hpcC1kdy1tc2hj
LnlhbWwKPiBAQCAtNDMsMTEgKzQzLDE0IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAg
LSByb2NrY2hpcCxyazM1NjItZHctbXNoYwo+ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmsz
NTY4LWR3LW1zaGMKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1kdy1tc2hjCj4g
LSAgICAgICAgICAgICAgLSByb2NrY2hpcCxydjExMDNiLWR3LW1zaGMKPiAgICAgICAgICAgICAg
ICAtIHJvY2tjaGlwLHJ2MTEwOC1kdy1tc2hjCj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxy
djExMjYtZHctbXNoYwo+ICAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMjg4LWR3LW1z
aGMKPiAgICAgICAgIyBmb3IgUm9ja2NoaXAgUkszNTc2IHdpdGggcGhhc2UgdHVuaW5nIGluc2lk
ZSB0aGUgY29udHJvbGxlcgo+ICsgICAgICAtIGl0ZW1zOgo+ICsgICAgICAgICAgLSBlbnVtOgo+
ICsgICAgICAgICAgICAgIC0gcm9ja2NoaXAscnYxMTAzYi1kdy1tc2hjCj4gKyAgICAgICAgICAt
IGNvbnN0OiByb2NrY2hpcCxyazM1NzYtZHctbXNoYwo+ICAgICAgICAtIGNvbnN0OiByb2NrY2hp
cCxyazM1NzYtZHctbXNoYwo+ICAKPiAgICByZWc6Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
