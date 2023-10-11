Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3871CCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 22:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFa3rCB+c19lVGaGrFLJnCAvkNRPbxvhwnQ4itginEw=; b=bv8+BwbqvQRKCB
	3X1lSm56r3ddhgYH7x30ECDPETuTG/IWvdFeF7Gi8e1DubqK6LYrNS3ZyaLD77YR1CrZ6q4umqc6Z
	K3abtRKDNaOIvB5IKc9soh2ZTW+nurx+noAMVZzvO+JAphZYYlABiH/7TbdKwYmCbwT9reoXrXAo/
	WWQJCKtNSKrn3INhhx80VPliq71JHLQuKbKEhCAm921pfz6ckD+kkU4gecl0fXgB9zj+AyDZWDVfs
	NYcHZaHykfZBWkS+AYtFD1/dvNe4h4sgRtQrE4duDEKLVAKHZCQMd5fLaTUyJgAlan4jjZ8HVHEa5
	88xQmsjsCZ6I6PRHCRiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqi1y-00Grnx-0D;
	Wed, 11 Oct 2023 22:50:18 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqi1t-00GrnC-2p;
	Wed, 11 Oct 2023 22:50:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697064611; bh=UHNOUbuXRbAH9+kfxiOMGB5Uptg1Jgwxx6XcH6TaeMg=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=UQMYthG9BIpBKGCwFuhN6+zAcNK9HM9KmyAIZJO5RkZLeNHEtPOBA0dq3zXgqe6II
	 1oHX2kiM+7PVeND6L9K4fltm8PojnKvOGmvWrPxvceUAo/nJ8Ehbog+ab1zlK9c8WM
	 3+oGrNQt8F2McHCgVfhI29WV1YHImaVE5NWucoIM=
Date: Thu, 12 Oct 2023 00:50:11 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
	linux-arm-kernel@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Add support for Pine64 QuartzPro64
Message-ID: <ayv6csu32xw2jdfkf5jjhunybbo5ytuhsrkiljxetco27g4z7w@mt67edb4bwql>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
	linux-arm-kernel@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20231011215856.2082241-1-megi@xff.cz>
 <169706370544.498990.15767954270891425478.b4-ty@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <169706370544.498990.15767954270891425478.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_155014_676258_E21D088A 
X-CRM114-Status: GOOD (  18.68  )
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

T24gVGh1LCBPY3QgMTIsIDIwMjMgYXQgMTI6MzY6NDVBTSArMDIwMCwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4gCj4gT24gV2VkLCAxMSBPY3QgMjAyMyAyMzo1ODo0MyArMDIwMCwgT25kxZllaiBK
aXJtYW4gd3JvdGU6Cj4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+IAo+
ID4gVGhpcyBzZXJpZXMgYWRkcyBhbiBpbml0aWFsIHN1cHBvcnQgZm9yIFBpbmU2NCBRdWFydHpQ
cm82NCBTQkMuCj4gPiAKPiA+IFRoZSBzZXJpZXMgd2FzIHRlc3RlZCBhZ2FpbnN0IExpbnV4IDYu
Ni1yYzQuCj4gPiAKPiA+IFBsZWFzZSB0YWtlIGEgbG9vay4KPiA+IAo+ID4gWy4uLl0KPiAKPiBB
cHBsaWVkLCB0aGFua3MhCj4gCj4gWzEvMl0gZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFk
ZCBQaW5lNjQgUXVhcnpQcm82NAo+ICAgICAgIGNvbW1pdDogYTZmYTBkNGE3MDRkN2FmNTFhNWQw
MmY3NmM3MzA0NmNmOTU3YzFiNQo+IFsyLzJdIGFybTY0OiBkdHM6IHJrMzU4OC1xdWFydHpwcm82
NDogQWRkIFF1YXJ0elBybzY0IFNCQyBkZXZpY2UgdHJlZQo+ICAgICAgIGNvbW1pdDogODE1MmQz
ZDA3MGE5Y2E0ZjQ4MDIwZDExOTI1NzE4ZjE3MDdkYjRmMQo+IAo+IFRoYW5rcyBhIGxvdCBmb3Ig
Zm9sbG93aW5nIGFsb25nIG15IGNoYW5nZXMuCj4gCj4gV2hpbGUgSSBkaWQgcGxhbiBvbiBkb2lu
ZyB0aGUgc2FtZSBmb3IgdGhlIG9yaWdpbmFsIFF1YXJ0elBybzY0Cj4gc2VyaWVzLCBJIGhhZG4n
dCBmb3VuZCB0aGUgdGltZSB5ZXQgYW5kIHRoaXMgbWFrZXMgZXZlcnl0aGluZwo+IHNvIG11Y2gg
ZWFzaWVyIDotKSAuCgpJIHRob3VnaHQgYXMgbXVjaC4gOi0pIFRoYW5rcyBmb3IgbWVyZ2luZyB0
aGUgcGF0Y2hlcy4KCktpbmQgcmVnYXJkcywKCW8uCgo+IAo+IEJlc3QgcmVnYXJkcywKPiAtLSAK
PiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
