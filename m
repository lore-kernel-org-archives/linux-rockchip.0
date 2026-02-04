Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED02E8B383
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 01:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQx4Lv96Ghks4+dzTJkIIizgJ/LtNYfzP7YQNOjFu48=; b=MkvJ/U7uiM2gmk
	e5swwSKw9LDv/XDaZ08+IT4ow2P5vTON9ICf23ixaIJydnmucq2UdOih2ljZoDK9YfmkBPBpuUdFX
	/6uwvFwLBBotg9FJR8UU+SkL5H9gMKtaQ6Krf7lTHSjIT4sfkBBCfpZup76B/IT9Us0gMLHkkTi0b
	RbBYnWsDARVsAwdDdRW5Ebaf1/dhTdjKHBHThaKBhDx1XQsYoa+9og6ncAgPYepqBsiQ+NRGl0r4w
	XF8rqZAkvfdOLJ9lOmQkv0wLsKgkfS03DOoVDh7P2YTSWtdl33/R800CsfvreN9Hhit9AkRCTC+nz
	iNrQJe9SeaeuuUMcQOaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnRPW-00000007fTs-0f5t;
	Wed, 04 Feb 2026 01:10:26 +0000
Received: from mail-m81126.xmail.ntesmail.com ([156.224.81.126])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnRPR-00000007fTR-2yY0;
	Wed, 04 Feb 2026 01:10:24 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 330509a94;
	Wed, 4 Feb 2026 09:10:05 +0800 (GMT+08:00)
Message-ID: <8c305f74-7fa7-4798-b1b3-e96544d962a1@rock-chips.com>
Date: Wed, 4 Feb 2026 09:09:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v8 05/18] drm/bridge: Move legacy bridge driver out of imx
 directory for multi-platform use
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org,
 dmitry.baryshkov@oss.qualcomm.com
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 heiko@sntech.de, andy.yan@rock-chips.com, dianders@chromium.org,
 m.szyprowski@samsung.com, jani.nikula@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251217093321.3108939-1-damon.ding@rock-chips.com>
 <20251217093321.3108939-6-damon.ding@rock-chips.com>
 <DG2S064XPGXL.1MQDAKWZEK50K@bootlin.com>
 <7256ecf9-b10b-428c-a1a6-e35e80a686ed@rock-chips.com>
 <9e1da672-a52d-4ec3-a20a-fe6f8ca15496@rock-chips.com>
 <DG58VCQ54OZA.2QHGR8JFIATY2@bootlin.com>
Content-Language: en-US
In-Reply-To: <DG58VCQ54OZA.2QHGR8JFIATY2@bootlin.com>
X-HM-Tid: 0a9c26330b5c03a3kunme492eb66731d02
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU1KQlYdTB0aGRgfSRlIHU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=PdtvcqXrIboBxzk6mrQxMh8OFknDSWkG8VsQx3P2oelUvZoMue4STcE+QfhITy/PiSZqtgQYee4sBfRWs14gKK0t47AQ3BXE7Nr3wCtaOHKY9WaYy5G//B0ZE4uGhgQl/TKkSj0hcrsxCsAcdXg1gNWy7TRdCUVD4w3MwfbcuEU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ro6VqhMxsjofyYNi+p5gticfSsMMFPfjQqGDTGdq+b8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_171022_352935_89D9D7E0 
X-CRM114-Status: GOOD (  21.59  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTHVjYSwKCk9uIDIvMy8yMDI2IDY6MTEgUE0sIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6Cj4gSGVs
bG8gRGFtb24sCj4gCj4gT24gVHVlIEZlYiAzLCAyMDI2IGF0IDI6MzEgQU0gQ0VULCBEYW1vbiBE
aW5nIHdyb3RlOgo+PiBIaSwKPj4KPj4gT24gMi8yLzIwMjYgMTA6NTQgQU0sIERhbW9uIERpbmcg
d3JvdGU6Cj4+PiBIaSBMdWNhLAo+Pj4KPj4+IE9uIDEvMzEvMjAyNiA4OjMzIFBNLCBMdWNhIENl
cmVzb2xpIHdyb3RlOgo+Pj4+IEhlbGxvIERhbW9uLCBEbWl0cnksCj4+Pj4KPj4+PiBPbiBXZWQg
RGVjIDE3LCAyMDI1IGF0IDEwOjMzIEFNIENFVCwgRGFtb24gRGluZyB3cm90ZToKPj4+Pj4gQXMg
c3VnZ2VzdGVkIGJ5IERtaXRyeSwgdGhlIERSTSBsZWdhY3kgYnJpZGdlIGRyaXZlciBjYW4gYmUg
cHVsbGVkCj4+Pj4+IG91dCBvZiBpbXgvIHN1YmRpciBmb3IgbXVsdGktcGxhdGZvcm0gdXNlLiBU
aGUgZHJpdmVyIGlzIGFsc28gcmVuYW1lZAo+Pj4+PiB0byBtYWtlIGl0IG1vcmUgZ2VuZXJpYyBh
bmQgc3VpdGFibGUgZm9yIHBsYXRmb3JtcyBvdGhlciB0aGFuIGkuTVguCj4+Pj4+Cj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4+
IFN1Z2dlc3RlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVh
bGNvbW0uY29tPgo+Pj4+PiBUZXN0ZWQtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3Nr
aUBzYW1zdW5nLmNvbT4KPj4+Pj4KPj4+Pj4gLS0tCj4+Pj4+Cj4+Pj4+IENoYW5nZXMgaW4gdjc6
Cj4+Pj4+IC0gUmVuYW1lIGxlZ2FjeS1icmlkZ2UgdG8gb2YtZGlzcGxheS1tb2RlLWJyaWRnZS4K
Pj4+Pj4gLSBSZW1vdmUgdW5uZWNlc3NhcnkgQVBJIGRybV9icmlkZ2VfaXNfbGVnYWN5KCkuCj4+
Pj4KPj4+PiAuLi4KPj4+Pgo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL0tjb25m
aWcKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9LY29uZmlnCj4+Pj4+IEBAIC0y
NDQsNiArMjQ0LDE2IEBAIGNvbmZpZyBEUk1fTlhQX1BUTjM0NjAKPj4+Pj4gIMKgwqDCoMKgwqAg
aGVscAo+Pj4+PiAgwqDCoMKgwqDCoMKgwqAgTlhQIFBUTjM0NjAgZURQLUxWRFMgYnJpZGdlIGNo
aXAgZHJpdmVyLgo+Pj4+Pgo+Pj4+PiArY29uZmlnIERSTV9PRl9ESVNQTEFZX01PREVfQlJJREdF
Cj4+Pj4+ICvCoMKgwqAgdHJpc3RhdGUKPj4+Pj4gK8KgwqDCoCBkZXBlbmRzIG9uIERSTV9CUklE
R0UgJiYgT0YKPj4+Pj4gK8KgwqDCoCBoZWxwCj4+Pj4+ICvCoMKgwqDCoMKgIFRoaXMgaXMgYSBE
Uk0gYnJpZGdlIGltcGxlbWVudGF0aW9uIHRoYXQgdXNlcwo+Pj4+PiBvZl9nZXRfZHJtX2Rpc3Bs
YXlfbW9kZQo+Pj4+PiArwqDCoMKgwqDCoCB0byBhY3F1aXJlIGRpc3BsYXkgbW9kZS4KPj4+Pj4g
Kwo+Pj4+PiArwqDCoMKgwqDCoCBOZXdlciBkZXNpZ25zIHNob3VsZCBub3QgdXNlIHRoaXMgYnJp
ZGdlIGFuZCBzaG91bGQgdXNlIHByb3Blcgo+Pj4+PiBwYW5lbAo+Pj4+PiArwqDCoMKgwqDCoCBk
cml2ZXIgaW5zdGVhZC4KPj4+Pgo+Pj4+ICJOZXdlciBkZXNpZ25zIHNob3VsZCBub3QgdXNlIHRo
aXMgYnJpZGdlIiwgYnV0IGluIHBhdGNoIDggeW91IGFyZQo+Pj4+IGludHJvZHVjaW5nIGEgbmV3
IHVzZSBvdCBkZXZtX2RybV9vZl9kaXNwbGF5X21vZGVfYnJpZGdlKCkuIFNob3VsZG4ndCB5b3UK
Pj4+PiBpbnN0ZWFkICJ1c2UgcHJvcGVyIHBhbmVsIGRyaXZlciBpbnN0ZWFkIiBpbiBwYXRjaCA4
Pwo+Pj4+Cj4+Pj4gQ2FuIHlvdSBwb2ludCB0byB0aGUgY29udmVyc2F0aW9uIHdoZXJlIHRoZSBj
b252ZXJzdGFpb24gd2hlcmUgRG1pdHJ5Cj4+Pj4gc3VnZ2VzdGVkIHRoaXMgY2hhbmdlPyBNYXli
ZSBpdCBhbHJlYWR5IGNvbnRhaW5zIHRoZSBhbnN3ZXIgdG8gbXkKPj4+PiBxdXN0aW9uLiBBbHNv
IGFkZGluZyBhIGxpbmsgdG8gdGhhdCBjb252ZXJzYXRpb24gaW4gdGhlIGNvbW1pdCBtZXNzYWdl
Cj4+Pj4gd291bGUgYmUgdXNlZnVsLgo+Pj4+Cj4+Pgo+Pj4gRmlyc3Qgb2YgYWxsLCB0aGFua3Mg
Zm9yIHlvdXIgcmV2aWV3cyBvbiB0aGlzIHBhdGNoIHNlcmllcy4KPj4+Cj4+PiBsaW5rOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvCj4+PiB4d2VueWNzY2FsemRscHV4eXRvcmJpeXZlajNr
N3B2M2xoeHd0YWRpbHhxNjVpcHdzdkB4NXJ4bTUzdzVlMjIvCj4+Pgo+Pj4gSSB0aGluayBpdCBt
YXkgYmUgYSBtaXNsZWFkaW5nIGlzc3VlIGNhdXNlZCBieSBkaXJlY3RseSBjb3B5aW5nIHRoZQo+
Pj4gcHJldmlvdXMgS2NvbmZpZyBkZXNjcmlwdGlvbi4gTm93IHRoYXQgdGhlIG5ldwo+Pj4gZGV2
bV9kcm1fb2ZfZGlzcGxheV9tb2RlX2JyaWRnZSgpIGhlbHBlciBoYXMgYmVlbiBhZGRlZCwgZHJp
dmVycyB1c2luZwo+Pj4gdGhlIHBhbmVsLWJyaWRnZSBmcmFtZXdvcmsgY2FuIHJlbHkgb24gaXQg
dG8gbWFpbnRhaW4gY29tcGF0aWJpbGl0eSB3aXRoCj4+PiBsZWdhY3kgZGlzcGxheSBtb2RlIHBh
cnNpbmcuCj4gCj4gQWgsIEkgdGhpbmsgSSBnb3QgdGhlIHBvaW50OiB0aGUgbW9kZSBkZXNjcmlw
dGlvbiBpbiBkZXZpY2UgdHJlZSBpcyBsZWdhY3ksCj4gYnV0IHRoZSBkcml2ZXIgaXRzZWxmIGlz
IG5vdCBsZWdhY3kgYW5kIHdpbGwgYmUgY3VycmVudCB1bnRpbCB3ZSBuZWVkIHRvCj4gc3VwcG9y
dCBsZWdhY3kgZGV2aWNlIHRyZWUuIENvcnJlY3Q/Cj4gCj4gSWYgdGhhdCdzIGNvcnJlY3QsIHRo
aXMgcGF0Y2ggbG9va3MgT0sgdG8gbWUgd2l0aCBhIG5ldyBLY29uZmlnIGhlbHAgdGV4dC4KClJp
Z2h0LiBJIHdhbnQgdG8gYXBwbHkgdGhlIGFkdmFuY2VkIHBhbmVsLWJyaWRnZSBmcmFtZXdvcmsg
Zm9yIEV4eW5vcyBEUCAKZHJpdmVyLCBhbmQgdGhpcyBuZXdseSBhZGRlZCBBUEkgaGVscHMgaGFu
ZGxlIHRoZSBsZWdhY3kgZGV2aWNlIHRyZWUgCnRoYXQgaXQgc3VwcG9ydHMuCgpUaGUgdjkgd2ls
bCBjb21lIHNvb24uCgo+IAo+Pj4gSXQgd291bGQgYmUgYmV0dGVyIHRvIHVwZGF0ZSB0aGUgY29t
bWVudCBhcyBmb2xsb3dzOgo+Pj4KPj4+IFRoaXMgaXMgYSBEUk0gYnJpZGdlIGltcGxlbWVudGF0
aW9uIHRoYXQgdXNlcyBvZl9nZXRfZHJtX2Rpc3BsYXlfbW9kZSB0bwo+Pj4gYWNxdWlyZSBkaXNw
bGF5IG1vZGUuCj4+Pgo+Pj4gSXQgZXhpc3RzIGZvciBjb21wYXRpYmlsaXR5IHdpdGggbGVnYWN5
IGRpc3BsYXkgbW9kZSBwYXJzaW5nLCBpbiBvcmRlcgo+Pj4gdG8gY29uZm9ybSB0byB0aGUgcGFu
ZWwtYnJpZGdlIGZyYW1ld29yay4KPj4+Cj4+Cj4+IERtaXRyeSwgd2hhdCdzIHlvdSB0YWtlIG9u
IHRoaXM/Cj4gCj4gRG1pdHJ5J3Mgb3BpbmlvbiB3b3VsZCBiZSBtdWNoIG1vcmUgcmVsZXZhbnQg
dGhhbiBtaW5lLiBJIGRvbid0IGtub3cgbXVjaAo+IG15c2VsZiBhYm91dCB0aGlzIGRyaXZlci4K
PiAKCkJlc3QgcmVnYXJkcywKRGFtb24KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
