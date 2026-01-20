Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDDAD2ECE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 15:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjn6TcumtxdFYhqKGFZ7zrky6pzUzxMi9JtSGmQ6r3E=; b=lLNWuwSdvdTvVb
	t2zRNqnoTPSlMu1k8iWakk9gL54zTIcQIhQDAjG+0eXfRziSv+LstMECm1iZL3fFokf7sK36x3yzb
	u5ppAx1jgQufzE4CZe0lKl4tEzbGgyQ5one2BLhwyRvCFer5rqTHgVwTKg+Y5tJQQtiUiIZ/Mp+PT
	0bGnH3T/yIHHL7lPv0AKANDDrkDlAn/TFi1u7n2S74//cK8vzN5S5dMri5OLZ2/G/ZF7QSBTsDZwY
	/Bw+Y0cr64glsrvksa4aozLP8AsQChPPe4uaL2PBXI6J7yTZCL/ukqynMJJgq3dZ6pn4k2n7bdBNV
	B8V6nLYLKWeFpAqSn2cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDF2-000000042hR-1uoO;
	Tue, 20 Jan 2026 15:02:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDEz-000000042gB-413o;
	Tue, 20 Jan 2026 15:01:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EF0BD40584;
	Tue, 20 Jan 2026 15:01:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 768D6C16AAE;
	Tue, 20 Jan 2026 15:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768921316;
	bh=hGTUlmiLRnAbmX/IerIdVQBrE4kuY4fnoHuaZq1QnTA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bE1soNsl6YvccJ2CNmIjbB5//j82Y+x5UmRSnX0dTb9Z4dTIrzraszPURYX7+mcY6
	 rO7wZEaj59ys0aoWe/0uWdVpJ8pvx8OR/az4Eu8gNWkjOWiQF2ZkyHafSMPxZvbxYe
	 QXqna34zB2FN49db5UVwEjWrNUC9EvqDr4TuFn772Fqu4z//JpJCPy0PvtemdeM375
	 FWt9ppg1hGhPrv3Mq4Pn689SR0E7NkQr+EEYxY0MJEnxeKDB9jLbgK9xi9a6m+kInj
	 XRizz5OIRaXBZLJq4ned+KeE9RZ0je69pzFpjIXIqo5ZYLrXarvq63Wl7RIG3AMUNs
	 t7y739DuG3u+A==
Date: Tue, 20 Jan 2026 15:01:51 +0000
From: Lee Jones <lee@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Joseph Chen <chenjh@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] Add RK801 PMIC support
Message-ID: <20260120150151.GE1354723@google.com>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
 <176892124246.2259507.3674990175192687595.b4-ty@kernel.org>
 <20260120150119.GD1354723@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260120150119.GD1354723@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_070158_014744_4668CD84 
X-CRM114-Status: GOOD (  15.65  )
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

T24gVHVlLCAyMCBKYW4gMjAyNiwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBUdWUsIDIwIEphbiAy
MDI2LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBPbiBNb24sIDEyIEphbiAyMDI2IDIwOjQzOjQ4
ICswODAwLCBKb3NlcGggQ2hlbiB3cm90ZToKPiA+ID4gVGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBz
dXBwb3J0IGZvciB0aGUgUm9ja2NoaXAgUks4MDEgUG93ZXIgTWFuYWdlbWVudAo+ID4gPiBJbnRl
Z3JhdGVkIENpcmN1aXQgKFBNSUMpIHRvIHRoZSBMaW51eCBrZXJuZWwuCj4gPiA+IAo+ID4gPiBU
aGUgUks4MDEgaXMgYSBQTUlDIGRlc2lnbmVkIGZvciBtdWx0aW1lZGlhIGFuZCBoYW5kaGVsZCBk
ZXZpY2VzLiBJdAo+ID4gPiBpbmNsdWRlczoKPiA+ID4gLSA0IEJVQ0sgcmVndWxhdG9ycyAoRENE
QykKPiA+ID4gLSAyIExETyByZWd1bGF0b3JzCj4gPiA+IC0gMSBTV0lUQ0ggcmVndWxhdG9yCj4g
PiA+IC0gSW50ZXJydXB0IHN1cHBvcnQgZm9yIHBvd2VyIGtleSBldmVudHMKPiA+ID4gCj4gPiA+
IFsuLi5dCj4gPiAKPiA+IEFwcGxpZWQsIHRoYW5rcyEKPiA+IAo+ID4gWzEvM10gZHQtYmluZGlu
Z3M6IG1mZDogQWRkIHJrODAxIGJpbmRpbmcKPiA+ICAgICAgIGNvbW1pdDogYThhMmFkZDdiMTg4
OWYwMGJjNWQyYjFmMjVmYWQzNGU4OWVmODVmYgo+ID4gWzIvM10gbWZkOiByazh4eDogQWRkIFJL
ODAxIHN1cHBvcnQKPiA+ICAgICAgIGNvbW1pdDogMTU2NDQyZWI2ZTQ0ZDU0NWYwOTU1OWJkNzBj
NWIzMWZiYTM5ZWIwMQo+ID4gWzMvM10gcmVndWxhdG9yOiByazgwODogQWRkIFJLODAxIHN1cHBv
cnQKPiA+ICAgICAgIGNvbW1pdDogM2UxMGJiZDljOGE2ZDVkMDE2YjhlNTJjNWQ0Y2ViYTkzYTIz
MDRhMAo+IAo+IE5vdGUgdG8gc2VsZjogaWItbWZkLXJlZ3VsYXRvci02LjIwCgpOb3RlIHRvIGV2
ZXJ5b25lIGVsc2U6IFB1bGwtcmVxdWVzdCB0byBmb2xsb3cgYWZ0ZXIgYnVpbGQgdGVzdGluZy4K
Ci0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
