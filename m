Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54505CD4F54
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 10:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSUr9Y2jW+CL19Yu8QWYNlmvzibRB11OxL7K3o6r52Y=; b=hrUfiR7JtTkr5+
	jZ+sBmUzNeIyR55l4kZZubAhUU4EaLmmi4GHYQ+Bzzoyvei5T81tbpbVXjCeWYbuGmUMsRTrSftOd
	cD+tuuyoktwoDUhN3mjEBaxfX+fdFKU0J3YcfmgBdDWf76QfUquTzenXu+FUnqGZPiJ291gVUZxR0
	TzJbzt5kU0fHpYLRrVgXIzx8KDoQPibPsflSlr4N/Z6Zhc1XIwtYanQjfon30v0h+jLX6iTkkRJPP
	vAzZomiJ2jRhTKGHfY/1za08/hrvpqrNMgVM/wdpBmGmC9kP29RFQipxf1DPpQBOg8uocIskWHus/
	v1bhbQk6PG+ifG77eGNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBmX-00000003x7t-1ekp;
	Wed, 27 May 2026 10:46:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSBmT-00000003x6z-3rnt;
	Wed, 27 May 2026 10:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=N+eyeYWDj7Jk/z76utxzNR9wXCHzRmse/hMsH5lp/hw=; b=ufIdeOKBXO2UAgKnFHGKZVZOce
	BJHUtPuyGZfXt6aUnuQy1ssUjgXdJa2ckiwKiN58DiKNvp8gDD0JOcmqq5+Gs4Aie0QdeOf137K3+
	KnY62JZM4bgs/dyxOeCiGnsoAtnFr8n/FWF8Y+tqH+JmFzzgocUi7+LhjBduBpGp9fxcLo9YgJvpU
	Uxzlz+NnYEBpRANaRal/kDq2mBRPaAafFK0VP1hSejkItP/2fvOe10jE5gE6RindxPRDuTiFIRDL0
	SnbGVwynBOV197K9D2tXyHCNkN5birrETu23YUhMOi1qsAk0QTqFt6a5eiSyrESdtPqlN0bxh5p5W
	l9QIjzBA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jonas@kwiboo.se
Subject: Re: [PATCH v2 4/5] phy: rockchip: inno-usb2: Add clkout_ctl_phy support
Date: Wed, 27 May 2026 12:46:29 +0200
Message-ID: <4449069.vzjCzTo3RI@phil>
In-Reply-To: <agX1obJdYdNhnvnN@vaman>
References: <20260505170410.3265305-1-heiko@sntech.de>
 <20260505170410.3265305-5-heiko@sntech.de> <agX1obJdYdNhnvnN@vaman>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_034634_021263_E5D9A407 
X-CRM114-Status: GOOD (  16.62  )
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

SGkgVmlub2QsCgpBbSBEb25uZXJzdGFnLCAxNC4gTWFpIDIwMjYsIDE4OjE3OjM3IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgVmlub2QgS291bDoKPiBPbiAwNS0wNS0yNiwg
MTk6MDQsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gRnJvbTogSm9uYXMgS2FybG1hbiA8am9u
YXNAa3dpYm9vLnNlPgo+ID4gCj4gPiBUaGUgNDgwbSBjbGsgaXMgY29udHJvbGxlZCB1c2luZyBy
ZWdzIGluIHRoZSBQSFkgYWRkcmVzcyBzcGFjZSBhbmQgbm90Cj4gPiBpbiB0aGUgVVNCIEdSRiBh
ZGRyZXNzIHNwYWNlIG9uIGUuZy4gUkszNTI4IGFuZCBSSzM1MDYuCj4gPiAKPiA+IEFkZCBhIGNs
a291dF9jdGxfcGh5IHVzYjJwaHlfcmVnIHRvIGhhbmRsZSBlbmFibGUvZGlzYWJsZSBvZiB0aGUg
NDgwbQo+ID4gY2xrIG9uIHRoZXNlIFNvQ3MuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEpvbmFz
IEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPiA+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtaW5uby11c2IyLmMgfCA0NyArKysrKysrKysrKysrKystLS0tCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPiA+IGluZGV4
IDdjZWM0NTE5MjM5My4uZDg4NzlmY2Q0MjkxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPiA+IEBAIC0xNzksNiArMTc5LDcgQEAg
c3RydWN0IHJvY2tjaGlwX3VzYjJwaHlfY2ZnIHsKPiA+ICAJdW5zaWduZWQgaW50CW51bV9wb3J0
czsKPiA+ICAJaW50ICgqcGh5X3R1bmluZykoc3RydWN0IHJvY2tjaGlwX3VzYjJwaHkgKnJwaHkp
Owo+ID4gIAlzdHJ1Y3QgdXNiMnBoeV9yZWcJY2xrb3V0X2N0bDsKPiA+ICsJc3RydWN0IHVzYjJw
aHlfcmVnCWNsa291dF9jdGxfcGh5Owo+IAo+IFRoaXMgZ2l2ZXMgYSBrZXJuZWwtZG9jIHdhcm5p
bmcuIEkgaGF2ZSBhcHBsaWVkIHBsZWFzZSBzZW5kIGZpeCBmb3IgdGhpcwoKSnVzdCBpZiBzb21l
b25lIHJlYWRzIHRoYXQgaW4gdGhlIGZ1dHVyZSwgSSBzZW50IGEgZml4IGZvciB0aGF0IGxhc3Qg
d2VlayBpbjoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI2MDUyMDEwMjg1OS4xMzU3
NDExLTEtaGVpa29Ac250ZWNoLmRlLwoKSGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
