Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7969EE77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKtqsk2PEtCIZxHkXq9P/FAYw1VDKzc+kNbId13MNxw=; b=zjy7PRK+OQcYKE
	ODnoMzpmZn1j/J0Vz45n5BSXDljROtJKYI7INb9F49OgPrUvr2NHB2nK6tUxY30HKO9/9FOf4mGyg
	5e4BaxaDhXvnzP+iWDMHQ9WWheeBFRolyYz53iw8MImeFmVTun+VGYiEqTOQl/g16/98r7O8AcGh1
	xp97Jhu4gkMwI5uB7EerTefhhXrzT9mX1kfFlVRgwKtMFh378JLrkigkbLRBUoDvtM7Om2utK7nTX
	o1zp++7wVikE2Ga51NgA7zyV5np73nP+vBRSTxYB5IHtYL3+hdG2Wrn8uu8khFRgjfEakI+pJoC83
	jPVgClCYO8C1BH5naRdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVw82-0000000Cnzc-0iMH;
	Thu, 09 Jan 2025 17:15:30 +0000
Received: from [198.175.65.19] (helo=mgamail.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVw7z-0000000Cny8-14kh;
	Thu, 09 Jan 2025 17:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736442928; x=1767978928;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=iHe0e5c+fmzIEFb4JwfVINvpf7LWF6/4nvNtj0QRgPQ=;
  b=nATPp2WHRJwj2pOtxT3EETNB4h3rnjrEjFHxCjrbN9VINDPHxuQV0c8p
   9FgOmcG7fZGoefkcQvtmShV/lptx8iPhozMDqIqJxxZa1mSAPjvnK2AVJ
   yi7GDWmqvWa/xVlLwFl/tAnqdxA2rryrlRm9eAS/lmPO5NDrRV6v5puBe
   9SBhelbWBUiplQcsk6ONJiRvWAxkkxvo+LuLiw8mgWNbJ4Fzf5i7ajTEU
   KuooNqxRj4u9wqWz+ur6GrpTztEV0fcRtdYVS5v548G+iOAg/aHdsYZcY
   ojYrz1VKw/v5dXPFb4arvfsmUCrYlXm9Wsl0mT35G95asFCeaRD/Zb5yV
   g==;
X-CSE-ConnectionGUID: SLL+vdtXR2Kka2yVVDRs6g==
X-CSE-MsgGUID: P7GPPGeSSAy+qcVAQlAlwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36604452"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; 
   d="scan'208";a="36604452"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2025 09:15:26 -0800
X-CSE-ConnectionGUID: sCHGnpr3S22msRSMnEsaNw==
X-CSE-MsgGUID: Kiw4VfoXQbSJcARHoMEU4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="140776648"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO [10.245.245.241]) ([10.245.245.241])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2025 09:15:20 -0800
Message-ID: <ec240a46-3fe1-46fa-84bc-2f962d7441ce@intel.com>
Date: Thu, 9 Jan 2025 17:15:17 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 23/25] drm/xe: Compute dumb-buffer sizes with
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
References: <20250109150310.219442-1-tzimmermann@suse.de>
 <20250109150310.219442-24-tzimmermann@suse.de>
 <91c904f8-ba47-4595-be65-6fb57dcc9c64@intel.com>
 <6666af19-a98d-41d7-8329-7b50807c04a9@suse.de>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <6666af19-a98d-41d7-8329-7b50807c04a9@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_091527_339000_9107392C 
X-CRM114-Status: GOOD (  17.41  )
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

T24gMDkvMDEvMjAyNSAxNjoyNiwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4gSGkKPiAKPiAK
PiBBbSAwOS4wMS4yNSB1bSAxNzowNSBzY2hyaWViIE1hdHRoZXcgQXVsZDoKPj4gT24gMDkvMDEv
MjAyNSAxNDo1NywgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4+PiBDYWxsIGRybV9tb2RlX3Np
emVfZHVtYigpIHRvIGNvbXB1dGUgZHVtYi1idWZmZXIgc2NhbmxpbmUgcGl0Y2gKPj4+IGFuZCBi
dWZmZXIgc2l6ZS4gQWxpZ24gdGhlIHBpdGNoIHRvIGEgbXVsdGlwbGUgb2YgOC4gQWxpZ24gdGhl
Cj4+PiBidWZmZXIgc2l6ZSBhY2NvcmRpbmcgdG8gaGFyZHdhcmUgcmVxdWlyZW1lbnRzLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
Pgo+Pj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+Pj4g
Q2M6ICJUaG9tYXMgSGVsbHN0csO2bSIgPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
Pgo+Pj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4+IC0tLQo+
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMgfCA4ICsrKystLS0tCj4+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfYm8uYyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94
ZV9iby5jCj4+PiBpbmRleCBlNmM4OTZhZDU2MDIuLmQ3NWUzYzM5YWIxNCAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9iby5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
eGUveGVfYm8uYwo+Pj4gQEAgLTgsNiArOCw3IEBACj4+PiDCoCAjaW5jbHVkZSA8bGludXgvZG1h
LWJ1Zi5oPgo+Pj4gwqAgwqAgI2luY2x1ZGUgPGRybS9kcm1fZHJ2Lmg+Cj4+PiArI2luY2x1ZGUg
PGRybS9kcm1fZHVtYl9idWZmZXJzLmg+Cj4+PiDCoCAjaW5jbHVkZSA8ZHJtL2RybV9nZW1fdHRt
X2hlbHBlci5oPgo+Pj4gwqAgI2luY2x1ZGUgPGRybS9kcm1fbWFuYWdlZC5oPgo+Pj4gwqAgI2lu
Y2x1ZGUgPGRybS90dG0vdHRtX2RldmljZS5oPgo+Pj4gQEAgLTI1MzUsMTQgKzI1MzYsMTMgQEAg
aW50IHhlX2JvX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAKPj4+ICpmaWxlX3ByaXYsCj4+
PiDCoMKgwqDCoMKgIHN0cnVjdCB4ZV9kZXZpY2UgKnhlID0gdG9feGVfZGV2aWNlKGRldik7Cj4+
PiDCoMKgwqDCoMKgIHN0cnVjdCB4ZV9ibyAqYm87Cj4+PiDCoMKgwqDCoMKgIHVpbnQzMl90IGhh
bmRsZTsKPj4+IC3CoMKgwqAgaW50IGNwcCA9IERJVl9ST1VORF9VUChhcmdzLT5icHAsIDgpOwo+
Pj4gwqDCoMKgwqDCoCBpbnQgZXJyOwo+Pj4gwqDCoMKgwqDCoCB1MzIgcGFnZV9zaXplID0gbWF4
X3QodTMyLCBQQUdFX1NJWkUsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgeGUtPmluZm8udnJhbV9m
bGFncyAmIFhFX1ZSQU1fRkxBR1NfTkVFRDY0SyA/IFNaXzY0SyA6IFNaXzRLKTsKPj4+IMKgIC3C
oMKgwqAgYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT53aWR0aCAqIGNwcCwgNjQpOwo+Pj4gLcKg
wqDCoCBhcmdzLT5zaXplID0gQUxJR04obXVsX3UzMl91MzIoYXJncy0+cGl0Y2gsIGFyZ3MtPmhl
aWdodCksCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwYWdlX3NpemUpOwo+Pj4g
K8KgwqDCoCBlcnIgPSBkcm1fbW9kZV9zaXplX2R1bWIoZGV2LCBhcmdzLCBTWl82NCwgcGFnZV9z
aXplKTsKPj4KPj4gQUZBSUNUIHRoaXMgbG9va3MgdG8gY2hhbmdlIHRoZSBiZWhhdmlvdXIsIHdo
ZXJlIHU2NCBzaXplIHdhcyAKPj4gdGVjaG5pY2FsbHkgcG9zc2libGUgYW5kIHdhcyBhbGxvd2Vk
IGdpdmVuIHRoYXQgYXJncy0+c2l6ZSBpcyB1NjQsIGJ1dCAKPj4gdGhpcyBoZWxwZXIgaXMgbGlt
aXRpbmcgdGhlIHNpemUgdG8gdTMyLiBJcyB0aGF0IGludGVudGlvbmFsPyBJZiBzbywgCj4+IHdl
IHNob3VsZCBwcm9iYWJseSBtYWtlIHRoYXQgY2xlYXIgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgo+
IAo+IFRoYXQncyBhbiBpbnRlcmVzdGluZyBvYnNlcnZhdGlvbjsgdGhhbmtzLiBUaGUgaW9jdGwn
cyBpbnRlcm5hbCBjaGVja3MgCj4gaGF2ZSBhbHdheXMgbGltaXRlZCB0aGUgc2l6ZSB0byAzMiBi
aXQuIFsxXSBJIHRoaW5rIGl0IGlzIG5vdCBzdXBwb3NlZCAKPiB0byBiZSBsYXJnZXIgdGhhbiB0
aGF0LiBXZSBjYW4gY2hhbmdlIHRoZSBoZWxwZXIgdG8gc3VwcG9ydCA2NC1iaXQgc2l6ZXMgCj4g
YXMgd2VsbC4KCkFoLCBJIG1pc3NlZCB0aGUgaW50ZXJuYWwgY2hlY2suCgo+IAo+IEhhdmluZyBz
YWlkIHRoYXQsIGlzIHRoZXJlIGFueSB1c2UgY2FzZT8gRHVtYiBidWZmZXJzIGFyZSBmb3Igc29m
dHdhcmUgCj4gcmVuZGVyaW5nIG9ubHkuIEFsbG9jYXRpbmcgbW9yZSB0aGFuIGEgZmV3IGRvemVu
IE1pQiBzZWVtcyBsaWtlIGEgCj4gbWlzdGFrZS4gTWF5YmUgd2Ugc2hvdWxkIHJhdGhlciBsaW1p
dCB0aGUgYWxsb3dlZCBhbGxvY2F0aW9uIHNpemUgaW5zdGVhZD8KClllYWgsIEkgZG91YnQgdGhl
cmUgYXJlIGFueSByZWFsIHVzZXJzLiBHaXZlbiB0aGUgZXhpc3RpbmcgaW50ZXJuYWwgCmNoZWNr
LCBsaW1pdGluZyB0byB1MzIgbWFrZXMgc2Vuc2UgdG8gbWUuCgo+IAo+IEJlc3QgcmVnYXJkcwo+
IFRob21hcwo+IAo+IFsxXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMi42
L3NvdXJjZS9kcml2ZXJzL2dwdS9kcm0vIAo+IGRybV9kdW1iX2J1ZmZlcnMuYyNMODIKPiAKPj4K
Pj4+ICvCoMKgwqAgaWYgKGVycikKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+Pj4g
wqAgwqDCoMKgwqDCoCBibyA9IHhlX2JvX2NyZWF0ZV91c2VyKHhlLCBOVUxMLCBOVUxMLCBhcmdz
LT5zaXplLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUk1f
WEVfR0VNX0NQVV9DQUNISU5HX1dDLAo+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
