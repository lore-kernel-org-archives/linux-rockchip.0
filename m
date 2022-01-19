Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57F1AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 10:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=61+4Zwk9TW8w53FHgasee47a4GwD8u9hik8y8wV8AzA=; b=oJOLAUM9OaD3uBx8DhvlkfCj5M
	q+mHAa3yb1qJZ+C90lcWjVmDKM9OjbibgL8n0LqPhsm3x/xZWWzGpCMv0LIyoyxxx6g4DTMuMNIYO
	+yI7uNa/qs1bzaCL+aKPiMTEXaD9X0mNUIdF7uAOnAJMOVydpcss1dyWLnSqO5C9Dd614iK2BF8ar
	/uFbhsYdJdBvjJHB0liwDqB7IHz8wIcvAPjC/p74fwTtma3oLaD5ErDKmTlSMcOpBVuJdHs48JycV
	aQ7fT870eBJiBAGblP3a0hzZOrdfTGTLMFKr+TMRRfNCAn0vocEBNNwdGoMaZn80e8uFEtrN4ksIz
	a9x8dH0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA8Uq-005090-3D; Wed, 19 Jan 2022 10:47:20 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA8Uc-00503m-PI
 for linux-rockchip@lists.infradead.org; Wed, 19 Jan 2022 10:47:09 +0000
Received: by mail-wm1-x32f.google.com with SMTP id c2so4552484wml.1
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jan 2022 02:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dx+5y92U1FgBzsVZMw+12Q4TLFpaaS9Yf4w4pY01fTg=;
 b=UgIJwWVRPlpeatc+U8AhVdBfZ5sWLtY2BVhbAB/lh3QNk/vy/r4ThPnHsHri5DxDxA
 3hmBnUIFE+fqyul8NCUI7hTKKSf0Hrl7r0kMyOYqnKTIK7ETOzJMGKjYqmA90FUToV4C
 QIxWwvLHKOVJlVjTEwaoWWSFKTJKoMGLDnMDiQo+Zt2OLcg4aDzrVLF36so3NVt+/YhX
 r3OJpRGcoXAX5P3E2gCC16Ta59734e0GrCuYBqNZsAqSejP6KXbpVHyqMzE3ZDFzHBmI
 JQD1aZnTLd17L/venUuMxQdnCcZYRSMeiaoZwz6asZ5lwwbs58OqSelkB+GO+tU+edaI
 VBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Dx+5y92U1FgBzsVZMw+12Q4TLFpaaS9Yf4w4pY01fTg=;
 b=K9ob3F3h2sgmfAeapdh2PZI1PJx7FdUuGr9Se1+dxbqiWFOqcawR0a+D0s/65+lBTb
 dvFRNMJCt5Fqj3h4TNCf/p+i4rMqPt5W4GWfUHFEE5Hii9nJdYj/2lI4CfwAFha0YVyY
 H6HdYzkyXwjU9P+LXnd9r0FtfHj5+fthUqAhf1XWne1qO+TvdIFY6s5cOpyPWByzv6IE
 SnF1PEDqoZLZHsPflQFn+13YEv9Yt4v9WXGDWmf9tQqNrd5mpFbiTqtrEY33umF4p+v6
 0dyZ9EVQ9IbR1svjCaFgt3tufsxspfR/xuneT7mUq/AvHjo7n28cu7FXLjZ5+r7O/VQL
 zZzg==
X-Gm-Message-State: AOAM530ZyOSK59gOxDyO6ZmmjEerv3tPijjMmcdRebWSYgbJKZ6weUiF
 iSDWieNOcKHd62KMUoJ2reCLsw==
X-Google-Smtp-Source: ABdhPJy6tuWU2K3EUHSDhWJc1qHx1y936PooKoRDKkAQeADIVDfKW2YRJM88plUr9OYUUkxwbyexbA==
X-Received: by 2002:adf:bc52:: with SMTP id a18mr580055wrh.426.1642589224228; 
 Wed, 19 Jan 2022 02:47:04 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:d394:97d0:bc02:3846?
 ([2001:861:44c0:66c0:d394:97d0:bc02:3846])
 by smtp.gmail.com with ESMTPSA id o15sm5068178wms.11.2022.01.19.02.47.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jan 2022 02:47:03 -0800 (PST)
Subject: Re: [PATCH v2] phy: dphy: Correct clk_pre parameter
From: Neil Armstrong <narmstrong@baylibre.com>
To: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: linux-imx@nxp.com, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>
References: <20220119023714.1498508-1-victor.liu@nxp.com>
 <28e3f723-daf0-b3c5-ee10-519c4cabfe17@baylibre.com>
 <5a638561-c704-49e7-1fed-70e26fedb186@baylibre.com>
 <8ad2cd76e80056192395ca5b73ff514e59881ba3.camel@nxp.com>
 <e02c9226-2dfb-5931-60e3-a22e51172c30@baylibre.com>
Organization: Baylibre
Message-ID: <661a7c69-0da6-32f5-ffa0-58426c5825e0@baylibre.com>
Date: Wed, 19 Jan 2022 11:47:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <e02c9226-2dfb-5931-60e3-a22e51172c30@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_024706_850642_7CD7A665 
X-CRM114-Status: GOOD (  31.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGksCgpPbiAxOS8wMS8yMDIyIDExOjExLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiBIaSwKPiAK
PiBPbiAxOS8wMS8yMDIyIDExOjAxLCBMaXUgWWluZyB3cm90ZToKPj4gSGkgTmVpbCwKPj4KPj4g
T24gV2VkLCAyMDIyLTAxLTE5IGF0IDEwOjExICswMTAwLCBOZWlsIEFybXN0cm9uZyB3cm90ZToK
Pj4+IE9uIDE5LzAxLzIwMjIgMDk6NDAsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+Pj4+IEhpLAo+
Pj4+Cj4+Pj4gT24gMTkvMDEvMjAyMiAwMzozNywgTGl1IFlpbmcgd3JvdGU6Cj4+Pj4+IFRoZSBE
LVBIWSBzcGVjaWZpY2F0aW9uICh2MS4yKSBleHBsaWNpdGx5IG1lbnRpb25zIHRoYXQgdGhlIFQt
Q0xLLVBSRQo+Pj4+PiBwYXJhbWV0ZXIncyB1bml0IGlzIFVuaXQgSW50ZXJ2YWwoVUkpIGFuZCB0
aGUgbWluaW11bSB2YWx1ZSBpcyA4LiAgQWxzbywKPj4+Pj4ga2VybmVsIGRvYyBvZiB0aGUgJ2Ns
a19wcmUnIG1lbWJlciBvZiBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeQo+Pj4+
PiBtZW50aW9ucyB0aGF0IGl0IHNob3VsZCBiZSBpbiBVSS4gIEhvd2V2ZXIsIHRoZSBkcGh5IGNv
cmUgZHJpdmVyIHdyb25nbHkKPj4+Pj4gc2V0cyAnY2xrX3ByZScgdG8gODAwMCwgd2hpY2ggc2Vl
bXMgdG8gaGludCB0aGF0IGl0J3MgaW4gcGljb3NlY29uZHMuCj4+Pj4+IEFuZCwgdGhlIGtlcm5l
bCBkb2Mgb2YgdGhlICdjbGtfcHJlJyBtZW1iZXIgd3JvbmdseSBzYXlzIHRoZSBtaW5pbXVtIHZh
bHVlCj4+Pj4+IGlzICc4IFVJJywgaW5zdGVhZCBvZiA4Lgo+Pj4+Pgo+Pj4+PiBTbywgbGV0J3Mg
Zml4IGJvdGggdGhlIGRwaHkgY29yZSBkcml2ZXIgYW5kIHRoZSBrZXJuZWwgZG9jIG9mIHRoZSAn
Y2xrX3ByZScKPj4+Pj4gbWVtYmVyIHRvIGNvcnJlY3RseSByZWZsZWN0IHRoZSBULUNMSy1QUkUg
cGFyYW1ldGVyJ3MgdW5pdCBhbmQgdGhlIG1pbmltdW0KPj4+Pj4gdmFsdWUgYWNjb3JkaW5nIHRv
IHRoZSBELVBIWSBzcGVjaWZpY2F0aW9uLgo+Pj4+Pgo+Pj4+PiBJJ20gYXNzdW1pbmcgdGhhdCBh
bGwgaW1wYWN0ZWQgY3VzdG9tIGRyaXZlcnMgc2hhbGwgcHJvZ3JhbSB2YWx1ZXMgaW4KPj4+Pj4g
VHhCeXRlQ2xrSFMgY3ljbGVzIGludG8gaGFyZHdhcmUgZm9yIHRoZSBULUNMSy1QUkUgcGFyYW1l
dGVyLiAgVGhlIEQtUEhZCj4+Pj4+IHNwZWNpZmljYXRpb24gbWVudGlvbnMgdGhhdCB0aGUgZnJl
cXVlbmN5IG9mIFR4Qnl0ZUNsa0hTIGlzIGV4YWN0bHkgMS84Cj4+Pj4+IHRoZSBIaWdoLVNwZWVk
KEhTKSBiaXQgcmF0ZShlYWNoIEhTIGJpdCBjb25zdW1lcyBvbmUgVUkpLiAgU28sIHJlbGV2YW50
Cj4+Pj4+IGN1c3RvbSBkcml2ZXIgY29kZSBpcyBjaGFuZ2VkIHRvIHByb2dyYW0gdGhvc2UgdmFs
dWVzIGFzCj4+Pj4+IERJVl9ST1VORF9VUChjZmctPmNsa19wcmUsIEJJVFNfUEVSX0JZVEUpLCB0
aGVuLgo+Pj4+Pgo+Pj4+PiBOb3RlIHRoYXQgSSd2ZSBvbmx5IHRlc3RlZCB0aGUgcGF0Y2ggd2l0
aCBSTTY3MTkxIERTSSBwYW5lbCBvbiBpLk1YOG1xIEVWSy4KPj4+Pj4gSGVscCBpcyBuZWVkZWQg
dG8gdGVzdCB3aXRoIG90aGVyIGkuTVg4bXEsIE1lc29uIGFuZCBSb2NrY2hpcCBwbGF0Zm9ybXMs
Cj4+Pj4+IGFzIEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmVzLgo+Pj4+Pgo+Pj4+PiBGaXhlczog
MmVkODY5OTkwZTE0ICgicGh5OiBBZGQgTUlQSSBELVBIWSBjb25maWd1cmF0aW9uIG9wdGlvbnMi
KQo+Pj4+PiBDYzogQW5kcnplaiBIYWpkYSA8YW5kcnplai5oYWpkYUBpbnRlbC5jb20+Cj4+Pj4+
IENjOiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4+Pj4+IENjOiBS
b2JlcnQgRm9zcyA8cm9iZXJ0LmZvc3NAbGluYXJvLm9yZz4KPj4+Pj4gQ2M6IExhdXJlbnQgUGlu
Y2hhcnQgPExhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPj4+Pj4gQ2M6IEpvbmFz
IEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPj4+Pj4gQ2M6IEplcm5laiBTa3JhYmVjIDxqZXJu
ZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4+Pj4+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGlu
dXguaWU+Cj4+Pj4+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4+Pj4+IENj
OiBLaXNob24gVmlqYXkgQWJyYWhhbSBJIDxraXNob25AdGkuY29tPgo+Pj4+PiBDYzogVmlub2Qg
S291bCA8dmtvdWxAa2VybmVsLm9yZz4KPj4+Pj4gQ2M6IEtldmluIEhpbG1hbiA8a2hpbG1hbkBi
YXlsaWJyZS5jb20+Cj4+Pj4+IENjOiBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNv
bT4KPj4+Pj4gQ2M6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29v
Z2xlbWFpbC5jb20+Cj4+Pj4+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
Pj4+PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+Pj4+PiBDYzogR3Vp
ZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPj4+Pj4gVGVzdGVkLWJ5OiBMaXUgWWluZyA8
dmljdG9yLmxpdUBueHAuY29tPiAjIFJNNjcxOTEgRFNJIHBhbmVsIG9uIGkuTVg4bXEgRVZLCj4+
Pj4+IFNpZ25lZC1vZmYtYnk6IExpdSBZaW5nIDx2aWN0b3IubGl1QG54cC5jb20+Cj4+Pj4+IC0t
LQo+Pj4+PiB2MS0+djI6Cj4+Pj4+ICogVXNlIEJJVFNfUEVSX0JZVEUgbWFjcm8uIChBbmRyemVq
KQo+Pj4+PiAqIERyb3AgZHNpIGFyZ3VtZW50IGZyb20gdWkyYmMoKSBpbiBud2wtZHNpLmMuCj4+
Pj4+Cj4+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyAgICAgICAgICAgICAg
ICAgfCAxMiArKysrKy0tLS0tLS0KPj4+Pj4gIGRyaXZlcnMvcGh5L2FtbG9naWMvcGh5LW1lc29u
LWF4Zy1taXBpLWRwaHkuYyAgICB8ICAzICsrLQo+Pj4+PiAgZHJpdmVycy9waHkvcGh5LWNvcmUt
bWlwaS1kcGh5LmMgICAgICAgICAgICAgICAgIHwgIDQgKystLQo+Pj4+PiAgZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jIHwgIDMgKystCj4+Pj4+ICBpbmNs
dWRlL2xpbnV4L3BoeS9waHktbWlwaS1kcGh5LmggICAgICAgICAgICAgICAgfCAgMiArLQo+Pj4+
PiAgNSBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPj4+
Pj4KPj4+IFsuLi5dCj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYW1sb2dpYy9w
aHktbWVzb24tYXhnLW1pcGktZHBoeS5jIGIvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24t
YXhnLW1pcGktZHBoeS5jCj4+Pj4+IGluZGV4IGNkMjMzMmJmMGUzMS4uZmRiZDY0YzAzZTEyIDEw
MDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9hbWxvZ2ljL3BoeS1tZXNvbi1heGctbWlwaS1k
cGh5LmMKPj4+Pj4gKysrIGIvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhnLW1pcGkt
ZHBoeS5jCj4+Pj4+IEBAIC05LDYgKzksNyBAQAo+Pj4+PiAgCj4+Pj4+ICAjaW5jbHVkZSA8bGlu
dXgvYml0ZmllbGQuaD4KPj4+Pj4gICNpbmNsdWRlIDxsaW51eC9iaXRvcHMuaD4KPj4+Pj4gKyNp
bmNsdWRlIDxsaW51eC9iaXRzLmg+Cj4+Pj4+ICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4+Pj4+
ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPj4+Pj4gICNpbmNsdWRlIDxsaW51eC9pby5oPgo+
Pj4+PiBAQCAtMjUwLDcgKzI1MSw3IEBAIHN0YXRpYyBpbnQgcGh5X21lc29uX2F4Z19taXBpX2Rw
aHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+Pj4+PiAgCQkgICAgIChESVZfUk9VTkRfVVAo
cHJpdi0+Y29uZmlnLmNsa196ZXJvLCB0ZW1wKSA8PCAxNikgfAo+Pj4+PiAgCQkgICAgIChESVZf
Uk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa19wcmVwYXJlLCB0ZW1wKSA8PCAyNCkpOwo+Pj4+PiAg
CXJlZ21hcF93cml0ZShwcml2LT5yZWdtYXAsIE1JUElfRFNJX0NMS19USU0xLAo+Pj4+PiAtCQkg
ICAgIERJVl9ST1VORF9VUChwcml2LT5jb25maWcuY2xrX3ByZSwgdGVtcCkpOwo+Pj4+PiArCQkg
ICAgIERJVl9ST1VORF9VUChwcml2LT5jb25maWcuY2xrX3ByZSwgQklUU19QRVJfQllURSkpOwo+
Pj4+PiAgCj4+Pj4+ICAJcmVnbWFwX3dyaXRlKHByaXYtPnJlZ21hcCwgTUlQSV9EU0lfSFNfVElN
LAo+Pj4+PiAgCQkgICAgIERJVl9ST1VORF9VUChwcml2LT5jb25maWcuaHNfZXhpdCwgdGVtcCkg
fAo+Pj4+Cj4+Pj4gSSdsbCB0cnkgdG8gcnVuIGEgdGVzdCwgY3VycmVudGx5IHRoZSBjYWxjdWxh
dGlvbiBnaXZlcyAyLCBzbyB0aGlzIHdvdWxkIGdpdmUgMS4KPj4+Cj4+PiBUaGUgQW1sb2dpYyB2
ZW5kb3IgY29kZSBkb2VzOgo+Pj4KPj4+IC8qID44KnVpICovCj4+PiAjZGVmaW5lIERQSFlfVElN
RV9DTEtfUFJFKHVpKSAgICAgICAoMTAgKiB1aSkKPj4KPj4gVGhpcyBsb29rcyBsaWtlIGNsa19w
cmUgdGltZSBpcyAxMCAqIHVpLCB3aGljaCBtYXRjaGVzIHRoZSBjb21tZW50Cj4+ICc+OCp1aScg
LSBsb25nZXIgdGltZSA4ICogdWkuCj4+Cj4+Pgo+Pj4gdF91aSA9IGxjZF90aW1pbmcuYml0X3Jh
dGUKPj4+Cj4+PiB0X3VpID0gKDEwMDAwMDAgKiAxMDApIC8gKGRzaV91aSAvIDEwMDApOyAvKjEw
MCpucyAqLwo+Pj4gdGVtcCA9IHRfdWkgKiA4OyAvKiBsYW5lX2J5dGUgY3ljbGUgdGltZSAqLwo+
Pgo+PiBJZiBJIHJlYWQgY29ycmVjdGx5LCB0aGlzIHRlbXAgaW4gdmVuZG9yIGNvZGUgaXMgVHhC
eXRlQ2xrSFMgcGVyaW9kCj4+IHRpbWUgaW4gcGljb3NlY29uZHMuIFNvLi4uCj4+Cj4+Pgo+Pj4g
ZHBoeS0+Y2xrX3ByZSA9ICgoRFBIWV9USU1FX0NMS19QUkUodF91aSkgKyB0ZW1wIC0gMSkgLyB0
ZW1wKSAmIDB4ZmY7Cj4+Cj4+IElJVUMsICdkcGh5LT5jbGtfcHJlJyBlc3NlbnRpYWxseSBtZWFu
cyBkcGh5LT5jbGtfcHJlID0gRElWX1JPVU5EX1VQKDEwCj4+ICogdWksIHRlbXApLCB0aGF0IGlz
LCB0aGUgdGltZSBmb3IgZHBoeS0+Y2xrX3ByZSBpcyBubyBsZXNzIHRoYW4gCj4+IDEwICogdWku
ICBUaGUgRC1QSFkgc3BlYyAodjEuMikncyBzYXlpbmcgaXMgdGhhdCB0aGUgbWluaW11bSB0aW1l
IGZvcgo+PiBkcGh5LT5jbGtfcHJlIGlzIDggKiB1aS4gIFNvLCBpdCBsb29rcyBsaWtlIG1lc29u
IGlzIHN0cmljdGVyIHRoYW4gdGhlCj4+IHNwZWMuCj4+Cj4+IEhvd2V2ZXIsIHRoZSB2ZW5kb3Ig
Y29kZSBkb2Vzbid0IHNlZW0gdG8gbWF0Y2ggdGhlIGN1cnJlbnQgbWVzb24gZHJpdmVyCj4+IGlt
cGxlbWVudGF0aW9uLiAgVGhlIHRlbXAgaW4gZHJpdmVyIGNvZGUgaXMgYWxzbyBUeEJ5dGVDbGtI
UyBwZXJpb2QKPj4gdGltZSBpbiBwaWNvc2Vjb25kcy4gQW5kLCB3aXRob3V0IHRoaXMgcGF0Y2gs
IEknbSBhc3N1bWluZyB0aGF0Cj4+IHByaXYtPmNvbmZpZy5jbGtfcHJlIGlzIDgwMDAuICBTbywg
aXQgbG9va3MgbGlrZSBNSVBJX0RTSV9DTEtfVElNMSBpcwo+PiBzZXQgdG8gRElWX1JPVU5EX1VQ
KDgwMDAsIHRlbXApLiAgVGhpcyAnODAwMCcgZG9lcyBfbm90XyByZWZsZWN0Cj4+ICcxMCAqIHVp
Jy4KPj4KPj4gU28sIDMgY2hvaWNlcyBmb3IgbWVzb24sIHVwIHRvIHlvdToKPj4gMSkgSWYgbWVz
b24gcmVhbGx5IHJlcXVpcmVzIHRoZSB0aW1lIGZvciBjbGtfcHJlIG5vIGxlc3MgdGhhbgo+PiAx
MCAqIHVpLCB0aGVuIHN0aCBsaWtlIERJVl9ST1VORF9VUCgxMCwgQklUU19QRVJfQllURSkgY2Fu
IGJlIHVzZWQuCj4+IDIpIElmIG1lc29uIGZvbGxvd3MgdGhlIHNwZWMncyBtaW5pbXVtIHZhbHVl
LCB0aGVuIHRoZSBwYXRjaCBkb2VzCj4+IHRoaW5ncyByaWdodCBmb3IgbWVzb24uCj4+IDMpIEZv
cmNlIHRvIHVzZSA4MDAwIHBpY29zZWNvbmRzIGZvciBjbGtfcHJlLCB0aGF0IGlzLCB1c2Ugc3Ro
IGxpa2UKPj4gRElWX1JPVU5EX1VQKDgwMDAsIHRlbXApLgo+Pgo+PiBXaXRoIHRoaXMgcGF0Y2gg
YXBwbGllZCwgZG8geW91IHNlZSBhbnkgZGlzcGxheSBhcnRpZmFjdHMgYnkgdmlzdWFsCj4+IGNo
ZWNrPyBPciBldmVuIGNoZWNrZWQgc2lnbmFscyB0aHJvdWdoIERTSSBhbmFseXplcj8KPiAKPiBU
aGFua3MgZm9yIHRoZSBmZWVkYmFjaywgSSdtIGN1cnJlbnRseSB0cnlpbmcgdG8gcHV0IHRoZSBz
ZXR1cCBiYWNrIHRvCj4gcnVuIGEgdGVzdCB3aXRoIHRoaXMgY2hhbmdlLgoKSSBkb24ndCBzZWUg
YW55IHZpc2libGUgYXJ0aWZhY3RzLgoKUmV2aWV3ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuYXJt
c3Ryb25nQGJheWxpYnJlLmNvbT4gIyBmb3IgcGh5LW1lc29uLWF4Zy1taXBpLWRwaHkuYwpUZXN0
ZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4gIyBmb3IgcGh5
LW1lc29uLWF4Zy1taXBpLWRwaHkuYwoKVGhhbmtzLAoKPiAKPiBOZWlsCj4gCj4+Cj4+IFJlZ2Fy
ZHMsCj4+IExpdSBZaW5nCj4+Cj4+Pgo+Pj4gUEhZIFJlZ2lzdGVycyBvbmx5IHNheXM6Cj4+PiBN
SVBJX0RTSV9DTEtfVElNMQlbMzE6MF0KPj4+IDc6MCAJUi9XCTAJIHRDTEtfUFJFCj4+Pgo+Pj4+
IE5laWwKPj4+Pgo+Pj4KPj4+IFsuLi5dCj4+Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
