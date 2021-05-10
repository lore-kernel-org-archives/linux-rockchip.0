Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 498A4C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 16:23:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8B6461165
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 16:23:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B8B6461165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c52NbOYxUcQ5Pxf8N3Xbr3dqa9o3kniYlVk/Wi4KAKs=; b=oHRWqN006fQheFxTuL4/3FwQo
	OzGS4Myo06hCP2ewIhIePA3OA3UiadpYu+JabQB7Xq3g+O7o7vbvieThNR/UW9L7v3t2fJZRb63vD
	YEoaSle1jifRvxjUH5ZiyUe684KyklRUPhCtqHuqkzm1qjUtk7lwwPA1uW/ub5INVgx2CisvCRM5T
	VVUGXRWXGVDhIZZOTfZEuPs0H5QEsp3DNiabyQRUCk3trtjFNhvHNKnwgJ1g2IM0gJ184mOORyNfz
	VswTr84rSO2h8Om8hGDGdFhqJzFCYZaTZzAgGAjWOmj6110okVI6ftcGZApuOhCD8LbZb+m30wgqR
	m/mfY+Nlg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg8h1-00ExBQ-RP; Mon, 10 May 2021 16:23:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg8gy-00ExAp-Us
 for linux-rockchip@desiato.infradead.org; Mon, 10 May 2021 16:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=pAVO1X2g83KFpJr+VRtjEpm1xy0mTpiwbotFKSCDfrM=; b=bGF+vDjHUAEfwl5tyjbBE/RA1I
 /O2bG3gtHPLRv9r2vyMinGL0gM5YHvv4w6cDM3Nma5iUj5avb2s/eYdl4UC9m82v9muzFmBNtL/Ft
 JOMecmhpbinA7YpfpgofB4psTOdG6jApvY6VsXRAEdBPCc3Iyn1I20mtEM+CFrmem9CzCV87AXN/7
 9BuOW5q7HKVSgMABSKfly7emAiLBgUoWzhqOLCxQvFt0uxJFvJiKje9VwUF8nPnQdw5UgyNoULEWj
 CFnCIT2S1DbFruT6hwgF4boVHTj+rOv4g+c/G6WK+0rravW4LBUAmoLhmvuCPEyYqZrO9/RJD7Hoz
 M6dHsNsQ==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg8gv-008usF-Sh
 for linux-rockchip@lists.infradead.org; Mon, 10 May 2021 16:23:35 +0000
Received: by mail-wr1-x42d.google.com with SMTP id a4so17264742wrr.2
 for <linux-rockchip@lists.infradead.org>; Mon, 10 May 2021 09:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=pAVO1X2g83KFpJr+VRtjEpm1xy0mTpiwbotFKSCDfrM=;
 b=tho8uH6lS0ZKz9TYE1ODbtUPO4F0IC0NoPyVTkDKcmjOx/a77heA+Voc353oVfwv/j
 cNVBQwrUateA8/7ee9rl2Tnp/FvBHcLTIjRf+HtdO9cZVMJnt9yOFAGesDVDCPGKJUaA
 UpfMWkDvv3fIEYKHsdt5HM2ARc0M97lNetHf5cIRr9A3Pgc96RCgq5RZ/BcluSRAj7uY
 ioX9/j4YpAgFh/1FH3RLKMd340B7xDqOqwmfhd+lUsXD3xXr1UNL/Fnl0sdZEJsiCSUp
 uDdjl9q/jGqNwj2UloLIfaSCHuEQ0WZvyJPuBAqEicaj3g7o2Dx42McOY6swZ6QAbMZO
 hVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pAVO1X2g83KFpJr+VRtjEpm1xy0mTpiwbotFKSCDfrM=;
 b=sBWa0r1NB2z86M1/cVrx+6C0aIN3Kbo99bXLWBG/BEEfm747QYZEWvy7Oo0CbIUAzB
 2YlVkmfwkKYepfSuQEj7y6gc6BuHVfN/fjuOr2Ws1iMoahq0o4IgVr8CYSN61OG81Qmy
 9YngHs0dQPc50GKTDWXweOz/yVMNRYVKn5AhVtRFnC2eC4KFQFEREv4k8g1gMAjtTH9w
 S1aD2pnsWK5Wy+xra2tUAuS8qChVMXN+X1j46U8L3NICVVvvz0u06PEMfYvRaKjsLl5B
 tzaAU2FxjBaqEfhE0uORwZkHixQaaFO15mA7vjVswHbeKrw+DD/1AzuWW2q2tK/QRStv
 RM6g==
X-Gm-Message-State: AOAM5313+f7w/PLIFSAKVV7GTmBpir10gORY/QODgGHQAdc1gP/O4YSI
 tp3M5m/T/hDou6xbkMQkaza7JFzlGVf0cg==
X-Google-Smtp-Source: ABdhPJxgGEJ4wLrGR1leB3+o+J/MnMHhPZjJSNbo1DWxXfho0aqsuWaGKYLAqW8svfbRAxIyws6U5g==
X-Received: by 2002:adf:dcc5:: with SMTP id x5mr32374719wrm.1.1620663811271;
 Mon, 10 May 2021 09:23:31 -0700 (PDT)
Received: from dell ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id m11sm18604803wmq.33.2021.05.10.09.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 May 2021 09:23:30 -0700 (PDT)
Date: Mon, 10 May 2021 17:23:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210510162329.GD751702@dell>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
 <20210505140854.15929-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210505140854.15929-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_092333_953247_184B1658 
X-CRM114-Status: GOOD (  23.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCAwNSBNYXkgMjAyMSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IEFkZCByazgxNyBjb2RlYyBzdXBw
b3J0IGNlbGwgdG8gcms4MDggbWZkIGRyaXZlci4KPiAKPiBUZXN0ZWQtYnk6IE1hY2llaiBNYXR1
c3pjenlrIDxtYWNjcmFmdDEyM21jQGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgoKTml0OiBUaGVzZSBzaG91bGQgYmUgY2hy
b25vbG9naWNhbC4KCj4gLS0tCj4gQ2hhbmdlcyBpbiB2OToKPiAgLSBBZGQgY292ZXIgbGV0dGVy
Lgo+ICAtIFJlbW92ZSBkb2N1bWVudGF0aW9uIGZvciBpbnRlcnJ1cHQgcGFyZW50IHBlciBSb2Ig
SGVycmluZydzIHJlcXVlc3QuCj4gIC0gUmVtb3ZlIHVudXNlZCBNT0RVTEVfREVWSUNFX1RBQkxF
IHRvIGZpeCBhIGJ1ZyBpZGVudGlmaWVkIGJ5IGtlcm5lbCB0ZXN0Cj4gICAgcm9ib3QuCj4gQ2hh
bmdlcyBpbiB2ODoKPiAgLSBBZGRlZCBhZGRpdGlvbmFsIGRvY3VtZW50YXRpb24gZm9yIG1pc3Np
bmcgcHJvcGVydGllcyBvZiAjc291bmQtZGFpLWNlbGxzLAo+ICAgIGludGVycnVwdC1wYXJlbnQs
IGFuZCB3YWtldXAtc291cmNlIGZvciBtZmQgZG9jdW1lbnRhdGlvbi4KPiAgLSBDb3JyZWN0ZWQg
b3JkZXIgb2YgZWxlbWVudHMgZGVzY3JpcHRpb25zIGluIGRldmljZSB0cmVlIGRvY3VtZW50YXRp
b24uCj4gIC0gQ2hhbmdlZCBuYW1lIG9mICJtaWMtaW4tZGlmZmVyZW50aWFsIiB0byAicm9ja2No
aXAsbWljLWluLWRpZmZlcmVudGlhbCIuCj4gIC0gQ2hhbmdlZCBuYW1lIG9mIHNvdW5kIGNhcmQg
ZnJvbSAicm9ja2NoaXAscms4MTctY29kZWMiIHRvICJBbmFsb2ciLgo+ICAtIFJlbW92ZWQgdW51
c2VkIHJlc2V0cyBhbmQgcmVzZXQtbmFtZXMgZnJvbSB0aGUgaTJzMV8yY2ggbm9kZS4KPiBDaGFu
Z2VzIGluIHY3Ogo+ICAtIFJlbW92ZWQgaWZkZWYgYXJvdW5kIHJlZ2lzdGVyIGRlZmluaXRpb25z
IGZvciBNRkQuCj4gIC0gUmVwbGFjZWQgY29kZWMgZG9jdW1lbnRhdGlvbiB3aXRoIHVwZGF0ZXMg
dG8gTUZEIGRvY3VtZW50YXRpb24uCj4gIC0gUmVvcmRlcmVkIGVsZW1lbnRzIGluIGV4YW1wbGUg
dG8gY29tcGx5IHdpdGggdXBzdHJlYW0gcnVsZXMuCj4gIC0gQWRkZWQgYmluZGluZyB1cGRhdGUg
YmFjayBmb3IgT2Ryb2lkIEdvIEFkdmFuY2UgYXMgcmVxdWVzdGVkLgo+ICAtIFN1Ym1pdHRpbmcg
cGF0Y2hlcyBmcm9tIGdtYWlsIG5vdy4KPiBDaGFuZ2VzIGluIHY2Ogo+ICAtIEluY2x1ZGVkIGFk
ZGl0aW9uYWwgcHJvamVjdCBtYWludGFpbmVycyBmb3IgY29ycmVjdCBzdWJzeXN0ZW1zLgo+ICAt
IFJlbW92ZWQgdW5uZWVkZWQgY29tcGF0aWJsZSBmcm9tIERUIGRvY3VtZW50YXRpb24uCj4gIC0g
UmVtb3ZlZCBiaW5kaW5nIHVwZGF0ZSBmb3IgT2Ryb2lkIEdvIEFkdmFuY2UgKHdpbGwgZG8gaW4g
c2VwZXJhdGUgc2VyaWVzKS4KPiBDaGFuZ2VzIGluIHY1Ogo+ICAtIE1vdmUgcmVnaXN0ZXIgZGVm
aW5pdGlvbnMgZnJvbSByazgxN19jb2RlYy5oIHRvIG1haW4gcms4MDguaCByZWdpc3Rlcgo+ICAg
IGRlZmluaXRpb25zLgo+ICAtIEFkZCB2b2xhdGlsZSByZWdpc3RlciBmb3IgY29kZWMgYml0cy4K
PiAgLSBBZGQgZGVmYXVsdCB2YWx1ZXMgZm9yIGNvZGVjIGJpdHMuCj4gIC0gUmVtb3ZlZCBvZl9j
b21wYXRpYmxlIGZyb20gbXRkIGRyaXZlciAobm90IG5lY2Vzc2FyeSkuCj4gIC0gU3dpdGNoZWQg
dG8gdXNpbmcgcGFyZW50IHJlZ21hcCBpbnN0ZWFkIG9mIHByaXZhdGUgcmVnbWFwIGZvciBjb2Rl
Yy4KPiBDaGFuZ2VzIGluIHY0Ogo+ICAtIENyZWF0ZWQgc2V0X3BsbCgpIGNhbGwuCj4gIC0gQ3Jl
YXRlZCB1c2VyIHZpc2libGUgZ2FpbiBjb250cm9sIGluIG1pYy4KPiAgLSBDaGVjayBmb3IgcmV0
dXJuIHZhbHVlIG9mIGNsa19wcmVwYXJlX2VuYWJsZSgpLgo+ICAtIFJlbW92ZWQgZHVwbGljYXRl
IGNsa19wcmVwYXJlX2VuYWJsZSgpLgo+ICAtIFNwbGl0IERUIGRvY3VtZW50YXRpb24gdG8gc2Vw
YXJhdGUgY29tbWl0Lgo+IENoYW5nZXMgaW4gdjM6Cj4gIC0gVXNlIERBUE0gbWFjcm9zIHRvIHNl
dCBhdWRpbyBwYXRoLgo+ICAtIFVwZGF0ZWQgZGV2aWNldHJlZSBiaW5kaW5nIChhcyBldmVyeSBy
azgxNyBoYXMgdGhpcyBjb2RlYyBjaGlwKS4KPiAgLSBDaGFuZ2VkIGRvY3VtZW50YXRpb24gdG8g
eWFtbCBmb3JtYXQuCj4gIC0gU3BsaXQgTUZEIGNoYW5nZXMgdG8gc2VwYXJhdGUgY29tbWl0Lgo+
IENoYW5nZXMgaW4gdjI6Cj4gIC0gRml4ZWQgYXVkaW8gcGF0aCByZWdpc3RlcnMgdG8gc29sdmUg
c29tZSBidWdzLgo+IAo+ICBkcml2ZXJzL21mZC9yazgwOC5jICAgICAgIHwgODUgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvbWZkL3JrODA4
LmggfCA4MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgMTY2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQv
cms4MDguYyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKPiBpbmRleCBhZDkyM2RkNGUwMDcuLjkyMzEy
MDkxODRlMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21mZC9yazgwOC5jCj4gKysrIGIvZHJpdmVy
cy9tZmQvcms4MDguYwo+IEBAIC02NSw2ICs2NSw3IEBAIHN0YXRpYyBib29sIHJrODE3X2lzX3Zv
bGF0aWxlX3JlZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCByZWcpCj4gIAlzd2l0
Y2ggKHJlZykgewo+ICAJY2FzZSBSSzgxN19TRUNPTkRTX1JFRyAuLi4gUks4MTdfV0VFS1NfUkVH
Ogo+ICAJY2FzZSBSSzgxN19SVENfU1RBVFVTX1JFRzoKPiArCWNhc2UgUks4MTdfQ09ERUNfRFRP
UF9MUFRfU1JTVDoKPiAgCWNhc2UgUks4MTdfSU5UX1NUU19SRUcwOgo+ICAJY2FzZSBSSzgxN19J
TlRfU1RTX1JFRzE6Cj4gIAljYXNlIFJLODE3X0lOVF9TVFNfUkVHMjoKPiBAQCAtMTYzLDYgKzE2
NCwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1mZF9jZWxsIHJrODE3c1tdID0gewo+ICAJCS5u
dW1fcmVzb3VyY2VzID0gQVJSQVlfU0laRShyazgxN19ydGNfcmVzb3VyY2VzKSwKPiAgCQkucmVz
b3VyY2VzID0gJnJrODE3X3J0Y19yZXNvdXJjZXNbMF0sCj4gIAl9LAo+ICsjaWZkZWYgQ09ORklH
X1NORF9TT0NfUks4MTcKPiArCXsKPiArCQkubmFtZSA9ICJyazgxNy1jb2RlYyIsCj4gKwl9LAo+
ICsjZW5kaWYKCk5vICNpZmVyeSBwbGVhc2UuCgpKdXN0IHJlcGxhY2UgaXQgd2l0aCBhIGNvbW1l
bnQuCgpJZiBubyBhc3NvY2lhdGVkIGRyaXZlciBleGlzdHMsIGl0IGp1c3Qgd29uJ3QgbWF0Y2gv
YmluZC4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0g
RGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
