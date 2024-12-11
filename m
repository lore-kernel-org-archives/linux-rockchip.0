Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1830AE7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 12:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4UmNYA5OLMjqac1bRR6/Ev01houvPeJc290wWr1gS4=; b=iy6bFertDgugMO
	WB7wukGYVyyrEHRgX47JY6ezOoD1q0MmMVqw/JNVVu7NqAFKfVzU1cGhhJaOYbLdiMPBn27F7XWVl
	k0PgM0KHg0t9FWob7IkouutkYA+FuJIZ+d14g8pkTpc/xk5W7Mmlghc1NChdf+0AjyJqTpEr/woa6
	EIVFwQLK00R9xBL6PFoBGbArt2MZFk0K8X0SBMto0uGm/mVqkPvDfrKLxpso+fMvBQQsD18W7s/8p
	Uq/x02Fe/G34v9hzEV3S5CWi6qgfCDaGuKxRmNvvxOy6O3PPch1bfJqtk92EqwFDSw/H7/ldU/SZn
	EgeMAQDTx+PN+vtQjqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLLfn-0000000EnmG-2oX0;
	Wed, 11 Dec 2024 12:18:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLLei-0000000EnfB-3XJT;
	Wed, 11 Dec 2024 12:17:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9E7D25C48EC;
	Wed, 11 Dec 2024 12:16:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62825C4CED2;
	Wed, 11 Dec 2024 12:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733919447;
	bh=pxxMBZqrH7x/gS7Fl8JT4cHNQ825NZlShGPRQdbliHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=exmfa/dWUJQdqssDCvd4IXqfV2xh+VVg8htJAWrMhISPUmite/i8jN5/G6n+em1sg
	 iNzEivin+e1cVizPcwrdU0vePxvbltw5ADNWnE+ZJJqiyuj/fNq6l2P3tp9W3r4GG0
	 9E4NrB6iS5o44mDf1axfIcBfOfKT/0/iMCEqsZISd/jIJVpAGZkpqltWwuT4QtyWQh
	 tXLYnQHY4+ycSHLV4p31MClhab0cdtMhVhn8apJZ/OnUq3L/yLd6LQmW6kf+zw2cL+
	 35YrQMExjH6A385RY7HICJPPAy8GuYl2JHSiu0O018XzxC+mUvnNXWFyLYQ8BQKBoh
	 S3udlbhc36vEA==
Date: Wed, 11 Dec 2024 12:17:18 +0000
From: Lee Jones <lee@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, jic23@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jdelvare@suse.com, linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com, bentiss@kernel.org,
	dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-leds@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v9 1/9] HID: hid-sensor-hub: don't use stale
 platform-data on remove
Message-ID: <20241211120844.GD7139@google.com>
References: <20241107114712.538976-1-heiko@sntech.de>
 <20241107114712.538976-2-heiko@sntech.de>
 <nycvar.YFH.7.76.2411071358210.20286@cbobk.fhfr.pm>
 <4934964.GXAFRqVoOG@diego>
 <nycvar.YFH.7.76.2411071534110.20286@cbobk.fhfr.pm>
 <20241112143732.GG8552@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241112143732.GG8552@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_041728_922913_E861ED1F 
X-CRM114-Status: GOOD (  14.38  )
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

T24gVHVlLCAxMiBOb3YgMjAyNCwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBUaHUsIDA3IE5vdiAy
MDI0LCBKaXJpIEtvc2luYSB3cm90ZToKPiAKPiA+IE9uIFRodSwgNyBOb3YgMjAyNCwgSGVpa28g
U3TDvGJuZXIgd3JvdGU6Cj4gPiAKPiA+ID4gVGhpcyBjaGFuZ2Ugd2FzIG1vcmUgb3IgbGVzcyBh
IHN1cnByaXNlIGZpbmQsIGJlY2F1c2UgSSB3YW50ZWQgdG8gbWFrZQo+ID4gPiB0aGUgcGxhdGZv
cm1fZGF0YSBwb2ludGVyIGluIHRoZSBtZmRfY2VsbCBzdHJ1Y3QgY29uc3QgYW5kIHRoaXMgdGhl
IGhpZAo+ID4gPiBzZW5zb3IgaHViIHN0b29kIG91dCBhcyBkb2luZyBzb21ldGhpbmcgc3RyYW5n
ZSA7LSkgLgo+ID4gPiAKPiA+ID4gU28gcGF0Y2ggMiBvZiB0aGlzIHNlcmllcyBhY3R1YWxseSBk
ZXBlbmRzIG9uIHRoaXMgY2hhbmdlIHRvIG5vdCBjYXVzZQo+ID4gPiBidWlsZCBlcnJvcnMuCj4g
PiAKPiA+IEFoLCByaWdodC4KPiA+IAo+ID4gPiBCdXQgc2VlaW5nIHRoYXQgd2UncmUgYWZ0ZXIg
LXJjNiBhbHJlZHksIEkgd291bGQgYXNzdW1lIHRoZSBicnVudCBvZiB0aGUgCj4gPiA+IG1jdSBz
ZXJpZXMgbWlnaHQgbmVlZCB0byB3YWl0IGFmdGVyIDYuMTMtcmMxIGFueXdheSAtIGJ1dCBJIGd1
ZXNzIHRoYXQgCj4gPiA+IGRlcGVuZHMgb24gaG93IExlZSBzZWVzIHRoaW5ncyA7LSkgLgo+ID4g
Cj4gPiBPSywgSSBhbSBrZWVwaW5nIG15IGhhbmRzIG9mZiBpdCBmb3IgdGhlIHRpbWUgYmVpbmcu
Cj4gCj4gSSBjYW4gdGFrZSBpdCBub3cgd2l0aCBhbiBBY2suCgpMb29raW5nIHRvIGFwcGx5IHRo
aXMgc2V0IG5vdy4KCkFjayBwbGVhc2UuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
