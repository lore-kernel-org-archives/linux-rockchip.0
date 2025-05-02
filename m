Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69F6AC3ABB0
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 17:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NU0N8F1FTz5GPhwKymBr9a0P6Xyv8Kh75vBYpM9TbEE=; b=ph3jRKCst+YS+J
	WjQ8LBxhpg62UvwJ1ewn5dJC69XZjm+B8UyNIGMV3cKoN49A1osF+0LlzuMz5Ue2oiWGX0QSL6Vtp
	56dI+nvMPH1B5V4QbFEMyoTZlGgVFNqL7w+TPNZlg3GfV7awOlcKac3kPIKN2/K1RRdyhnfOpmLou
	1kwYIHvyV8VWbCxtbo3wXiOVGxg6FIKK2oN7vB4NjppsBTNwt+wAqn6rN0nTZs1+H4wbljNlN2xKa
	TjpY5e/+DwOGnNqROItmmWkHGS8ekvpxCNwKSDf/3b+ofKI1FcVBYwbwmQ+rJq2AbC1umf9ngmxnl
	wJbl4qo7atsivkSg3OOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAu6V-00000002eBS-1IxB;
	Fri, 02 May 2025 17:23:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAteS-00000002aIF-0Jf3
	for linux-rockchip@lists.infradead.org;
	Fri, 02 May 2025 16:54:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAteA-00065d-2h; Fri, 02 May 2025 18:53:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAte9-000mLr-0c;
	Fri, 02 May 2025 18:53:57 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAte9-00GahR-07;
	Fri, 02 May 2025 18:53:57 +0200
Date: Fri, 2 May 2025 18:53:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Ford <aford173@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
	festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paulk@sys-base.io, hverkuil@xs4all.nl,
	laurent.pinchart@ideasonboard.com, sebastian.fricke@collabora.com,
	ming.qian@nxp.com, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 05/11] arm64: dts: imx8mp: drop gpcv2 vpu
 power-domains and clocks
Message-ID: <20250502165357.ncuve25xwvydhxz3@pengutronix.de>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
 <20250502150513.4169098-6-m.felsch@pengutronix.de>
 <CAHCN7xJ5p+dwJD7i7caqwhmrz8+gZDVeqfdWA_=He-H+aTJgRg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xJ5p+dwJD7i7caqwhmrz8+gZDVeqfdWA_=He-H+aTJgRg@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_095416_105556_7A9004F4 
X-CRM114-Status: GOOD (  19.18  )
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

T24gMjUtMDUtMDIsIEFkYW0gRm9yZCB3cm90ZToKPiBPbiBGcmksIE1heSAyLCAyMDI1IGF0IDEw
OjEw4oCvQU0gTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4g
Pgo+ID4gVGhlIEdQQ3YyIEcxLCBHMiBhbmQgVkM4MDAwRSBwb3dlci1kb21haW4gZG9uJ3QgbmVl
ZCB0byByZWZlcmVuY2UgdGhlCj4gPiBWUFVNSVggcG93ZXItZG9tYWluIG5vciB0aGVpciBtb2R1
bGUgY2xvY2tzIHNpbmNlIHRoZSBwb3dlciBhbmQgcmVzZXQKPiA+IGhhbmRsaW5nIGlzIGRvbmUg
YnkgdGhlIFZQVU1JWCBibGtjdHJsIGRyaXZlci4KPiA+Cj4gSXQgd2FzIG15IHVuZGVyc3RhbmRp
bmcgdGhhdCBoYXZpbmcgdGhpcyBkZXBlbmRlbmN5IGVuc3VyZXMgdGhlIG9yZGVyCj4gb2YgdGhl
IGJyaW5nLXVwLCBidXQgbWF5YmUgSSBhbSB3cm9uZy4gIERvIHlvdSBrbm93IGlmIHRoZSA4TVAK
CklmIHRoYXQgaXMgdHJ1ZSwgdGhlIDhNTSBzaG91bGQgYmUgYnJva2VuLgoKPiBzdXNwZW5kLXJl
c3VtZSB3b3JrcyBwcm9wZXJseT8KCk5vIEkgZGlkbid0IHRlc3Qgc3VzcGVuZC9yZXN1bWUuCgo+
IFNob3VsZCB0aGlzIGdldCBhIGZpeGVzIHRhZz8KCkl0J3MganVzdCBhIGNsZWFudXAsIHRoZXJl
Zm9yZSBJIGRpZG4ndCBhZGQgdGhlIGZpeGVzLXRhZy4KClJlZ2FyZHMsCiAgTWFyY28KCgo+ID4g
U2lnbmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4KPiA+
IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpIHwgNyAt
LS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kKPiA+IGluZGV4IGUwZDNiOGNiYTIy
MS4uY2Y5YjZjNDg3YmQ1IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvaW14OG1wLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDhtcC5kdHNpCj4gPiBAQCAtODc5LDI0ICs4NzksMTcgQEAgcGdjX21lZGlhbWl4OiBwb3dl
ci1kb21haW5AMTAgewo+ID4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBwZ2NfdnB1X2cxOiBwb3dlci1kb21haW5AMTEgewo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwwPjsK
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBvd2Vy
LWRvbWFpbnMgPSA8JnBnY192cHVtaXg+Owo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmVnID0gPElNWDhNUF9QT1dFUl9ET01BSU5fVlBVX0cxPjsK
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
cyA9IDwmY2xrIElNWDhNUF9DTEtfVlBVX0cxX1JPT1Q+Owo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPgo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHBnY192cHVfZzI6IHBvd2VyLWRvbWFpbkAxMiB7Cj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAjcG93ZXItZG9tYWluLWNl
bGxzID0gPDA+Owo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcG93ZXItZG9tYWlucyA9IDwmcGdjX3ZwdW1peD47Cj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8SU1YOE1QX1BPV0VSX0RPTUFJ
Tl9WUFVfRzI+Owo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NMS19WUFVfRzJfUk9PVD47Cj4gPiAtCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+Cj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGdjX3ZwdV92YzgwMDBlOiBwb3dlci1k
b21haW5AMTMgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwwPjsKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBnY192cHVtaXg+
Owo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPElNWDhNUF9QT1dFUl9ET01BSU5fVlBVX1ZDODAwMEU+Owo+ID4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NM
S19WUFVfVkM4S0VfUk9PVD47Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfTsKPiA+Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cGdjX2hkbWltaXg6IHBvd2VyLWRvbWFpbkAxNCB7Cj4gPiAtLQo+ID4gMi4zOS41Cj4gPgo+ID4K
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
