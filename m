Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63319D2F02C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 13:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+33EMuJDxkxgOuWZHLSZoE3V+ZPlJ7PmkG0T3onfuK4=; b=dFUS3wvE2xOyvV
	X8X9+eQz4JG9DH9XWsTLR9qbzuOMoNzON5MfPLxMUCVX+sWz7Yj5fympt/lQnw6NAa+JRNyDZpylH
	CmNfrOpf40PuoPmiVLbZ8wO/I45KOpBmpBn0xGeOZyjl49rBLtQSpOyUomBnVdGbbe4qtFcSqbDse
	5+UsC5RFqJ7G46tdPNbLBUrUpIIj8xLuRjufQNuJU+hTgG8llFC6hG7eKTAs0VEdH69C+2hD8bJIN
	mD4BTpvMSnY6W3sdET+bmrfQC60hGtrAiI03zV7X5DaEZNCYvNDzMU9tWRVt6g1sNO2TuXgQiSpMJ
	uMIxBsLgO6fGrzyVIwaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkjaT-0000000ELnf-0Qmn;
	Tue, 27 Jan 2026 13:58:33 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkjaL-0000000ELkO-1xmI;
	Tue, 27 Jan 2026 13:58:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769522305; x=1801058305;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version:content-transfer-encoding;
  bh=og59pwZnyOqe7PNgzDbUl3i3pkVIgIempTHbdxTELvk=;
  b=KVc1UpHbtCBQ5eY+dMTxHSTCLs+H4VENdPD9mM2OdP0fOW3FUpggJxg8
   RULsiPBAaPhg8Ppzji3V1h6sXEfFOdSsW70ryJbKVlk0+/EkPd9L4tcW1
   aDGt5hC8jac42cTtUx+IoUGQY21W9uXCM0tkc/TbYgrAjrictWZgsMsSa
   fghts4ANmDhmN1wWeychArAL/4Y4BberOy76zYkGg8+83JLhYD3RQY/Ki
   Krru2aMEV9PRwb7+EFleKm+Ye3i5qVX+bu5DRHX4eSfj8+2k6b7Waep0p
   5pY60Zo2SlmUMSclapcN2a4ICo6Aw0ZOiDGRMEw3QjEqoj4M91/8tNGBx
   A==;
X-CSE-ConnectionGUID: btez0BeATFuZYtAHw4xPVg==
X-CSE-MsgGUID: MzGkm4iAQeKB3iBOworFcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="73302725"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="73302725"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 05:58:22 -0800
X-CSE-ConnectionGUID: BCzws0wPRNOMRGWv4OMbDg==
X-CSE-MsgGUID: 9fMvMzQpQUu7qdSrTcjCXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="207876830"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.246.148])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 05:58:16 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, Heiko
 =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Louis
 Chauvet <louis.chauvet@bootlin.com>, Haneen Mohammed
 <hamohammed.sa@gmail.com>, Melissa Wen <melissa.srw@gmail.com>
Cc: Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 =?utf-8?Q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>,
 Diederik de Haas
 <diederik@cknow-tech.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v5 1/4] uapi: Provide DIV_ROUND_CLOSEST()
In-Reply-To: <20260127-rk3588-bgcolor-v5-1-b25aa8613211@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260127-rk3588-bgcolor-v5-0-b25aa8613211@collabora.com>
 <20260127-rk3588-bgcolor-v5-1-b25aa8613211@collabora.com>
Date: Tue, 27 Jan 2026 15:58:13 +0200
Message-ID: <baf075b2370a13cddd597a3d421b5f39290d87a4@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_055825_681393_AF923F81 
X-CRM114-Status: GOOD (  19.86  )
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

T24gVHVlLCAyNyBKYW4gMjAyNiwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0
ZWFAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gQ3VycmVudGx5IERJVl9ST1VORF9DTE9TRVNUKCkg
aXMgb25seSBhdmFpbGFibGUgZm9yIHRoZSBrZXJuZWwgdmlhCj4gaW5jbHVkZS9saW51eC9tYXRo
LmguCj4KPiBFeHBvc2UgaXQgdG8gdXNlcmxhbmQgYXMgd2VsbCBieSBhZGRpbmcgX19LRVJORUxf
RElWX1JPVU5EX0NMT1NFU1QoKSBhcwo+IGEgY29tbW9uIGRlZmluaXRpb24gaW4gdWFwaS4KPgo+
IEFkZGl0aW9uYWxseSwgZW5zdXJlIGl0IGFsbG93cyBidWlsZGluZyBJU08gQyBhcHBsaWNhdGlv
bnMgYnkgc3dpdGNoaW5nCj4gZnJvbSB0aGUgJ3R5cGVvZicgR05VIGV4dGVuc2lvbiB0byB0aGUg
SVNPLWZyaWVuZGx5IF9fdHlwZW9mX18uCgpJIGFtIG5vdCBjb252aW5jZWQgdGhhdCBpdCdzIGEg
Z29vZCBpZGVhIHRvIG1ha2UgdGhlIGltcGxlbWVudGF0aW9uIG9mCmtlcm5lbCBESVZfUk9VTkRf
Q0xPU0VTVCgpIHBhcnQgb2YgdGhlIGtlcm5lbCBVQVBJLCB3aGljaCBpcyB3aGF0IHRoaXMKY2hh
bmdlIGVmZmVjdGl2ZWx5IGRvZXMuCgpJJ2QgYXQgbGVhc3QgbGlrZSB0byBnZXQgYW4gYWNrIGZy
b20gQW5keSBTaGV2Y2hlbmtvIGZpcnN0IChDYydkKS4KCgpCUiwKSmFuaS4KCj4gUmV2aWV3ZWQt
Ynk6IE7DrWNvbGFzIEYuIFIuIEEuIFByYWRvIDxuZnJhcHJhZG9AY29sbGFib3JhLmNvbT4KPiBU
ZXN0ZWQtYnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlrQGNrbm93LXRlY2guY29tPgo+IFNp
Z25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxh
Ym9yYS5jb20+Cj4gLS0tCj4gIGluY2x1ZGUvbGludXgvbWF0aC5oICAgICAgIHwgMTggKy0tLS0t
LS0tLS0tLS0tLS0tCj4gIGluY2x1ZGUvdWFwaS9saW51eC9jb25zdC5oIHwgMTcgKysrKysrKysr
KysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21hdGguaCBiL2luY2x1ZGUvbGlu
dXgvbWF0aC5oCj4gaW5kZXggNmRjMWQxZDMyZmJjLi4xZThmYjNlZmJjOGMgMTAwNjQ0Cj4gLS0t
IGEvaW5jbHVkZS9saW51eC9tYXRoLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L21hdGguaAo+IEBA
IC04OSwyMyArODksNyBAQAo+ICB9CQkJCQkJCVwKPiAgKQo+ICAKPiAtLyoKPiAtICogRGl2aWRl
IHBvc2l0aXZlIG9yIG5lZ2F0aXZlIGRpdmlkZW5kIGJ5IHBvc2l0aXZlIG9yIG5lZ2F0aXZlIGRp
dmlzb3IKPiAtICogYW5kIHJvdW5kIHRvIGNsb3Nlc3QgaW50ZWdlci4gUmVzdWx0IGlzIHVuZGVm
aW5lZCBmb3IgbmVnYXRpdmUKPiAtICogZGl2aXNvcnMgaWYgdGhlIGRpdmlkZW5kIHZhcmlhYmxl
IHR5cGUgaXMgdW5zaWduZWQgYW5kIGZvciBuZWdhdGl2ZQo+IC0gKiBkaXZpZGVuZHMgaWYgdGhl
IGRpdmlzb3IgdmFyaWFibGUgdHlwZSBpcyB1bnNpZ25lZC4KPiAtICovCj4gLSNkZWZpbmUgRElW
X1JPVU5EX0NMT1NFU1QoeCwgZGl2aXNvcikoCQkJXAo+IC17CQkJCQkJCVwKPiAtCXR5cGVvZih4
KSBfX3ggPSB4OwkJCQlcCj4gLQl0eXBlb2YoZGl2aXNvcikgX19kID0gZGl2aXNvcjsJCQlcCj4g
LQkoKCh0eXBlb2YoeCkpLTEpID4gMCB8fAkJCQlcCj4gLQkgKCh0eXBlb2YoZGl2aXNvcikpLTEp
ID4gMCB8fAkJCVwKPiAtCSAoKChfX3gpID4gMCkgPT0gKChfX2QpID4gMCkpKSA/CQlcCj4gLQkJ
KCgoX194KSArICgoX19kKSAvIDIpKSAvIChfX2QpKSA6CVwKPiAtCQkoKChfX3gpIC0gKChfX2Qp
IC8gMikpIC8gKF9fZCkpOwlcCj4gLX0JCQkJCQkJXAo+IC0pCj4gKyNkZWZpbmUgRElWX1JPVU5E
X0NMT1NFU1QgX19LRVJORUxfRElWX1JPVU5EX0NMT1NFU1QKPiAgLyoKPiAgICogU2FtZSBhcyBh
Ym92ZSBidXQgZm9yIHU2NCBkaXZpZGVuZHMuIGRpdmlzb3IgbXVzdCBiZSBhIDMyLWJpdAo+ICAg
KiBudW1iZXIuCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9jb25zdC5oIGIvaW5j
bHVkZS91YXBpL2xpbnV4L2NvbnN0LmgKPiBpbmRleCBiOGY2MjllZjEzNWYuLjQ3MTg3NzMyMmY0
NyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvY29uc3QuaAo+ICsrKyBiL2luY2x1
ZGUvdWFwaS9saW51eC9jb25zdC5oCj4gQEAgLTUwLDQgKzUwLDIxIEBACj4gIAo+ICAjZGVmaW5l
IF9fS0VSTkVMX0RJVl9ST1VORF9VUChuLCBkKSAoKChuKSArIChkKSAtIDEpIC8gKGQpKQo+ICAK
PiArLyoKPiArICogRGl2aWRlIHBvc2l0aXZlIG9yIG5lZ2F0aXZlIGRpdmlkZW5kIGJ5IHBvc2l0
aXZlIG9yIG5lZ2F0aXZlIGRpdmlzb3IKPiArICogYW5kIHJvdW5kIHRvIGNsb3Nlc3QgaW50ZWdl
ci4gUmVzdWx0IGlzIHVuZGVmaW5lZCBmb3IgbmVnYXRpdmUKPiArICogZGl2aXNvcnMgaWYgdGhl
IGRpdmlkZW5kIHZhcmlhYmxlIHR5cGUgaXMgdW5zaWduZWQgYW5kIGZvciBuZWdhdGl2ZQo+ICsg
KiBkaXZpZGVuZHMgaWYgdGhlIGRpdmlzb3IgdmFyaWFibGUgdHlwZSBpcyB1bnNpZ25lZC4KPiAr
ICovCj4gKyNkZWZpbmUgX19LRVJORUxfRElWX1JPVU5EX0NMT1NFU1QoeCwgZGl2aXNvcikoCQlc
Cj4gK3sJCQkJCQkJXAo+ICsJX190eXBlb2ZfXyh4KSBfX3ggPSB4OwkJCQlcCj4gKwlfX3R5cGVv
Zl9fKGRpdmlzb3IpIF9fZCA9IGRpdmlzb3I7CQlcCj4gKwkoKChfX3R5cGVvZl9fKHgpKS0xKSA+
IDAgfHwJCQlcCj4gKwkgKChfX3R5cGVvZl9fKGRpdmlzb3IpKS0xKSA+IDAgfHwJCVwKPiArCSAo
KChfX3gpID4gMCkgPT0gKChfX2QpID4gMCkpKSA/CQlcCj4gKwkJKCgoX194KSArICgoX19kKSAv
IDIpKSAvIChfX2QpKSA6CVwKPiArCQkoKChfX3gpIC0gKChfX2QpIC8gMikpIC8gKF9fZCkpOwlc
Cj4gK30JCQkJCQkJXAo+ICspCj4gICNlbmRpZiAvKiBfVUFQSV9MSU5VWF9DT05TVF9IICovCgot
LSAKSmFuaSBOaWt1bGEsIEludGVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
