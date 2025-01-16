Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA539C02180
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 10:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRe0BQebcnbdqb/nRG15IEJbpuISP73mmURiUCzeSF0=; b=ENQzIOCezqxDs9
	Ln91HxwXp2U1tJsaDRFkyddy0vB3FH5XyKsHlszVeaABm7+CK07R0NkVQoFubXPgi0HB79kpXemwU
	OcXjzaZGeWfC0zI3ndgv+0FT7dxJR/WHZlqQe3UjWTnPHUcDMtOwFdJGScAS0yxACkAhj4eY5zjZB
	bPE94A3JBtxUWB5iK+L7cYvGphJrVrSwGHPatYFRCLo1/opOexRDn/7xSWwQfX8TjBC4Q4JhXY4pX
	na3vYf203OFv/BJ1BNrra+FuQilgnX531IjjlSQIcH6qRDwhR8Fj4gjJOBOAsFWPYnARm6nNtx0m3
	MPhM4339oUw6RkQ7bf6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYN5T-0000000EUzq-1uNl;
	Thu, 16 Jan 2025 10:26:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYN5R-0000000EUyq-1LQr;
	Thu, 16 Jan 2025 10:26:54 +0000
Received: from [192.168.88.20] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 42498526;
	Thu, 16 Jan 2025 11:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1737023153;
	bh=Z7ediVkgoetAGoCSEC+NS9LE30jZLpQmaH2NAmg+fKo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=sAbVtvKbp7o8SfyrbwqpGIwVYmdgJpMjZmC6qEgRNe2H25LicDH6k69guisjqJioP
	 8SncRl1CoC+3SXf6Y8cJQEuIj38aZG4lFFJrCQ0l8buZDLY37H2yUZEQna2GSs0Dn+
	 1llb/TtQTaZKCXEOlL7x1MNtOgUhrQcJ6XdrIu2U=
Message-ID: <710224b4-1b40-49e1-9985-3340c6e4138f@ideasonboard.com>
Date: Thu, 16 Jan 2025 12:26:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 25/25] drm/xlnx: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
To: Geert Uytterhoeven <geert@linux-m68k.org>
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
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-26-tzimmermann@suse.de>
 <cdbe483d-0895-47aa-8c83-1c28220f4a02@ideasonboard.com>
 <bc97b92e-7f8a-4b92-af8a-20fa165ead55@suse.de>
 <f3ba05c7-6e49-4641-a3f9-ba418ebdb7c3@ideasonboard.com>
 <c6735280-7c32-4319-8ca9-a7305d8117c3@suse.de>
 <d67adb03-5cd0-4ac9-af58-cf4446dacee3@ideasonboard.com>
 <0ea6be58-0e04-4172-87cd-064a3e4a43bc@suse.de>
 <f35cb350-6be9-48ca-ad7e-e9dd418281d5@ideasonboard.com>
 <4af0b6a7-c16a-4187-bbf5-365a9c86de21@suse.de>
 <e327ad84-b5c9-4480-b873-dc3aca605538@ideasonboard.com>
 <a2bbeb47-2569-4ee0-9265-92bab139bdc6@suse.de>
 <f3833771-fcd7-45dc-9019-1525fef34429@ideasonboard.com>
 <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
Content-Language: en-US
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <CAMuHMdXxYa+Na3XxpLTy=-eUL_zQ9kAiUKYu-E04u3KWApusSA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_022653_498996_692C8B62 
X-CRM114-Status: GOOD (  21.83  )
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

SGksCgpPbiAxNi8wMS8yMDI1IDEyOjE3LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gT24g
VGh1LCBKYW4gMTYsIDIwMjUgYXQgMTE6MDPigK9BTSBUb21pIFZhbGtlaW5lbgo+IDx0b21pLnZh
bGtlaW5lbkBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPj4gT24gMTYvMDEvMjAyNSAxMDowOSwg
VGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4+PiBBbSAxNS4wMS4yNSB1bSAxNToyMCBzY2hyaWVi
IFRvbWkgVmFsa2VpbmVuOgo+Pj4gWy4uLl0KPj4+Pgo+Pj4+IE15IHBvaW50IGlzIHRoYXQgd2Ug
aGF2ZSB0aGUgY3VycmVudCBVQVBJLCBhbmQgd2UgaGF2ZSB1c2Vyc3BhY2UgdXNpbmcKPj4+PiBp
dCwgYnV0IHdlIGRvbid0IGhhdmUgY2xlYXIgcnVsZXMgd2hhdCB0aGUgaW9jdGwgZG9lcyB3aXRo
IHNwZWNpZmljCj4+Pj4gcGFyYW1ldGVycywgYW5kIHdlIGRvbid0IGRvY3VtZW50IGhvdyBpdCBo
YXMgdG8gYmUgdXNlZC4KPj4+Pgo+Pj4+IFBlcmhhcHMgdGhlIHNpdHVhdGlvbiBpcyBiYWQsIGFu
ZCBhbGwgd2UgY2FuIHJlYWxseSBzYXkgaXMgdGhhdAo+Pj4+IENSRUFURV9EVU1CIG9ubHkgd29y
a3MgZm9yIHVzZSB3aXRoIHNpbXBsZSBSR0IgZm9ybWF0cywgYW5kIHRoZQo+Pj4+IGJlaGF2aW9y
IGZvciBhbGwgb3RoZXIgZm9ybWF0cyBpcyBwbGF0Zm9ybSBzcGVjaWZpYy4gQnV0IEkgdGhpbmsg
ZXZlbgo+Pj4+IHRoYXQgd291bGQgYmUgdmFsdWFibGUgaW4gdGhlIFVBUEkgZG9jcy4KPj4+Cj4+
PiBUbyBiZSBob25lc3QsIEkgd291bGQgbm90IHdhbnQgdG8gc3BlY2lmeSBiZWhhdmlvciBmb3Ig
YW55dGhpbmcgYnV0IHRoZQo+Pj4gbGluZWFyIFJHQiBmb3JtYXRzLiBJZiBhbnl0aGluZywgSSdk
IHRha2UgRGFuaWVsJ3MgcmVwbHkgbWFpbCBmb3IKPj4+IGRvY3VtZW50YXRpb24gYXMtaXMuIEFu
eW9uZSBzdHJldGNoaW5nIHRoZSBVQVBJIGJleW9uZCBSR0IgaXMgb24gdGhlaXIgb3duLgo+Pj4K
Pj4+PiBUaGlua2luZyBhYm91dCB0aGlzLCBJIHdvbmRlciBpZiB0aGlzIGNoYW5nZSBpcyBnb29k
IGZvciBvbWFwZHJtIG9yCj4+Pj4geGlsaW54IChwcm9iYWJseSBvdGhlciBwbGF0Zm9ybXMgdG9v
IHRoYXQgc3VwcG9ydCBub24tc2ltcGxlIG5vbi1SR0IKPj4+PiBmb3JtYXRzIHZpYSBkdW1iIGJ1
ZmZlcnMpOiB3aXRob3V0IHRoaXMgcGF0Y2gsIGluIGJvdGggZHJpdmVycywgdGhlCj4+Pj4gcGl0
Y2ggY2FsY3VsYXRpb25zIGp1c3QgdGFrZSB0aGUgYnBwIGFzIGJpdC1wZXItcGl4ZWxzLCBhbGln
biBpdCB1cCwKPj4+PiBhbmQgdGhhdCdzIGl0Lgo+Pj4+Cj4+Pj4gV2l0aCB0aGlzIHBhdGNoIHdl
IGVuZCB1cCB1c2luZyBkcm1fZHJpdmVyX2NvbG9yX21vZGVfZm9ybWF0KCksIGFuZAo+Pj4+IGFs
aWduaW5nIGJ1ZmZlcnMgYWNjb3JkaW5nIHRvIFJHQiBmb3JtYXRzIGZpZ3VyZWQgb3V0IHZpYSBo
ZXVyaXN0aWNzLgo+Pj4+IEl0IGRvZXMgaGFwcGVuIHRvIHdvcmssIGZvciB0aGUgZm9ybWF0cyBJ
IHRlc3RlZCwgYnV0IGl0IHNvdW5kcyBsaWtlCj4+Pj4gc29tZXRoaW5nIHRoYXQgbWlnaHQgZWFz
aWx5IG5vdCB3b3JrLCBhcyBpdCdzIGRvaW5nIGFkanVzdG1lbnRzIGJhc2VkCj4+Pj4gb24gd3Jv
bmcgZm9ybWF0Lgo+Pj4+Cj4+Pj4gU2hvdWxkIHdlIGhhdmUgYW5vdGhlciB2ZXJzaW9uIG9mIGRy
bV9tb2RlX3NpemVfZHVtYigpIHdoaWNoIGp1c3QKPj4+PiBjYWxjdWxhdGVzIHVzaW5nIHRoZSBi
cHAsIHdpdGhvdXQgdGhlIGRybV9kcml2ZXJfY29sb3JfbW9kZV9mb3JtYXQoKQo+Pj4+IHBhdGg/
IE9yIGRvZXMgdGhlIGRybV9kcml2ZXJfY29sb3JfbW9kZV9mb3JtYXQoKSBwYXRoIHByb3ZpZGUg
c29tZQo+Pj4+IHZhbHVlIGZvciB0aGUgZHJpdmVycyB0aGF0IGRvIG5vdCBjdXJyZW50bHkgZG8g
YW55dGhpbmcgc2ltaWxhcj8KPj4+Cj4+PiBXaXRoIHRoZSBSR0Itb25seSBydWxlLCB1c2luZyBk
cm1fZHJpdmVyX2NvbG9yX21vZGVfZm9ybWF0KCkgbWFrZXMKPj4+IHNlbnNlLiBJdCBhbGlnbnMg
ZHVtYiBidWZmZXJzIGFuZCB2aWRlbz0sIHByb3ZpZGVzIGVycm9yIGNoZWNraW5nLCBhbmQKPj4+
IG92ZXJhbGwgaGFybW9uaXplcyBjb2RlLiBUaGUgZmFsbGJhY2sgaXMgb25seSByZXF1aXJlZCBi
ZWNhdXNlIG9mIHRoZQo+Pj4gZXhpc3Rpbmcgb2RkIGNhc2VzIHRoYXQgYWxyZWFkeSBiZW5kIHRo
ZSBVQVBJJ3MgcnVsZXMuCj4+Cj4+IEkgaGF2ZSB0byBkaXNhZ3JlZSBoZXJlLgo+Pgo+PiBPbiB0
aGUgcGxhdGZvcm1zIEkgaGF2ZSBiZWVuIHVzaW5nIChvbWFwLCB0aWRzcywgeGlsaW54LCByY2Fy
KSB0aGUgZHVtYgo+PiBidWZmZXJzIGFyZSB0aGUgb25seSBidWZmZXJzIHlvdSBjYW4gZ2V0IGZy
b20gdGhlIERSTSBkcml2ZXIuIFRoZSBkdW1iCj4+IGJ1ZmZlcnMgaGF2ZSBiZWVuIHVzZWQgdG8g
YWxsb2NhdGUgbGluZWFyIGFuZCBtdWx0aXBsYW5hciBZVVYgYnVmZmVycwo+PiBmb3IgYSB2ZXJ5
IGxvbmcgdGltZSBvbiB0aG9zZSBwbGF0Zm9ybXMuCj4+Cj4+IEkgdHJpZWQgdG8gbG9vayBhcm91
bmQsIGJ1dCBJIGRpZCBub3QgZmluZCBhbnkgbWVudGlvbnMgdGhhdCBDUkVBVEVfRFVNQgo+PiBz
aG91bGQgb25seSBiZSB1c2VkIGZvciBSR0IgYnVmZmVycy4gSXMgYW55b25lIG91dHNpZGUgdGhl
IGNvcmUKPj4gZGV2ZWxvcGVycyBldmVuIGF3YXJlIG9mIGl0Pwo+Pgo+PiBJZiB3ZSBkb24ndCB1
c2UgZHVtYiBidWZmZXJzIHRoZXJlLCB3aGVyZSBkbyB3ZSBnZXQgdGhlIGJ1ZmZlcnM/IE1heWJl
Cj4+IGZyb20gYSB2NGwyIGRldmljZSBvciBmcm9tIGEgZ3B1IGRldmljZSwgYnV0IG9mdGVuIHlv
dSBkb24ndCBoYXZlIHRob3NlLgo+PiBETUFfSEVBUCBpcyB0aGVyZSwgb2YgY291cnNlLgo+IAo+
IFdoeSBjYW4ndCB0aGVyZSBiZSBhIHZhcmlhbnQgdGhhdCB0YWtlcyBhIHByb3BlciBmb3VyY2Mg
Zm9ybWF0IGluc3RlYWQgb2YKPiBhbiBpbXByZWNpc2UgYnBwIHZhbHVlPwoKVGhlcmUgY2FuLCBi
dXQgaXQncyBzb21ld2hhdCBhIGRpZmZlcmVudCB0b3BpYywgYWx0aG91Z2ggaXQncyBiZWVuIApj
b3ZlcmVkIGEgYml0IGluIHRoaXMgdGhyZWFkLgoKTXkgc3BlY2lmaWMgY29uY2VybiBoZXJlIGlz
IHRoZSBjdXJyZW50IENSRUFURV9EVU1CLCBhbmQgKG5vdCkgY2hhbmdpbmcgCmhvdyBpdCBiZWhh
dmVzLgoKICBUb21pCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
