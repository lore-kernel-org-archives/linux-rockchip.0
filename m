Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D9F6C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 15:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXkcMb2tmqxeQxeBZBRRPGefFEVw48t5zBwDBRY/1OU=; b=1XkRE3BUZDQVST
	zGXcedrXQ5nZ4K6QxeBFg3hj9p/GPbS6PLEevytFYGbxPeD7ITZl2J+INxNGFI2YBfaSDONXrgbKz
	wM3PF6byJEgJvhRbSWp1r13sNT3DyQvG4fjNS9fQ64CActr6nzBOKFMIoxuOoyyJhp+XfhvRJ48Vc
	rPTiZgqBAsIuINobdk5ZgGcYij/11fCvEde/Snaydrv3SBpe7QCStGZpmx/vfwBSLhb/e84lqXF9K
	PfRY/PfxAh17wLD2cit+6UvxEwwEQGHJT39DanU82E+hikpA41uHC2O1/g7PrFTCG2Kcor81I2hM/
	o7S58n2orh2SVCu5N8uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpVDe-00000009oex-2BDf;
	Wed, 27 Mar 2024 15:29:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpVDZ-00000009obG-2P19
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 15:29:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 63CE6615BC
	for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 15:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1030AC433B1
	for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 15:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711553363;
	bh=J0FtqkoqtSoPeUA98W8fjiXSUWfIrwK4RE1QO+34rPs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=nl/zDVixGrTLeyXsUz126UKXQtIBJpjLSBMiXPt2B6wuqWjtineWSmEc+c8gI7SwW
	 dDQ2toiEL3xzGoDbc1meDoU5Ii3vR5L9laK9tNQLl/7fiLjfUCNeYpxoUUSDyW4Sbf
	 hMsMI8ih7So4x2i9bFEMv3Yi3JHwDl2Gf7Fg3btifFMr3m3s2CEBtlWpXnbQMOoVjy
	 KvqhTUAyMvbdfozYJ75BF+KEtlkO8Z3+xjkNZCtCgFX6FBgY0i8seR15NhhXpET/cX
	 cx1x1oAPhlcOUKPxjhoXCLGPQd7pDcUzsMrAs+8cN4bIRV/1MLXOQwNxA8FMOG/jZR
	 lB5cvwCsBNAsQ==
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5a536642635so601591eaf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 08:29:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXyqoHSmdPrI7v9v5TTEExEFU9i4OVFOt2OSCbpU5pNfVvSn0s/4a/ZTLtPAH+wiLWaPOV9lUiPq/VM2MlcA+OYgvimb3Xe3Z4aIZXliZvFOqCb
X-Gm-Message-State: AOJu0YwVCWSIbl49VZaaw0bAG5jfq3f+v23wHC48aH6jEnSlwiRhRtfO
	uGia2hPf0YjSPLgEoNKS8dvJN+O7jip2cE+oXC/5AbVnL8N80oun1mZYte9hXLkqp/UiM14l/tQ
	xGxPHzEq4qp2peS2Z1v/EkWUJpLI=
X-Google-Smtp-Source: AGHT+IG07sThI/qV4cALaRKmThkl0638APMo19Co2Zmx32nhPGF86ucjLP5HzUjuGu6a64ZLWksTrngsuIAMFom9xuE=
X-Received: by 2002:a05:6870:17a2:b0:22a:1e39:8be4 with SMTP id
 r34-20020a05687017a200b0022a1e398be4mr11684284oae.2.1711553362025; Wed, 27
 Mar 2024 08:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240321102100.2401340-1-ye.zhang@rock-chips.com> <c7b2cb6f-3e14-45c3-9e22-11c0a9422bce@arm.com>
In-Reply-To: <c7b2cb6f-3e14-45c3-9e22-11c0a9422bce@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 27 Mar 2024 16:29:11 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0hE+erpYAiYGbQS_D8u==-ovvut_cyGAMj47Rm5FD7HVg@mail.gmail.com>
Message-ID: <CAJZ5v0hE+erpYAiYGbQS_D8u==-ovvut_cyGAMj47Rm5FD7HVg@mail.gmail.com>
Subject: Re: [PATCH v2] thermal: devfreq_cooling: Fix perf state when
 calculate dfc res_util
To: Lukasz Luba <lukasz.luba@arm.com>, Ye Zhang <ye.zhang@rock-chips.com>
Cc: tao.huang@rock-chips.com, heiko@sntech.de, daniel.lezcano@linaro.org, 
	finley.xiao@rock-chips.com, linux-rockchip@lists.infradead.org, 
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, rui.zhang@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_082933_798539_1A1F409F 
X-CRM114-Status: GOOD (  17.47  )
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

T24gRnJpLCBNYXIgMjIsIDIwMjQgYXQgOTo1MOKAr0FNIEx1a2FzeiBMdWJhIDxsdWthc3oubHVi
YUBhcm0uY29tPiB3cm90ZToKPgo+Cj4KPiBPbiAzLzIxLzI0IDEwOjIxLCBZZSBaaGFuZyB3cm90
ZToKPiA+IFRoZSBpc3N1ZSBvY2N1cnMgd2hlbiB0aGUgZGV2ZnJlcSBjb29saW5nIGRldmljZSB1
c2VzIHRoZSBFTSBwb3dlciBtb2RlbAo+ID4gYW5kIHRoZSBnZXRfcmVhbF9wb3dlcigpIGNhbGxi
YWNrIGlzIHByb3ZpZGVkIGJ5IHRoZSBkcml2ZXIuCj4gPgo+ID4gVGhlIEVNIHBvd2VyIHRhYmxl
IGlzIHNvcnRlZCBhc2NlbmRpbmfvvIxjYW4ndCBpbmRleCB0aGUgdGFibGUgYnkgY29vbGluZwo+
ID4gZGV2aWNlIHN0YXRl77yMc28gY29udmVydCBjb29saW5nIHN0YXRlIHRvIHBlcmZvcm1hbmNl
IHN0YXRlIGJ5Cj4gPiBkZmMtPm1heF9zdGF0ZSAtIGRmYy0+Y2FwcGVkX3N0YXRlLgo+ID4KPiA+
IEZpeGVzOiA2MTU1MTBmZTEzYmQgKCJ0aGVybWFsOiBkZXZmcmVxX2Nvb2xpbmc6IHJlbW92ZSBv
bGQgcG93ZXIgbW9kZWwgYW5kIHVzZSBFTSIpCj4gPiBDYzogNS4xMSsgPHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmc+ICMgNS4xMSsKPiA+IFNpZ25lZC1vZmYtYnk6IFllIFpoYW5nIDx5ZS56aGFuZ0By
b2NrLWNoaXBzLmNvbT4KPiA+IC0tLQo+ID4gdjEgLT4gdjI6Cj4gPiAgICAtIFVwZGF0ZSB0aGUg
Y29tbWl0IG1lc3NhZ2UuCj4gPgo+ID4gICBkcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9jb29saW5n
LmMgfCAyICstCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9jb29saW5n
LmMgYi9kcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9jb29saW5nLmMKPiA+IGluZGV4IDUwZGVjMjRl
OTY3YS4uOGZkN2NmMTkzMmNkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy90aGVybWFsL2RldmZy
ZXFfY29vbGluZy5jCj4gPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvZGV2ZnJlcV9jb29saW5nLmMK
PiA+IEBAIC0yMTQsNyArMjE0LDcgQEAgc3RhdGljIGludCBkZXZmcmVxX2Nvb2xpbmdfZ2V0X3Jl
cXVlc3RlZF9wb3dlcihzdHJ1Y3QgdGhlcm1hbF9jb29saW5nX2RldmljZSAqY2QKPiA+Cj4gPiAg
ICAgICAgICAgICAgIHJlcyA9IGRmYy0+cG93ZXJfb3BzLT5nZXRfcmVhbF9wb3dlcihkZiwgcG93
ZXIsIGZyZXEsIHZvbHRhZ2UpOwo+ID4gICAgICAgICAgICAgICBpZiAoIXJlcykgewo+ID4gLSAg
ICAgICAgICAgICAgICAgICAgIHN0YXRlID0gZGZjLT5jYXBwZWRfc3RhdGU7Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgc3RhdGUgPSBkZmMtPm1heF9zdGF0ZSAtIGRmYy0+Y2FwcGVkX3N0YXRl
Owo+ID4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAvKiBDb252ZXJ0IEVNIHBvd2VyIGludG8g
bWlsbGktV2F0dHMgZmlyc3QgKi8KPiA+ICAgICAgICAgICAgICAgICAgICAgICByY3VfcmVhZF9s
b2NrKCk7Cj4KPiBUaGFua3MsIExHVE0KPgo+IFJldmlld2VkLWJ5OiBMdWthc3ogTHViYSA8bHVr
YXN6Lmx1YmFAYXJtLmNvbT4KCkFwcGxpZWQgYXMgNi45LXJjIG1hdGVyaWFsLCB0aGFua3MhCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
