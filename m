Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F4D7C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 07:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3qRJb1aNvWoG35G0J7eznWte2YHdeSBGa/Eqd70aDI=; b=ZpN/7QZZbEhwly
	uWvZa1QRXlO2+IUSGahCOMI2yQj5pXsubZ9U+l/RrDuWSZe2SgFYGGpkNXqbXp8DLukO+SphjEKpb
	bI2JXKNQmwDBAFxgaEYj339exWACUEtOk9Oi0Cxc2jZsnODdaXfcf4SXYKitD1lB+ioq4wk0tZmrI
	OVEeklCpPYA0gL/DAaoF9R2GlCFSWInvaMat2+4+qZL0JNqa5gSI143CwsJ8t4P87Twq7q/SQQ3lW
	0rWDUlQNMSNPGhiF+7GeOzALuO1gguDUJ65cghQy1u79EkJXKcujSkCeF4emCsOAPnaNarretHXBB
	4+4W/ZDRlDqM2rgD+rlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsG7F-00000007eo5-45xP;
	Wed, 12 Mar 2025 07:02:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsG5b-00000007ed0-2HgZ;
	Wed, 12 Mar 2025 07:01:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=T4cQcUJ36qNbXsGyNZN8cofiMvUd+P7GunVsv0lw7ng=; b=c+Z7jXJEsCDQ9/aVNgTQtUgjLQ
	9bBfzxsRzEr+7FgnoT0aLBS72UX8EMfN4yuhXInO/xqKBcWaOlQ3xJH10Hb+H//OG0D4+/Ftas+mh
	Ad7+HvP37hxYRSdvb95uLBkgh68AbtFocQlTEKGTWuuvG3R8S6HYYimbWALR7jMXOkfFiSU5LED0s
	TTp+Gw/WSL9zsvuXmkZ1sbabx/mQg/jaBGYpKSQ1nvGAT/iAUWS2XBXTgs8zrDK+e6sZwvA1ektdr
	h6h8aDqap0NSXKpjLINaomhQt51r8XDO6lRh15D7jMWSuep2VXpjQVBhbxxnsITO4n6k/qAzZQDdP
	HGE7Ru5g==;
Received: from ip-185-104-138-79.ptr.icomera.net ([185.104.138.79] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tsG5P-0005ev-CI; Wed, 12 Mar 2025 08:01:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jonathan Cameron <jic23@kernel.org>, Simon Xue <xxm@rock-chips.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH] iio: adc: rockchip: Fix clock initialization sequence
Date: Wed, 12 Mar 2025 08:00:54 +0100
Message-ID: <10623626.nUPlyArG6x@phil>
In-Reply-To: <20250312062016.137821-1-xxm@rock-chips.com>
References: <20250312062016.137821-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_000115_582330_2574E6B6 
X-CRM114-Status: GOOD (  18.06  )
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

QW0gTWl0dHdvY2gsIDEyLiBNw6RyeiAyMDI1LCAwNzoyMDoxNiBNRVogc2NocmllYiBTaW1vbiBY
dWU6Cj4gY2xvY2tfc2V0X3JhdGUgc2hvdWxkIGJlIGV4ZWN1dGVkIGFmdGVyIGRldm1fY2xrX2dl
dF9lbmFibGVkLgo+IAo+IEZpeGVzOiA5N2FkMTBiYjI5MDEgKCJpaW86IGFkYzogcm9ja2NoaXBf
c2FyYWRjOiBNYWtlIHVzZSBvZiBkZXZtX2Nsa19nZXRfZW5hYmxlZCIpCj4gU2lnbmVkLW9mZi1i
eTogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCj4gLS0tCj4gIGRyaXZlcnMvaWlvL2FkYy9yb2NrY2hp
cF9zYXJhZGMuYyB8IDE3ICsrKysrKysrLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlv
L2FkYy9yb2NrY2hpcF9zYXJhZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMu
Ywo+IGluZGV4IGEyOWU1NDc1NGM4Zi4uYWI0ZGU2N2ZiMTM1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy9yb2Nr
Y2hpcF9zYXJhZGMuYwo+IEBAIC00ODAsMTUgKzQ4MCw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
c2FyYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoaW5mby0+
cmVzZXQpCj4gIAkJcm9ja2NoaXBfc2FyYWRjX3Jlc2V0X2NvbnRyb2xsZXIoaW5mby0+cmVzZXQp
Owo+ICAKPiAtCS8qCj4gLQkgKiBVc2UgYSBkZWZhdWx0IHZhbHVlIGZvciB0aGUgY29udmVydGVy
IGNsb2NrLgo+IC0JICogVGhpcyBtYXkgYmVjb21lIHVzZXItY29uZmlndXJhYmxlIGluIHRoZSBm
dXR1cmUuCj4gLQkgKi8KPiAtCXJldCA9IGNsa19zZXRfcmF0ZShpbmZvLT5jbGssIGluZm8tPmRh
dGEtPmNsa19yYXRlKTsKPiAtCWlmIChyZXQgPCAwKQo+IC0JCXJldHVybiBkZXZfZXJyX3Byb2Jl
KCZwZGV2LT5kZXYsIHJldCwKPiAtCQkJCSAgICAgImZhaWxlZCB0byBzZXQgYWRjIGNsayByYXRl
XG4iKTsKPiAtCj4gIAlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKGluZm8tPnZyZWYpOwo+ICAJaWYg
KHJldCA8IDApCj4gIAkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LAo+IEBA
IC01MTUsNiArNTA2LDE0IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc2FyYWRjX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoSVNfRVJSKGluZm8tPmNsaykpCj4gIAkJ
cmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihpbmZvLT5jbGspLAo+ICAJ
CQkJICAgICAiZmFpbGVkIHRvIGdldCBhZGMgY2xvY2tcbiIpOwo+ICsJLyoKPiArCSAqIFVzZSBh
IGRlZmF1bHQgdmFsdWUgZm9yIHRoZSBjb252ZXJ0ZXIgY2xvY2suCj4gKwkgKiBUaGlzIG1heSBi
ZWNvbWUgdXNlci1jb25maWd1cmFibGUgaW4gdGhlIGZ1dHVyZS4KPiArCSAqLwo+ICsJcmV0ID0g
Y2xrX3NldF9yYXRlKGluZm8tPmNsaywgaW5mby0+ZGF0YS0+Y2xrX3JhdGUpOwo+ICsJaWYgKHJl
dCA8IDApCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LAo+ICsJCQkJ
ICAgICAiZmFpbGVkIHRvIHNldCBhZGMgY2xrIHJhdGVcbiIpOwo+ICAKPiAgCXBsYXRmb3JtX3Nl
dF9kcnZkYXRhKHBkZXYsIGluZGlvX2Rldik7Cj4gIAo+IAoKCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
