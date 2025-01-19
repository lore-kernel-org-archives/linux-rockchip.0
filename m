Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FCC3C02187
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jan 2025 16:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHg1ALI1LQCHFNfIzyYL75KkG1l94ffBzDTSVhu0q2I=; b=mld2BDKOox/pYr
	RjG8gk1HhbyQk4FhulPtoC85sowJ+PyVPUdMsK8CDFMGKIr5a12lYnt7t3IXLLvHa6cI4NRzuNnXy
	sHgM3ykaYv5LskhqADklK+glvaeGvg3b6EE+CFAYcRrhk0CZ0iF3xJRh3G2gw1F6Xaxn1swWHiLio
	yGLFQngr3ePQXlISUkAYqB4A+JkF+II68IkvETlKnjY3B7fp5D41rhTa2SGrywinD+0/w6UwnH54d
	zntnb4HHWIYwflDmi/VvZYruFUtkrX6G2wKD8a/z/9EDCq7s4QqXMAKU3vw95CTtIHHIck8qIZ0Vl
	KzNbblYmZEXtUsxkJmQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZY8Q-000000046pX-47UR;
	Sun, 19 Jan 2025 16:26:50 +0000
Received: from out-170.mta1.migadu.com ([95.215.58.170])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZY8O-000000046p7-1Oqb
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Jan 2025 16:26:50 +0000
Message-ID: <8234927e-0d12-4655-813d-8ec94179b737@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1737304005;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vk3LJPYAEJumDCHfvyn+0B3wt+JaPCGDzjEcWZxdF60=;
	b=rSN8t36GlcqKWcSry2NAS7uuPoSokjl/moVcZQqfvubYqsOYH01D0yN3RMsNHteHhtpLti
	kVL97c93wJmSXin/dBnch03Cy9RjtJi2PzJmt0HI9IluiFQUnxKcft+J/Ya7YtZG1krPc+
	YGBCQ0RrYcucM6qjwpDCjNrgG9sTpfk=
Date: Mon, 20 Jan 2025 00:26:30 +0800
MIME-Version: 1.0
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
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
 <cf34be39-ce92-4ea5-b548-03008c163d31@ideasonboard.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <cf34be39-ce92-4ea5-b548-03008c163d31@ideasonboard.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_082648_858568_2E03C4AC 
X-CRM114-Status: GOOD (  25.61  )
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

SGksCgpPbiAyMDI1LzEvMTkgMjM6MjIsIFRvbWkgVmFsa2VpbmVuIHdyb3RlOgo+IE9uIDE5LzAx
LzIwMjUgMTY6NTksIFN1aSBKaW5nZmVuZyB3cm90ZToKPgo+Pj4+PiBCdXQgdXNlcnNwYWNlIG11
c3QgYmUgYWJsZSB0byBjb250aW51ZSBhbGxvY2F0aW5nIFlVViBidWZmZXJzIHRocm91Z2gKPj4+
Pj4gQ1JFQVRFX0RVTUIuCj4+Pj4KPj4+PiBJIHRoaW5rLCBhbGxvY2F0aW5nIFlVViBidWZmZXJz
IHRocm91Z2ggQ1JFQVRFX0RVTUIgaW50ZXJmYWNlIGlzIGp1c3QKPj4+PiBhbiAqYWJ1c2UqIGFu
ZCAqbWlzdXNlKiBvZiB0aGlzIEFQSSBmb3Igbm93Lgo+Pj4+Cj4+Pj4gVGFrZSB0aGUgTlYxMiBm
b3JtYXQgYXMgYW4gZXhhbXBsZSwgTlYxMiBpcyBZVVY0MjAgcGxhbmFyIGZvcm1hdCwgaGF2ZQo+
Pj4+IHR3byBwbGFuYXI6IHRoZSBZLXBsYW5hciBhbmQgdGhlIFVWLXBsYW5hci4gVGhlIFktcGxh
bmFyIGFwcGVhciBmaXJzdAo+Pj4+IGluIG1lbW9yeSBhcyBhbiBhcnJheSBvZiB1bnNpZ25lZCBj
aGFyIHZhbHVlcy4gVGhlIFktcGxhbmFyIGlzIAo+Pj4+IGZvbGxvd2VkCj4+Pj4gaW1tZWRpYXRl
bHkgYnkgdGhlIFVWLXBsYW5hciwgd2hpY2ggaXMgYWxzbyBhbiBhcnJheSBvZiB1bnNpZ25lZCBj
aGFyCj4+Pj4gdmFsdWVzIHRoYXQgY29udGFpbnMgcGFja2VkIFUgKENiKSBhbmQgViAoQ3IpIHNh
bXBsZXMuCj4+Pj4KPj4+PiBCdXQgdGhlICdkcm1fbW9kZV9jcmVhdGVfZHVtYicgc3RydWN0dXJl
IGlzIG9ubHkgaW50ZW5kIHRvIHByb3ZpZGUKPj4+PiBkZXNjcmlwdGlvbnMgZm9yICpvbmUqIHBs
YW5hci4KPj4+Pgo+Pj4+IHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYiB7Cj4+Pj4gwqDCoMKg
wqAgX191MzIgaGVpZ2h0Owo+Pj4+IMKgwqDCoMKgIF9fdTMyIHdpZHRoOwo+Pj4+IMKgwqDCoMKg
IF9fdTMyIGJwcDsKPj4+PiDCoMKgwqDCoCBfX3UzMiBmbGFnczsKPj4+PiDCoMKgwqDCoCBfX3Uz
MiBoYW5kbGU7Cj4+Pj4gwqDCoMKgwqAgX191MzIgcGl0Y2g7Cj4+Pj4gwqDCoMKgwqAgX191NjQg
c2l6ZTsKPj4+PiB9Owo+Pj4+Cj4+Pj4gQW4gd2lkdGggeCBoZWlnaHQgTlYxMiBpbWFnZSB0YWtl
cyB1cCB3aWR0aCpoZWlnaHQqKDEgKyAxLzQgKyAxLzQpIAo+Pj4+IGJ5dGVzLgo+Pj4+Cj4+Pj4g
U28gd2UgY2FuIGFsbG9jYXRlIGFuICplcXVpdmFsZW50KiBzaXplZCBidWZmZXIgdG8gc3RvcmUg
dGhlIE5WMTIgCj4+Pj4gcmF3IGRhdGEuCj4+Pj4KPj4+PiBFaXRoZXIgJ3dpZHRoICogKGhlaWdo
dCAqIDMvMiknIHdoZXJlIGVhY2ggcGl4ZWwgdGFrZSB1cCA4IGJpdHMsCj4+Pj4gb3IganVzdCAn
d2l0aCAqIGhlaWdodCcgd2hlcmUgZWFjaCBwaXhlbHMgdGFrZSB1cCAxMiBiaXRzLgo+Pj4+Cj4+
Pj4gSG93ZXZlciwgYWxsIHRob3NlIG1hdGggYXJlIGp1c3QgZXF1aXZhbGVudHMgZGVzY3JpcHRp
b24gdG8gdGhlIAo+Pj4+IG9yaWdpbmFsCj4+Pj4gTlYxMiBmb3JtYXQsIG5laXRoZXIgYXJlIGNv
bmNyZXRlIGNvcnJlY3QgcGh5c2ljYWwgZGVzY3JpcHRpb24uCj4+Pgo+Pj4gSSBkb24ndCBzZWUg
dGhlIHByb2JsZW0uIEFsbG9jYXRpbmcgZHVtYiBidWZmZXJzLCBpZiB3ZSBkb24ndCBoYXZlIAo+
Pj4gYW55IGhldXJpc3RpY3MgcmVsYXRlZCB0byBSR0IgYmVoaW5kIGl0LCBpcyBlc3NlbnRpYWxs
eSBqdXN0IAo+Pj4gYWxsb2NhdGluZyBhIHNwZWNpZmljIGFtb3VudCBvZiBtZW1vcnksIGRlZmlu
ZWQgYnkgd2lkdGgsIGhlaWdodCBhbmQgCj4+PiBiaXRzcGVycGl4ZWwuCj4+Pgo+PiBJIHRoaW5r
LCB0aGUgcHJvYmxlbSB3aWxsIGJlIHRoYXQgdGhlICd3aWR0aCcsICdoZWlnaHQnIGFuZCAnYnBw
Jwo+PiBhcmUgb3JpZ2luYWxseSB1c2VkIHRvIGRlc2NyaWJlIG9uZSBwbGFuZS4gVGhvc2UgdGhy
ZWUgcGFyYW1ldGVycwo+PiBoYXMgcGVyZmVjdGx5IGRlZmluZWQgcGh5c2ljYWwgc2VtYW50aWNz
Lgo+Pgo+PiBCdXQgd2l0aCBtdWx0aSBwbGFuYXIgZm9ybWF0cywgdGFrZSBOVjEyIGltYWdlIGFz
IGFuIGV4YW1wbGUsCj4+IGZvciBhIDLDlzIgc3F1YXJlIG9mIHBpeGVscywgdGhlcmUgYXJlIDQg
WSBzYW1wbGVzIGJ1dCBvbmx5IDEgVQo+PiBzYW1wbGUgYW5kIDEgViBzYW1wbGUuIFRoaXMgZm9y
bWF0IHJlcXVpcmVzIDR4OCsxeDgrMXg4PTQ4IGJpdHMKPj4gdG8gc3RvcmUgdGhlIDJ4MiBzcXVh
cmUuCj4+Cj4+IFNvIGl0cyBkZXB0aCBpcyAxMiBiaXRzIHBlciBwaXhlbCAoNDggLyAoMiAqIDIp
KS4KPj4KPj4gc28gbXkgcHJvYmxlbSBpcyB0aGF0IHRoZSBtZW50aW9uZWQgMTJicHAgaW4gdGhp
cyBleGFtcGxlIG9ubHkKPj4gbWFrZSBzZW5zZSBpbiBtYXRoZW1hdGljcywgaXQgZG9lc24ndCBo
YXMgYSBnb29kIHBoeXNpY2FsCj4+IGludGVycHJldC4gRG8geW91IGFncmVlIHdpdGggbWUgb24g
dGhpcyB0ZWNobmlxdWUgcG9pbnQ/Cj4+Cj4+PiBJZiBJIHdhbnQgdG8gY3JlYXRlIGFuIE5WMTIg
ZnJhbWVidWZmZXIsIEkgYWxsb2NhdGUgdHdvIGR1bWIgCj4+PiBidWZmZXJzLCBvbmUgZm9yIFkg
YW5kIG9uZSBmb3IgVVYgcGxhbmVzLCBhbmQgc2l6ZSB0aGVtIGFjY29yZGluZ2x5LiAKPj4+IEFu
ZCB0aGVuIGNyZWF0ZSB0aGUgRFJNIGZyYW1lYnVmZmVyIHdpdGggdGhvc2UuCj4+Pgo+PiBUaGVu
IGhvdyB5b3UgZmlsbCB0aGUgdmFsdWUgb2YgdGhlICd3aWR0aCcsICdoZWlnaHQnIGFuZCAnYnBw
JyBvZiAKPj4gZWFjaCBkdW1iIGJ1ZmZlcnM/Cj4KPiBGb3IgNjQweDQ4MC1OVjEyOgo+IHBsYW5l
IDA6IHdpZHRoID0gNjQwLCBoZWlnaHQgPSA0ODAsIGJwcCA9IDgKPiBwbGFuZSAxOiB3aWR0aCA9
IDY0MCAvIDIsIGhlaWdodCA9IDQ4MCAvIDIsIGJwcCA9IDE2Cj4KQnV0IGkgdGhpbmsgdGhpcyBz
aG91bGQgYmUgaGFyZHdhcmUgZGVwZW5kZW50LiBUaGUgaGFyZHdhcmUgSSdtIHVzaW5nCmxvYWQg
TlYxMiAgcmF3IGRhdGEgYXMgYSB3aG9sZS4gSSBvbmx5IG5lZWQgdG8gZmVlZCBncHV2YSBvZiB0
aGUgYmFja2luZwptZW1vcnkgdG8gdGhlIGhhcmR3YXJlIHJlZ2lzdGVyIG9uY2UuCgpOb3QgZmFt
aWxpYXIgd2l0aCB5b3VyIGhhcmR3YXJlLCBzbyBJIGNhbid0IHRhbGsgbW9yZSBvbiB0aGlzIHNv
ZnR3YXJlCmRlc2lnbi4gUGVyaGFwcyBzb21lb25lIGtub3cgbW9yZSBjb3VsZCBoYXZlIGEgY29t
bWVudCBvbiB0aGlzLgoKPj4gV2h5IG5vdCBhbGxvY2F0ZSBzdG9yYWdlIGZvciB0aGUgd2hvbGUg
b24gb25lIHNob290Pwo+Cj4gWW91IGNhbiwgaWYgeW91IGFkanVzdCB0aGUgcGFyYW1ldGVycyBh
Y2NvcmRpbmdseS4gSG93ZXZlciwgaWYgdGhlIAo+IHN0cmlkZXMgb2YgdGhlIHBsYW5lcyBhcmUg
bm90IGVxdWFsLCBJIGd1ZXNzIGl0IG1pZ2h0IGNhdXNlIHByb2JsZW1zIAo+IG9uIHNvbWUgcGxh
dGZvcm1zLgo+Cj4gQnV0IEkgdGhpbmsgaXQncyB1c3VhbGx5IHNpbXBsZXIgdG8gYWxsb2NhdGUg
b25lIGJ1ZmZlciBwZXIgcGxhbmUsIGFuZCAKPiBwZXJoYXBzIGV2ZW4gYmV0dGVyIGFzIGl0IGRv
ZXNuJ3QgcmVxdWlyZSBhcyBsYXJnZSBjb250aWd1b3VzIG1lbW9yeSAKPiBhcmVhLgo+Cj4+IFRo
ZSBtb2RldGVzdCBpbiBsaWJkcm0gY2FuIGJlIGFuIGdvb2QgZXhhbXBsZSwgc2VuZCBpdFsxXSB0
byB5b3UgYXMgCj4+IGFuIHJlZmVyZW5jZS4KPgo+IFJpZ2h0LCBzbyBtb2RldGVzdCBhbHJlYWR5
IGRvZXMgaXQgc3VjY2Vzc2Z1bGx5LiBTby4uLiBXaGF0IGlzIHRoZSBpc3N1ZT8KPgpCdXQgdGhl
biwgdGhlIHByb2JsZW0gd2lsbCBiZWNvbWUgdGhhdCBpdCBvdmVycmlkZSB0aGUgJ2hlaWdodCcg
cGFyYW1ldGVyLgpXaGF0J3MgdGhlIHBoeXNpY2FsIGludGVycHJldGF0aW9uIG9mIHRoZSAnaGVp
Z2h0JyBwYXJhbWV0ZXIgd2hlbiBjcmVhdGluZwphbiBOVjEyIGltYWdlIHdpdGggdGhlIGR1bXAg
QVBJIHRoZW4/CgpJIGd1ZXNzLCBzb2x2aW5nIGNvbXBsZXggcHJvYmxlbXMgd2l0aCBzaW1wbGUg
QVBJcyBtYXkgc2VlIHRoZSBsaW1pdGF0aW9uLApzb29uZXIgb3IgbGF0ZXIuIEJ1dCBJIG5vdCB2
ZXJ5IHN1cmUgYW5kIG1pZ2h0IGJlIHdyb25nLiBTbyBvdGhlciBwZW9wbGVzCmNhbiBvdmVycmlk
ZSBtZSB3b3Jkcy4KCgo+IEV2ZXJ5b25lIGFncmVlcyB0aGF0IENSRUFURV9EVU1CIGlzIG5vdCB0
aGUgYmVzdCBpb2N0bCB0byBhbGxvY2F0ZSAKPiBidWZmZXJzLCBhbmQgb25lIGNhbid0IGNvbnNp
ZGVyIGl0IHRvIHdvcmsgaWRlbnRpY2FsbHkgYWNyb3NzIHRoZSAKPiBwbGF0Zm9ybXMuIEJ1dCBp
dCdzIHdoYXQgd2UgaGF2ZSBhbmQgd2hhdCBoYXMgYmVlbiB1c2VkIGZvciBhZ2VzLgo+ClllYWgs
IHlvdXIgcmVxdWVzdCBhcmUgbm90IHVucmVhc29uYWJsZS4gSXQgY2FuIGJlIHNlZW4gYXMgYSBr
aW5kIG9mIHJpZ2lkIGRlbWFuZC4KU2luY2UgR0VNIERNQSBoZWxwZXJzIGRvZXNuJ3QgZXhwb3J0
IGFuIG1vcmUgYWR2YW5jZWQgaW50ZXJmYWNlIHRvIHVzZXJzcGFjZSBzbyBmYXIuCkFzIGEgcmVz
dWx0LCBkcml2ZXJzIHRoYXQgZW1wbG95aW5nIEdFTSBETUEgaGFzIG5vIG90aGVyIGNob2ljZSwg
YnV0IHRvIGFidXNlIHRoZQpkdW1iIGJ1ZmZlciBBUEkgdG8gZG8gYWxsb2NhdGlvbiBmb3IgdGhl
IG1vcmUgY29tcGxleCBmb3JtYXQgYnVmZmVycy4KClRoZSBkdW1iIGJ1ZmZlciBBUEkgZG9lc24n
dCBzdXBwb3J0IHRvIHNwZWNpZnkgYnVmZmVyIGZvcm1hdCwgdGlsZSBzdGF0dXMgYW5kCnBsYWNl
bWVudCBldGMuIFRoZSBtb3JlIGFkdmFuY2UgZHJpdmVycyBoYXMgYmVlbiBleHBvc2VkIHRoZSB4
eHhfY3JlYXRlX2dlbSgpCnRvIHVzZXItc3BhY2UuIEl0IHNlZW1zIHRoYXQgYSBmZXcgbW9yZSBl
eHBlcmllbmNlZCBwcm9ncmFtbWVycyBoaW50IHVzIHRvCmNyZWF0ZSBhbiBuZXcgaW9jdGwgYXQg
YWJvdmUgdGhyZWFkLCBzbyB0aGF0IHdlIGNhbiBrZWVwIGVtcGxveWluZyBzaW1wbGUgQVBJCnRv
IGRvIHNpbXBsZSB0aGluZ3MgYW5kIHRvIHN1aXQgY29tcGxleCBuZWVkcyB3aXRoIHRoZSBtb3Jl
IGFkdmFuY2VkIEFQSXMuCgoKPiDCoFRvbWkKPgotLSAKQmVzdCByZWdhcmRzLApTdWkKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
