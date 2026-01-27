Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC59D34082
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 15:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4xgTAcZkoOGTSalRKgYF+wp4sRaHB3W+52VdcmEW9SA=; b=VTqGagXSPCuVCrDLdC3WmaWt9y
	X5ScGm1lAMfkSD1YBTvHX8IKEDpLla8ANfaEZ7Xkj+7VKApEPj1Ta82T2VCvD35qSqbb92cAZwcNB
	Xcpe0mu64NwRoqI7ypN5uFbpFHs8TcoB02VsdN+Zr965JmCm90+h+dH1acGPKT+tQwgpcXsy2uagy
	YcAG+nSL1u2182/w8ADjKzZc+5fnawueRxJUWBug6skKWz2yw83STwjIhx07aox7xqYizGpIbAJSs
	EK8Z+RLuV4Jdtf/jGuK8rlgN1qcFq3KpBeR8m6iwQtuIeSVmu1g5/cwiLdnq99i3zW6o7UVWC41tp
	YbREf5cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkl5i-0000000EYcV-0cGB;
	Tue, 27 Jan 2026 15:34:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkl5f-0000000EYbm-0arv;
	Tue, 27 Jan 2026 15:34:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B5C9B44084;
	Tue, 27 Jan 2026 15:34:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70FDAC116C6;
	Tue, 27 Jan 2026 15:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769528088;
	bh=r8swAlZx9gfHag0kXpyqxA7e8B89YoYJ5gDgTraENPE=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=AgwJC/mLo/RKTmsx+eYELFgTaPAqfeSLcvwLkkGy2/CtRB3bhuXM4IEq9+YbGYMCQ
	 R3GLERCy/X29SqmJD1hLWV5MP/2MD34L+tTdiGukKBZW3Y7UsdnK2LUtrNWUsUQdYA
	 caLkJQLIHvkhynBAhxNbC+m1l9QoJHfSXcn8D1DTjnNko8YuESxNvMm80L+ZElSR0I
	 e2p0hvdrKzUv25wZ/+xMN6Y49r175vWIE2LejimSl8ccZQYjwmwVH2E9eTLby/0Mki
	 io0mAy4STdYdE4W29dr0JK5auJSPNKpABf0JwW5K72v2JXNl9b5R4Mlzd9ud+ABkMs
	 HbOc+N8xrXM+A==
Date: Tue, 27 Jan 2026 09:34:47 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, kernel@pengutronix.de, 
 Jacob Chen <jacob-chen@iotwrt.com>, Conor Dooley <conor+dt@kernel.org>, 
 linux-media@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 linux-arm-kernel@lists.infradead.org
To: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <20260127-spu-rga3-v3-1-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
 <20260127-spu-rga3-v3-1-77b273067beb@pengutronix.de>
Message-Id: <176952808764.1883880.9874819074919420186.robh@kernel.org>
Subject: Re: [PATCH v3 01/27] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_073451_849988_34BB8DAF 
X-CRM114-Status: GOOD (  15.10  )
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

Ck9uIFR1ZSwgMjcgSmFuIDIwMjYgMTU6Mzk6MTAgKzAxMDAsIFN2ZW4gUMO8c2NoZWwgd3JvdGU6
Cj4gQWRkIGEgbmV3IGNvbXBhdGlibGUgZm9yIHRoZSBSR0EzIChSYXN0ZXIgR3JhcGhpYyBBY2Nl
bGVyYXRpb24gMykKPiBwZXJpcGhlcmFsIGZvdW5kIG9uIHRoZSBSSzM1ODggU29DLiBBbHNvIHNw
ZWNpZnkgYW4gaW9tbXUgcHJvcGVydHksCj4gYXMgdGhlIFJHQTMgY29udGFpbnMgdGhlIGdlbmVy
aWMgcm9ja2NoaXAgaW9tbXUuIFRoZSBSR0EyIGFsc28gaGFzCj4gYW4gaW9tbXUsIGJ1dCBpdCdz
IHNwZWNpZmljIHRvIHRoZSBSR0EyLgo+IAo+IFRoZSBleGlzdGluZyBiaW5kaW5nIHJlZmVycyB0
byB0aGUgUkdBMiBwZXJpcGhlcmFsLiBUaGUgUkszNTg4Cj4gY29udGFpbnMgb25lIFJHQTIgY29y
ZSBhbmQgdHdvIFJHQTMgY29yZXMuIEJvdGggZmVhdHVyZSBhIHNpbWlsYXIKPiBmdW5jdGlvbmFs
aXR5IG9mIHNjYWxpbmcsIGNyb3BwaW5nIGFuZCByb3RhdGluZyBvZiB1cCB0byB0d28gaW5wdXQK
PiBpbWFnZXMgaW50byBvbmUgb3V0cHV0IGltYWdlLiBLZXkgZGlmZmVyZW5jZXMgb2YgdGhlIFJH
QTMgYXJlOgo+IAo+IC0gc3VwcG9ydHMgMTBiaXQgWVVWIG91dHB1dCBmb3JtYXRzCj4gLSBzdXBw
b3J0cyA4eDggdGlsZXMgYW5kIEZCQ0QgYXMgaW5wdXRzIGFuZCBvdXRwdXRzCj4gLSBzdXBwb3J0
cyBCVDIwMjAgY29sb3Igc3BhY2UgY29udmVyc2lvbgo+IC0gbWF4IG91dHB1dCByZXNvbHV0aW9u
IG9mICg4MTkyLTY0KXgoODE5Mi02NCkKPiAtIE1NVSBjYW4gbWFwIHVwIHRvIDMyRyBERFIgUkFN
Cj4gLSBmdWxseSBwbGFuYXIgZm9ybWF0cyAoMyBwbGFuZXMpIGFyZSBub3Qgc3VwcG9ydGVkCj4g
LSBtYXggc2NhbGUgdXAvZG93biBmYWN0b3Igb2YgOCAoUkdBMiBhbGxvd3MgdXAgdG8gMTYpCj4g
Cj4gU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5k
ZT4KPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtcmdhLnlh
bWwgICAgICAgfCAxOSArKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCgpNeSBib3QgZm91bmQgZXJyb3JzIHJ1bm5p
bmcgJ21ha2UgZHRfYmluZGluZ19jaGVjaycgb24geW91ciBwYXRjaDoKCnlhbWxsaW50IHdhcm5p
bmdzL2Vycm9yczoKLi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9j
a2NoaXAtcmdhLnlhbWw6NjQ6MTogW3dhcm5pbmddIHdyb25nIGluZGVudGF0aW9uOiBleHBlY3Rl
ZCAyIGJ1dCBmb3VuZCAwIChpbmRlbnRhdGlvbikKCmR0c2NoZW1hL2R0YyB3YXJuaW5ncy9lcnJv
cnM6Cgpkb2MgcmVmZXJlbmNlIGVycm9ycyAobWFrZSByZWZjaGVja2RvY3MpOgoKU2VlIGh0dHBz
Oi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9kZXZpY2V0cmVlL3BhdGNoLzIwMjYwMTI3
LXNwdS1yZ2EzLXYzLTEtNzdiMjczMDY3YmViQHBlbmd1dHJvbml4LmRlCgpUaGUgYmFzZSBmb3Ig
dGhlIHNlcmllcyBpcyBnZW5lcmFsbHkgdGhlIGxhdGVzdCByYzEuIEEgZGlmZmVyZW50IGRlcGVu
ZGVuY3kKc2hvdWxkIGJlIG5vdGVkIGluICp0aGlzKiBwYXRjaC4KCklmIHlvdSBhbHJlYWR5IHJh
biAnbWFrZSBkdF9iaW5kaW5nX2NoZWNrJyBhbmQgZGlkbid0IHNlZSB0aGUgYWJvdmUKZXJyb3Io
cyksIHRoZW4gbWFrZSBzdXJlICd5YW1sbGludCcgaXMgaW5zdGFsbGVkIGFuZCBkdC1zY2hlbWEg
aXMgdXAgdG8KZGF0ZToKCnBpcDMgaW5zdGFsbCBkdHNjaGVtYSAtLXVwZ3JhZGUKClBsZWFzZSBj
aGVjayBhbmQgcmUtc3VibWl0IGFmdGVyIHJ1bm5pbmcgdGhlIGFib3ZlIGNvbW1hbmQgeW91cnNl
bGYuIE5vdGUKdGhhdCBEVF9TQ0hFTUFfRklMRVMgY2FuIGJlIHNldCB0byB5b3VyIHNjaGVtYSBm
aWxlIHRvIHNwZWVkIHVwIGNoZWNraW5nCnlvdXIgc2NoZW1hLiBIb3dldmVyLCBpdCBtdXN0IGJl
IHVuc2V0IHRvIHRlc3QgYWxsIGV4YW1wbGVzIHdpdGggeW91ciBzY2hlbWEuCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
