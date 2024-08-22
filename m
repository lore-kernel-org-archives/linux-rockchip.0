Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFEACC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jz1b+dYCfQlXNnRI8KbosHNDrWTtz283FKKCh8JUkv4=; b=tZlg2TZRtvgL8e
	9bmliOH28x2KazvPW2EWqGpfNbXo9fnAACot9QQMbOWuz85nydwKt1qvsp2OkdyC+D48Y0hWstlOI
	RvsHJvHctems/9+UPRswfz/aty4M46JEjRGRAL/SEQccswYcPhM/Raef01VB8BYs511M+2rgCvAvx
	MkpcujTlgHCPytyo9caGwqVW6F2YyteO0RXi+9R6OCfT1vih74OjNQt5PPpWByoWketaSkjnwAU8K
	aWe3MRtpnbtkUYVzeEL3Zq9f3BPs6ONLuMZYiTsKwIzPL4Hf2NAlchZUybJ0mJmc7pCZ5p6LkOXi+
	WgnSAPdtg/isNcJXpm+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh4mp-0000000CNnL-3qcJ;
	Thu, 22 Aug 2024 10:11:23 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh4lx-0000000CNeu-0qnj;
	Thu, 22 Aug 2024 10:10:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 59940CE0F0F;
	Thu, 22 Aug 2024 10:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 638D7C32782;
	Thu, 22 Aug 2024 10:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724321426;
	bh=0ApU82SZWq6n9EuyshuodUqSF2/9WM8FQ5lruXW/bCQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lDi3xLFENzGU+hwTJNHpp2Tv9TkveDcGPJzLrErcnV2m3J+wIGxAVTL89EfAU7mC1
	 qan8wL6poGR5P5BzvhGZVchExNIHO9fgZFABEWm2iRstQv8dMCCXg4gCY4+a9LTdfz
	 2v4Txgn5TMg2THG96HTc3SOjFaoaKKHfVOKQ5SD2H023KnQIf+qu52AIsxL5sxQq+w
	 d9HMp8JBexoZYP4T671NgsUdb0ocilmLUtCvoyR+Qo3TErQ942yqwbsRSC+R16ZCoB
	 MJjmgY6yQJnlZTDVIKNi5gvTFFwkcObt0a9lGCuI+rF1aKYhw2aeYfy/IeG4wJDa+Q
	 e0weELHrOI0Qg==
Date: Thu, 22 Aug 2024 11:10:20 +0100
From: Lee Jones <lee@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: jdelvare@suse.com, linux@roeck-us.net, dmitry.torokhov@gmail.com,
	pavel@ucw.cz, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v4 2/7] mfd: add base driver for qnap-mcu devices
Message-ID: <20240822101020.GG6858@google.com>
References: <20240810184743.277248-1-heiko@sntech.de>
 <20240810184743.277248-3-heiko@sntech.de>
 <20240816171336.GF5853@google.com>
 <2875938.88bMQJbFj6@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2875938.88bMQJbFj6@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_031029_436559_6C2F38E9 
X-CRM114-Status: GOOD (  20.72  )
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

T24gU3VuLCAxOCBBdWcgMjAyNCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cgo+IEhpIExlZSwKPiAK
PiB0aGFua3MgYSBsb3QgZm9yIHlvdXIgcmV2aWV3LAo+IAo+IEFtIEZyZWl0YWcsIDE2LiBBdWd1
c3QgMjAyNCwgMTk6MTM6MzYgQ0VTVCBzY2hyaWViIExlZSBKb25lczoKPiA+IE9uIFNhdCwgMTAg
QXVnIDIwMjQsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IAo+IAo+ID4gPiArLyoKPiA+ID4gKyAq
IE1GRCBjb3JlIGRyaXZlciBmb3IgdGhlIE1DVSBpbiBRbmFwIE5BUyBkZXZpY2VzIHRoYXQgaXMg
Y29ubmVjdGVkCj4gPiAKPiA+IE5vIHN1Y2ggdGhpbmcgYXMgYW4gIk1GRCIuICBQbGVhc2UgZGVz
Y3JpYmUgdGhlIGRldmljZS4KPiA+IAo+ID4gSXMgaXQgUU5BUCBvciBRbmFwPyAgUGxlYXNlIGJl
IGNvbnNpc3RlbnQuCj4gCj4gTG9va3MgbGlrZSBRTkFQIHNwZWxscyBpdHNlbGYgaW4gYWxsIHVw
cGVyIGNhc2Ugb24gdGhlaXIgd2Vic2l0ZSwgc28gSSBkaWQKPiBnbyB3aXRoIHRoYXQKClN1cGVy
LCB0aGFua3MuCgo+ID4gPiArCj4gPiA+ICsvKgo+ID4gPiArICogVGhlIE1DVSBjb250cm9scyBw
b3dlciB0byB0aGUgcGVyaXBoZXJhbHMgYnV0IG5vdCB0aGUgQ1BVLgo+ID4gPiArICoKPiA+ID4g
KyAqIFNvIHVzaW5nIHRoZSBwbWljIHRvIHBvd2VyIG9mZiB0aGUgc3lzdGVtIGtlZXBzIHRoZSBN
Q1UgYW5kIGhhcmQtZHJpdmVzCj4gPiA+ICsgKiBydW5uaW5nLiBUaGlzIGFsc28gdGhlbiBwcmV2
ZW50cyB0aGUgc3lzdGVtIGZyb20gdHVybmluZyBiYWNrIG9uIHVudGlsCj4gPiA+ICsgKiB0aGUg
TUNVIGlzIHR1cm5lZCBvZmYgYnkgdW5wbHVnZ2luZyB0aGUgcG93ZXItY2FibGUuCj4gPiA+ICsg
KiBUdXJuaW5nIG9mZiB0aGUgTUNVIGFsb25lIG9uIHRoZSBvdGhlciBoYW5kIHR1cm5zIG9mZiB0
aGUgaGFyZC1kcml2ZXMsCj4gPiA+ICsgKiBMRURzLCBldGMgd2hpbGUgdGhlIG1haW4gU29DIHN0
YXlzIHJ1bm5pbmcgLSBpbmNsdWRpbmcgaXRzIG5ldHdvcmsgcG9ydHMuCj4gPiA+ICsgKi8KPiA+
ID4gK3N0YXRpYyBpbnQgcW5hcF9tY3VfcG93ZXJfb2ZmKHN0cnVjdCBzeXNfb2ZmX2RhdGEgKmRh
dGEpCj4gPiA+ICt7Cj4gPiA+ICsJc3RydWN0IHFuYXBfbWN1ICptY3UgPSBkYXRhLT5jYl9kYXRh
Owo+ID4gPiArCWludCByZXQ7Cj4gPiA+ICsJdTggY21kW10gPSB7Cj4gPiA+ICsJCVswXSA9IDB4
NDAsIC8qIEAgKi8KPiA+ID4gKwkJWzFdID0gMHg0MywgLyogQyAqLwo+ID4gPiArCQlbMl0gPSAw
eDMwICAvKiAwICovCj4gPiA+ICsJfTsKPiA+IAo+ID4gdTggY21kIFtdID0geyAnQCcsICdDJywg
JzAnIH07ICA/Cj4gCj4gc2VlIGFib3ZlLgo+IAo+IEkgZ3Vlc3MgdGhpcyBpcyBhIHN0eWxlIGNo
b2ljZSwgd2UgY291bGQgb2YgY291cnNlIGdvIHdpdGgKPiAJdTggY21kW10gPSB7IDB4NDAsIDB4
NDMsIDB4MzAgfQo+IGlmIHlvdSBwcmVmZXIgdGhhdC4KClllcyBwbGVhc2UuCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
