Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEC8ACA0EED
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 14:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=diIWyAd5tBtjILD8cyIhnWe4ZvbNWg0u9+twO3QcegI=; b=olZikmTnygJkQH
	VpAnCC6FqlH0QIiUCfWxd/dhlwfaRNQStLdKOecXyN6M7l+9Vyoz+CHuMc60erIKrx8ljVJi8xmff
	N2x7jRB/O1ERm+fV4oTmCIIOvBHL71P8jzHrcdwshGapUDIgzayyspb//y+bokinJM9LGTlJbejWS
	HMsMWIKoyamU/b9HpVqolhQwXBgxF8LGqQt//i8ExgKDcgGzgZBBuYdRXmQJGRFON6YRnpsGSkrnf
	gsLl/5EimeGIGSXzT8zSrX/xeKunTKynDIzb9JVTn+YNLz18AJcnF46NLxLlTTNpqz1GabQnV2NIV
	Ok6/7w/ABvkxkQdaZI8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uppCZ-00000004qa3-0flS;
	Sat, 23 Aug 2025 14:26:39 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upp9u-00000004qLg-2rcv;
	Sat, 23 Aug 2025 14:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1755959033; bh=R34OGeCiu/IPda8je9GL6U6dsszdH++pAXr6iT4gB6Y=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=pb4FEzOeilNegfspE7/aewKwoiawHbo+Rf4DUXKz6hPTbgJ5iP5IvIsBtQlva0cP4
	 BEklA73ynyazlNcuhkeeoh/HA0zAP+HAOkkqtDHDygeE/68qm/xSQI/4qKXJaM0g97
	 MIjPIl1kOMgfbtfndoKDGtlxVpcHR3FtHBmlN8ro=
Date: Sat, 23 Aug 2025 16:23:52 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: maud_spierings@hotmail.com
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable HDMI receiver on
 orangepi 5 plus
Message-ID: <wc4mcm5nywfrzafexagun4kaw3hzb3avtunh4idg22ctuz6r2h@xjgqo6ihiyey>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	maud_spierings@hotmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20250823-orangepi5-v1-0-ae77dd0e06d7@hotmail.com>
 <20250823-orangepi5-v1-2-ae77dd0e06d7@hotmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250823-orangepi5-v1-2-ae77dd0e06d7@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_072354_871154_D4AF9A6A 
X-CRM114-Status: GOOD (  14.30  )
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

T24gU2F0LCBBdWcgMjMsIDIwMjUgYXQgMDI6NDM6NTFQTSArMDIwMCwgTWF1ZCBTcGllcmluZ3Mg
dmlhIEI0IFJlbGF5IHdyb3RlOgo+IEZyb206IE1hdWQgU3BpZXJpbmdzIDxtYXVkX3NwaWVyaW5n
c0Bob3RtYWlsLmNvbT4KPiAKPiBFbmFibGUgc3VwcG9ydCBmb3IgdGhlIEhETUkgaW5wdXQgcG9y
dCBmb3VuZCBvbiB0aGUgb3JhbmdlcGkgNSBwbHVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdWQg
U3BpZXJpbmdzIDxtYXVkX3NwaWVyaW5nc0Bob3RtYWlsLmNvbT4KClJldmlld2VkLWJ5OiBPbmTF
mWVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGFuayB5b3UsCglvLgoKPiAtLS0KPiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cyB8IDE3ICsr
KysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBp
LTUtcGx1cy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2Vw
aS01LXBsdXMuZHRzCj4gaW5kZXggODIyMmYxZmFlOGZhZGM1Y2JiNGVmMTZiM2RiNWVkOTc1ZWQ0
MzkxNS4uOTk1MGQxMTQ3ZTEyOWRjODY2Y2ZkZTYyZGRkNjM2YjA4MmFlMTkyNiAxMDA2NDQKPiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMu
ZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGkt
NS1wbHVzLmR0cwo+IEBAIC0xNjAsNiArMTYwLDE3IEBAICZoZG1pMV9zb3VuZCB7Cj4gIAlzdGF0
dXMgPSAib2theSI7Cj4gIH07Cj4gIAo+ICsmaGRtaV9yZWNlaXZlcl9jbWEgewo+ICsJc3RhdHVz
ID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJmhkbWlfcmVjZWl2ZXIgewo+ICsJaHBkLWdwaW9zID0g
PCZncGlvMSBSS19QQzYgR1BJT19BQ1RJVkVfTE9XPjsKPiArCXBpbmN0cmwtMCA9IDwmaGRtaW0x
X3J4X2NlYyAmaGRtaW0xX3J4X2hwZGluICZoZG1pbTFfcnhfc2NsICZoZG1pbTFfcnhfc2RhICZo
ZG1pcnhfaHBkPjsKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlzdGF0dXMgPSAi
b2theSI7Cj4gK307Cj4gKwo+ICAmaGRwdHhwaHkwIHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAg
fTsKPiBAQCAtMjc5LDYgKzI5MCwxMiBAQCBibHVlX2xlZF9waW46IGJsdWUtbGVkIHsKPiAgCQl9
Owo+ICAJfTsKPiAgCj4gKwloZG1pcnggewo+ICsJCWhkbWlyeF9ocGQ6IGhkbWlyeC01di1kZXRl
Y3Rpb24gewo+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDEgUktfUEM2IFJLX0ZVTkNfR1BJTyAmcGNm
Z19wdWxsX25vbmU+Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgCWlyLXJlY2VpdmVyIHsKPiAgCQlp
cl9yZWNlaXZlcl9waW46IGlyLXJlY2VpdmVyLXBpbiB7Cj4gIAkJCXJvY2tjaGlwLHBpbnMgPSA8
NCBSS19QQjMgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gCj4gLS0gCj4gMi41MC4x
Cj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
