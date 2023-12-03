Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC278C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 21:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQCJgE2lOTHq/vS06Hy8w6VBp/E9UVgifijCI7MI/dY=; b=W/Ne/hcuSJUnhH
	tBb08mOg6tYxGUeO4jEoLzxj0Zxosq3nyc84nucJIAD3vRweeCrAf+0+ktZ+b8C3NNZ16JKJ32QHY
	S2VotElviTHOuoWc3Uf8wcPkZTE3S97RA1UxrFya4YGRlOhJ3bJeo8FcdkqlW2UvREVDt109vOcLG
	8NWLRUOsVgB2xoac4J3Ks+xXmgkiAlbx6Sj36i+aGTsBDWM+fGcjpXoEzs65Qvz1y03R+rcPy4ITj
	XacO+lF39wYntFYvdoLL0sqwo/rkLnTeJ0E0opsaU7xIiJfIotgiMtLHZro1QsrbnBBA1kxi4iV5k
	HVFIO6unNmZ2Y62UaZ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9u5O-002cGX-0e;
	Sun, 03 Dec 2023 21:33:10 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9u5K-002cFh-1y;
	Sun, 03 Dec 2023 21:33:08 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2868add9e60so602642a91.1;
        Sun, 03 Dec 2023 13:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701639184; x=1702243984; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4uUY1W5jCT30owrQ3sG0UVyxY52rhXE7pduVYPg+ahQ=;
        b=ZTrtKTX40XQthxqmGVw4vPx5u9ks1V9zOSzKdBQxXpUsOQaxZLnDES1GV4Y/8qxKL0
         WuaghAlIo+rLx4xVpa9IUv6R4cIPNcvRsSEyef1uZ05ouCEM1CTr7vKSvtLGhFqh8x62
         a6U/sq6HF/rk25r2p4QUqdh85fq4qrzhlR4SEQ7D8AdJJ1pMrFJaY1Nb5KTP8ddnpWG3
         D9faNTDlHbVO7N2DBp3hxaXgwqFsa9VjAdiGmcWZqVbJoqQqPithM4GPq+PluDCpDhu2
         bMEQzAwDdMM84pEW2GWmxzlEg4OQHGeTqOzEZ/RQJGwJcogjZdvTgIM2U91P8O4Eq4rM
         clrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701639184; x=1702243984;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4uUY1W5jCT30owrQ3sG0UVyxY52rhXE7pduVYPg+ahQ=;
        b=Nga1mXfuCu4xTqLsCR4XMjV7qxwu7JwARjfceCF7rmBOe400hcSZs/nmACVM1tD4Gh
         9f9nq7/qg9BznXqnA0SY4DKqFAsDiDpbfQbx3QMRme8nOWWE12D/jlCFXnEuUy2sCVT9
         EKoW3gDD0l1JMJUB+zPUEM9uSoMwUiO2Frg1rsUzPOlzVKi5bQvD0WA6E0ZEm3qeWN37
         NMZ8FVC6cmFLBCa9T393OZr5eMcclXv2s2Qkh1tv148ohhvULxY9zGF3CQJ+5WS3zPp3
         +26Y4W0pBvwXsJntxhiwUKZZZgjBkcZRKfm1QxmMH+uoxye8E1bWt3XuA2N6DEERjF6J
         d5Vw==
X-Gm-Message-State: AOJu0YzMnlmdron78eVG86mrEqaNmzimL92oKy3KkbF5yEr/wA5ShypF
	1kqFCFzXKqYwzAZfUUu+nJX6oufSpeUztiBuXBY=
X-Google-Smtp-Source: AGHT+IGPWxeHkfwcW6s5frHbR04baTe/Cp+skA++exMPU/AmVPvdrLFK7lu4L+64Z6AB2cWvsAJbNDtD219dx28KB1E=
X-Received: by 2002:a17:90a:b005:b0:286:6cc0:62a3 with SMTP id
 x5-20020a17090ab00500b002866cc062a3mr3345815pjq.34.1701639183857; Sun, 03 Dec
 2023 13:33:03 -0800 (PST)
MIME-Version: 1.0
References: <20231129092759.242641-1-paul.elder@ideasonboard.com> <20231129092759.242641-12-paul.elder@ideasonboard.com>
In-Reply-To: <20231129092759.242641-12-paul.elder@ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 3 Dec 2023 15:32:52 -0600
Message-ID: <CAHCN7xLihh_r=zn+2EsqZvsOumeJY52DHmrkVv0+A7Grib8AhQ@mail.gmail.com>
Subject: Re: [PATCH v4 11/11] media: rkisp1: Add UYVY as an output format
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, kieran.bingham@ideasonboard.com, 
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_133306_664222_ECF299B4 
X-CRM114-Status: GOOD (  23.68  )
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

T24gV2VkLCBOb3YgMjksIDIwMjMgYXQgMzoyOeKAr0FNIFBhdWwgRWxkZXIgPHBhdWwuZWxkZXJA
aWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiBBZGQgc3VwcG9ydCBmb3IgVVlWWSBhcyBhbiBv
dXRwdXQgZm9ybWF0LiBUaGUgdXZfc3dhcCBiaXQgaW4gdGhlCj4gTUlfWFREX0ZPUk1BVF9DVFJM
IHJlZ2lzdGVyIHRoYXQgaXMgdXNlZCBmb3IgdGhlIE5WIGZvcm1hdHMgZG9lcyBub3QKPiB3b3Jr
IGZvciBwYWNrZWQgWVVWIGZvcm1hdHMuIFRodXMsIFVZVlkgc3VwcG9ydCBpcyBpbXBsZW1lbnRl
ZCB2aWEKPiBieXRlLXN3YXBwaW5nLiBUaGlzIG1ldGhvZCBjbGVhcmx5IGRvZXMgbm90IHdvcmsg
Zm9yIGltcGxlbWVudGluZwo+IHN1cHBvcnQgZm9yIFlWWVUgYW5kIFZZVVkuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBQYXVsIEVsZGVyIDxwYXVsLmVsZGVyQGlkZWFzb25ib2FyZC5jb20+Cj4gUmV2aWV3
ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlk
ZWFzb25ib2FyZC5jb20+Cj4gLS0tCj4gIC4uLi9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtp
c3AxLWNhcHR1cmUuYyB8IDQxICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQs
IDQxIGluc2VydGlvbnMoKykKCgpQYXVsLAoKSSB0ZXN0ZWQgdGhpcyBwYXRjaCBzZXJpZXMgZnJv
bSBvbmUgb2YgdGhlIG9sZGVyIHN1Ym1pc3Npb25zIGFuZCBJIHdhcwphYmxlIHRvIGdldCBpdCB3
b3JraW5nLCBidXQgSSBjb3VsZCBub3QgZ2V0IHRoZSB2aWRlbyB0byBjYXB0dXJlIHRvCndvcmsg
bm8gbWF0dGVyIHdoYXQgcmVzb2x1dGlvbiBvciB2aWRlbyBmb3JtYXQgSSB0cmllZC4gIEVhY2gg
dGltZSwgSQpnZXQgdGhlIHNhbWUgZXJyb3IgbWVzc2FnZTogIHJraXNwMSAzMmUxMDAwMC5pc3A6
IHN0YXJ0IHBpcGVsaW5lCmZhaWxlZCAtMzIKCkRvIHlvdSBoYXZlIGFuIGV4YW1wbGUgb2YgaG93
IHlvdSBjb25maWd1cmVkIHRoZSBwaXBlbGluZSBhbmQgaG93IHlvdQppbnZva2VkIHRoZSB2aWRl
byBjYXB0dXJlPwoKdGhhbmtzCgphZGFtCgo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jCj4gaW5kZXggYTM1Mjg5
MzMwOGI2Li5iNTBiMDQ0ZDIyYWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWNhcHR1cmUuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPiBAQCAtOTcsNiArOTcs
MTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBya2lzcDFfY2FwdHVyZV9mbXRfY2ZnIHJraXNwMV9t
cF9mbXRzW10gPSB7Cj4gICAgICAgICAgICAgICAgIC51dl9zd2FwID0gMCwKPiAgICAgICAgICAg
ICAgICAgLndyaXRlX2Zvcm1hdCA9IFJLSVNQMV9NSV9DVFJMX01QX1dSSVRFX1lVVklOVCwKPiAg
ICAgICAgICAgICAgICAgLm1idXMgPSBNRURJQV9CVVNfRk1UX1lVWVY4XzJYOCwKPiArICAgICAg
IH0sIHsKPiArICAgICAgICAgICAgICAgLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9VWVZZLAo+ICsg
ICAgICAgICAgICAgICAudXZfc3dhcCA9IDAsCj4gKyAgICAgICAgICAgICAgIC55Y19zd2FwID0g
MSwKPiArICAgICAgICAgICAgICAgLndyaXRlX2Zvcm1hdCA9IFJLSVNQMV9NSV9DVFJMX01QX1dS
SVRFX1lVVklOVCwKPiArICAgICAgICAgICAgICAgLm1idXMgPSBNRURJQV9CVVNfRk1UX1lVWVY4
XzJYOCwKPiAgICAgICAgIH0sIHsKPiAgICAgICAgICAgICAgICAgLmZvdXJjYyA9IFY0TDJfUElY
X0ZNVF9ZVVY0MjJQLAo+ICAgICAgICAgICAgICAgICAudXZfc3dhcCA9IDAsCj4gQEAgLTIzMSw2
ICsyMzcsMTMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBya2lzcDFfY2FwdHVyZV9mbXRfY2ZnIHJr
aXNwMV9zcF9mbXRzW10gPSB7Cj4gICAgICAgICAgICAgICAgIC53cml0ZV9mb3JtYXQgPSBSS0lT
UDFfTUlfQ1RSTF9TUF9XUklURV9JTlQsCj4gICAgICAgICAgICAgICAgIC5vdXRwdXRfZm9ybWF0
ID0gUktJU1AxX01JX0NUUkxfU1BfT1VUUFVUX1lVVjQyMiwKPiAgICAgICAgICAgICAgICAgLm1i
dXMgPSBNRURJQV9CVVNfRk1UX1lVWVY4XzJYOCwKPiArICAgICAgIH0sIHsKPiArICAgICAgICAg
ICAgICAgLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9VWVZZLAo+ICsgICAgICAgICAgICAgICAudXZf
c3dhcCA9IDAsCj4gKyAgICAgICAgICAgICAgIC55Y19zd2FwID0gMSwKPiArICAgICAgICAgICAg
ICAgLndyaXRlX2Zvcm1hdCA9IFJLSVNQMV9NSV9DVFJMX1NQX1dSSVRFX0lOVCwKPiArICAgICAg
ICAgICAgICAgLm91dHB1dF9mb3JtYXQgPSBSS0lTUDFfTUlfQ1RSTF9TUF9PVVRQVVRfWVVWNDIy
LAo+ICsgICAgICAgICAgICAgICAubWJ1cyA9IE1FRElBX0JVU19GTVRfWVVZVjhfMlg4LAo+ICAg
ICAgICAgfSwgewo+ICAgICAgICAgICAgICAgICAuZm91cmNjID0gVjRMMl9QSVhfRk1UX1lVVjQy
MlAsCj4gICAgICAgICAgICAgICAgIC51dl9zd2FwID0gMCwKPiBAQCAtNDY0LDYgKzQ3NywyMCBA
QCBzdGF0aWMgdm9pZCBya2lzcDFfbXBfY29uZmlnKHN0cnVjdCBya2lzcDFfY2FwdHVyZSAqY2Fw
KQo+ICAgICAgICAgICAgICAgICBya2lzcDFfd3JpdGUocmtpc3AxLCBSS0lTUDFfQ0lGX01JX1hU
RF9GT1JNQVRfQ1RSTCwgcmVnKTsKPiAgICAgICAgIH0KPgo+ICsgICAgICAgLyoKPiArICAgICAg
ICAqIFUvViBzd2FwcGluZyB3aXRoIHRoZSBNSV9YVERfRk9STUFUX0NUUkwgcmVnaXN0ZXIgb25s
eSB3b3JrcyBmb3IKPiArICAgICAgICAqIE5WMTIvTlYyMSBhbmQgTlYxNi9OVjYxLCBzbyBpbnN0
ZWFkIHVzZSBieXRlIHN3YXAgdG8gc3VwcG9ydCBVWVZZLgo+ICsgICAgICAgICogWVZZVSBhbmQg
VllVWSBjYW5ub3QgYmUgc3VwcG9ydGVkIHdpdGggdGhpcyBtZXRob2QuCj4gKyAgICAgICAgKi8K
PiArICAgICAgIGlmIChya2lzcDEtPmluZm8tPmZlYXR1cmVzICYgUktJU1AxX0ZFQVRVUkVfTUlf
T1VUUFVUX0FMSUdOKSB7Cj4gKyAgICAgICAgICAgICAgIHJlZyA9IHJraXNwMV9yZWFkKHJraXNw
MSwgUktJU1AxX0NJRl9NSV9PVVRQVVRfQUxJR05fRk9STUFUKTsKPiArICAgICAgICAgICAgICAg
aWYgKGNhcC0+cGl4LmNmZy0+eWNfc3dhcCkKPiArICAgICAgICAgICAgICAgICAgICAgICByZWcg
fD0gUktJU1AxX0NJRl9PVVRQVVRfQUxJR05fRk9STUFUX01QX0JZVEVfU1dBUF9CWVRFUzsKPiAr
ICAgICAgICAgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJlZyAmPSB+UktJ
U1AxX0NJRl9PVVRQVVRfQUxJR05fRk9STUFUX01QX0JZVEVfU1dBUF9CWVRFUzsKPiArICAgICAg
ICAgICAgICAgcmtpc3AxX3dyaXRlKHJraXNwMSwgUktJU1AxX0NJRl9NSV9PVVRQVVRfQUxJR05f
Rk9STUFULCByZWcpOwo+ICsgICAgICAgfQo+ICsKPiAgICAgICAgIHJraXNwMV9taV9jb25maWdf
Y3RybChjYXApOwo+Cj4gICAgICAgICByZWcgPSBya2lzcDFfcmVhZChya2lzcDEsIFJLSVNQMV9D
SUZfTUlfQ1RSTCk7Cj4gQEAgLTUwNyw2ICs1MzQsMjAgQEAgc3RhdGljIHZvaWQgcmtpc3AxX3Nw
X2NvbmZpZyhzdHJ1Y3Qgcmtpc3AxX2NhcHR1cmUgKmNhcCkKPiAgICAgICAgICAgICAgICAgcmtp
c3AxX3dyaXRlKHJraXNwMSwgUktJU1AxX0NJRl9NSV9YVERfRk9STUFUX0NUUkwsIHJlZyk7Cj4g
ICAgICAgICB9Cj4KPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBVL1Ygc3dhcHBpbmcgd2l0aCB0
aGUgTUlfWFREX0ZPUk1BVF9DVFJMIHJlZ2lzdGVyIG9ubHkgd29ya3MgZm9yCj4gKyAgICAgICAg
KiBOVjEyL05WMjEgYW5kIE5WMTYvTlY2MSwgc28gaW5zdGVhZCB1c2UgYnl0ZSBzd2FwIHRvIHN1
cHBvcnQgVVlWWS4KPiArICAgICAgICAqIFlWWVUgYW5kIFZZVVkgY2Fubm90IGJlIHN1cHBvcnRl
ZCB3aXRoIHRoaXMgbWV0aG9kLgo+ICsgICAgICAgICovCj4gKyAgICAgICBpZiAocmtpc3AxLT5p
bmZvLT5mZWF0dXJlcyAmIFJLSVNQMV9GRUFUVVJFX01JX09VVFBVVF9BTElHTikgewo+ICsgICAg
ICAgICAgICAgICByZWcgPSBya2lzcDFfcmVhZChya2lzcDEsIFJLSVNQMV9DSUZfTUlfT1VUUFVU
X0FMSUdOX0ZPUk1BVCk7Cj4gKyAgICAgICAgICAgICAgIGlmIChjYXAtPnBpeC5jZmctPnljX3N3
YXApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmVnIHw9IFJLSVNQMV9DSUZfT1VUUFVUX0FM
SUdOX0ZPUk1BVF9TUF9CWVRFX1NXQVBfQllURVM7Cj4gKyAgICAgICAgICAgICAgIGVsc2UKPiAr
ICAgICAgICAgICAgICAgICAgICAgICByZWcgJj0gflJLSVNQMV9DSUZfT1VUUFVUX0FMSUdOX0ZP
Uk1BVF9TUF9CWVRFX1NXQVBfQllURVM7Cj4gKyAgICAgICAgICAgICAgIHJraXNwMV93cml0ZShy
a2lzcDEsIFJLSVNQMV9DSUZfTUlfT1VUUFVUX0FMSUdOX0ZPUk1BVCwgcmVnKTsKPiArICAgICAg
IH0KPiArCj4gICAgICAgICBya2lzcDFfbWlfY29uZmlnX2N0cmwoY2FwKTsKPgo+ICAgICAgICAg
bWlfY3RybCA9IHJraXNwMV9yZWFkKHJraXNwMSwgUktJU1AxX0NJRl9NSV9DVFJMKTsKPiAtLQo+
IDIuMzkuMgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
