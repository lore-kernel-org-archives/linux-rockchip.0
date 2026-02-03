Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F7FE8307A
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 10:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooIQg3iCRnYPUnU5t8PLr3uJvjvNvhYdULTcKj52Hi0=; b=EsKzHIW4nUBR1M
	q5LZpZDLJhxmDZVJzdgQqQpuM1o+sq92IBG1CWzRlsdG26k03EjE2RQB+biysgbsZ/KGuqR/oy+TK
	/Q+qpHwIj9GDwsOxc7IwkoijFa7oV6xlLQoew6VeQulFXgDDxeJ4N0PHuLu2pinCoIWiupCGsZ68l
	e+Rxpa1Wgc1zT+LH6CuQs+MmBFdFb6t5tQsMWseT+xSraxvjNM0zc9fUPIcw8uNTw4P15S0R1WYi0
	+5NDYhvlE3paYwjrEsnnDbqab0CtDeuv1J67tKa834a61jbOLEnlVo59IwwM6Nx/CNFzAtD2WWqCM
	+4alCr/oyRSv3SLZrpXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDOE-00000006S6W-22s5;
	Tue, 03 Feb 2026 10:12:10 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDOA-00000006S5E-0YPt
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Feb 2026 10:12:08 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 39F90C211C9;
	Tue,  3 Feb 2026 10:12:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0765E60728;
	Tue,  3 Feb 2026 10:12:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7C634119A8888;
	Tue,  3 Feb 2026 11:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770113521; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=kaxurYH+pSZiT55rBegAYaKI+3y+ZBTAe+5LlaGS5Qc=;
	b=soDBBG2bgMR8f2LbgIrwrYZOZzYJcpbUWVYRItBu2O1PQqna30rioLkNHxmoqkhNvMoty+
	if15F8cH7NZWu28bObiIMmjSXkf/cYBNUhfuBPoO76QtFqb1UQUMLfLDYevJwW/p1Kl7Lu
	+I3G0dxG+J6RhTJVOFeRfdIz+h/B9NG/cjr+thEijncqEHuyHKZUwYUANoWLQg294fKT8y
	TDLWlGQamhmukciHP6cONfNmeBtpmJaloA59+nUyzJxHvdVhD6JznC5KaF3u+dPqNNeDk7
	seesqobwi6ZjgtZhhsyn/aWw21kF+XuG5pXLFvYh5MYavI/tXRZlfn3DYpa2Fg==
Mime-Version: 1.0
Date: Tue, 03 Feb 2026 11:11:50 +0100
Message-Id: <DG58VCQ54OZA.2QHGR8JFIATY2@bootlin.com>
Subject: Re: [PATCH v8 05/18] drm/bridge: Move legacy bridge driver out of
 imx directory for multi-platform use
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <inki.dae@samsung.com>,
 <sw0312.kim@samsung.com>, <kyungmin.park@samsung.com>, <krzk@kernel.org>,
 <alim.akhtar@samsung.com>, <jingoohan1@gmail.com>,
 <p.zabel@pengutronix.de>, <hjc@rock-chips.com>, <heiko@sntech.de>,
 <andy.yan@rock-chips.com>, <dianders@chromium.org>,
 <m.szyprowski@samsung.com>, <jani.nikula@intel.com>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
 <dmitry.baryshkov@oss.qualcomm.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <20251217093321.3108939-6-damon.ding@rock-chips.com>
 <DG2S064XPGXL.1MQDAKWZEK50K@bootlin.com>
 <7256ecf9-b10b-428c-a1a6-e35e80a686ed@rock-chips.com>
 <9e1da672-a52d-4ec3-a20a-fe6f8ca15496@rock-chips.com>
In-Reply-To: <9e1da672-a52d-4ec3-a20a-fe6f8ca15496@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_021206_459461_6025748D 
X-CRM114-Status: GOOD (  21.63  )
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

SGVsbG8gRGFtb24sCgpPbiBUdWUgRmViIDMsIDIwMjYgYXQgMjozMSBBTSBDRVQsIERhbW9uIERp
bmcgd3JvdGU6Cj4gSGksCj4KPiBPbiAyLzIvMjAyNiAxMDo1NCBBTSwgRGFtb24gRGluZyB3cm90
ZToKPj4gSGkgTHVjYSwKPj4KPj4gT24gMS8zMS8yMDI2IDg6MzMgUE0sIEx1Y2EgQ2VyZXNvbGkg
d3JvdGU6Cj4+PiBIZWxsbyBEYW1vbiwgRG1pdHJ5LAo+Pj4KPj4+IE9uIFdlZCBEZWMgMTcsIDIw
MjUgYXQgMTA6MzMgQU0gQ0VULCBEYW1vbiBEaW5nIHdyb3RlOgo+Pj4+IEFzIHN1Z2dlc3RlZCBi
eSBEbWl0cnksIHRoZSBEUk0gbGVnYWN5IGJyaWRnZSBkcml2ZXIgY2FuIGJlIHB1bGxlZAo+Pj4+
IG91dCBvZiBpbXgvIHN1YmRpciBmb3IgbXVsdGktcGxhdGZvcm0gdXNlLiBUaGUgZHJpdmVyIGlz
IGFsc28gcmVuYW1lZAo+Pj4+IHRvIG1ha2UgaXQgbW9yZSBnZW5lcmljIGFuZCBzdWl0YWJsZSBm
b3IgcGxhdGZvcm1zIG90aGVyIHRoYW4gaS5NWC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERh
bW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4gU3VnZ2VzdGVkLWJ5OiBE
bWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4g
VGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4+
Pj4KPj4+PiAtLS0KPj4+Pgo+Pj4+IENoYW5nZXMgaW4gdjc6Cj4+Pj4gLSBSZW5hbWUgbGVnYWN5
LWJyaWRnZSB0byBvZi1kaXNwbGF5LW1vZGUtYnJpZGdlLgo+Pj4+IC0gUmVtb3ZlIHVubmVjZXNz
YXJ5IEFQSSBkcm1fYnJpZGdlX2lzX2xlZ2FjeSgpLgo+Pj4KPj4+IC4uLgo+Pj4KPj4+PiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL0tjb25maWcKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL0tjb25maWcKPj4+PiBAQCAtMjQ0LDYgKzI0NCwxNiBAQCBjb25maWcgRFJNX05Y
UF9QVE4zNDYwCj4+Pj4gwqDCoMKgwqDCoCBoZWxwCj4+Pj4gwqDCoMKgwqDCoMKgwqAgTlhQIFBU
TjM0NjAgZURQLUxWRFMgYnJpZGdlIGNoaXAgZHJpdmVyLgo+Pj4+Cj4+Pj4gK2NvbmZpZyBEUk1f
T0ZfRElTUExBWV9NT0RFX0JSSURHRQo+Pj4+ICvCoMKgwqAgdHJpc3RhdGUKPj4+PiArwqDCoMKg
IGRlcGVuZHMgb24gRFJNX0JSSURHRSAmJiBPRgo+Pj4+ICvCoMKgwqAgaGVscAo+Pj4+ICvCoMKg
wqDCoMKgIFRoaXMgaXMgYSBEUk0gYnJpZGdlIGltcGxlbWVudGF0aW9uIHRoYXQgdXNlcwo+Pj4+
IG9mX2dldF9kcm1fZGlzcGxheV9tb2RlCj4+Pj4gK8KgwqDCoMKgwqAgdG8gYWNxdWlyZSBkaXNw
bGF5IG1vZGUuCj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgIE5ld2VyIGRlc2lnbnMgc2hvdWxkIG5v
dCB1c2UgdGhpcyBicmlkZ2UgYW5kIHNob3VsZCB1c2UgcHJvcGVyCj4+Pj4gcGFuZWwKPj4+PiAr
wqDCoMKgwqDCoCBkcml2ZXIgaW5zdGVhZC4KPj4+Cj4+PiAiTmV3ZXIgZGVzaWducyBzaG91bGQg
bm90IHVzZSB0aGlzIGJyaWRnZSIsIGJ1dCBpbiBwYXRjaCA4IHlvdSBhcmUKPj4+IGludHJvZHVj
aW5nIGEgbmV3IHVzZSBvdCBkZXZtX2RybV9vZl9kaXNwbGF5X21vZGVfYnJpZGdlKCkuIFNob3Vs
ZG4ndCB5b3UKPj4+IGluc3RlYWQgInVzZSBwcm9wZXIgcGFuZWwgZHJpdmVyIGluc3RlYWQiIGlu
IHBhdGNoIDg/Cj4+Pgo+Pj4gQ2FuIHlvdSBwb2ludCB0byB0aGUgY29udmVyc2F0aW9uIHdoZXJl
IHRoZSBjb252ZXJzdGFpb24gd2hlcmUgRG1pdHJ5Cj4+PiBzdWdnZXN0ZWQgdGhpcyBjaGFuZ2U/
IE1heWJlIGl0IGFscmVhZHkgY29udGFpbnMgdGhlIGFuc3dlciB0byBteQo+Pj4gcXVzdGlvbi4g
QWxzbyBhZGRpbmcgYSBsaW5rIHRvIHRoYXQgY29udmVyc2F0aW9uIGluIHRoZSBjb21taXQgbWVz
c2FnZQo+Pj4gd291bGUgYmUgdXNlZnVsLgo+Pj4KPj4KPj4gRmlyc3Qgb2YgYWxsLCB0aGFua3Mg
Zm9yIHlvdXIgcmV2aWV3cyBvbiB0aGlzIHBhdGNoIHNlcmllcy4KPj4KPj4gbGluazogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLwo+PiB4d2VueWNzY2FsemRscHV4eXRvcmJpeXZlajNrN3B2
M2xoeHd0YWRpbHhxNjVpcHdzdkB4NXJ4bTUzdzVlMjIvCj4+Cj4+IEkgdGhpbmsgaXQgbWF5IGJl
IGEgbWlzbGVhZGluZyBpc3N1ZSBjYXVzZWQgYnkgZGlyZWN0bHkgY29weWluZyB0aGUKPj4gcHJl
dmlvdXMgS2NvbmZpZyBkZXNjcmlwdGlvbi4gTm93IHRoYXQgdGhlIG5ldwo+PiBkZXZtX2RybV9v
Zl9kaXNwbGF5X21vZGVfYnJpZGdlKCkgaGVscGVyIGhhcyBiZWVuIGFkZGVkLCBkcml2ZXJzIHVz
aW5nCj4+IHRoZSBwYW5lbC1icmlkZ2UgZnJhbWV3b3JrIGNhbiByZWx5IG9uIGl0IHRvIG1haW50
YWluIGNvbXBhdGliaWxpdHkgd2l0aAo+PiBsZWdhY3kgZGlzcGxheSBtb2RlIHBhcnNpbmcuCgpB
aCwgSSB0aGluayBJIGdvdCB0aGUgcG9pbnQ6IHRoZSBtb2RlIGRlc2NyaXB0aW9uIGluIGRldmlj
ZSB0cmVlIGlzIGxlZ2FjeSwKYnV0IHRoZSBkcml2ZXIgaXRzZWxmIGlzIG5vdCBsZWdhY3kgYW5k
IHdpbGwgYmUgY3VycmVudCB1bnRpbCB3ZSBuZWVkIHRvCnN1cHBvcnQgbGVnYWN5IGRldmljZSB0
cmVlLiBDb3JyZWN0PwoKSWYgdGhhdCdzIGNvcnJlY3QsIHRoaXMgcGF0Y2ggbG9va3MgT0sgdG8g
bWUgd2l0aCBhIG5ldyBLY29uZmlnIGhlbHAgdGV4dC4KCj4+IEl0IHdvdWxkIGJlIGJldHRlciB0
byB1cGRhdGUgdGhlIGNvbW1lbnQgYXMgZm9sbG93czoKPj4KPj4gVGhpcyBpcyBhIERSTSBicmlk
Z2UgaW1wbGVtZW50YXRpb24gdGhhdCB1c2VzIG9mX2dldF9kcm1fZGlzcGxheV9tb2RlIHRvCj4+
IGFjcXVpcmUgZGlzcGxheSBtb2RlLgo+Pgo+PiBJdCBleGlzdHMgZm9yIGNvbXBhdGliaWxpdHkg
d2l0aCBsZWdhY3kgZGlzcGxheSBtb2RlIHBhcnNpbmcsIGluIG9yZGVyCj4+IHRvIGNvbmZvcm0g
dG8gdGhlIHBhbmVsLWJyaWRnZSBmcmFtZXdvcmsuCj4+Cj4KPiBEbWl0cnksIHdoYXQncyB5b3Ug
dGFrZSBvbiB0aGlzPwoKRG1pdHJ5J3Mgb3BpbmlvbiB3b3VsZCBiZSBtdWNoIG1vcmUgcmVsZXZh
bnQgdGhhbiBtaW5lLiBJIGRvbid0IGtub3cgbXVjaApteXNlbGYgYWJvdXQgdGhpcyBkcml2ZXIu
CgpMdWNhCgotLQpMdWNhIENlcmVzb2xpLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJu
ZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
