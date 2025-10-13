Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89218CCA476
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFHImTaQdCWF0pwNKwq3QMEnfuQMWX2+SR6zrLf8cMI=; b=JEPEyg3oLmhDCS
	kOKqzPPQiHDKUNeg7sV1Qnsl8YTWohop56EBhmlahbLpqQKP0gqQ8d0vu+GUm5CyL2iOOI1h7ZO7v
	eSzJU7bAy/gepgdvI5Nny+flDEjKFeNFjZdWKGAn8X7lHL0WX1weVD8daBAsfzndS51Va+B42HW/Z
	MEaR7SgS+ISaj1RhjKV13gCTFe/1z0AtdZSG2exm7VANBlEVrXp/dvdnG4hRdL4bfXw5HGZlHQ0yK
	hd4qVLLqAhCjXsFECFKfnGlAHp3SgqQD+0qoS9ckbT0hV2XawlgdfrBeIRMNy2NZO9ZfplzHdzOhV
	c0Bc4XobElIJQW9bLy0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Hzo-0000000DA93-0qSi;
	Mon, 13 Oct 2025 12:49:48 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Hzk-0000000DA7e-3buY;
	Mon, 13 Oct 2025 12:49:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=k3MQLLai5Lv1jjJP3MPQy569OXhdTSwstmrfUBxF72w=; b=IYz8hkJVfaP2cX4h8ZURsZZ4uF
	mKPN5lEiMWdLhGTGvlXkhhNTiX+V6ElB7rt+ErxHq2nWwSTGUKFpoF5Sg8Idcuf2MJi8Wa+grVvW4
	Fed16y9coFyDw/QXXQYs5I7htwlZLIz/reIUDsDX5TKjYWKtZ2aMJAkBzBIOvKjoAbMjkMvr15Tcl
	G590Viuqb+Xm6YMY7lweG+QjqEaz64p3KHCxQif1U5l8J3fgTigZ7luXotO5sKO/ECOtF2AeOXf7y
	nap9IUSzUxu1McVNIdhRmwT8/b6UD27i34sKNFzmVJy7CewBcJhCyubeppnsLP12nSJ7f2tsJ7x8e
	Mb1NJa8Q==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:48894)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1v8HzP-000000001zZ-0kKg;
	Mon, 13 Oct 2025 13:49:23 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1v8HzH-000000000Le-1ZYr;
	Mon, 13 Oct 2025 13:49:15 +0100
Date: Mon, 13 Oct 2025 13:49:15 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Liangbin Lian <jjm2473@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com,
	inindev@gmail.com, ivan8215145640@gmail.com,
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
	jbx6244@gmail.com, andrew@lunn.ch, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
Message-ID: <aOz1SzpzGLDQjiYQ@shell.armlinux.org.uk>
References: <20251009084416.45542-1-jjm2473@gmail.com>
 <20251009084416.45542-4-jjm2473@gmail.com>
 <aOe_0EufouURu7R2@shell.armlinux.org.uk>
 <CAP_9mL4MfzagxiMD1VdOu=jBuN_XsOrvPQT=XTVgu2+G=+nD9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP_9mL4MfzagxiMD1VdOu=jBuN_XsOrvPQT=XTVgu2+G=+nD9A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_054944_897294_CF129820 
X-CRM114-Status: GOOD (  28.12  )
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

T24gRnJpLCBPY3QgMTAsIDIwMjUgYXQgMTE6MjA6MDhBTSArMDgwMCwgTGlhbmdiaW4gTGlhbiB3
cm90ZToKPiBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgPGxpbnV4QGFybWxpbnV4Lm9yZy51az4g5LqO
MjAyNeW5tDEw5pyIOeaXpeWRqOWbmyAyMTo1OeWGmemBk++8mgo+ID4KPiA+IE9uIFRodSwgT2N0
IDA5LCAyMDI1IGF0IDA0OjQ0OjE2UE0gKzA4MDAsIExpYW5nYmluIExpYW4gd3JvdGU6Cj4gPiA+
ICsmZ21hYzAgewo+ID4gPiArICAgICBwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4gPiA+ICsgICAg
IGNsb2NrX2luX291dCA9ICJpbnB1dCI7Cj4gPiAuLi4KPiA+ID4gKyZnbWFjMSB7Cj4gPiA+ICsg
ICAgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiA+ID4gKyAgICAgY2xvY2tfaW5fb3V0ID0gImlu
cHV0IjsKPiA+Cj4gPiBJIGFtIGZpbmUgd2l0aCB3aGF0IGlzIGJlaW5nIHByb3Bvc2VkIGhlcmUs
IGJ1dCBJIHRoaW5rIHRoaXMKPiA+IGNsb2NrX2luX291dCBwcm9wZXJ0eSBuZWVkcyBmaXhpbmcu
IFRoZSBkZXNjcmlwdGlvbiBmb3IgaXQgaXMgdGh1czoKPiA+Cj4gPiAgIGNsb2NrX2luX291dDoK
PiA+ICAgICBkZXNjcmlwdGlvbjoKPiA+ICAgICAgIEZvciBSR01JSSwgaXQgbXVzdCBiZSAiaW5w
dXQiLCBtZWFucyBtYWluIGNsb2NrKDEyNU1IeikKPiA+ICAgICAgIGlzIG5vdCBzb3VyY2VkIGZy
b20gU29DJ3MgUExMLCBidXQgaW5wdXQgZnJvbSBQSFkuCj4gPiAgICAgICBGb3IgUk1JSSwgImlu
cHV0IiBtZWFucyBQSFkgcHJvdmlkZXMgdGhlIHJlZmVyZW5jZSBjbG9jayg1ME1IeiksCj4gPiAg
ICAgICAib3V0cHV0IiBtZWFucyBHTUFDIHByb3ZpZGVzIHRoZSByZWZlcmVuY2UgY2xvY2suCj4g
PiAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvc3RyaW5nCj4gPiAg
ICAgZW51bTogW2lucHV0LCBvdXRwdXRdCj4gPiAgICAgZGVmYXVsdDogaW5wdXQKPiA+Cj4gPiBU
aGUgcHJvYmxlbXMgdGhhdCBJIGhhdmUgaGVyZSBhcmU6Cj4gPgo+ID4gMSkgdGhlIGRlc2NyaXB0
aW9uIHN0YXRlcyB0aGF0IHRoZSBvbmx5IHBvc3NpYmxlIHZhbHVlIGZvciB0aGlzIHdoZW4gaW4K
PiA+ICAgIFJHTUlJIG1vZGUgaXMgImlucHV0IiB3aGljaCBpcyByZWFzb25hYmxlLCBiZWNhdXNl
IGl0J3MgZHVlIHRvIHRoZQo+ID4gICAgUkdNSUkgc3BlY2lmaWNhdGlvbi4gVGhlIGRyaXZlciBj
b2RlIGlzIHBlcmZlY3RseSBhYmxlIHRvIGRldGVybWluZQo+ID4gICAgd2hldGhlciBSR01JSSBo
YXMgYmVlbiBzcGVjaWZpZWQsIGFuZCBzZXQgYnNwX3ByaXYtPmNsb2NrX2lucHV0Cj4gPiAgICBp
dHNlbGYsIHJlbGlldmluZyBEVCBvZiB0aGlzIG5lZWQuCj4gPgo+ID4gMikgYnNwX3ByaXYtPmNs
b2NrX2lucHV0IGlzIG9ubHkgdXNlZCBpbiBnbWFjX2Nsa19lbmFibGUoKSB3aGVuIGNhbGxpbmcK
PiA+ICAgIHRoZSBTb0Mgc3BlY2lmaWMgc2V0X2Nsb2NrX3NlbGVjdGlvbigpIG1ldGhvZC4gT25s
eSBSSzM1MjgsIFJLMzU3NiwKPiA+ICAgIGFuZCBSSzM1ODggcG9wdWxhdGUgdGhpcyBtZXRob2Qu
IEV2ZXJ5IG90aGVyIFNvQyBzdXBwb3J0ZWQgYnkgdGhpcwo+ID4gICAgZHJpdmVyIHN0aWxsIHJl
cXVpcmVzIHRoZSBwcm9wZXJ0eToKLi4uCj4gPiAgIGNsb2NrX2luX291dDoKPiA+ICAgICBkZXNj
cmlwdGlvbjoKPiA+ICAgICAgIEZvciBSR01JSSwgaXQgbXVzdCBiZSAiaW5wdXQiCj4gCj4gVGhp
cyBkZXNjcmlwdGlvbiBkb2VzIG5vdCBtYXRjaCB0aGUgYWN0dWFsIHNpdHVhdGlvbiwKPiB0aGVy
ZSBhcmUgbWFueSBkdHMgdXNpbmcgJ291dHB1dCc6Cj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvdjYuMTcvc291cmNlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LWJwaS1yMi1wcm8uZHRzI0wyMzUKPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ni4xNy9zb3VyY2UvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZXZiMS12MTAu
ZHRzI0wyNDEKPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xNy9zb3VyY2Uv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtZmFzdHJoaW5vLXI2OHMuZHRzI0wz
Mwo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE3L3NvdXJjZS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0cyNMNzgKCkZvciBhbGwg
b2YgdGhlIGFib3ZlLCB3aGV0aGVyIGl0IGlzICJpbnB1dCIgb3IgIm91dHB1dCIgaGFzIG5vIGVm
ZmVjdAphcyB0aGVzZSBhcmUgYWxsIHJrMzU2OCwgYW5kIHJrMzU2OCBkb2VzIG5vdCBpbXBsZW1l
bnQgdGhlCnNldF9jbG9ja19zZWxlY3Rpb24oKSBtZXRob2QuCgpzdGF0aWMgY29uc3Qgc3RydWN0
IHJrX2dtYWNfb3BzIHJrMzU2OF9vcHMgPSB7CiAgICAgICAgLnNldF9waHlfaW50Zl9zZWwgPSBy
azM1Njhfc2V0X3BoeV9pbnRmX3NlbCwKICAgICAgICAuc2V0X3RvX3JnbWlpID0gcmszNTY4X3Nl
dF90b19yZ21paSwKICAgICAgICAuc2V0X3RvX3JtaWkgPSByazM1Njhfc2V0X3RvX3JtaWksCiAg
ICAgICAgLnNldF9zcGVlZCA9IHJrX3NldF9jbGtfbWFjX3NwZWVkLAogICAgICAgIC5yZWdzX3Zh
bGlkID0gdHJ1ZSwKICAgICAgICAucmVncyA9IHsKICAgICAgICAgICAgICAgIDB4ZmUyYTAwMDAs
IC8qIGdtYWMwICovCiAgICAgICAgICAgICAgICAweGZlMDEwMDAwLCAvKiBnbWFjMSAqLwogICAg
ICAgICAgICAgICAgMHgwLCAvKiBzZW50aW5lbCAqLwogICAgICAgIH0sCn07CgpJJ20gZ29pbmcg
dG8gcHJvcG9zZToKCjEpIHRoYXQgdGhlIGRyaXZlciBzaG91bGQgb25seSBwcmludCBhbiBlcnJv
ciBpZiAiY2xvY2tfaW5fb3V0IiBpcwptaXNzaW5nIF9hbmRfIHRoZSBTb0MgaW1wbGVtZW50cyB0
aGUgcmVxdWlyZWQgZnVuY3Rpb24uCgoyKSB0aGF0IHRoZSBkcml2ZXIgc2hvdWxkIHByaW50IGEg
bm9uLWZhdGFsIGVycm9yIGlmIHRoaXMgcHJvcGVydHkgaXMKc3BlY2lmaWVkIGluIERUIF9hbmRf
IHRoZSBTb0MgZG9lcyBub3QgaW1wbGVtZW50IHRoZSBmdW5jdGlvbiB0bwpkaXNjb3VyYWdlIGl0
cyB1c2UuCgozKSBbdHJdeF9kZWxheSBzaG91bGQgbm90IHByaW50IGFuIGVycm9yIGZvciBub24t
UkdNSUkgcGh5IGludGVyZmFjZQptb2Rlcy4KCkkgY29uc2lkZXIgaXQgYSBidWcgdGhhdCBhIGRy
aXZlciBwcmludHMgZXJyb3JzIGZvciBwcm9wZXJ0aWVzIHRoYXQKaGF2ZSBub3QgYmVlbiBzcGVj
aWZpZWQgdGhhdCBpdCBkb2VzIG5vdCBhY3R1YWxseSByZXF1aXJlLiBCeSBkb2luZwpzbywgaXQg
ZW5jb3VyYWdlcyBwZW9wbGUgdG8gYWRkIHVzZWxlc3MgcHJvcGVydGllcyB0byB0aGVpciBEVApk
ZXNjcmlwdGlvbiB0aGF0IHdpbGwgbmV2ZXIgZXZlciBiZSB1c2VkIChlLmcuIGJlY2F1c2UgdGhl
eSBhcmUgbm90CnJlbGV2YW50IGZvciBoYXJkd2FyZSB0aGUgb3BlcmF0aW5nIG1vZGUgdGhhdCB0
aGUgYm9hcmQgaXMgc2V0dXAKZm9yLikKCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8v
d3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUUCBpcyBoZXJlISA4ME1i
cHMgZG93biAxME1icHMgdXAuIERlY2VudCBjb25uZWN0aXZpdHkgYXQgbGFzdCEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
