Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BD90C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 09:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qst6xrX18ebiWAbBs8bqpLH8GUSu156h2I1eNwpFkpQ=; b=0fkUolYcOfFFz+AoAKB6WSt19D
	0/G5/cy1uhkrQn0CEaOYTD/WT35SHUpdwUrx+v3d4IRR/yb1HuOeAlxvciP9zwbzlhXg2+W7jsnad
	FKmLjDH9NOjOlHovYPNxauf8TzcyHFPJwSwqPOmz6wWLyjNHCUueVzyiZlhco6dqFPUb7GZ8w1HpR
	buQ7HE0MRHPu2s5Go/bVLRJdWhhoRpave0/P99zMCZk2Tp4vUh3ZQSdIZOECCcAhKUody0yCwwKGC
	ZlA23zk45JjnaPSjxt7ZLeAymdNuqrouA5pc3jD5j1O38HIvymD3gqqBs2NjkXCUrpz/MIAvQKri8
	K/0e8I2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA70a-004Txs-QO; Wed, 19 Jan 2022 09:12:00 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA70V-004TsT-AG
 for linux-rockchip@lists.infradead.org; Wed, 19 Jan 2022 09:11:57 +0000
Received: by mail-wm1-x32b.google.com with SMTP id
 az27-20020a05600c601b00b0034d2956eb04so4422520wmb.5
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jan 2022 01:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=subject:from:to:cc:references:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C4Zc3pg97QhRBnCL31NpgyhTD5rJxIoNyw+4jb4dhT4=;
 b=dUWihDw/VMRg6sA/GD788IM8rAYRtmQWSJS0gFREajow6TJlqI3HWG9LdfWCkdehns
 NruAxdRRI2X+Uk+gUUPoKPdOTqJK+YDK5CJSoGRCB/3C7H1PyEBKYLOlsvC5+ZJ/iN7w
 sLVmiGGMz+7vD7j4OmVYXcymVoKHfPrIaHnZ3daxol1b0YtUcOYxwHo6PwsMN0R4vXH8
 DTRh4zjjMkj5ajGAHKUT6HdO38ZLsNatcyXDwdK57z8EjwHMEFKcVrpf7Ubb/Ad3YD34
 JlNxxTB2K9aFdD9aoaNV9IX1b4N+K7GLAEmJpqEeXp5G6u+ccu8PtuiTHp4MBNzSnSiB
 SL1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:cc:references:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=C4Zc3pg97QhRBnCL31NpgyhTD5rJxIoNyw+4jb4dhT4=;
 b=HFHbs4esPACe6RAkXah2QDei2Te7CWAPyJbyogMm3+Rv4tHAA492F/WkrO8a6ilCdR
 h2P0fPqmkLUzLM7bj0xpmSDvXRf3nJMbgFIoAZTFcKadpi9Ke4fYUvO3x/F2dUo4qZjA
 fo60mgVacpESJz1cWbeJR96yYUCKzTrAbQuxONd9Yz3F8EnEd3LWBPqgsaSWClb2ZEWV
 P0Qd2PwawNhImQ+Y0XJ8+pmSdrbk47te+yJYzKmjF0H63gfma6+3pgd72Kz3FCNDggJX
 vONuKhC3nWZ9jy2/bplKUkW7GZCMoagtrZbDsjuFlZZ/I6+O02GKMZe3AC9/KhI3Ec1h
 a3Vw==
X-Gm-Message-State: AOAM53147zz72qLtTDDcLCHwwjoLXPDl/sOH5cIG7CwqDso/ERRaVJxv
 y+JvnBqHVW5F2D2Xs39eRLDIXQ==
X-Google-Smtp-Source: ABdhPJz+1YRs3ncIGZ6eu44qYuu3hW1X9+WEUA6N5BCKeE+8wCtHHZrHR1Q6yh29u8Ny4K2ju8jeqw==
X-Received: by 2002:a5d:46c6:: with SMTP id g6mr27435133wrs.322.1642583513901; 
 Wed, 19 Jan 2022 01:11:53 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:d394:97d0:bc02:3846?
 ([2001:861:44c0:66c0:d394:97d0:bc02:3846])
 by smtp.gmail.com with ESMTPSA id c8sm5634596wmq.34.2022.01.19.01.11.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jan 2022 01:11:53 -0800 (PST)
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
Organization: Baylibre
Message-ID: <5a638561-c704-49e7-1fed-70e26fedb186@baylibre.com>
Date: Wed, 19 Jan 2022 10:11:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <28e3f723-daf0-b3c5-ee10-519c4cabfe17@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_011155_395598_8C8AB9AD 
X-CRM114-Status: GOOD (  23.88  )
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

T24gMTkvMDEvMjAyMiAwOTo0MCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gSGksCj4gCj4gT24g
MTkvMDEvMjAyMiAwMzozNywgTGl1IFlpbmcgd3JvdGU6Cj4+IFRoZSBELVBIWSBzcGVjaWZpY2F0
aW9uICh2MS4yKSBleHBsaWNpdGx5IG1lbnRpb25zIHRoYXQgdGhlIFQtQ0xLLVBSRQo+PiBwYXJh
bWV0ZXIncyB1bml0IGlzIFVuaXQgSW50ZXJ2YWwoVUkpIGFuZCB0aGUgbWluaW11bSB2YWx1ZSBp
cyA4LiAgQWxzbywKPj4ga2VybmVsIGRvYyBvZiB0aGUgJ2Nsa19wcmUnIG1lbWJlciBvZiBzdHJ1
Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeQo+PiBtZW50aW9ucyB0aGF0IGl0IHNob3Vs
ZCBiZSBpbiBVSS4gIEhvd2V2ZXIsIHRoZSBkcGh5IGNvcmUgZHJpdmVyIHdyb25nbHkKPj4gc2V0
cyAnY2xrX3ByZScgdG8gODAwMCwgd2hpY2ggc2VlbXMgdG8gaGludCB0aGF0IGl0J3MgaW4gcGlj
b3NlY29uZHMuCj4+IEFuZCwgdGhlIGtlcm5lbCBkb2Mgb2YgdGhlICdjbGtfcHJlJyBtZW1iZXIg
d3JvbmdseSBzYXlzIHRoZSBtaW5pbXVtIHZhbHVlCj4+IGlzICc4IFVJJywgaW5zdGVhZCBvZiA4
Lgo+Pgo+PiBTbywgbGV0J3MgZml4IGJvdGggdGhlIGRwaHkgY29yZSBkcml2ZXIgYW5kIHRoZSBr
ZXJuZWwgZG9jIG9mIHRoZSAnY2xrX3ByZScKPj4gbWVtYmVyIHRvIGNvcnJlY3RseSByZWZsZWN0
IHRoZSBULUNMSy1QUkUgcGFyYW1ldGVyJ3MgdW5pdCBhbmQgdGhlIG1pbmltdW0KPj4gdmFsdWUg
YWNjb3JkaW5nIHRvIHRoZSBELVBIWSBzcGVjaWZpY2F0aW9uLgo+Pgo+PiBJJ20gYXNzdW1pbmcg
dGhhdCBhbGwgaW1wYWN0ZWQgY3VzdG9tIGRyaXZlcnMgc2hhbGwgcHJvZ3JhbSB2YWx1ZXMgaW4K
Pj4gVHhCeXRlQ2xrSFMgY3ljbGVzIGludG8gaGFyZHdhcmUgZm9yIHRoZSBULUNMSy1QUkUgcGFy
YW1ldGVyLiAgVGhlIEQtUEhZCj4+IHNwZWNpZmljYXRpb24gbWVudGlvbnMgdGhhdCB0aGUgZnJl
cXVlbmN5IG9mIFR4Qnl0ZUNsa0hTIGlzIGV4YWN0bHkgMS84Cj4+IHRoZSBIaWdoLVNwZWVkKEhT
KSBiaXQgcmF0ZShlYWNoIEhTIGJpdCBjb25zdW1lcyBvbmUgVUkpLiAgU28sIHJlbGV2YW50Cj4+
IGN1c3RvbSBkcml2ZXIgY29kZSBpcyBjaGFuZ2VkIHRvIHByb2dyYW0gdGhvc2UgdmFsdWVzIGFz
Cj4+IERJVl9ST1VORF9VUChjZmctPmNsa19wcmUsIEJJVFNfUEVSX0JZVEUpLCB0aGVuLgo+Pgo+
PiBOb3RlIHRoYXQgSSd2ZSBvbmx5IHRlc3RlZCB0aGUgcGF0Y2ggd2l0aCBSTTY3MTkxIERTSSBw
YW5lbCBvbiBpLk1YOG1xIEVWSy4KPj4gSGVscCBpcyBuZWVkZWQgdG8gdGVzdCB3aXRoIG90aGVy
IGkuTVg4bXEsIE1lc29uIGFuZCBSb2NrY2hpcCBwbGF0Zm9ybXMsCj4+IGFzIEkgZG9uJ3QgaGF2
ZSB0aGUgaGFyZHdhcmVzLgo+Pgo+PiBGaXhlczogMmVkODY5OTkwZTE0ICgicGh5OiBBZGQgTUlQ
SSBELVBIWSBjb25maWd1cmF0aW9uIG9wdGlvbnMiKQo+PiBDYzogQW5kcnplaiBIYWpkYSA8YW5k
cnplai5oYWpkYUBpbnRlbC5jb20+Cj4+IENjOiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0Bi
YXlsaWJyZS5jb20+Cj4+IENjOiBSb2JlcnQgRm9zcyA8cm9iZXJ0LmZvc3NAbGluYXJvLm9yZz4K
Pj4gQ2M6IExhdXJlbnQgUGluY2hhcnQgPExhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNv
bT4KPj4gQ2M6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPj4gQ2M6IEplcm5laiBT
a3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4+IENjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAbGludXguaWU+Cj4+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4+
IENjOiBLaXNob24gVmlqYXkgQWJyYWhhbSBJIDxraXNob25AdGkuY29tPgo+PiBDYzogVmlub2Qg
S291bCA8dmtvdWxAa2VybmVsLm9yZz4KPj4gQ2M6IEtldmluIEhpbG1hbiA8a2hpbG1hbkBiYXls
aWJyZS5jb20+Cj4+IENjOiBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4KPj4g
Q2M6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5j
b20+Cj4+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+PiBDYzogTWF4aW1l
IFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+PiBDYzogR3VpZG8gR8O8bnRoZXIgPGFneEBz
aWd4Y3B1Lm9yZz4KPj4gVGVzdGVkLWJ5OiBMaXUgWWluZyA8dmljdG9yLmxpdUBueHAuY29tPiAj
IFJNNjcxOTEgRFNJIHBhbmVsIG9uIGkuTVg4bXEgRVZLCj4+IFNpZ25lZC1vZmYtYnk6IExpdSBZ
aW5nIDx2aWN0b3IubGl1QG54cC5jb20+Cj4+IC0tLQo+PiB2MS0+djI6Cj4+ICogVXNlIEJJVFNf
UEVSX0JZVEUgbWFjcm8uIChBbmRyemVqKQo+PiAqIERyb3AgZHNpIGFyZ3VtZW50IGZyb20gdWky
YmMoKSBpbiBud2wtZHNpLmMuCj4+Cj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2ku
YyAgICAgICAgICAgICAgICAgfCAxMiArKysrKy0tLS0tLS0KPj4gIGRyaXZlcnMvcGh5L2FtbG9n
aWMvcGh5LW1lc29uLWF4Zy1taXBpLWRwaHkuYyAgICB8ICAzICsrLQo+PiAgZHJpdmVycy9waHkv
cGh5LWNvcmUtbWlwaS1kcGh5LmMgICAgICAgICAgICAgICAgIHwgIDQgKystLQo+PiAgZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jIHwgIDMgKystCj4+ICBp
bmNsdWRlL2xpbnV4L3BoeS9waHktbWlwaS1kcGh5LmggICAgICAgICAgICAgICAgfCAgMiArLQo+
PiAgNSBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPj4K
Wy4uLl0KCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9hbWxvZ2ljL3BoeS1tZXNvbi1heGct
bWlwaS1kcGh5LmMgYi9kcml2ZXJzL3BoeS9hbWxvZ2ljL3BoeS1tZXNvbi1heGctbWlwaS1kcGh5
LmMKPj4gaW5kZXggY2QyMzMyYmYwZTMxLi5mZGJkNjRjMDNlMTIgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvcGh5L2FtbG9naWMvcGh5LW1lc29uLWF4Zy1taXBpLWRwaHkuYwo+PiArKysgYi9kcml2
ZXJzL3BoeS9hbWxvZ2ljL3BoeS1tZXNvbi1heGctbWlwaS1kcGh5LmMKPj4gQEAgLTksNiArOSw3
IEBACj4+ICAKPj4gICNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgo+PiAgI2luY2x1ZGUgPGxp
bnV4L2JpdG9wcy5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L2JpdHMuaD4KPj4gICNpbmNsdWRlIDxs
aW51eC9jbGsuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+PiAgI2luY2x1ZGUgPGxp
bnV4L2lvLmg+Cj4+IEBAIC0yNTAsNyArMjUxLDcgQEAgc3RhdGljIGludCBwaHlfbWVzb25fYXhn
X21pcGlfZHBoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4+ICAJCSAgICAgKERJVl9ST1VO
RF9VUChwcml2LT5jb25maWcuY2xrX3plcm8sIHRlbXApIDw8IDE2KSB8Cj4+ICAJCSAgICAgKERJ
Vl9ST1VORF9VUChwcml2LT5jb25maWcuY2xrX3ByZXBhcmUsIHRlbXApIDw8IDI0KSk7Cj4+ICAJ
cmVnbWFwX3dyaXRlKHByaXYtPnJlZ21hcCwgTUlQSV9EU0lfQ0xLX1RJTTEsCj4+IC0JCSAgICAg
RElWX1JPVU5EX1VQKHByaXYtPmNvbmZpZy5jbGtfcHJlLCB0ZW1wKSk7Cj4+ICsJCSAgICAgRElW
X1JPVU5EX1VQKHByaXYtPmNvbmZpZy5jbGtfcHJlLCBCSVRTX1BFUl9CWVRFKSk7Cj4+ICAKPj4g
IAlyZWdtYXBfd3JpdGUocHJpdi0+cmVnbWFwLCBNSVBJX0RTSV9IU19USU0sCj4+ICAJCSAgICAg
RElWX1JPVU5EX1VQKHByaXYtPmNvbmZpZy5oc19leGl0LCB0ZW1wKSB8Cj4gCj4gSSdsbCB0cnkg
dG8gcnVuIGEgdGVzdCwgY3VycmVudGx5IHRoZSBjYWxjdWxhdGlvbiBnaXZlcyAyLCBzbyB0aGlz
IHdvdWxkIGdpdmUgMS4KClRoZSBBbWxvZ2ljIHZlbmRvciBjb2RlIGRvZXM6CgovKiA+OCp1aSAq
LwojZGVmaW5lIERQSFlfVElNRV9DTEtfUFJFKHVpKSAgICAgICAoMTAgKiB1aSkKCnRfdWkgPSBs
Y2RfdGltaW5nLmJpdF9yYXRlCgp0X3VpID0gKDEwMDAwMDAgKiAxMDApIC8gKGRzaV91aSAvIDEw
MDApOyAvKjEwMCpucyAqLwp0ZW1wID0gdF91aSAqIDg7IC8qIGxhbmVfYnl0ZSBjeWNsZSB0aW1l
ICovCgpkcGh5LT5jbGtfcHJlID0gKChEUEhZX1RJTUVfQ0xLX1BSRSh0X3VpKSArIHRlbXAgLSAx
KSAvIHRlbXApICYgMHhmZjsKClBIWSBSZWdpc3RlcnMgb25seSBzYXlzOgpNSVBJX0RTSV9DTEtf
VElNMQlbMzE6MF0KNzowIAlSL1cJMAkgdENMS19QUkUKCj4gCj4gTmVpbAo+IAoKWy4uLl0KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
