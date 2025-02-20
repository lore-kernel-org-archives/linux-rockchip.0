Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A982BC021B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 10:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98qFwfCwCIwCfzRXsGVe7TXdrHQ9KpZ2iD7GjTSs5to=; b=nHCc7uexi9hStY
	a/z0Mch2Y+D+qwHphqsu/nOurXNnOuI+JbWBFrsQ+BmtQkhafQ39aDvsnXuJSr6coxUBeccwD1xMV
	T0VdkTzw2NuN3WYspicH2FLuorkpBp9YviM1S2AN7O4jltBb/Nnhletkuj1jLXfQgacsjNxjyCPtA
	j8+KM3XwevCLF9eeFsbbMSkg6KBPBVvxtnpi1loIcR8o6MvyXSzWPCEpDL0M/S9EcJS5sWvYkxKLk
	nI5rMZBgwu8j9/lPCa8sm1lcyM/vwDmvRlHr/Ag14Hg/1o3QTn1a7Edlwmk6bwXlnIKCi2svl7dtv
	XdBC7471ruMuU8IlHZdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3U5-00000000DVf-3kdu;
	Thu, 20 Feb 2025 10:08:45 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3U3-00000000DTT-28tE;
	Thu, 20 Feb 2025 10:08:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1740046124; x=1771582124;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=qEEkaGFEKdByIXhxlRz4s/blmxr0i3FKT7WWs7RYcVE=;
  b=JjH7fQ3zl2KHGFYf9gNOL5hrsis6bu1Hyb3zZDBnLrflpHGo0Y2+kltV
   TzXXZxJLLH+a52oq2ubTf89YbCa2uzY4EJFicxf35+Df9qtysFUIwS4Yw
   slBRGT0Uo4UHah7HubrnW2pU5DnOpc/L2oh3bdmshNmMdhnr9d4jsgwG0
   MAzG1lKT8Pddo708yhziBYm34yiFX1qf4bL+hqDO/07MWUGu3IfM9mRnk
   ZSp9RTUf0U047IgdQHDTafNMbfdrYrOCBx2rExoxVq1umdN65DjODKvhw
   al5BUKcgEscuL+Q5nN3aB10KTVQrzuCPO25NusmCp6IkC4R6p2b1GAbyP
   A==;
X-CSE-ConnectionGUID: WfjmW+mWRBeUJ8zhDUs4iw==
X-CSE-MsgGUID: nlSxkwuoRC+uC0pjHDW+wQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44734928"
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; 
   d="scan'208";a="44734928"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2025 02:08:40 -0800
X-CSE-ConnectionGUID: UUemawqKTUWXKRiDeorKDQ==
X-CSE-MsgGUID: hc9L0Du1SByRgSK2VuJbDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="120221268"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO [10.245.244.161]) ([10.245.244.161])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2025 02:08:36 -0800
Message-ID: <92c1b182-5a0b-4d13-9b16-172ac970b62e@intel.com>
Date: Thu, 20 Feb 2025 10:08:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 23/25] drm/xe: Compute dumb-buffer sizes with
 drm_mode_size_dumb()
To: Thomas Zimmermann <tzimmermann@suse.de>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 imx@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 nouveau@lists.freedesktop.org, virtualization@lists.linux.dev,
 spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
 intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250218142542.438557-1-tzimmermann@suse.de>
 <20250218142542.438557-24-tzimmermann@suse.de>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20250218142542.438557-24-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_020843_552235_1472B798 
X-CRM114-Status: GOOD (  14.24  )
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

T24gMTgvMDIvMjAyNSAxNDoyMywgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4gQ2FsbCBkcm1f
bW9kZV9zaXplX2R1bWIoKSB0byBjb21wdXRlIGR1bWItYnVmZmVyIHNjYW5saW5lIHBpdGNoCj4g
YW5kIGJ1ZmZlciBzaXplLiBBbGlnbiB0aGUgcGl0Y2ggdG8gYSBtdWx0aXBsZSBvZiA4LiBBbGln
biB0aGUKPiBidWZmZXIgc2l6ZSBhY2NvcmRpbmcgdG8gaGFyZHdhcmUgcmVxdWlyZW1lbnRzLgo+
IAo+IFhlJ3MgaW50ZXJuYWwgY2FsY3VsYXRpb24gYWxsb3dlZCBmb3IgNjQtYml0IHdpZGUgYnVm
ZmVyIHNpemVzLCBidXQKPiB0aGUgaW9jdGwncyBpbnRlcm5hbCBjaGVja3MgYWx3YXlzIHZlcmlm
aWVkIGFnYWluc3QgMzItYml0IHdpZGUgbGltaXRzLgo+IEhhbmNlLCBpdCBpcyBzYWZlIHRvIGxp
bWl0IHRoZSBkcml2ZXIgY29kZSB0byAzMi1iaXQgY2FsY3VsYXRpb25zIGFzCj4gd2VsbC4KPiAK
PiB2MzoKPiAtIG1lbnRpb24gMzItYml0IGNhbGN1bGF0aW9uIGluIGNvbW1pdCBkZXNjcmlwdGlv
biAoTWF0dGhldykKPiAKPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4KPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+Cj4gQ2M6ICJUaG9tYXMgSGVsbHN0csO2bSIgPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CgoKPiAtLS0K
PiAgIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jIHwgOCArKysrLS0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfYm8uYwo+
IGluZGV4IDc4ZDA5YzVlZDI2ZC4uYjM0ZjQ0NmFkNTdkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS94ZS94ZV9iby5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMKPiBA
QCAtOSw2ICs5LDcgQEAKPiAgICNpbmNsdWRlIDxsaW51eC9ub3NwZWMuaD4KPiAgIAo+ICAgI2lu
Y2x1ZGUgPGRybS9kcm1fZHJ2Lmg+Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX2R1bWJfYnVmZmVycy5o
Pgo+ICAgI2luY2x1ZGUgPGRybS9kcm1fZ2VtX3R0bV9oZWxwZXIuaD4KPiAgICNpbmNsdWRlIDxk
cm0vZHJtX21hbmFnZWQuaD4KPiAgICNpbmNsdWRlIDxkcm0vdHRtL3R0bV9kZXZpY2UuaD4KPiBA
QCAtMjY3MiwxNCArMjY3MywxMyBAQCBpbnQgeGVfYm9fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9m
aWxlICpmaWxlX3ByaXYsCj4gICAJc3RydWN0IHhlX2RldmljZSAqeGUgPSB0b194ZV9kZXZpY2Uo
ZGV2KTsKPiAgIAlzdHJ1Y3QgeGVfYm8gKmJvOwo+ICAgCXVpbnQzMl90IGhhbmRsZTsKPiAtCWlu
dCBjcHAgPSBESVZfUk9VTkRfVVAoYXJncy0+YnBwLCA4KTsKPiAgIAlpbnQgZXJyOwo+ICAgCXUz
MiBwYWdlX3NpemUgPSBtYXhfdCh1MzIsIFBBR0VfU0laRSwKPiAgIAkJeGUtPmluZm8udnJhbV9m
bGFncyAmIFhFX1ZSQU1fRkxBR1NfTkVFRDY0SyA/IFNaXzY0SyA6IFNaXzRLKTsKPiAgIAo+IC0J
YXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT53aWR0aCAqIGNwcCwgNjQpOwo+IC0JYXJncy0+c2l6
ZSA9IEFMSUdOKG11bF91MzJfdTMyKGFyZ3MtPnBpdGNoLCBhcmdzLT5oZWlnaHQpLAo+IC0JCQkg
ICBwYWdlX3NpemUpOwo+ICsJZXJyID0gZHJtX21vZGVfc2l6ZV9kdW1iKGRldiwgYXJncywgU1pf
NjQsIHBhZ2Vfc2l6ZSk7Cj4gKwlpZiAoZXJyKQo+ICsJCXJldHVybiBlcnI7Cj4gICAKPiAgIAli
byA9IHhlX2JvX2NyZWF0ZV91c2VyKHhlLCBOVUxMLCBOVUxMLCBhcmdzLT5zaXplLAo+ICAgCQkJ
ICAgICAgIERSTV9YRV9HRU1fQ1BVX0NBQ0hJTkdfV0MsCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
