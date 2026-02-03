Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 090F5E73143
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxpQueBYxk6pEN3zLhPulbrdYP8RENbntSu8xawP2gg=; b=zmNuPcwlLd59Oi
	ik0toSAZFscddpFf62gEBR52dE/ZVY8VUcycW+Da3ghnItvwI1twfJmq0hv9Axlc5MfhUmGjFHcXm
	JN+P8aB05j870FY8wU8uLs5RrHndFnQIuPW8im2X7dBKoWQjf8VrPpgomqzhsoK248+yFcaDszPRh
	RIDIEWCDbM7oUGKda4on9PghVoEzbyskRB92NCf69D42Iu4AQlsyoPfC9x9FHBe4/EPdFrPOxZuE9
	VjFwTOjZnC1wLUnD6UVTELFuElqSF+d4+WzYHDdLAmzM9ifGDCyY3cGNazkl5583I5jvDpv9QYoyH
	RbcXHZlmZ6ehCMWWddHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn5G9-00000005qok-32Wb;
	Tue, 03 Feb 2026 01:31:17 +0000
Received: from mail-m3297.qiye.163.com ([220.197.32.97])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn5G6-00000005qnm-1pQ7;
	Tue, 03 Feb 2026 01:31:16 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 32e1603b0;
	Tue, 3 Feb 2026 09:31:06 +0800 (GMT+08:00)
Message-ID: <9e1da672-a52d-4ec3-a20a-fe6f8ca15496@rock-chips.com>
Date: Tue, 3 Feb 2026 09:31:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 05/18] drm/bridge: Move legacy bridge driver out of imx
 directory for multi-platform use
From: Damon Ding <damon.ding@rock-chips.com>
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
Content-Language: en-US
In-Reply-To: <7256ecf9-b10b-428c-a1a6-e35e80a686ed@rock-chips.com>
X-HM-Tid: 0a9c211febb503a3kunmdf9f046968496a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0waTVYaHxlIHUhDGEJNGEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=PNeLKk6IXR55KNlke+4USCf5fom3f/N3+2kARL8pH0JwEPUlW60pXl+rtEoTZiX5O8yGuHc/m5vU/SaCJ1Gp07bJlpVKV7LVXgo8PO9QLI5HrJU160XWWzJRmQP51/j2tw/tfdjC+39EH3iKM0kT7IBxukZVeDjGby7EtvavdRI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=80iknK13Kq+wx2P2fwBcvk34JAYKQJmD7fJDTp2xaOU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_173114_964728_CDFC2865 
X-CRM114-Status: GOOD (  20.69  )
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

SGksCgpPbiAyLzIvMjAyNiAxMDo1NCBBTSwgRGFtb24gRGluZyB3cm90ZToKPiBIaSBMdWNhLAo+
IAo+IE9uIDEvMzEvMjAyNiA4OjMzIFBNLCBMdWNhIENlcmVzb2xpIHdyb3RlOgo+PiBIZWxsbyBE
YW1vbiwgRG1pdHJ5LAo+Pgo+PiBPbiBXZWQgRGVjIDE3LCAyMDI1IGF0IDEwOjMzIEFNIENFVCwg
RGFtb24gRGluZyB3cm90ZToKPj4+IEFzIHN1Z2dlc3RlZCBieSBEbWl0cnksIHRoZSBEUk0gbGVn
YWN5IGJyaWRnZSBkcml2ZXIgY2FuIGJlIHB1bGxlZAo+Pj4gb3V0IG9mIGlteC8gc3ViZGlyIGZv
ciBtdWx0aS1wbGF0Zm9ybSB1c2UuIFRoZSBkcml2ZXIgaXMgYWxzbyByZW5hbWVkCj4+PiB0byBt
YWtlIGl0IG1vcmUgZ2VuZXJpYyBhbmQgc3VpdGFibGUgZm9yIHBsYXRmb3JtcyBvdGhlciB0aGFu
IGkuTVguCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2Nr
LWNoaXBzLmNvbT4KPj4+IFN1Z2dlc3RlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJh
cnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgo+Pj4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tp
IDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4+Pgo+Pj4gLS0tCj4+Pgo+Pj4gQ2hhbmdlcyBp
biB2NzoKPj4+IC0gUmVuYW1lIGxlZ2FjeS1icmlkZ2UgdG8gb2YtZGlzcGxheS1tb2RlLWJyaWRn
ZS4KPj4+IC0gUmVtb3ZlIHVubmVjZXNzYXJ5IEFQSSBkcm1fYnJpZGdlX2lzX2xlZ2FjeSgpLgo+
Pgo+PiAuLi4KPj4KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvS2NvbmZpZwo+Pj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9LY29uZmlnCj4+PiBAQCAtMjQ0LDYgKzI0NCwx
NiBAQCBjb25maWcgRFJNX05YUF9QVE4zNDYwCj4+PiDCoMKgwqDCoMKgIGhlbHAKPj4+IMKgwqDC
oMKgwqDCoMKgIE5YUCBQVE4zNDYwIGVEUC1MVkRTIGJyaWRnZSBjaGlwIGRyaXZlci4KPj4+Cj4+
PiArY29uZmlnIERSTV9PRl9ESVNQTEFZX01PREVfQlJJREdFCj4+PiArwqDCoMKgIHRyaXN0YXRl
Cj4+PiArwqDCoMKgIGRlcGVuZHMgb24gRFJNX0JSSURHRSAmJiBPRgo+Pj4gK8KgwqDCoCBoZWxw
Cj4+PiArwqDCoMKgwqDCoCBUaGlzIGlzIGEgRFJNIGJyaWRnZSBpbXBsZW1lbnRhdGlvbiB0aGF0
IHVzZXMgCj4+PiBvZl9nZXRfZHJtX2Rpc3BsYXlfbW9kZQo+Pj4gK8KgwqDCoMKgwqAgdG8gYWNx
dWlyZSBkaXNwbGF5IG1vZGUuCj4+PiArCj4+PiArwqDCoMKgwqDCoCBOZXdlciBkZXNpZ25zIHNo
b3VsZCBub3QgdXNlIHRoaXMgYnJpZGdlIGFuZCBzaG91bGQgdXNlIHByb3BlciAKPj4+IHBhbmVs
Cj4+PiArwqDCoMKgwqDCoCBkcml2ZXIgaW5zdGVhZC4KPj4KPj4gIk5ld2VyIGRlc2lnbnMgc2hv
dWxkIG5vdCB1c2UgdGhpcyBicmlkZ2UiLCBidXQgaW4gcGF0Y2ggOCB5b3UgYXJlCj4+IGludHJv
ZHVjaW5nIGEgbmV3IHVzZSBvdCBkZXZtX2RybV9vZl9kaXNwbGF5X21vZGVfYnJpZGdlKCkuIFNo
b3VsZG4ndCB5b3UKPj4gaW5zdGVhZCAidXNlIHByb3BlciBwYW5lbCBkcml2ZXIgaW5zdGVhZCIg
aW4gcGF0Y2ggOD8KPj4KPj4gQ2FuIHlvdSBwb2ludCB0byB0aGUgY29udmVyc2F0aW9uIHdoZXJl
IHRoZSBjb252ZXJzdGFpb24gd2hlcmUgRG1pdHJ5Cj4+IHN1Z2dlc3RlZCB0aGlzIGNoYW5nZT8g
TWF5YmUgaXQgYWxyZWFkeSBjb250YWlucyB0aGUgYW5zd2VyIHRvIG15Cj4+IHF1c3Rpb24uIEFs
c28gYWRkaW5nIGEgbGluayB0byB0aGF0IGNvbnZlcnNhdGlvbiBpbiB0aGUgY29tbWl0IG1lc3Nh
Z2UKPj4gd291bGUgYmUgdXNlZnVsLgo+Pgo+IAo+IEZpcnN0IG9mIGFsbCwgdGhhbmtzIGZvciB5
b3VyIHJldmlld3Mgb24gdGhpcyBwYXRjaCBzZXJpZXMuCj4gCj4gbGluazogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLyAKPiB4d2VueWNzY2FsemRscHV4eXRvcmJpeXZlajNrN3B2M2xoeHd0
YWRpbHhxNjVpcHdzdkB4NXJ4bTUzdzVlMjIvCj4gCj4gSSB0aGluayBpdCBtYXkgYmUgYSBtaXNs
ZWFkaW5nIGlzc3VlIGNhdXNlZCBieSBkaXJlY3RseSBjb3B5aW5nIHRoZSAKPiBwcmV2aW91cyBL
Y29uZmlnIGRlc2NyaXB0aW9uLiBOb3cgdGhhdCB0aGUgbmV3IAo+IGRldm1fZHJtX29mX2Rpc3Bs
YXlfbW9kZV9icmlkZ2UoKSBoZWxwZXIgaGFzIGJlZW4gYWRkZWQsIGRyaXZlcnMgdXNpbmcgCj4g
dGhlIHBhbmVsLWJyaWRnZSBmcmFtZXdvcmsgY2FuIHJlbHkgb24gaXQgdG8gbWFpbnRhaW4gY29t
cGF0aWJpbGl0eSB3aXRoIAo+IGxlZ2FjeSBkaXNwbGF5IG1vZGUgcGFyc2luZy4KPiAKPiBJdCB3
b3VsZCBiZSBiZXR0ZXIgdG8gdXBkYXRlIHRoZSBjb21tZW50IGFzIGZvbGxvd3M6Cj4gCj4gVGhp
cyBpcyBhIERSTSBicmlkZ2UgaW1wbGVtZW50YXRpb24gdGhhdCB1c2VzIG9mX2dldF9kcm1fZGlz
cGxheV9tb2RlIHRvIAo+IGFjcXVpcmUgZGlzcGxheSBtb2RlLgo+IAo+IEl0IGV4aXN0cyBmb3Ig
Y29tcGF0aWJpbGl0eSB3aXRoIGxlZ2FjeSBkaXNwbGF5IG1vZGUgcGFyc2luZywgaW4gb3JkZXIg
Cj4gdG8gY29uZm9ybSB0byB0aGUgcGFuZWwtYnJpZGdlIGZyYW1ld29yay4KPiAKCkRtaXRyeSwg
d2hhdCdzIHlvdSB0YWtlIG9uIHRoaXM/CgpCZXN0IHJlZ2FyZHMsCkRhbW9uCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
