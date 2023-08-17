Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1144C3DA4D
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Aug 2023 16:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVxnQyIhdEoOLuCWZCCBQacdPgPTuRRuzOiv4dOPwao=; b=ba4UagWvQl+rFd
	YYd/eAl2WtDvUN0KM3902jvgXKe3dDv43U0EQyVadH1NiBUcQZXWFZsoj8CuqcGdcPqupZRzdl1en
	U4pIqc8R6aHWvIccSi29cFj4QmNZaZueMXM7yLiqeyJaUA9+6YNIXmhD61C7rJ3tUeEKxNYHlJLDn
	XT2Zsd3HJkIiJ2Zz6szvUweHeznTLnVI2Cjmk/z7lswKq2kzcMdOtwejoLEImFog+cdBlEwc57NPh
	YfSscem4Z5MWO9V3ObhgvZOQf2ByouuTsGdar4n36EZ0tSPUmZg5B4VZXKJ1zmmD0TShUYKQ3oxJ/
	PO56I88ezp5vfJ44KlYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWfrG-006n0U-0k;
	Thu, 17 Aug 2023 16:28:26 +0000
Received: from forward103c.mail.yandex.net ([178.154.239.214])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWfrC-006mzW-1M;
	Thu, 17 Aug 2023 16:28:24 +0000
Received: from mail-nwsmtp-smtp-production-main-23.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-23.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:279e:0:640:5630:0])
	by forward103c.mail.yandex.net (Yandex) with ESMTP id 7DFF16003C;
	Thu, 17 Aug 2023 19:28:11 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-23.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 4SkSj81DcGk0-2do1PkPv;
	Thu, 17 Aug 2023 19:28:10 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail; t=1692289690;
	bh=56lyF/L7Pca1cRntKqS68quCI9pqvOzEkgY3GwjxTXk=;
	h=Cc:Message-ID:References:Date:In-Reply-To:Subject:To:From;
	b=A9eaZPoSIPP8zBFeqjUjqtgJCxpYwpou89+MWE0oEESvKXt8aLyNJIgIyGS1v7gpO
	 A3h1pF7k2i7KoMjVsXf5KVt6/9rdtbBqsjQyvNJIgb+VnUJ3lbmvWheb44yehYws+W
	 RpRkQ9XE47vHH7krlSLQkiFxALST/kPSxCkW+Cc0=
Authentication-Results: mail-nwsmtp-smtp-production-main-23.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: megi@xff.cz
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	efectn@6tel.net,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Orange Pi 5
Date: Thu, 17 Aug 2023 19:28:01 +0300
Message-ID: <20230817162803.17990-1-efectn@6tel.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <qqx5tay4etbepyyy7hqdp2prtw4t3m57esulruevggw2yi4xqf@63a7v5vzodhs>
References: <qqx5tay4etbepyyy7hqdp2prtw4t3m57esulruevggw2yi4xqf@63a7v5vzodhs>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_092822_639422_8FA1C9A1 
X-CRM114-Status: GOOD (  15.56  )
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

SGksIE9uZMWZZWoKCk9uIDE3LjA4LjIwMjMgMTg6MzIsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+
IE9uIFRodSwgQXVnIDE3LCAyMDIzIGF0IDA1OjMwOjA0UE0gKzAyMDAsIG1lZ2kgeGZmIHdyb3Rl
Ogo+Pgo+PiBPbiBUaHUsIEF1ZyAxNywgMjAyMyBhdCAwNTo1Nzo1NVBNICswMzAwLCBNdWhhbW1l
ZCBFZmUgQ2V0aW4gd3JvdGU6Cj4+Pgo+Pj4gSGksIE9uZMWZZWoKPj4+Cj4+PiBPbiAxNy4wOC4y
MDIzIDE2OjU3LCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPj4+PiBIaSBNdWhhbW1lZCwKPj4+Pgo+
Pj4+Pj4+IFsuLi5dCj4+Pj4+Pgo+Pj4+Pj4+ICsJdmNjXzF2MV9ubGRvX3MzOiB2Y2MtMXYxLW5s
ZG8tczMtcmVndWxhdG9yIHsKPj4+Pj4+PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhl
ZCI7Cj4+Pj4+Pj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjXzF2MV9ubGRvX3MzIjsKPj4+Pj4+
PiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4+Pj4+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+
Pj4+Pj4+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDExMDAwMDA+Owo+Pj4+Pj4+ICsJ
CXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDExMDAwMDA+Owo+Pj4+Pj4+ICsJCXZpbi1zdXBw
bHkgPSA8JnZjYzV2MF9zeXM+Owo+Pj4+Pj4+ICsJfTsKPj4+Pj4+Cj4+Pj4+PiBUaGVyZSdzIG5v
IHN1Y2ggcmVndWxhdG9yIG9uIHRoZSBib2FyZC4KPj4+Pj4KPj4+Pj4gSXQncyBjb25uZWN0ZWQg
dG8gUE1JQyBodHRwczovL2kuaW1ndXIuY29tL3NWSmRDNUsucG5nCj4+Pj4KPj4+PiBJdCdzIG5v
dCBhIHNlcGFyYXRlIGZpeGVkIHJlZ3VsYXRvci4gSXQncyBhIFBNSUMgb3V0cHV0IGZyb20gYnVj
azYgaHR0cHM6Ly9tZWdvdXMuY29tL2RsL3RtcC84NjMwZmExNzQwN2M3NWI5LnBuZwo+Pj4+Cj4+
Pgo+Pj4gSSB0aGluayBpdCBzaG91bGQgYmUgZml4ZWQgcmVndWxhdG9yLiBJdCdzIHVzZWQgYXMg
dmNjMTMtc3VwcGx5IGFuZAo+Pj4gdmNjMTQtc3VwcGx5IHJlZ3VsYXRvciBvbiBQTUlDIGFuZCBp
dCdzIHNhbWUgYXMgb3RoZXIgcmszNTg4IGJvYXJkcy4KPj4KPj4gWWVzLCBCVUNLNiBvdXRwdXQg
aXMgaW5wdXQgdG8gc29tZSBMRE9zLiBJZiB5b3UgbWFrZSB0aGlzIGEgcmVndWxhdG9yLWZpeGVk
LAo+PiBCVUNLNiB3aWxsIG5vdCBnZXQgZW5hYmxlZCB3aGVuIHRob3NlIExET3MgYXJlIGVuYWJs
ZWQsIGFuZCB0aGUgTERPcyB3aWxsIG5vdAo+PiB3b3JrIGJlY2F1c2UgdGhleSdsbCBsYWNrIGlu
cHV0IHBvd2VyLgo+Pgo+PiBZb3VyIHJlZ3VsYXRvci1maXhlZCBkb2VzIG5vdGhpbmcgdG8gZW5h
YmxlIEJVQ0s2IHdoaWNoIGlzIHdoZXJlIHZjY18xdjFfbmxkb19zMwo+PiBwb3dlciByYWlsIGlz
IGNvbm5lY3RlZC4KPj4KPj4gSXQgb25seSB3b3JrcyBmb3IgeW91IG5vdywgYmVjYXVzZSBkY2Rj
LXJlZzYgaXMgbWFya2VkIGFzIHJlZ3VsYXRvci1hbHdheXMtb24sCj4+IHNvIGl0J3MgYWxyZWFk
eSBlbmFibGVkIHdoZW4geW91IG5lZWQgdGhvc2UgZGVwZW5kZW50IExET3MuCj4gCj4gQW5kIGlm
IG90aGVyIGJvYXJkcyBoYXZlIHRoaXMgc2FtZSBIVyBzZXR1cCBhbmQgdXNlciBzZXBhcmF0ZSBE
VCBub2RlIHdpdGgKPiByZWd1bGF0b3ItZml4ZWQgZm9yIHRoaXMsIHRoZXkncmUgYnJva2VuLCB0
b28uCgpBcyBpJ3ZlIHNlZW4gb24gdXBzdHJlYW0gYW5kIFJvY2tjaGlwIFNESzsgYm9hcmRzIGhh
dmUgZHVhbCBSSzgwNiwgaGF2ZSB2Y2NfMXYxX25sZG9fczMgbm9kZSBpbnNpZGUgb2YgcG1pYyAo
cmszNTg4LWV2YjEtdjEwKSBhbmQgYm9hcmRzIGhhdmUgc2luZ2xlIFJLODA2LCBoYXZlIHNlcGFy
YXRlZCB2Y2NfMXYxX25sZG9fczMgbm9kZS4gSSBkb24ndCBrbm93IHdoeSB0aGV5IHByZWZlcnJl
ZCB0aGlzIHdheS4KCj4gCj4gcmVnYXJkcywKPiAJby4KPiAKPj4gcmVnYXJkcywKPj4gCW8uCj4+
Cj4+Pj4gU28gdGhpcyBpcyBWREQyX0REUl9TMy4gSWYgeW91IHdhbnQgdG8ga2VlcCB0aGUgYWxp
YXMsIGp1c3QgYWRkIGV4dHJhIGFsaWFzIHRvCj4+Pj4gZGNkYy1yZWc2IGxpa2UgdGhpczoKPj4+
Pgo+Pj4+IAkJLi4uCj4+Pj4gCXZjY18xdjFfbmxkb19zMzogdmRkMl9kZHJfczM6IGRjZGMtcmVn
NiB7Cj4+Pj4gCQkuLi4KPj4+Pgo+Pj4+Pj4KClJlZ2FyZHMsCkVmZQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
