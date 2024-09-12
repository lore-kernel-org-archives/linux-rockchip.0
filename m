Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C84EE645D
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 07:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXbXlOjP51UfF+8dYp3rZ0QxqjlIENtaDlfXfpzvMtk=; b=SIurogG+86vD+Q
	3o0cfCx0hkFJ4Ng9Hin4RHWk3Io4zjRFSIXMjiCDVnFFhs6Dnf2rpJAF1T8Q0hz3n9iuaBWU6rFzv
	zIAh6Fu8Pg8C6x5eof3POovVhNJumdAtzmt0WqqTwq6xEWcdZLR9g5BAUDx2j3onU2eVsQLM2gSdV
	xxMicUXz/15MnHYqusIdYLc+4+bRU/whOVlndL07WnXNn+jwC4I18oziBYDtrHRL/KcryT2SMOXfB
	GNdCyFbxIBtjrn+K2UrS5lBFpnfFxTiXxXg5MmpWbOdFnXPSW6TuqJgWK0bqCiHAbH+wZMIPWyycX
	B/e28RbbjA6xUofrTpCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soehg-0000000CH4N-2pfi;
	Thu, 12 Sep 2024 07:57:24 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soefs-0000000CGYI-1PW7;
	Thu, 12 Sep 2024 07:55:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 32B83A43FCD;
	Thu, 12 Sep 2024 07:55:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BDB5C4CEC3;
	Thu, 12 Sep 2024 07:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726127730;
	bh=4s+VuwhVbNSAVesYDsrgOzVFuC3dn4Fh96NjWQHHSd4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RE4Jpos0PNEzX+j4gvv4HnNOrUggjKzwMILkyBwl0ysVmjqAOlVX/mQhrIQNly6u5
	 D4cMLo65bYBMzWlE/3MbcvaGJgeSBNYdVepAt76I+DLSY7juHCYtKFtFSF+NxXRLnf
	 nw0U9baOT3m36ADEOMsC52DEtH41CuFRaJgFalbX5iXcl4IyQp85V7KiijKjx0cNGT
	 6KayroEwMI5tGGbabloSBt1YK8gCKXHgprPzBlO8p/mD27xX6IExuLkytas4cCy+Lx
	 FeyB97LCD7R1E9Adejrws3/2lIKYd4KEQJJgQvTdJ/MZTah6JaIHWY/t17UQPpDuJl
	 ey2Ge3BBptu3g==
Date: Thu, 12 Sep 2024 08:55:23 +0100
From: Lee Jones <lee@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Junhao Xie <bigfoot@classfun.cn>, devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	LKML <linux-kernel@vger.kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Chukun Pan <amadeus@jmu.edu.cn>, Conor Dooley <conor+dt@kernel.org>,
	=?iso-8859-1?Q?G=FCnter_R=F6ck?= <linux@roeck-us.net>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Jean Delvare <jdelvare@suse.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>
Subject: Re: [PATCH 1/9] mfd: Add driver for Photonicat power management MCU
Message-ID: <20240912075523.GB24460@google.com>
References: <20240906093630.2428329-2-bigfoot@classfun.cn>
 <de5c9c27-56fa-4163-98e1-9a98400d2408@web.de>
 <43918eda-c4e8-471a-9de4-ea72bb090803@classfun.cn>
 <917ac8d8-a483-422c-a408-cdd44793e910@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <917ac8d8-a483-422c-a408-cdd44793e910@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_005532_518991_65C82995 
X-CRM114-Status: GOOD (  13.60  )
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

T24gU3VuLCAwOCBTZXAgMjAyNCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKCj4gT24gMDcv
MDkvMjAyNCAxNjozMywgSnVuaGFvIFhpZSB3cm90ZToKPiA+IE9uIDIwMjQvOS83IDE2OjQ0LCBN
YXJrdXMgRWxmcmluZyB3cm90ZToKPiA+PiDigKYKPiA+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9t
ZmQvcGhvdG9uaWNhdC1wbXUuaAo+ID4+PiBAQCAtMCwwICsxLDg2IEBACj4gPj4g4oCmCj4gPj4+
ICsjaWZuZGVmIF9QSE9UT05JQ0FUX1BNVV9ICj4gPj4+ICsjZGVmaW5lIF9QSE9UT05JQ0FUX1BN
VV9ICj4gPj4g4oCmCj4gPj4KPiA+PiBJIHN1Z2dlc3QgdG8gb21pdCBsZWFkaW5nIHVuZGVyc2Nv
cmVzIGZyb20gc3VjaCBpZGVudGlmaWVycy4KPiA+PiBodHRwczovL3dpa2kuc2VpLmNtdS5lZHUv
Y29uZmx1ZW5jZS9kaXNwbGF5L2MvRENMMzctQy4rRG8rbm90K2RlY2xhcmUrb3IrZGVmaW5lK2Er
cmVzZXJ2ZWQraWRlbnRpZmllcgo+ID4+Cj4gPj4gUmVnYXJkcywKPiA+PiBNYXJrdXMKPiA+IAo+
ID4gVGhhbmtzIGZvciB5b3VyIHN1Z2dlc3Rpb24sIGRvZXMgdGhpcyBsb29rIGJldHRlcj8KPiA+
ICNpZm5kZWYgTUZEX1BIT1RPTklDQVRfUE1VX0gKPiA+ICNkZWZpbmUgTUZEX1BIT1RPTklDQVRf
UE1VX0gKClllcywgdGhpcyBpcyBiZXR0ZXIuCgo+IDxmb3JtIGxldHRlcj4KPiBGZWVsIGZyZWUg
dG8gaWdub3JlIGFsbCBjb21tZW50cyBmcm9tIE1hcmt1cywgcmVnYXJkbGVzcyB3aGV0aGVyIHRo
ZQo+IHN1Z2dlc3Rpb24gaXMgcmVhc29uYWJsZSBvciBub3QuIFRoaXMgcGVyc29uIGlzIGJhbm5l
ZCBmcm9tIExLTUwgYW5kCj4gc2V2ZXJhbCBtYWludGFpbmVycyBpZ25vcmUgTWFya3VzJyBmZWVk
YmFjaywgYmVjYXVzZSBpdCBpcyBqdXN0IGEgd2FzdGUKPiBvZiB0aW1lLgo+IDwvZm9ybSBsZXR0
ZXI+CgpJZiB5b3UgcmVhbGx5IF9tdXN0XyBkbyB0aGlzLCBhdCBsZWFzdCBrZWVwIGl0IGZhY3R1
YWwuCgpUbyB0aGUgYmVzdCBvZiBteSBrbm93bGVkZ2UgTWFya3VzIGlzIG5vdCBiYW5uZWQgZnJv
bSBMS01MLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
