Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC67AD1680C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 10:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjDGPY2SbwCCunPyjznSSPEmOIYzrjon0Ef5noWJCss=; b=wdCrIxFDqJ50BR
	5NkSSOdr459/GoB049mAMatX4Vz3EKRHTXNJdb4y8OS1qecIZSZJBlplgq4E9qMfMFSemxf/Mc5hx
	R1WuJeFd/jQebCkXgChOC6nNDdIZ/hzC8H1qGr+qqVSmPS7k+4IAzgUdoRVPXC1Sja+goDHBkwY6p
	iOJ92KIZyVl6SHDR+EWIkFXHf0U7M2DIebgn5CRAZgNB1TF+VSax2TtKSmEzAE+xrdLitwuUvvgAU
	apxHmPponaTigkzok0zS+DtlAfC51Bje9gwbGVOQMIxrFX3nbjrIfsMrBIKCDCdAN5c3Oi5tZcjsC
	ck+ytRrpHvufVmEM4UGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veA6B-00000002AAQ-3VdP;
	Fri, 09 Jan 2026 10:52:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veA66-00000002A7H-2MUE;
	Fri, 09 Jan 2026 10:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dvijv8uUpBbSdpjrMPdUmY9MqFhbG/70BQyKWf7xOy0=; b=F2KAnBkXKhmjoyFSFhoLcIB1UY
	YlCl4a0i0k1Wkn2OjubQVUv8d7+hFouwIXlum5Ezf2sRdpqCkY8IyXh0PAwQcPZ1lirsjgoijnPkg
	1pnRsYycmZl6sPlJvGAOtI1QTl0QWfPUJELoUVkF8jbjK8Wep1cjWOkuH7JZMtaCOaNo6IdJTW020
	vI9Ar+E61U5+tYIOtA9SmMJTfulOUDICm70jtb7QlkyM6HWXmtRrm8KoQAvx2lzFj1/5ES7gMncuS
	v+NyVWPBuD/5gg0Uxq4wJLYzLzWu54FHveuh1SX8T+XioojSCo6JGN0KAfVhBjDbb2CWVbEw5wbk0
	kb4WV4Dw==;
Received: from i53875b6d.versanet.de ([83.135.91.109] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veA5t-001cZG-Ra; Fri, 09 Jan 2026 11:51:50 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Chaoyi Chen <kernel@airkyi.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 8/9] drm/rockchip: Drop ROCKCHIP_IOMMU depend for DRM_ROCKCHIP
Date: Fri, 09 Jan 2026 11:51:49 +0100
Message-ID: <2629918.TLnPLrj5Ze@diego>
In-Reply-To: <4e01f121-1912-4897-98e8-cb543a501707@rock-chips.com>
References: <20251106020632.92-1-kernel@airkyi.com> <4072834.X9hSmTKtgW@phil>
 <4e01f121-1912-4897-98e8-cb543a501707@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_025202_652665_BB302895 
X-CRM114-Status: GOOD (  25.62  )
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

SGksCgpBbSBGcmVpdGFnLCA5LiBKYW51YXIgMjAyNiwgMDI6MjY6MDAgTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPiBPbiAxLzkvMjAyNiAzOjAzIEFN
LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiA+IEFtIERvbm5lcnN0YWcsIDYuIE5vdmVtYmVyIDIw
MjUsIDAzOjA2OjMxIE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ2hhb3lp
IENoZW46Cj4gPj4gRnJvbTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29t
Pgo+ID4+Cj4gPj4gT24gdGhlIFJLMzUwNiBwbGF0Zm9ybSwgdGhlcmUgaXMgbm8gaW9tbXUgaGFy
ZHdhcmUuIEFuZCBldmVuIG9uCj4gPj4gcGxhdGZvcm0gdGhhdCBoYXZlIGlvbW11IGhhcmR3YXJl
LCBpdCBzaG91bGQgYmUgcG9zc2libGUgdG8gdXNlCj4gPj4gVk9QIHdpdGhvdXQgZW5hYmxpbmcg
aW9tbXUuIEluIHRoaXMgY2FzZSwgYSBjb250aWd1b3VzIG1lbW9yeQo+ID4+IHNwYWNlIGxpa2Ug
Q01BIHNob3VsZCBiZSB1c2VkLgo+ID4+Cj4gPj4gU28gdGhpcyBwYXRjaCByZW1vdmVzIHRoZSBk
ZXBlbmRlbmN5IG9uIFJPQ0tDSElQX0lPTU1VLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQ2hh
b3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+ID4+IC0tLQo+ID4+ICBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyB8IDMgKystCj4gPj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9LY29uZmlnCj4gPj4gaW5kZXggYjdiMDI1ODE0ZTcyLi5hMDU2ZDQxOTE5MGMgMTAwNjQ0Cj4g
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPiA+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+ID4+IEBAIC0xLDcgKzEsOCBAQAo+ID4+ICAj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKPiA+PiAgY29uZmlnIERSTV9S
T0NLQ0hJUAo+ID4+ICAJdHJpc3RhdGUgIkRSTSBTdXBwb3J0IGZvciBSb2NrY2hpcCIKPiA+PiAt
CWRlcGVuZHMgb24gRFJNICYmIFJPQ0tDSElQX0lPTU1VCj4gPj4gKwlkZXBlbmRzIG9uIERSTQo+
ID4+ICsJZGVwZW5kcyBvbiBST0NLQ0hJUF9JT01NVSB8fCAhUk9DS0NISVBfSU9NTVUKPiA+IAo+
ID4gSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCB0aGlzIHllcytubyBsaW5lIDotKQo+ID4gCj4g
PiBDYW4ndCB5b3UganVzdAo+ID4gLSBkcm9wIHRoZSBkZXBlbmRlbmN5IGFsdG9nZXRoZXIKPiA+
IG9yCj4gPiAtIGRvIGEgZGVwZW5kcyBvbiBST0NLQ0hJUF9JT01NVSBpZiBBUk02NAo+ID4gCj4g
Pgo+IAo+IFRoaXMgdHJpY2sgaXMgY2FsbGVkIG9wdGlvbmFsLWRlcGVuZGVuY2llcyBbMF0uIElu
IGFkZGl0aW9uIHRvIHRoZSAKPiBmYW1pbGlhciBkZXBlbmRzIG9uIFJPQ0tDSElQX0lPTU1VIHBh
cnQsIHRoZSBuZXdseSBhZGRlZCAhUk9DS0NISVBfSU9NTVUKPiBlbnN1cmVzIHRoYXQgRFJNX1JP
Q0tDSElQIGNhbiBzdGlsbCBiZSBidWlsdCBldmVuIHdoZW4gUk9DS0NISVBfSU9NTVUKPiBpcyBu
b3QgYnVpbGQuCj4gCj4gWzBdOiBodHRwczovL2RvY3Mua2VybmVsLm9yZy9rYnVpbGQva2NvbmZp
Zy1sYW5ndWFnZS5odG1sI29wdGlvbmFsLWRlcGVuZGVuY2llcwoKdGhhbmtzIGEgbG90IGZvciBw
b2ludGluZyBtZSB0byB0aGlzIG5pZnR5IGZlYXR1cmUgOi0pCgpIZWlrbwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
