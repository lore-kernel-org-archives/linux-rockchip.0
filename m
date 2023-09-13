Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B1CCEE0204
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Sep 2023 20:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HucAO0Cpdwf0U4KvHcNMf+6cx9/zPNWbOworXFKOX8s=; b=fbqxChPeR5+l0U
	ByTvoji+WlM9WAJP0FMb300jy80mh1+lJ4Exg9K2gh5IWJetuLsSDn0mWZnt/InF6lBL20Xldaioq
	CqO/FxzZ+OzXAqvgcAnTWNMPcO4/gsnFrhn6Gp/IyrM9VFTqofRpUZNx/8MNT8A7izX1yN3aWosNk
	hZ0rGaZs5++ACKgY5ZbAx/JrNE1eQibVMhzwHh1ZoCJHCFSvyMB0TQtdK4tpsPy8VFG8JHmBE+KnT
	dONdWhWUvEB8CwrRhIeIeK5p5N9wKTS5OBIBd5Frtjjk+vbeMxpZAFZDcGDZVE7A5GflMvfvdTYzM
	g+8r7No1nVxsoJjuEg7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgWn9-006h4Y-1q;
	Wed, 13 Sep 2023 20:48:55 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgWn5-006h2e-2o
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Sep 2023 20:48:53 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-414ba610766so93191cf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Sep 2023 13:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1694638128; x=1695242928; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NcJlXTKC5xRoadtZAEon6CTFFsDGGrKsYv81Cvxlk0I=;
        b=KjLJCemKBZ6bX5o5mPMafzI5Yx+I3SQ8oYvgrjE7IyfDp6KtYc0Ow5TGuD/ceFucx9
         xqJ6924LTBiOBG+LEY3QEudyvhaFXpvqqU8RZrf5c74APwaXzTUn+HKQ0YlmnhKo+mri
         nbBE6GbYPwAAOB0iLXRsz+rD24TABpmO5cIPqPNry+5JM53ht3UyHU1VOMYRUYpX/ZUH
         hXCH3J5aQbHrbDbm2oTVd2rJO8q9t2iPPUSGXatNEGrzpK70gSM+QYpBcl0NHortrm5k
         pE61WHddgj+Me8hUbpGVk8bzUwijVwnWtV2FdzLq6sLPcRlDsGs04NkV7FKfOJFtHs5+
         zDCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694638128; x=1695242928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NcJlXTKC5xRoadtZAEon6CTFFsDGGrKsYv81Cvxlk0I=;
        b=A2qTsyVRmsvlFEEt2GUDnykBEZLvSVF8MiZxg+3/LxQqSaaxA915E5GolB98YvleTg
         WHD+bYlUSL0CONg0nfGChPiEdzth1bmSG7WqUmKM+doCvCwbush0CALKuaGBO/yLxyWB
         Qm2yWa/LqvUyruPYq//2y/YXamR8GVSoG/dCuUPvb+0QoCugkDV9bk9h4uR6xt3Zcf27
         YGXKrbZ/ox/cSozwvQFnbJTI1CUHbNWQBXlUEZluNDeHUBziXu5pQ6fHav+GkSEA9x5Q
         BwDaHrrwWQysLzxJgrLE3vwWWbja4Ok5sRdCCYaVEdSa17gW3CuN1tE7tRy+ehdUbtHj
         SD2Q==
X-Gm-Message-State: AOJu0YyTRazmaiMbp5nfoxqhWaH3lstXWIDdYh1imxZ4Hl6vgHhH4xce
	gwxMnGk/x3XBVRJBWHrYHVn6Jdbtd9sIQYGaNm877w==
X-Google-Smtp-Source: AGHT+IHdxM3qDxSFcobWc9e/bvG3ZPvXwmfQ7UAt/NPVUh4yMwsb6+IvDj8bLAr1t8EZEfJbmhIvmyna9oRSeT6JHV8=
X-Received: by 2002:a05:622a:51:b0:3ef:5f97:258f with SMTP id
 y17-20020a05622a005100b003ef5f97258fmr434466qtw.16.1694638128380; Wed, 13 Sep
 2023 13:48:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-2-s.hauer@pengutronix.de> <CACRpkdYxRdToUM3JcEeNK_K87D5WDzzSLvVEbtqqdQEhz3k_Ow@mail.gmail.com>
 <CAGb2v65G-8EECNjqnpKCxqAD5nATAb0S7AA_WMiGXYOR1avrvg@mail.gmail.com> <20230913065843.GF637806@pengutronix.de>
In-Reply-To: <20230913065843.GF637806@pengutronix.de>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 13 Sep 2023 13:48:12 -0700
Message-ID: <CAGETcx8rO=aykjb6=5k0wpOyscqokNwSL6w-AHnodY7pNXyzGQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: add support for io-domain dependency
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, kernel@pengutronix.de, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_134851_912930_1521572E 
X-CRM114-Status: GOOD (  37.57  )
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

T24gVHVlLCBTZXAgMTIsIDIwMjMgYXQgMTE6NTjigK9QTSBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJA
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gT24gV2VkLCBTZXAgMTMsIDIwMjMgYXQgMTI6Mzc6
NTRQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gT24gVHVlLCBTZXAgMTIsIDIwMjMg
YXQgNDowN+KAr1BNIExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4gd3Jv
dGU6Cj4gPiA+Cj4gPiA+IFRvcCBwb3N0aW5nIHRvIGJyaW5nIFNhcmF2YW5hIEthbm5hbiBpbnRv
IHRoaXMgZGlzY3Vzc2lvbi4KPiA+ID4KPiA+ID4gVGhpcyBsb29rcyBsaWtlIGEgYmlnIGhhY2sg
dG8gbWUsIFNhcmF2YW5hIGhhcyBiZWVuIHdvcmtpbmcKPiA+ID4gdGlyZWxlc3NseSB0byBtYWtl
IHRoZSBkZXZpY2UgdHJlZSBwcm9iZSBvcmRlciAic29ydCBpdHNlbGYgb3V0Igo+ID4gPiBhbmQg
SSBhbSBwcmV0dHkgc3VyZSB0aGlzIGlzc3VlIG5lZWRzIHRvIGJlIGZpeGVkIGF0IHRoZSBEVAo+
ID4gPiBjb3JlIGxldmVsIGFuZCBub3QgaW4gYSBkcml2ZXIuCj4gPgo+ID4gV2UgY291bGQgbWVy
Z2UgYWxsIHRoZSBJTyBkb21haW4gc3R1ZmYgaW50byB0aGUgcGluY3RybCBub2RlL2RyaXZlciwK
PiA+IGxpa2UgaXMgZG9uZSBmb3IgQWxsd2lubmVyPyBNYXliZSB0aGF0IHdvdWxkIHNpbXBsaWZ5
IHRoaW5ncyBhIGJpdD8KPgo+IEkgdGhvdWdodCBhYm91dCB0aGlzIGFzIHdlbGwuIE9uIFJvY2tj
aGlwIHRoZSBwaW5jdHJsIGRyaXZlciBhbmQgdGhlIElPCj4gZG9tYWluIGRyaXZlciBldmVuIHdv
cmsgb24gdGhlIHNhbWUgcmVnaXN0ZXIgc3BhY2UsIHNvIHB1dHRpbmcgdGhlc2UKPiBpbnRvIGEg
c2luZ2xlIG5vZGUvZHJpdmVyIHdvdWxkIGV2ZW4gZmVlbCBtb3JlIG5hdHVyYWwgdGhhbiB3aGF0
IHdlIGhhdmUKPiBub3cuCgpUaGVuIHdlIHNob3VsZCB0cnkgdG8gZG8gdGhpcyBhbmQgZml4IGFu
eSBpc3N1ZXMgYmxvY2tpbmcgdXMuCgo+IEhvd2V2ZXIsIHdpdGggdGhhdCB0aGUgcGluY3RybCBu
b2RlIHdvdWxkIGdldCB0aGUgc3VwcGxpZXMgdGhhdCB0aGUgSU8KPiBkb21haW4gbm9kZSBub3cg
aGFzIGFuZCB3ZSB3b3VsZCBuZXZlciBnZXQgaW50byB0aGUgcHJvYmUgb2YgdGhlIHBpbmN0cmwK
PiBkcml2ZXIgZHVlIHRvIHRoZSBjaXJjdWxhciBkZXBlbmRlbmNpZXMuCgpGcm9tIGEgZndfZGV2
bGluayBwZXJzcGVjdGl2ZSwgdGhlIGNpcmN1bGFyIGRlcGVuZGVuY3kgc2hvdWxkbid0IGJlIGEK
cHJvYmxlbS4gSXQncyBzbWFydCBlbm91Z2ggdG8gcmVjb2duaXplIGFsbCBjeWNsZSBwb3NzaWJp
bGl0aWVzIChzaW5jZQo2LjMpIGFuZCBub3QgZW5mb3JjZSBvcmRlcmluZyBiZXR3ZWVuIG5vZGVz
IGluIGEgY3ljbGUuCgpTbywgdGhpcyBpcyByZWFsbHkgb25seSBhIG1hdHRlciBvZiBwaW5jdHJs
IG5vdCB0cnlpbmcgdG8gZG8KcmVndWxhdG9yX2dldCgpIGluIGl0cyBwcm9iZSBmdW5jdGlvbi4g
WW91IG5lZWQgdG8gZG8gdGhlCnJlZ3VsYXRvcl9nZXQoKSB3aGVuIHRoZSBwaW5zIHRoYXQgZGVw
ZW5kIG9uIHRoZSBpby1kb21haW4gYXJlCnJlcXVlc3RlZC4gQW5kIGlmIHRoZSByZWd1bGF0b3Ig
aXNuJ3QgcmVhZHkgeWV0LCByZXR1cm4gLUVQUk9CRV9ERUZFUj8KCklzIHRoZXJlIHNvbWV0aGlu
ZyB0aGF0IHByZXZlbnRzIHVzIGZyb20gZG9pbmcgdGhhdD8KCj4gPgo+ID4gSUlSQyBvbiBBbGx3
aW5uZXIgU29DcyB0aGUgUE1JQyBwaW5zIGRvbid0IGhhdmUgYSBzZXBhcmF0ZSBwb3dlciByYWls
LAo+ID4gb3IgaWYgdGhleSBkbyB0aGV5IGFsbW9zdCBjZXJ0YWlubHkgdXNlIHRoZSBkZWZhdWx0
IEkvTyByYWlsIHRoYXQgaXMKPiA+IGFsd2F5cyBvbiwgYW5kIHNvIHdlIG9taXQgaXQgdG8gd29y
ayBhcm91bmQgdGhlIGRlcGVuZGVuY3kgY3ljbGUuCj4KPiBJIGxvb2tlZCBpbnRvIHN1bjUwaSBh
cyBhbiBleGFtcGxlLiBUaGlzIG9uZSBoYXMgdHdvIHBpbmN0cmwgbm9kZXMsIHBpbwo+IGFuZCBy
X3Bpby4gT25seSB0aGUgZm9ybWVyIGhhcyBzdXBwbGllcyB3aGVyZWFzIHRoZSBsYXR0ZXIsIHdo
ZXJlIHRoZQo+IFBNSUMgaXMgY29ubmVjdGVkIHRvLCBoYXMgKGZvdW5kIGluIHN1bjUwaS1hNjQt
cGluZXBob25lLmR0c2kpOgo+Cj4gJnJfcGlvIHsKPiAgICAgICAgIC8qCj4gICAgICAgICAgKiBG
SVhNRTogV2UgY2FuJ3QgYWRkIHRoYXQgc3VwcGx5IGZvciBub3cgc2luY2UgaXQgd291bGQKPiAg
ICAgICAgICAqIGNyZWF0ZSBhIGNpcmN1bGFyIGRlcGVuZGVuY3kgYmV0d2VlbiBwaW5jdHJsLCB0
aGUgcmVndWxhdG9yCj4gICAgICAgICAgKiBhbmQgdGhlIFJTQiBCdXMuCj4gICAgICAgICAgKgo+
ICAgICAgICAgICogdmNjLXBsLXN1cHBseSA9IDwmcmVnX2FsZG8yPjsKPiAgICAgICAgICAqLwo+
IH07Cj4KPiBBdCBsZWFzdCBpdCBzaG93IG1lIHRoYXQgSSBhbSBub3QgdGhlIGZpcnN0IG9uZSB3
aG8gaGFzIHRoaXMgcHJvYmxlbSA7KQo+Cj4gV2UgY291bGQgYWRkIHRoZSBzdXBwbGllcyB0byB0
aGUgcGluZ3JvdXAgc3Vibm9kZXMgb2YgdGhlIHBpbmN0cmwgZHJpdmVyCj4gdG8gYXZvaWQgdGhh
dCwgYnV0IGFzIFNhcmF2YW5hIGFscmVhZHkgbWVuaW9uZWQsIHRoYXQgd291bGQgZmVlbCBsaWtl
Cj4gb3ZlcmtpbGwuCgpTbyBteSBjb21tZW50IHllc3RlcmRheSB3YXMgdGhhdCBpdCdkIGJlIGFu
IG92ZXJraWxsIHRvIG1ha2UgZXZlcnkKc3RydWN0IHBpbl9kZXNjIGludG8gYSBkZXZpY2UuIEJ1
dCBpZiB5b3UgY2FuIHNwbGl0IHRoYXQgcm9ja2NoaXAKcGluY3RybCBpbnRvIHR3byBkZXZpY2Vz
LCB0aGF0IHNob3VsZCBiZSBva2F5IGFuZCBkZWZpbml0ZWx5IG5vdCBhbgpvdmVya2lsbC4KCk1h
eWJlIHNvbWV0aGluZyBsaWtlOgoKcGluY3RybCB7CiAgICBjb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrMzU2OC1waW5jdHJsIjsKICAgIGkyYzAgewogICAgICAgICAgICAgICAgL29taXQtaWYtbm8t
cmVmLwogICAgICAgICAgICAgICAgaTJjMF94ZmVyOiBpMmMwLXhmZXIgewogICAgICAgICAgICAg
ICAgICAgICAgICByb2NrY2hpcCxwaW5zID0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAvKiBpMmMwX3NjbCAqLwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIFJLX1BC
MSAxICZwY2ZnX3B1bGxfbm9uZV9zbXQ+LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IC8qIGkyYzBfc2RhICovCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgUktfUEIy
IDEgJnBjZmdfcHVsbF9ub25lX3NtdD47CiAgICAgICAgICAgICAgICB9OwogICAgfQogICAgLi4u
CiAgICAuLi4KICAgIHBpbmN0cmwtaW8gewogICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAs
cmszNTY4LXBpbmN0cmwtaW8iOwogICAgICAgIHBtdWlvMS1zdXBwbHkgPSA8JnZjYzN2M19wbXU+
OwogICAgICAgIGNhbSB7CiAgICAgICAgICAgIC4uLi4KICAgICAgICB9CiAgICAgICAgLi4uLgog
ICAgICAgIC4uLi4KfQoKU28gcGluY3RybCB3aWxsIHByb2JlIHN1Y2Nlc3NmdWxseSBhbmQgYWRk
IGl0J3MgY2hpbGQgZGV2aWNlCnBpbmN0cmwtaW8uIGkyYzAgd2lsbCBwcm9iZSBvbmNlIHBpbmN0
cmwgaXMgYXZhaWxhYmxlLiBUaGVuIGV2ZW50dWFsbHkKdGhlIHJlZ3VsYXRvciB3aWxsIHByb2Jl
LiBBbmQgYWZ0ZXIgYWxsIHRoYXQsIHBpbmN0cmwtaW8gd291bGQgcHJvYmUuCgpUaGlzIGhhcyBu
byBjeWNsZXMgYW5kIElNSE8gcmVwcmVzZW50cyB0aGUgaGFyZHdhcmUgYWNjdXJhdGVseS4gWW91
CmhhdmUgYSBwaW5jdHJsIGJsb2NrIGFuZCB0aGVyZSdzIGEgc3ViIGNvbXBvbmVudCBvZiBpdCAo
cGluY3RybC1pbykKdGhhdCB3b3JrcyBkaWZmZXJlbnRseSBhbmQgaGFzIGFkZGl0aW9uYWwgZGVw
ZW5kZW5jaWVzLgoKQW55IHRob3VnaHRzIG9uIHRoaXM/CgotU2FyYXZhbmEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
