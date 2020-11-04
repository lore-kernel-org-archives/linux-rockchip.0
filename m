Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CCD0C4741F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 16:04:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F73220782
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 16:04:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pF2AMuSR";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaFTc11y"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F73220782
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z65naeKFBt2t7/V0QBnlSV4wJbjscO8Q85ZTCchZtqA=; b=pF2AMuSRWTrNE4HDK3jt+r1I+
	t8VpWqa89LamsVT0Hgqf9tqKvUfdmvGxCsCeQ4je6ho/AsZG1x3cXsHbrZspBgKA/8eILWUANzZse
	9CPZk1BC18vfK1V8OF6QN0l+X+U1gtlQMQUvliqiEo6QQgkdFySmTryebn/DAjTcAbWoNvvRQJF0N
	+KVHIHJWbJKdqzwf4vGQTsKa6yXc7WMLaDhlJ9U5yNbrBcikhBkkkupl7Rl+wuXpPgdhiXelOKD3D
	sxMvpSn567F18iT4WTQJT47Wmc4hXVQf31yZKrlnlYqpQJ7+Vk/Iz/ETJtGYz4Iz2S9/HhpT1ky5b
	AQRrqpVEw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaLGg-0000mV-2U; Wed, 04 Nov 2020 16:04:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaLGa-0000lD-4e; Wed, 04 Nov 2020 16:04:09 +0000
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FE8F2076D;
 Wed,  4 Nov 2020 16:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604505846;
 bh=klujtJzoAVLGeYfBOBO4813dr7WdQLbjskQZ2NSHj3A=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=QaFTc11yiA3U8bPPwrgKRnbwnuScfUtM5Z24GLXsz/cZi1Gm1ENLCiwBV6d0vvKPw
 RFkQHU99fsZKJ/SyqdV/LhBgxf3UKRSvLT66HWgxRq0FElpkY1mw/ICglV9FoxHK2Z
 QLlTQcsgJdN7e59d/mttzoAMb2xe18OzkHlBvnWI=
Received: by mail-lf1-f43.google.com with SMTP id a7so27790743lfk.9;
 Wed, 04 Nov 2020 08:04:06 -0800 (PST)
X-Gm-Message-State: AOAM532NEAHw+BfFZsGb8an3qm9hI4TcfKA7YnSY6qxBqXCznAk3bDf+
 VivBMQn53xNit+2KqBtYqQ7QG8pZW6ZGumD4HCY=
X-Google-Smtp-Source: ABdhPJx0L1STVkLnDpZqex5+MrAPhy2B7AEicH4fxVDlqcsdu3VIoCKFnepTQq3TSjtMNeySUtaDJ17dVHRT6sRVjhY=
X-Received: by 2002:a19:4281:: with SMTP id p123mr9303368lfa.398.1604505844386; 
 Wed, 04 Nov 2020 08:04:04 -0800 (PST)
MIME-Version: 1.0
References: <20201104094950.2096-1-m.reichl@fivetechno.de>
 <4984701.vSXMUKeAfh@diego>
 <CAD=FV=V2Vv0bv-exiZ6VrOtfMM5TVpjATO04qaXeGWDRu+6vyw@mail.gmail.com>
 <10029979.JCShpOL5JR@diego>
In-Reply-To: <10029979.JCShpOL5JR@diego>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 5 Nov 2020 00:03:54 +0800
X-Gmail-Original-Message-ID: <CAGb2v65_uxjRWygd=ACr0KTCF7yqqk5crvkeKkNp28+qk_cByA@mail.gmail.com>
Message-ID: <CAGb2v65_uxjRWygd=ACr0KTCF7yqqk5crvkeKkNp28+qk_cByA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399-roc-pc boards.
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_110408_372583_FF342F01 
X-CRM114-Status: GOOD (  34.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>, Doug Anderson <dianders@chromium.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBOb3YgNCwgMjAyMCBhdCAxMTo1NSBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEFtIE1pdHR3b2NoLCA0LiBOb3ZlbWJlciAyMDIwLCAxNjo0Mjow
MSBDRVQgc2NocmllYiBEb3VnIEFuZGVyc29uOgo+ID4gSGksCj4gPgo+ID4gT24gV2VkLCBOb3Yg
NCwgMjAyMCBhdCAyOjUxIEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3Rl
Ogo+ID4gPgo+ID4gPiBIaSBNYXJrdXMsCj4gPiA+Cj4gPiA+IEFtIE1pdHR3b2NoLCA0LiBOb3Zl
bWJlciAyMDIwLCAxMDo0OTo0NSBDRVQgc2NocmllYiBNYXJrdXMgUmVpY2hsOgo+ID4gPiA+IFJl
Y2VudGx5IGludHJvZHVjZWQgYXN5bmMgcHJvYmUgb24gbW1jIGRldmljZXMgY2FuIHNodWZmbGUg
YmxvY2sgSURzLgo+ID4gPiA+IFBpbiB0aGVtIHRvIGZpeGVkIHZhbHVlcyB0byBlYXNlIGJvb3Rp
bmcgaW4gZXZpcm9ubWVudHMgd2hlcmUgVVVJRHMKPiA+ID4gPiBhcmUgbm90IHByYWN0aWNhbC4g
VXNlIG5ld2x5IGludHJvZHVjZWQgYWxpYXNlcyBmb3IgbW1jYmxrIGRldmljZXMgZnJvbSBbMV0u
Cj4gPiA+ID4KPiA+ID4gPiBbMV0KPiA+ID4gPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L3BhdGNoLzExNzQ3NjY5Lwo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWFya3VzIFJl
aWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5kZT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kgfCA1ICsrKysrCj4gPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpCj4gPiA+ID4g
aW5kZXggZTdhNDU5ZmE0MzIyLi5iYzk0ODJiNTk0MjggMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPiA+ID4gPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+ID4gPiA+
IEBAIC0xMyw2ICsxMywxMSBAQCAvIHsKPiA+ID4gPiAgICAgICBtb2RlbCA9ICJGaXJlZmx5IFJP
Qy1SSzMzOTktUEMgQm9hcmQiOwo+ID4gPiA+ICAgICAgIGNvbXBhdGlibGUgPSAiZmlyZWZseSxy
b2MtcmszMzk5LXBjIiwgInJvY2tjaGlwLHJrMzM5OSI7Cj4gPiA+ID4KPiA+ID4gPiArICAgICBh
bGlhc2VzIHsKPiA+ID4gPiArICAgICAgICAgICAgIG1tYzAgPSAmc2RtbWM7Cj4gPiA+ID4gKyAg
ICAgICAgICAgICBtbWMxID0gJnNkaGNpOwo+ID4gPiA+ICsgICAgIH07Cj4gPiA+ID4gKwo+ID4g
Pgo+ID4gPiBBbnkgcmVhc29uIGZvciB0aGlzIG9kZXJpbmc/Cj4gPiA+Cj4gPiA+IEkuZS4gc29t
ZSBwcmV2aW91cyBpbmNhcm5hdGlvbnMgaGFkIGl0IG9yZGVyZWQgYXMgKGVtbWMsIG1tYywgc2Rp
bykuCj4gPiA+IFRoaXMgaXMgYWxzbyB0cnVlIGZvciB0aGUgQ2hyb21lT1Mgb3V0LW9mLXRyZWUg
dXNhZ2Ugb2YgdGhvc2UsIHRoZQo+ID4gPiByazMzOTkgZHRzIGluIHRoZSBjaHJvbWVvcy00LjQg
dHJlZSBhbHNvIG9yZGVycyB0aGlzIGFzIHNkaGNpLCBzZG1tYywgc2Rpby4KPiA+ID4KPiA+ID4g
QW5kIEkgZ3Vlc3MgYSBmdXJ0aGVyIHF1ZXN0aW9uIHdvdWxkIGJlIHdoZW4gd2UncmUgZG9pbmcg
YXJiaXRhcnkgb3JkZXJpbmdzCj4gPiA+IGFueXdheSwgd2h5IGlzIHRoaXMgbm90IGluIHJrMzM5
OS5kdHNpIDstKSA/Cj4gPgo+ID4gVGhvdWdoIEkgcGVyc29uYWxseSBsaWtlIHRoZSBpZGVhIG9m
IGVNTUMsIHdoaWNoIGlzIHR5cGljYWxseQo+ID4gYnVpbHQtaW4sIGFzIGJlaW5nIHRoZSAiMCIg
bnVtYmVyLCBJJ20gcGVyc29uYWxseSBoYXBweSB3aXRoIGFueQo+ID4gbnVtYmVyaW5nIHNjaGVt
ZSB0aGF0J3MgY29uc2lzdGVudC4gIE9yZGVyaW5nIHRoZW0gYnkgYmFzZSBhZGRyZXNzIGlzCj4g
PiBPSyB3LyBtZSBhbmQgc2VlbXMgbGVzcyBjb250cm92ZXJzaWFsLiAgVGhhdCBzZWVtcyBsaWtl
IGl0IGNvdWxkIGdvIGluCj4gPiByazMzOTkuZHRzaSBhbmQgdGhlbiBpZiBhIHBhcnRpY3VsYXIg
Ym9hcmQgd2FudGVkIGEgZGlmZmVyZW50IG9yZGVyCj4gPiB0aGV5IGNvdWxkIG92ZXJyaWRlIGl0
IGluIHRoZWlyIGJvYXJkIGZpbGUuCj4KPiBZZXAgdGhhdCBzb3VuZHMgc2Vuc2libGUgYW5kIG9y
ZGVyaW5nIGJ5IGJhc2UgYWRkcmVzcyBhdCBsZWFzdCBpcyBvbmUKPiAic2ltcGxlIiB0eXBlIG9m
IG9yZGVyIHdpdGhvdXQgdG9vIG11Y2ggZXhwbGFuYXRpb24gbmVlZGVkLgo+Cj4gU28gSSBndWVz
cyB3ZSdkIGdldCBhIHNkaW8gKyBzZG1tYyArIHNkaGNpIG9yZGVyaW5nCj4KPgo+IEBNYXJrdXM6
IGlmIG5vYm9keSBlbHNlIGNvbXBsYWlucywgY2FuIHlvdSBkbyBhICJzaW1wbGUiIHJrMzM5OS5k
dHNpCj4gY2hhbmdlIHdpdGggdGhhdCBwbGVhc2U/CgpQbGVhc2UgYWxzbyBmaXggdGhlIExFRCB0
cmlnZ2Vycy4gOikKCj4gPiBUaGUgZG93bnNpZGUgb2YgcHV0dGluZwo+ID4gaW4gcmszMzk5IGlz
IHRoYXQgYm9hcmRzIHRoYXQgZG9uJ3QgaGF2ZSBhbGwgU0QvTU1DIGludGVyZmFjZXMgZW5hYmxl
ZAo+ID4gd291bGQgZGVmaW5pdGVseSBnZXQgYSBuZXcgbnVtYmVyIGNvbXBhcmVkIHRvIG9sZCBr
ZXJuZWxzLCBidXQKPiA+IGhvcGVmdWxseSB0aGlzIGlzIHRoZSBsYXN0IHRpbWU/Cj4KPiBXaXRo
IHRoYXQgbmV3IGFzeW5jaHJvbm91cyBtbWMtcHJvYmUtdGhpbmd5IGluIDUuMTAgdGhhdCAiY2F1
c2VkIiB0aGlzLAo+IGl0IHNvdW5kcyBsaWtlIGV2ZXJ5dGhpbmcgZ2V0cyBhIG5ldyBudW1iZXIg
YW55d2F5IDstKSAuCgpZdXAuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
