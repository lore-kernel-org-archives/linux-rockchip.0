Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A507EC3064E
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Aug 2023 15:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPJJNBjjDFuWjvtf3iO++MrZeLKqqRhTOXH6NZ0XFcw=; b=Op94IG9raIO6Ey
	wTdBFyQ5fHzr5UB4mk3B7O+Y9z77LqLcwQ+R48E63VEU0ORC+FJqu3D0twNIENbjCzMwGPXaQMbQC
	LkOzHTmCIMqEemugty8/FLmr96tZP6dJakXh/+S3GRfiQzdgyBT8HhIJqEoUa6/G8VEFb8zzZ1WHX
	2lonbrsayhwt5mfSfMMzjNaU1f+KOvqRuEMkovH1tbq+ZJg71nhIqoTqnErHD8N4koxRWYhwbcNKi
	f23fLRW94asIBIvycQDwxQvbGfuaFIijtLKOhBpqkur5A0moVrYsIEK/lEBgS0qRBgQZ8I2zFJg2S
	dkCaQR5O30120CKNuDQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWeym-006gty-0W;
	Thu, 17 Aug 2023 15:32:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWeyi-006gsz-0s;
	Thu, 17 Aug 2023 15:32:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1692286322; bh=jhloUQX2E1J9+PoKe/QiW8FViWr4zfA5WBk4rOU7L6s=;
	h=Date:From:To:Subject:X-My-GPG-KeyId:References:From;
	b=llwTCSiy/meO+QCeWQcdDEJQ5tpXiV0KwZB3J88v8VDWtxp2VdxsS8cX9UmncP12U
	 jmHW0NO+61zt91X/btYyoWKBl2Lfz3KyyxL6JhqNFtWhVX3h1nte8PNJrbwytF0pPt
	 J1XCSFaxq0y0/YpklFws+VCQK38auNCD6z+ebeiI=
Date: Thu, 17 Aug 2023 17:32:02 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Muhammed Efe Cetin <efectn@6tel.net>, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	robh+dt@kernel.org, sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Orange Pi 5
Message-ID: <qqx5tay4etbepyyy7hqdp2prtw4t3m57esulruevggw2yi4xqf@63a7v5vzodhs>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Muhammed Efe Cetin <efectn@6tel.net>, conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, 
	sebastian.reichel@collabora.com
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <dz2i6ix6dphyu6dwsqgvx7byoxegmdlsc6dwhyxd3uffqus6jo@r6jnxz7jprdv>
 <20230817145756.161970-1-efectn@6tel.net>
 <czvylysw2shlmvryimwtaquz747jel5k4dzfel6kgijmome7py@d4exzabfp3ig>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <czvylysw2shlmvryimwtaquz747jel5k4dzfel6kgijmome7py@d4exzabfp3ig>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_083204_458110_764394C0 
X-CRM114-Status: GOOD (  21.27  )
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

T24gVGh1LCBBdWcgMTcsIDIwMjMgYXQgMDU6MzA6MDRQTSArMDIwMCwgbWVnaSB4ZmYgd3JvdGU6
Cj4gCj4gT24gVGh1LCBBdWcgMTcsIDIwMjMgYXQgMDU6NTc6NTVQTSArMDMwMCwgTXVoYW1tZWQg
RWZlIENldGluIHdyb3RlOgo+ID4gCj4gPiBIaSwgT25kxZllago+ID4gCj4gPiBPbiAxNy4wOC4y
MDIzIDE2OjU3LCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiA+ID4gSGkgTXVoYW1tZWQsCj4gPiA+
IAo+ID4gPj4+PiBbLi4uXQo+ID4gPj4+Cj4gPiA+Pj4+ICsJdmNjXzF2MV9ubGRvX3MzOiB2Y2Mt
MXYxLW5sZG8tczMtcmVndWxhdG9yIHsKPiA+ID4+Pj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0
b3ItZml4ZWQiOwo+ID4gPj4+PiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfMXYxX25sZG9fczMi
Owo+ID4gPj4+PiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gPj4+PiArCQlyZWd1bGF0b3It
Ym9vdC1vbjsKPiA+ID4+Pj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTEwMDAwMD47
Cj4gPiA+Pj4+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDExMDAwMDA+Owo+ID4gPj4+
PiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiA+ID4+Pj4gKwl9Owo+ID4gPj4+Cj4g
PiA+Pj4gVGhlcmUncyBubyBzdWNoIHJlZ3VsYXRvciBvbiB0aGUgYm9hcmQuCj4gPiA+Pgo+ID4g
Pj4gSXQncyBjb25uZWN0ZWQgdG8gUE1JQyBodHRwczovL2kuaW1ndXIuY29tL3NWSmRDNUsucG5n
Cj4gPiA+IAo+ID4gPiBJdCdzIG5vdCBhIHNlcGFyYXRlIGZpeGVkIHJlZ3VsYXRvci4gSXQncyBh
IFBNSUMgb3V0cHV0IGZyb20gYnVjazYgaHR0cHM6Ly9tZWdvdXMuY29tL2RsL3RtcC84NjMwZmEx
NzQwN2M3NWI5LnBuZwo+ID4gPiAKPiA+IAo+ID4gSSB0aGluayBpdCBzaG91bGQgYmUgZml4ZWQg
cmVndWxhdG9yLiBJdCdzIHVzZWQgYXMgdmNjMTMtc3VwcGx5IGFuZAo+ID4gdmNjMTQtc3VwcGx5
IHJlZ3VsYXRvciBvbiBQTUlDIGFuZCBpdCdzIHNhbWUgYXMgb3RoZXIgcmszNTg4IGJvYXJkcy4K
PiAKPiBZZXMsIEJVQ0s2IG91dHB1dCBpcyBpbnB1dCB0byBzb21lIExET3MuIElmIHlvdSBtYWtl
IHRoaXMgYSByZWd1bGF0b3ItZml4ZWQsCj4gQlVDSzYgd2lsbCBub3QgZ2V0IGVuYWJsZWQgd2hl
biB0aG9zZSBMRE9zIGFyZSBlbmFibGVkLCBhbmQgdGhlIExET3Mgd2lsbCBub3QKPiB3b3JrIGJl
Y2F1c2UgdGhleSdsbCBsYWNrIGlucHV0IHBvd2VyLgo+IAo+IFlvdXIgcmVndWxhdG9yLWZpeGVk
IGRvZXMgbm90aGluZyB0byBlbmFibGUgQlVDSzYgd2hpY2ggaXMgd2hlcmUgdmNjXzF2MV9ubGRv
X3MzCj4gcG93ZXIgcmFpbCBpcyBjb25uZWN0ZWQuCj4gCj4gSXQgb25seSB3b3JrcyBmb3IgeW91
IG5vdywgYmVjYXVzZSBkY2RjLXJlZzYgaXMgbWFya2VkIGFzIHJlZ3VsYXRvci1hbHdheXMtb24s
Cj4gc28gaXQncyBhbHJlYWR5IGVuYWJsZWQgd2hlbiB5b3UgbmVlZCB0aG9zZSBkZXBlbmRlbnQg
TERPcy4KCkFuZCBpZiBvdGhlciBib2FyZHMgaGF2ZSB0aGlzIHNhbWUgSFcgc2V0dXAgYW5kIHVz
ZXIgc2VwYXJhdGUgRFQgbm9kZSB3aXRoCnJlZ3VsYXRvci1maXhlZCBmb3IgdGhpcywgdGhleSdy
ZSBicm9rZW4sIHRvby4KCnJlZ2FyZHMsCglvLgoKPiByZWdhcmRzLAo+IAlvLgo+IAo+ID4gPiBT
byB0aGlzIGlzIFZERDJfRERSX1MzLiBJZiB5b3Ugd2FudCB0byBrZWVwIHRoZSBhbGlhcywganVz
dCBhZGQgZXh0cmEgYWxpYXMgdG8KPiA+ID4gZGNkYy1yZWc2IGxpa2UgdGhpczoKPiA+ID4gCj4g
PiA+IAkJLi4uCj4gPiA+IAl2Y2NfMXYxX25sZG9fczM6IHZkZDJfZGRyX3MzOiBkY2RjLXJlZzYg
ewo+ID4gPiAJCS4uLgo+ID4gPiAKPiA+ID4+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
