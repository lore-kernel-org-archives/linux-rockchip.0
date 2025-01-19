Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A8E2C02187
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jan 2025 15:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hpEOZnmiF1VWfIgdZNCu8beuj+tG4Zp8C8FQ/5Swzc=; b=x1TUni+p+K4W7s
	GdsM8v+RmARZZQPxsnssixPsRPaVZUltP0YIHOwk2KqRDAE4V3F6z5vDuG8Nriohk6J55gcxMRYRZ
	oMkFsojKMHgkLjm43Yk+MWO1hkYTG1Iv265bA+g/q6Zfn5n+dA/RaP9kEoy982y30dL1QorPY4pTY
	/nthpgYmvj0d6M8KC4JiNL+SLPS7lYoqGq+RPMK8U4ZUzzj1XM933ygayMrkp5qwriyomQ2D51lHX
	Xrid3UNCAPDkoa+CusTm1Urgo93ZoxjpTKD0Nv1j3wySo7iUR9WgZ3d26VZTs5H5AJzhxjxOYn3jp
	ajtrKr/xHVQF0zbCygOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZX8f-000000042ir-0Smf;
	Sun, 19 Jan 2025 15:23:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZX8c-000000042hx-0wWQ;
	Sun, 19 Jan 2025 15:22:59 +0000
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id EAD45446;
	Sun, 19 Jan 2025 16:21:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1737300115;
	bh=CTvWZ10sB6Bpu7OwRCTU/O0pKZ8mB6w+tH5Yr4dSd4E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vWU1A4F9YgGtIhbdQyreotqH6d1Ml2MZ0LSMmJD+E3aF7hT7Iyt2tb7DnjVNF+Pxr
	 Ur2IAlVdyYB0u9eTY9nLS1iOqf1rbDS74NQte5xiZiorKZzIDc2ltm+dCMDxo3gGnD
	 tQCGpMKCUDl0+FP1sNJGb4wT3uTFLGuXW16Hvc0Q=
Message-ID: <cf34be39-ce92-4ea5-b548-03008c163d31@ideasonboard.com>
Date: Sun, 19 Jan 2025 17:22:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
To: Sui Jingfeng <sui.jingfeng@linux.dev>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
 linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org, intel-xe@lists.freedesktop.org,
 xen-devel@lists.xenproject.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andy Yan <andyshrk@163.com>, Daniel Stone <daniel@fooishbar.org>
References: <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com>
 <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
 <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com>
 <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
 <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com>
 <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
 <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
 <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de>
 <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
 <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
 <xz5ncq67bgmdase2jg3cfvyaxpiwhol2eqpfzow6dqpauvslo5@2w3rw27lhnxo>
 <b97fcd2f-516a-4172-aef3-631418564cfa@linux.dev>
 <ef52dab0-058f-408f-a298-c4b2453a3d2f@ideasonboard.com>
 <f4562dbf-b132-4cfd-8f7e-43cd69f2673f@linux.dev>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <f4562dbf-b132-4cfd-8f7e-43cd69f2673f@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_072258_430630_29678D49 
X-CRM114-Status: GOOD (  21.19  )
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

T24gMTkvMDEvMjAyNSAxNjo1OSwgU3VpIEppbmdmZW5nIHdyb3RlOgoKPj4+PiBCdXQgdXNlcnNw
YWNlIG11c3QgYmUgYWJsZSB0byBjb250aW51ZSBhbGxvY2F0aW5nIFlVViBidWZmZXJzIHRocm91
Z2gKPj4+PiBDUkVBVEVfRFVNQi4KPj4+Cj4+PiBJIHRoaW5rLCBhbGxvY2F0aW5nIFlVViBidWZm
ZXJzIHRocm91Z2ggQ1JFQVRFX0RVTUIgaW50ZXJmYWNlIGlzIGp1c3QKPj4+IGFuICphYnVzZSog
YW5kICptaXN1c2UqIG9mIHRoaXMgQVBJIGZvciBub3cuCj4+Pgo+Pj4gVGFrZSB0aGUgTlYxMiBm
b3JtYXQgYXMgYW4gZXhhbXBsZSwgTlYxMiBpcyBZVVY0MjAgcGxhbmFyIGZvcm1hdCwgaGF2ZQo+
Pj4gdHdvIHBsYW5hcjogdGhlIFktcGxhbmFyIGFuZCB0aGUgVVYtcGxhbmFyLiBUaGUgWS1wbGFu
YXIgYXBwZWFyIGZpcnN0Cj4+PiBpbiBtZW1vcnkgYXMgYW4gYXJyYXkgb2YgdW5zaWduZWQgY2hh
ciB2YWx1ZXMuIFRoZSBZLXBsYW5hciBpcyBmb2xsb3dlZAo+Pj4gaW1tZWRpYXRlbHkgYnkgdGhl
IFVWLXBsYW5hciwgd2hpY2ggaXMgYWxzbyBhbiBhcnJheSBvZiB1bnNpZ25lZCBjaGFyCj4+PiB2
YWx1ZXMgdGhhdCBjb250YWlucyBwYWNrZWQgVSAoQ2IpIGFuZCBWIChDcikgc2FtcGxlcy4KPj4+
Cj4+PiBCdXQgdGhlICdkcm1fbW9kZV9jcmVhdGVfZHVtYicgc3RydWN0dXJlIGlzIG9ubHkgaW50
ZW5kIHRvIHByb3ZpZGUKPj4+IGRlc2NyaXB0aW9ucyBmb3IgKm9uZSogcGxhbmFyLgo+Pj4KPj4+
IHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYiB7Cj4+PiDCoMKgwqDCoCBfX3UzMiBoZWlnaHQ7
Cj4+PiDCoMKgwqDCoCBfX3UzMiB3aWR0aDsKPj4+IMKgwqDCoMKgIF9fdTMyIGJwcDsKPj4+IMKg
wqDCoMKgIF9fdTMyIGZsYWdzOwo+Pj4gwqDCoMKgwqAgX191MzIgaGFuZGxlOwo+Pj4gwqDCoMKg
wqAgX191MzIgcGl0Y2g7Cj4+PiDCoMKgwqDCoCBfX3U2NCBzaXplOwo+Pj4gfTsKPj4+Cj4+PiBB
biB3aWR0aCB4IGhlaWdodCBOVjEyIGltYWdlIHRha2VzIHVwIHdpZHRoKmhlaWdodCooMSArIDEv
NCArIDEvNCkgCj4+PiBieXRlcy4KPj4+Cj4+PiBTbyB3ZSBjYW4gYWxsb2NhdGUgYW4gKmVxdWl2
YWxlbnQqIHNpemVkIGJ1ZmZlciB0byBzdG9yZSB0aGUgTlYxMiByYXcgCj4+PiBkYXRhLgo+Pj4K
Pj4+IEVpdGhlciAnd2lkdGggKiAoaGVpZ2h0ICogMy8yKScgd2hlcmUgZWFjaCBwaXhlbCB0YWtl
IHVwIDggYml0cywKPj4+IG9yIGp1c3QgJ3dpdGggKiBoZWlnaHQnIHdoZXJlIGVhY2ggcGl4ZWxz
IHRha2UgdXAgMTIgYml0cy4KPj4+Cj4+PiBIb3dldmVyLCBhbGwgdGhvc2UgbWF0aCBhcmUganVz
dCBlcXVpdmFsZW50cyBkZXNjcmlwdGlvbiB0byB0aGUgb3JpZ2luYWwKPj4+IE5WMTIgZm9ybWF0
LCBuZWl0aGVyIGFyZSBjb25jcmV0ZSBjb3JyZWN0IHBoeXNpY2FsIGRlc2NyaXB0aW9uLgo+Pgo+
PiBJIGRvbid0IHNlZSB0aGUgcHJvYmxlbS4gQWxsb2NhdGluZyBkdW1iIGJ1ZmZlcnMsIGlmIHdl
IGRvbid0IGhhdmUgYW55IAo+PiBoZXVyaXN0aWNzIHJlbGF0ZWQgdG8gUkdCIGJlaGluZCBpdCwg
aXMgZXNzZW50aWFsbHkganVzdCBhbGxvY2F0aW5nIGEgCj4+IHNwZWNpZmljIGFtb3VudCBvZiBt
ZW1vcnksIGRlZmluZWQgYnkgd2lkdGgsIGhlaWdodCBhbmQgYml0c3BlcnBpeGVsLgo+Pgo+IEkg
dGhpbmssIHRoZSBwcm9ibGVtIHdpbGwgYmUgdGhhdCB0aGUgJ3dpZHRoJywgJ2hlaWdodCcgYW5k
ICdicHAnCj4gYXJlIG9yaWdpbmFsbHkgdXNlZCB0byBkZXNjcmliZSBvbmUgcGxhbmUuIFRob3Nl
IHRocmVlIHBhcmFtZXRlcnMKPiBoYXMgcGVyZmVjdGx5IGRlZmluZWQgcGh5c2ljYWwgc2VtYW50
aWNzLgo+IAo+IEJ1dCB3aXRoIG11bHRpIHBsYW5hciBmb3JtYXRzLCB0YWtlIE5WMTIgaW1hZ2Ug
YXMgYW4gZXhhbXBsZSwKPiBmb3IgYSAyw5cyIHNxdWFyZSBvZiBwaXhlbHMsIHRoZXJlIGFyZSA0
IFkgc2FtcGxlcyBidXQgb25seSAxIFUKPiBzYW1wbGUgYW5kIDEgViBzYW1wbGUuIFRoaXMgZm9y
bWF0IHJlcXVpcmVzIDR4OCsxeDgrMXg4PTQ4IGJpdHMKPiB0byBzdG9yZSB0aGUgMngyIHNxdWFy
ZS4KPiAKPiBTbyBpdHMgZGVwdGggaXMgMTIgYml0cyBwZXIgcGl4ZWwgKDQ4IC8gKDIgKiAyKSku
Cj4gCj4gc28gbXkgcHJvYmxlbSBpcyB0aGF0IHRoZSBtZW50aW9uZWQgMTJicHAgaW4gdGhpcyBl
eGFtcGxlIG9ubHkKPiBtYWtlIHNlbnNlIGluIG1hdGhlbWF0aWNzLCBpdCBkb2Vzbid0IGhhcyBh
IGdvb2QgcGh5c2ljYWwKPiBpbnRlcnByZXQuIERvIHlvdSBhZ3JlZSB3aXRoIG1lIG9uIHRoaXMg
dGVjaG5pcXVlIHBvaW50Pwo+IAo+PiBJZiBJIHdhbnQgdG8gY3JlYXRlIGFuIE5WMTIgZnJhbWVi
dWZmZXIsIEkgYWxsb2NhdGUgdHdvIGR1bWIgYnVmZmVycywgCj4+IG9uZSBmb3IgWSBhbmQgb25l
IGZvciBVViBwbGFuZXMsIGFuZCBzaXplIHRoZW0gYWNjb3JkaW5nbHkuIEFuZCB0aGVuIAo+PiBj
cmVhdGUgdGhlIERSTSBmcmFtZWJ1ZmZlciB3aXRoIHRob3NlLgo+Pgo+IFRoZW4gaG93IHlvdSBm
aWxsIHRoZSB2YWx1ZSBvZiB0aGUgJ3dpZHRoJywgJ2hlaWdodCcgYW5kICdicHAnIG9mIGVhY2gg
Cj4gZHVtYiBidWZmZXJzPwoKRm9yIDY0MHg0ODAtTlYxMjoKcGxhbmUgMDogd2lkdGggPSA2NDAs
IGhlaWdodCA9IDQ4MCwgYnBwID0gOApwbGFuZSAxOiB3aWR0aCA9IDY0MCAvIDIsIGhlaWdodCA9
IDQ4MCAvIDIsIGJwcCA9IDE2Cgo+IFdoeSBub3QgYWxsb2NhdGUgc3RvcmFnZSBmb3IgdGhlIHdo
b2xlIG9uIG9uZSBzaG9vdD8KCllvdSBjYW4sIGlmIHlvdSBhZGp1c3QgdGhlIHBhcmFtZXRlcnMg
YWNjb3JkaW5nbHkuIEhvd2V2ZXIsIGlmIHRoZSAKc3RyaWRlcyBvZiB0aGUgcGxhbmVzIGFyZSBu
b3QgZXF1YWwsIEkgZ3Vlc3MgaXQgbWlnaHQgY2F1c2UgcHJvYmxlbXMgb24gCnNvbWUgcGxhdGZv
cm1zLgoKQnV0IEkgdGhpbmsgaXQncyB1c3VhbGx5IHNpbXBsZXIgdG8gYWxsb2NhdGUgb25lIGJ1
ZmZlciBwZXIgcGxhbmUsIGFuZCAKcGVyaGFwcyBldmVuIGJldHRlciBhcyBpdCBkb2Vzbid0IHJl
cXVpcmUgYXMgbGFyZ2UgY29udGlndW91cyBtZW1vcnkgYXJlYS4KCj4gVGhlIG1vZGV0ZXN0IGlu
IGxpYmRybSBjYW4gYmUgYW4gZ29vZCBleGFtcGxlLCBzZW5kIGl0WzFdIHRvIHlvdSBhcyBhbiAK
PiByZWZlcmVuY2UuCgpSaWdodCwgc28gbW9kZXRlc3QgYWxyZWFkeSBkb2VzIGl0IHN1Y2Nlc3Nm
dWxseS4gU28uLi4gV2hhdCBpcyB0aGUgaXNzdWU/CgpFdmVyeW9uZSBhZ3JlZXMgdGhhdCBDUkVB
VEVfRFVNQiBpcyBub3QgdGhlIGJlc3QgaW9jdGwgdG8gYWxsb2NhdGUgCmJ1ZmZlcnMsIGFuZCBv
bmUgY2FuJ3QgY29uc2lkZXIgaXQgdG8gd29yayBpZGVudGljYWxseSBhY3Jvc3MgdGhlIApwbGF0
Zm9ybXMuIEJ1dCBpdCdzIHdoYXQgd2UgaGF2ZSBhbmQgd2hhdCBoYXMgYmVlbiB1c2VkIGZvciBh
Z2VzLgoKICBUb21pCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
