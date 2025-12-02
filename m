Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC736CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 06:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5K3zQnPye8iTlO+Vs8a4G+4qQmz1Hy6jBiYuKv097+4=; b=Gv7rtH0vBmcDf3
	+pm8G43uCjmMzsL0TaBih0+cRWHVY9XTOP2VmVH8xQh8a516iXZOVqBXPz8DwCJ4tD6VjrfUXCQpE
	fCv+h+L2Nhu3OOX3pcXI4nBeFVt/OOn/XRj+Y2igGggerG5DnQs4DuOiZ0Z23ZzXxf2rYKEUlbNhy
	LA84ifJj+1bLJ0rxp+vIhpk7oE4OdrMmY3Q88NK6E7AiAZGOM2Rej0POoYljNoQowxK1MFE5WA6jG
	Pm1A3Ju+tSYW7hVYDFDfrp1p2n+Gpf2b2WNjxxgisasDcVUQy76Zk+PxfDSUpKo0CM1nLGl7BC0Sw
	LDR7iRI3RjTeCAzfKVkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQJte-00000004uC4-3JAl;
	Tue, 02 Dec 2025 06:29:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQJtI-00000004uAz-3a2J
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 06:29:57 +0000
Received: from pendragon.ideasonboard.com (113x43x203x98.ap113.ftth.arteria-hikari.net [113.43.203.98])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 8DD793E6;
	Tue,  2 Dec 2025 07:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1764656837;
	bh=VXzIPngFdacIDB87BOh+DyMPuMgW2UL2yvGKdB6Akqo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ekP/unp1qwNd/3Pk75lngsPPNLUJWaMpPPgy9xJEUs72B9FLPo+gGPAaGrSw5+ESs
	 oM9gLwccqIOJdXIpmrnMph3Z9ZIQGXO5l/pfIGCtB0OGU2L6vpYeN9gMcizmM3ifOp
	 4V99jpxyFRBBbftE2eYRs0albkJaC6hRnU2YBifQ=
Date: Tue, 2 Dec 2025 15:29:11 +0900
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vicente Bergas <vicencb@gmail.com>
Cc: Aradhya Bhatia <aradhya.bhatia@linux.dev>, airlied@gmail.com,
	alexander.sverdlin@siemens.com, andrzej.hajda@intel.com,
	dri-devel <dri-devel@lists.freedesktop.org>,
	jernej.skrabec@gmail.com, Jonas Karlman <jonas@kwiboo.se>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	lumag@kernel.org, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, neil.armstrong@linaro.org, nm@ti.com,
	rfoss@kernel.org, simona@ffwll.ch, tomi.valkeinen@ideasonboard.com,
	tzimmermann@suse.de, vigneshr@ti.com,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Douglas Anderson <dianders@chromium.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Linux Rockchip Support List <linux-rockchip@lists.infradead.org>,
	Devarsh Thakkar <devarsht@ti.com>,
	Linus Walleij <linusw@kernel.org>,
	Marek Vasut <marek.vasut+renesas@mailbox.org>
Subject: Re: [PATCH v13 3/4] drm/atomic-helper: Re-order bridge chain
 pre-enable and post-disable
Message-ID: <20251202062911.GA24150@pendragon.ideasonboard.com>
References: <CAAMcf8BfxMJx+5ttEXx0kONP2OYWSLFqEYF6rfVBKoRg5TKZzQ@mail.gmail.com>
 <bea50d14-2311-46ad-bb30-9d60a4c5e3a2@linux.dev>
 <ff21cbd1-dc77-43ae-85a8-dc6a56a1cefa@linux.dev>
 <CAAMcf8Di8sc_XVZAnzQ9sUiUf-Ayvg2yjhx2dWmvvCnfF3pBRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8Di8sc_XVZAnzQ9sUiUf-Ayvg2yjhx2dWmvvCnfF3pBRA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_222937_344573_4038E1E2 
X-CRM114-Status: GOOD (  29.24  )
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

K0xpbnVzLCBNYXJlayBhbmQgVG9taS4KCk9uIE1vbiwgRGVjIDAxLCAyMDI1IGF0IDA4OjM0OjM3
UE0gKzAxMDAsIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+IE9uIE1vbiwgT2N0IDYsIDIwMjUgYXQg
NTozMOKAr1BNIEFyYWRoeWEgQmhhdGlhIDxhcmFkaHlhLmJoYXRpYUBsaW51eC5kZXY+IHdyb3Rl
Ogo+ID4KPiA+ICtyb2NrY2hpcCBtYWludGFpbmVycwo+ID4KPiA+IEhpIFZpY2VudGUsIGFsbCwK
PiAKPiBIaSBldmVyeWJvZHksCj4gcGxlYXNlLCBjYW4gc29tZSBleHBlcnQgb24gdGhpcyBwbGF0
Zm9ybSB0YWtlIGEgbG9vayBhdCB0aGlzIGJ1Zz8KClRoZXJlIGFyZSBzaW1pbGFyIGlzc3VlcyB3
aXRoIE1DREUgYW5kIFItQ2FyIERVLCBzZWUKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL0NB
RCsrakxrTkNIPThWbXdYaDBVSlM1UVo5d0ItaVAya2lueXRUK19fZnEwTDFQem9aUUBtYWlsLmdt
YWlsLmNvbS8KCkkgdGhpbmsgd2Ugc2hvdWxkIHJldmVydCBjb21taXQgYzliMTE1MGE2OGQ5MzYy
YTA4Mjc2MDlmYzBkYzE2NjRjMGQ4YmZlMQphbmQgd29yayBvbiBhIGNsZWFuIHNvbHV0aW9uLiBJ
dCBicm9rZSB0b28gbWFueSBkcml2ZXJzLgoKPiA+IEkgd2VudCB0aHJvdWdoIHRoZSBkcml2ZXJz
IGFuZCB0aGUgYWZmZWN0ZWQgYXJlYXMgaW4gdGhlIGdydS1rZXZpbgo+ID4gY2hyb21lYm9vayBw
aXBlbGluZSBsYXN0IHdlZWssIGJ1dCBub3RoaW5nIGhhcyBzdG9vZCBvdXQuCj4gPgo+ID4KPiA+
IFBpcGVsaW5lOgo+ID4KPiA+IHJvY2tjaGlwLGRpc3BsYXktc3Vic3lzdGVtIC8gcmszMzk5LXZv
cCAoQmlnL0xpdGUpIChDUlRDKSAtPgo+ID4gcmszMzk5LWVkcCAoRW5jb2RlcikgLT4gYW5hbG9n
aXhfZHBfY29yZSAoQnJpZGdlKSAtPgo+ID4gc2hhcnAsbHExMjNwIChlZHAtcGFuZWwpCj4gPgo+
ID4gSSBhbSB1bmFibGUgdG8gZGVidWcgdGhpcyBmdXJ0aGVyIHNpbmNlIEkgZG8gbm90IGhhdmUg
dGhlIGhhcmR3YXJlLgo+ID4KPiA+IEkgY291bGQgdXNlIHNvbWUgaGVscCwgZXNwZWNpYWxseSBm
cm9tIGZvbGtzIHdobyB1bmRlcnN0YW5kIHRoZSBoYXJkd2FyZQo+ID4gcmVxdWlyZW1lbnRzIGJl
dHRlci4KPiA+Cj4gPgo+ID4gT24gMTEvMDkvMjUgMDk6MDEsIEFyYWRoeWEgQmhhdGlhIHdyb3Rl
Ogo+ID4gPiBIaSBWaWNlbnRlLAo+ID4gPgo+ID4gPiBUaGFuayB5b3UgZm9yIHRoZSBiaXNlY3Rp
b24gYW5kIHJlcG9ydGluZyB0aGUgaXNzdWUuCj4gPiA+Cj4gPiA+IE9uIDEwLzA5LzI1IDE2OjE3
LCBWaWNlbnRlIEJlcmdhcyB3cm90ZToKPiA+ID4+IEhpLAo+ID4gPj4gdGhpcyBwYXRjaCBjYXVz
ZXMgYSByZWdyZXNzaW9uLiBJdCBoYXMgYmVlbiByZXBvcnRlZCBpbgo+ID4gPj4gaHR0cHM6Ly9i
dWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMjA1NTQKPiA+ID4+Cj4gPiA+PiBJ
dCBhZmZlY3RzIHRoZSBncnUva2V2aW4gcGxhdGZvcm0gKGFybTY0LFJLMzM5OSkgd2l0aCB0aGUg
UGFuZnJvc3QgRFJNIGRyaXZlci4KPiA+ID4KPiA+ID4gSSBiZWxpZXZlIHRoZSBQYW5mcm9zdCBE
Uk0gZHJpdmVyIG1heSBvbmx5IGJlIGZvciB0aGUgR1BVLgo+ID4gPgo+ID4gPiBCYXNlZCBvbiB0
aGUgZHRzIGZpbGVzIGluIGFybTY0L3JvY2tjaGlwLywgdGhpcyBpcyB0aGUgcGlwZWxpbmUgb2Yg
dGhlCj4gPiA+IGdydS1rZXZpbiBzZXR1cCB0aGF0IEkgdW5kZXJzdGFuZC4KPiA+ID4KPiA+ID4g
ICAgICAgcmszMzk5LXZvcCAoQmlnL0xpdGUpIC0+IHJrMzM5OS1lZHAgLT4gc2hhcnAsbHExMjNw
IChlZHAtcGFuZWwpCj4gPiA+Cj4gPiA+IFRoZSBzZXR1cCBzZWVtcyB0byBiZSB1c2luZyB0aGUg
ZHJtL3JvY2tjaGlwIGRyaXZlcnMgZm9yIHRoZSBkaXNwbGF5Cj4gPiA+IGNvbnRyb2xsZXIgYW5k
IGZvciB0aGUgYnJpZGdlLgo+ID4gPgo+ID4gPj4KPiA+ID4+IFdoZW4gaXQgYm9vdHMgaW4gY29u
c29sZSBtb2RlLCB0aGUgYmxpbmtpbmcgb2YgdGhlIGN1cnNvciBrZWVwcyB0aGUgZGlzcGxheSBv
bi4KPiA+ID4+IElmIGl0IGlzIHR1cm5lZCBvZmYgdmlhIC9zeXMvY2xhc3MvZ3JhcGhpY3MvZmJj
b24vY3Vyc29yX2JsaW5rLCB0aGVuCj4gPiA+PiB0aGUgZGlzcGxheSBicmllZmx5IHNob3dzIGVh
Y2gga2V5IHByZXNzIHByZXNlbnRlZCBvbiBzY3JlZW4gZm9yIGxlc3MKPiA+ID4+IHRoYW4gb25l
IHNlY29uZCBhbmQgdGhlbiBwb3dlcnMgb2ZmLgo+ID4gPj4KPiA+ID4+IFdoZW4gc3RhcnRpbmcg
dGhlIGdyYXBoaWNhbCBtb2RlICh3YXlsYW5kKSwgaWYgdGhlcmUgYXJlIG5vCj4gPiA+PiBhcHBs
aWNhdGlvbnMgZHJhd2luZyBvbiB0aGUgc2NyZWVuLCB0aGUgb25seSB3YXkgdG8ga2VlcCB0aGUg
ZGlzcGxheQo+ID4gPj4gb24gaXMgYnkgY29udGludW91c2x5IG1vdmluZyB0aGUgbW91c2UuCj4g
PiA+Pgo+ID4gPgo+ID4gPiBPa2F5IQo+ID4gPgo+ID4gPiBJIHdpbGwgaGF2ZSBhIGxvb2sgdGhy
b3VnaCB0aGUgZHJpdmVycy4gSW4gdGhlIG1lYW53aGlsZSwgcGxlYXNlIGRvCj4gPiA+IHJlcG9y
dCBiYWNrIGlmIHlvdSBmaW5kIGFueSBvdGhlciBvYnNlcnZhdGlvbnMuCgotLSAKUmVnYXJkcywK
CkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
