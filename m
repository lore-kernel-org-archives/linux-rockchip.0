Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7441BCD3442
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 May 2026 11:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9C01DR5A4eFDq/BLEiBMAR/tXrLVCWdMMj/SY+B9TQ=; b=e+ekjrBKrirTzS
	lM453Z8aCHfBJuw0qrGhx8H2/LLkIu4VuNaypsjIGQ0PaD/z5XJwX3blGTUGivro16ssRrAeNjwTI
	+NjceN9xA2D0WeCI4YuYN83TV+BNhEc+O8s/HIctObe7ndAQccWnQLlPZsByRMWXoj6RO5ktbOi3D
	immJSoEom3dKNoo0O2ET09lSyk7dWt9cIDbAeCfuVkbetn/M9cU5CjHC/BWIcHs9G3OyOpK9lYp7/
	gY5oh53kNFxQDv4M/vDBy5sLmz8jZ3Mik3eH1o6mO+pIl+nI1pbaNkJrJSJ30t0MJADZVEoFNQrIp
	YvA4RASZJ8jK81zsYZaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKx60-00000003g3u-2hvt;
	Thu, 07 May 2026 11:40:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKx5x-00000003g2b-0ymo;
	Thu, 07 May 2026 11:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WLd8tadd6RgVQITSoROvnyWzRDgtw6k0fr0kVxewnoo=; b=uZP5i3W2+KimMtmYaSf/uCvKZV
	KEyBd0w83gRrX+PTidaEPIilv/qhe62UYI2lAj/K0byTUqyJbwrGo2gCcbCK4LPkVtg6wPs5ftYjX
	ozIbvqSh9uiA3fJ7f0VEp4u7jKiOczy7T+68cEov9WxUeFFsjwT+ZB3nFSwLA6tOoN8tXLo6FVRtU
	QGTTbDH6fkRLN7I/FE/0hdXG3WlkRH5cabBBT6Ik3cyVaXKP2AIYfax4nTSUkKy3LdLnNDKF2StmK
	NdX1WdSgOYlF8/0gtt7OVnSyZ7jSgNyGIsqgHIa8XFIZ0Su/0YfPFQBRuI5NDdMq9IEmEASsswJYs
	o+u0eUSQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 01/10] dt-bindings: display: rockchip: analogix-dp: Expand
 clock-names "hclk" for the third clock
Date: Thu, 07 May 2026 13:40:09 +0200
Message-ID: <6496645.8F6SAcFxjW@phil>
In-Reply-To: <20260507112948.1115003-2-damon.ding@rock-chips.com>
References: <20260507112948.1115003-1-damon.ding@rock-chips.com>
 <20260507112948.1115003-2-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_044045_270071_E699B198 
X-CRM114-Status: GOOD (  14.46  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFtb24sCgpBbSBEb25uZXJzdGFnLCA3LiBNYWkgMjAyNiwgMTM6Mjk6MzkgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+IFRoZSBSSzM1ODggZURQ
IGNvbnRyb2xsZXIgbmVlZHMgdGhlIHZpZGVvIGRhdGFwYXRoIGNsb2NrICJoY2xrIiB0byB3b3Jr
Cj4gd2VsbC4gUHJldmlvdXNseSwgaXQgd29ya3Mgd2l0aG91dCBleHBsaWNpdGx5IGFkZGluZyB0
aGlzIGNsb2NrIGJlY2F1c2UKPiB0aGUgJ3JvY2tjaGlwLHZvLWdyZiA9IDwmdm8xX2dyZj4nIHBy
b3BlcnR5IGltcGxpY2l0bHkgZW5hYmxlcyBIQ0xLX1ZPMS4KPgo+IEZpeGVzOiBmODU1MTQ2MjYz
YjEgKCJkdC1iaW5kaW5nczogZGlzcGxheTogcm9ja2NoaXA6IGFuYWxvZ2l4LWRwOiBBZGQgc3Vw
cG9ydCBmb3IgUkszNTg4IikKPiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5n
QHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAuLi4vYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9y
b2NrY2hpcCxhbmFsb2dpeC1kcC55YW1sICAgICAgIHwgNCArKystCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsYW5h
bG9naXgtZHAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L3JvY2tjaGlwL3JvY2tjaGlwLGFuYWxvZ2l4LWRwLnlhbWwKPiBpbmRleCBkOTliMjNiODhjYzUu
LmQyYmM4NjM2YjYyNiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxhbmFsb2dpeC1kcC55YW1sCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2No
aXAsYW5hbG9naXgtZHAueWFtbAo+IEBAIC0yNiw3ICsyNiw5IEBAIHByb3BlcnRpZXM6Cj4gICAg
ICBpdGVtczoKPiAgICAgICAgLSBjb25zdDogZHAKPiAgICAgICAgLSBjb25zdDogcGNsawo+IC0g
ICAgICAtIGNvbnN0OiBncmYKPiArICAgICAgLSBlbnVtOgo+ICsgICAgICAgICAgLSBncmYKPiAr
ICAgICAgICAgIC0gaGNsawoKYXJlIHlvdSBzdXJlIGFib3V0IHRoYXQ/CgpUaGUgZWRwIHVzZXMg
dGhlIHZvMS1ncmYgLSBzbyB3aGF0IGVuYWJsZXMgaXRzIGNsb2NrPwpGb3IgZXhhbXBsZSB0aGUg
aGRtaSBjb250cm9sbGVycyBvbiByazM1ODggYWxzbyB1c2UgdGhlIHZvMS1ncmYgYW5kCmV4cGxp
Y2l0bHkgaGFuZGxlIHRoYXQgY2xvY2suCgpTbyB3aG8gZG9lcyBpdCBmb3IgdGhlIGVEUD8KCgpI
ZWlrbwoKPiAgCj4gICAgcG93ZXItZG9tYWluczoKPiAgICAgIG1heEl0ZW1zOiAxCj4gCgoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
