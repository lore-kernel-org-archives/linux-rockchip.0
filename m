Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17AECE77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 16:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+ER98Tke2LC7eZkAZi7MrVoNZvx0wmmk++xO3YwLlo=; b=w2PCuqc+/dQpcC
	SxlP9SV1GJpobRSLoxMvo4h41Lv/u7040k3QG1BqVuI24gCpVdLzX91m/cBugrWzlj4mTeneRg1bi
	Ywutoit+suwQmrc5Xzbfy82Wd+MIWgngvsgoPfaBC7mnWFNm7oQHD3Q1Ls/xn+Et0uZj2iX8lnNWq
	a03BHwpijrvmwxC9eW+oWyzGY6RLMs0mZCI7vP2rQnj/zljM47SuyQjKMtmbeRLUZUrMu79v5gO5w
	KnN7yhkIGsu1hMXYQXozxzrYuVobWdo0stf1CiDxgoPVeVuy8cwWBsUe7W7UvzuMkF4vHINNlezB3
	nSbAuAmVMHjdgbZO51VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVv30-0000000CbLz-2l9U;
	Thu, 09 Jan 2025 16:06:14 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVv2y-0000000CbKU-1dQl;
	Thu, 09 Jan 2025 16:06:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1736438772; x=1767974772;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=p4XkuorIpNoSEU2HBpQ1O27DvwV5LvulfkLyMZfyAfg=;
  b=kc6YdHA+f+SZjxp8KzB62WRPem4bWEcS8YiNIy7PHCFhyaofuvB7NV2f
   IME/SDVAnup+dTqH7ZbtMCq9fv9J0SuKqWwJXS7kJ4vCMYyQd6QJ+rAGJ
   HtU12PcqSeg9VB8k6y6wHHl1R6cTpk8jd36TA0E7vtNxn3Q7qAe6ASH+K
   Cy2TYu9HinHmKPKVsP9IBl9saTzUeXYmvyHiUAo2uiGZhkupQ80VV3PO8
   y5YyooVO2/vCmT5qwGtIJeirTxnlRnELWKQp69/r9hKG2BnTrOXsJApF3
   tA95IbVgsudvFVzQa72Wt0VX64Ain9vpUzJCnQ/LwOaQ763e6zidg1JzE
   g==;
X-CSE-ConnectionGUID: 5J85ZrgxR/GzSngWDu1I4Q==
X-CSE-MsgGUID: oDq0zriSQjijNQ2WzDXSrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="62086134"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; 
   d="scan'208";a="62086134"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2025 08:05:55 -0800
X-CSE-ConnectionGUID: gYM7jUeoQau2+oJbNyjiWQ==
X-CSE-MsgGUID: 8PkbOk3sQpqIzHIL0w463A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; 
   d="scan'208";a="103967271"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO [10.245.245.241]) ([10.245.245.241])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2025 08:05:50 -0800
Message-ID: <91c904f8-ba47-4595-be65-6fb57dcc9c64@intel.com>
Date: Thu, 9 Jan 2025 16:05:47 +0000
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
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20250109150310.219442-24-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_080612_470877_B4D04B93 
X-CRM114-Status: GOOD (  14.50  )
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

T24gMDkvMDEvMjAyNSAxNDo1NywgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4gQ2FsbCBkcm1f
bW9kZV9zaXplX2R1bWIoKSB0byBjb21wdXRlIGR1bWItYnVmZmVyIHNjYW5saW5lIHBpdGNoCj4g
YW5kIGJ1ZmZlciBzaXplLiBBbGlnbiB0aGUgcGl0Y2ggdG8gYSBtdWx0aXBsZSBvZiA4LiBBbGln
biB0aGUKPiBidWZmZXIgc2l6ZSBhY2NvcmRpbmcgdG8gaGFyZHdhcmUgcmVxdWlyZW1lbnRzLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
Pgo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiBDYzog
IlRob21hcyBIZWxsc3Ryw7ZtIiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4g
Q2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS94ZS94ZV9iby5jIHwgOCArKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3hlL3hlX2JvLmMgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfYm8uYwo+IGluZGV4IGU2
Yzg5NmFkNTYwMi4uZDc1ZTNjMzlhYjE0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94
ZS94ZV9iby5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2JvLmMKPiBAQCAtOCw2ICs4
LDcgQEAKPiAgICNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+Cj4gICAKPiAgICNpbmNsdWRlIDxk
cm0vZHJtX2Rydi5oPgo+ICsjaW5jbHVkZSA8ZHJtL2RybV9kdW1iX2J1ZmZlcnMuaD4KPiAgICNp
bmNsdWRlIDxkcm0vZHJtX2dlbV90dG1faGVscGVyLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL2RybV9t
YW5hZ2VkLmg+Cj4gICAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fZGV2aWNlLmg+Cj4gQEAgLTI1MzUs
MTQgKzI1MzYsMTMgQEAgaW50IHhlX2JvX2R1bWJfY3JlYXRlKHN0cnVjdCBkcm1fZmlsZSAqZmls
ZV9wcml2LAo+ICAgCXN0cnVjdCB4ZV9kZXZpY2UgKnhlID0gdG9feGVfZGV2aWNlKGRldik7Cj4g
ICAJc3RydWN0IHhlX2JvICpibzsKPiAgIAl1aW50MzJfdCBoYW5kbGU7Cj4gLQlpbnQgY3BwID0g
RElWX1JPVU5EX1VQKGFyZ3MtPmJwcCwgOCk7Cj4gICAJaW50IGVycjsKPiAgIAl1MzIgcGFnZV9z
aXplID0gbWF4X3QodTMyLCBQQUdFX1NJWkUsCj4gICAJCXhlLT5pbmZvLnZyYW1fZmxhZ3MgJiBY
RV9WUkFNX0ZMQUdTX05FRUQ2NEsgPyBTWl82NEsgOiBTWl80Syk7Cj4gICAKPiAtCWFyZ3MtPnBp
dGNoID0gQUxJR04oYXJncy0+d2lkdGggKiBjcHAsIDY0KTsKPiAtCWFyZ3MtPnNpemUgPSBBTElH
TihtdWxfdTMyX3UzMihhcmdzLT5waXRjaCwgYXJncy0+aGVpZ2h0KSwKPiAtCQkJICAgcGFnZV9z
aXplKTsKPiArCWVyciA9IGRybV9tb2RlX3NpemVfZHVtYihkZXYsIGFyZ3MsIFNaXzY0LCBwYWdl
X3NpemUpOwoKQUZBSUNUIHRoaXMgbG9va3MgdG8gY2hhbmdlIHRoZSBiZWhhdmlvdXIsIHdoZXJl
IHU2NCBzaXplIHdhcyAKdGVjaG5pY2FsbHkgcG9zc2libGUgYW5kIHdhcyBhbGxvd2VkIGdpdmVu
IHRoYXQgYXJncy0+c2l6ZSBpcyB1NjQsIGJ1dCAKdGhpcyBoZWxwZXIgaXMgbGltaXRpbmcgdGhl
IHNpemUgdG8gdTMyLiBJcyB0aGF0IGludGVudGlvbmFsPyBJZiBzbywgd2UgCnNob3VsZCBwcm9i
YWJseSBtYWtlIHRoYXQgY2xlYXIgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKPiArCWlmIChlcnIp
Cj4gKwkJcmV0dXJuIGVycjsKPiAgIAo+ICAgCWJvID0geGVfYm9fY3JlYXRlX3VzZXIoeGUsIE5V
TEwsIE5VTEwsIGFyZ3MtPnNpemUsCj4gICAJCQkgICAgICAgRFJNX1hFX0dFTV9DUFVfQ0FDSElO
R19XQywKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
