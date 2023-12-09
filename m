Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8813DC4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Dec 2023 00:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9V3706wDgMnwk/drmuXqgOfWiiXgIEedtgCWz80sjQ=; b=Yh9irnzP/HCezC
	T6fncHfW2Ul/3QvU+pp5tRxQP/elgUieo1PSdu73lXinJ//53PsmGIgY/YLtePczsDmU+En7hR4zQ
	vqvdyP6IXYqORMLM+X79l16RpQdP3VXj0AVtwoyFI5IjiiQy5+jhAgAS2GdmW6wCZmpsD0dhp36Ce
	5MSDGQ9QMA3L8KTx81q2IM1Rlf2lZHwiqMQPLSvYX1GwVsm+08uYFB7W0MzwCYTJqxRWRSpaaarR7
	vikjqYBB36xf61eY6YKy07a8XPxde1CLfNhwWV49YWk0AHCSGOwHuwF5Ypb6pwei8pnq0TG4dbm/5
	C1Av5wYk100vkYuEb57A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rC7Ep-000jxP-2N;
	Sun, 10 Dec 2023 00:00:03 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rC7El-000jvx-0p
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Dec 2023 00:00:00 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2886579d59fso3226945a91.1
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Dec 2023 15:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702166396; x=1702771196; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n7u/6Kwg7oxrjY82trCXpaLTJNUXXfWY7g8riBVNbTo=;
        b=AhC9NyR9OqyGH4yB+yO/uG04J6LnPY7/gu4mmEemIwJVi1EMDqNpBCbGRlqpVDenni
         U+3jRWhUljwLJP1AsWH0bngwn4E/VBAyFwH2Se3faBXWgZInZTp5cRC3OOe5Xyyg8M2v
         qAcnP4LyAqyON86YxfxnlChomEx2Gv1WvBfNOvVv4evHuHDtg3QZLaghAHrf/2bQ8svT
         DhSl9f8A1hxtJFKoKyfrxa4QsSKaFSYXk3dwAs/560Ecc6fPt4h9wK3UOJJG/Tnj5Wt0
         MUVhm7YUjUt7GQyUK9lYaT1q/hP79A9/nPBpkRTmToLK9kWCVQAdLzj4siSvX14GW0Hc
         iCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702166396; x=1702771196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n7u/6Kwg7oxrjY82trCXpaLTJNUXXfWY7g8riBVNbTo=;
        b=sfXr7x8kFsYCGtKjk4hbAMmiH9AlBn6ylTZ3UKYZTwkRR3RVvEL2IdOra8M1dlQlRx
         IZanfzrhRvgmUVTMZCn7nd/qrloM3etkYQW8/aP3tWuHYqTIKg8KZzSeAaR6QWKmmq+E
         ruU5Z0nWmeVpEMWFXHcWE8OP/uImzX4+EguGdmwLPaxIEjNA8Q4/TeUsW3eyvPSqxpi8
         5cIhcb7mMl8cUG0qn89YFa24iFdGNrYIhSlDoau6GYV6HpucqKwMmb9mxAChB8kTMnbI
         h2Nfgsqc29a22gzjJeKeBfMN0hrqC5qpPQK7cTlJefCGeDSfKBGJcII6UJLrjEWI1nR5
         Dtdw==
X-Gm-Message-State: AOJu0YwGdEtX92YDgdDLnSJsOsnYKX2Sc2oly1kOzLo7T948qgo1PMa1
	Au733o0YT+1uUqUYEpddk1fC9NLJwIAhAtrY0Js=
X-Google-Smtp-Source: AGHT+IFsamNcb3DC4qLzGDXYQB1aroJmpC4Bc/B7GM7eJDGJgncM5//HfAAKB4ZMUMMoIFjSyuJ10ZuAnhBAHf+c0Fw=
X-Received: by 2002:a17:90a:9c15:b0:286:9d14:65c with SMTP id
 h21-20020a17090a9c1500b002869d14065cmr1639230pjp.63.1702166395915; Sat, 09
 Dec 2023 15:59:55 -0800 (PST)
MIME-Version: 1.0
References: <20231129092759.242641-1-paul.elder@ideasonboard.com>
 <CAHCN7xLgypy8YMhxM1g27DWU7hY3nwAYLYRSMMDtODeGdd_CQg@mail.gmail.com> <ZWhZzNQ6VWcfvWZy@pyrite.rasen.tech>
In-Reply-To: <ZWhZzNQ6VWcfvWZy@pyrite.rasen.tech>
From: Adam Ford <aford173@gmail.com>
Date: Sat, 9 Dec 2023 17:59:44 -0600
Message-ID: <CAHCN7x+_pow1_3yODH4BMCrUfCQDhrZK4AQMtt6df_7PC92kPg@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] media: rkisp1: Add support for i.MX8MP
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, kieran.bingham@ideasonboard.com, 
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_155959_319843_E3167F59 
X-CRM114-Status: GOOD (  28.23  )
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

T24gVGh1LCBOb3YgMzAsIDIwMjMgYXQgMzo0NeKAr0FNIFBhdWwgRWxkZXIgPHBhdWwuZWxkZXJA
aWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE5vdiAyOSwgMjAyMyBhdCAwNToz
NjoyNUFNIC0wNjAwLCBBZGFtIEZvcmQgd3JvdGU6Cj4gPiBPbiBXZWQsIE5vdiAyOSwgMjAyMyBh
dCAzOjI44oCvQU0gUGF1bCBFbGRlciA8cGF1bC5lbGRlckBpZGVhc29uYm9hcmQuY29tPiB3cm90
ZToKPiA+ID4KPiA+ID4gVGhpcyBzZXJpZXMgZXh0ZW5kcyB0aGUgcmtpc3AxIGRyaXZlciB0byBz
dXBwb3J0IHRoZSBJU1AgZm91bmQgaW4gdGhlCj4gPiA+IE5YUCBpLk1YOE1QIFNvQy4KPiA+ID4K
PiA+ID4gVGhlIElTUCBJUCBjb3JlcyBpbiB0aGUgUm9ja2NoaXAgUkszMzk5IChrbm93biBhcyB0
aGUgIlJvY2tjaGlwIElTUDEiKQo+ID4gPiBhbmQgaW4gdGhlIE5YUCBpLk1YOE1QIGhhdmUgdGhl
IHNhbWUgb3JpZ2luLCBhbmQgaGF2ZSBzbGlnaHRseSBkaXZlcmdlZAo+ID4gPiBvdmVyIHRpbWUg
YXMgdGhleSBhcmUgbm93IGluZGVwZW5kZW50bHkgZGV2ZWxvcGVkIChhZmFpaykgYnkgUm9ja2No
aXAKPiA+ID4gYW5kIFZlcmlTaWxpY29uLiBUaGUgbGF0dGVyIGlzIG1hcmtldGVkIHVuZGVyIHRo
ZSBuYW1lICJJU1A4MDAwTmFubyIsCj4gPiA+IGFuZCBpcyBjbG9zZSBlbm91Z2ggdG8gdGhlIFJL
MzM5OSBJU1AgdGhhdCBpdCBjYW4gZWFzaWx5IGJlIHN1cHBvcnRlZCBieQo+ID4gPiB0aGUgc2Ft
ZSBkcml2ZXIuCj4gPiA+Cj4gPiA+IFRoZSBsYXN0IHR3byBwYXRjaGVzIGFkZCBzdXBwb3J0IGZv
ciBVWVZZIG91dHB1dCBmb3JtYXQsIHdoaWNoIGNhbiBiZQo+ID4gPiBpbXBsZW1lbnRlZCBvbiB0
aGUgSVNQIHZlcnNpb24gaW4gdGhlIGkuTVg4TVAgYnV0IG5vdCBpbiB0aGUgb25lIGluIHRoZQo+
ID4gPiBSSzMzOTkuCj4gPiA+Cj4gPiA+IFRoaXMgdmVyc2lvbiBvZiB0aGUgc2VyaWVzIHNwZWNp
ZmljYWxseSBoYXMgYmVlbiB0ZXN0ZWQgb24gYSBQb2x5aGV4Cj4gPiA+IERlYml4IG1vZGVsIEEg
d2l0aCBhbiBpbXgyMTkgKFJhc3BiZXJyeSBQaSBjYW0gdjIpLgo+ID4KPiA+IEkgaGF2ZSB0ZXN0
ZWQgcHJldmlvdXMgdmVyc2lvbnMgd2l0aCBhIGlteDIxOSBjYW1lcmEgcnVubmluZyBpbiA0LWxh
bmUKPiA+IG1vZGUgd2l0aCBncmVhdCBzdWNjZXNzLiAgU2hvdWxkIEkgYXBwbHkgdGhpcyBzZXJp
ZXMgYWdhaW5zdAo+ID4gbGludXgtbmV4dCwgb3IgZG8gSSBuZWVkIHRvIGFwcGx5IGl0IGFnYWlu
c3Qgc29tZXRoaW5nIGluIHRoZSBtZWRpYQo+ID4gdHJlZSB0byB0ZXN0PyAgSSBob3BlIHRvIHRl
c3QgaXQgdG9uaWdodCBvciB0b21vcnJvdy4KPgo+IEkgaGF2ZSBpdCBhcHBsaWVkIG9uIDYuNy1y
YzEuCj4KCkZvciB0aGUgc2VyaWVzLAoKVGVzdGVkLWJ5OiAgQWRhbSBGb3JkIDxhZm9yZDE3M0Bn
bWFpbC5jb20+ICNpbXg4bXAtYmVhY29uCgo+Cj4gVGhhbmtzLAo+Cj4gUGF1bAo+Cj4gPiA+Cj4g
PiA+IExhdXJlbnQgUGluY2hhcnQgKDIpOgo+ID4gPiAgIG1lZGlhOiBya2lzcDE6IEFkZCBhbmQg
dXNlIHJraXNwMV9oYXNfZmVhdHVyZSgpIG1hY3JvCj4gPiA+ICAgbWVkaWE6IHJraXNwMTogQ29u
ZmlndXJlIGdhc2tldCBvbiBpLk1YOE1QCj4gPiA+Cj4gPiA+IFBhdWwgRWxkZXIgKDkpOgo+ID4g
PiAgIG1lZGlhOiBya2lzcDE6IFN1cHBvcnQgc2V0dGluZyBtZW1vcnkgc3RyaWRlIGZvciBtYWlu
IHBhdGgKPiA+ID4gICBtZWRpYTogcmtpc3AxOiBTdXBwb3J0IGRldmljZXMgbGFja2luZyBzZWxm
IHBhdGgKPiA+ID4gICBtZWRpYTogcmtpc3AxOiBTdXBwb3J0IGRldmljZXMgbGFja2luZyBkdWFs
IGNyb3AKPiA+ID4gICBtZWRpYTogcmtpc3AxOiBGaXggUlNaX0NUUkwgYml0cyBmb3IgaS5NWDhN
UAo+ID4gPiAgIGR0LWJpbmRpbmdzOiBtZWRpYTogcmtpc3AxOiBBZGQgaS5NWDhNUCBJU1AgdG8g
Y29tcGF0aWJsZQo+ID4gPiAgIG1lZGlhOiBya2lzcDE6IEFkZCBtYXRjaCBkYXRhIGZvciBpLk1Y
OE1QIElTUAo+ID4gPiAgIG1lZGlhOiBya2lzcDE6IFNoaWZ0IERNQSBidWZmZXIgYWRkcmVzc2Vz
IG9uIGkuTVg4TVAKPiA+ID4gICBtZWRpYTogcmtpc3AxOiBBZGQgWUMgc3dhcCBjYXBhYmlsaXR5
Cj4gPiA+ICAgbWVkaWE6IHJraXNwMTogQWRkIFVZVlkgYXMgYW4gb3V0cHV0IGZvcm1hdAo+ID4g
Pgo+ID4gPiAgLi4uL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLWlzcDEueWFtbCAgICAgICAgIHwg
IDM3ICsrKystCj4gPiA+ICAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1jYXB0
dXJlLmMgfCAxMjggKysrKysrKysrKysrLS0tLS0KPiA+ID4gIC4uLi9wbGF0Zm9ybS9yb2NrY2hp
cC9ya2lzcDEvcmtpc3AxLWNvbW1vbi5oICB8ICAzNSArKysrLQo+ID4gPiAgLi4uL3BsYXRmb3Jt
L3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMgICAgIHwgIDY2ICsrKysrKystLQo+ID4gPiAg
Li4uL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtaXNwLmMgICAgIHwgMTMxICsrKysr
KysrKysrKysrKysrLQo+ID4gPiAgLi4uL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEt
cmVncy5oICAgIHwgIDMyICsrKysrCj4gPiA+ICAuLi4vcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3Ax
L3JraXNwMS1yZXNpemVyLmMgfCAgMjcgKystLQo+ID4gPiAgaW5jbHVkZS91YXBpL2xpbnV4L3Jr
aXNwMS1jb25maWcuaCAgICAgICAgICAgIHwgICAyICsKPiA+ID4gIDggZmlsZXMgY2hhbmdlZCwg
Mzk4IGluc2VydGlvbnMoKyksIDYwIGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiAtLQo+ID4gPiAy
LjM5LjIKPiA+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
