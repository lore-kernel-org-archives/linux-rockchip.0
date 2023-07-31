Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 951A7C001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 14:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+VmSIVlOM7gKfOGx75nbLPiI6Y42ecd0MYx1gKrp7c=; b=s7bdZx19Fe563h
	b94GxMANEjyCcCeCoFwS5SuYnwVhUrB38ZojQnq32bm/aqY1JNuFKTr4L+jbT1PbbHW3RSSwrRkmC
	wtD4skdbkK0/8Op8UBUmMHVMaD4D6WSjX4gUr5dmSF3n4vHQFjgIRtZL7ZNMFBCyA7rUHwx4Juqn5
	GOh5e4ce9URCnGSbTFrrkt4z2BN45dYxmrK+SadRR2oooNzcNk46odLRMHfF4ib90T2PRUtPvQSfa
	NenSWW5z2dEAKVi4eC/Tshnu1fZSrrYSvIXVKatiJ4X+rff9djyoz/5y2rBlM5QbMRxV2SZuZPd/U
	D3DxjKgtbbxcmly58TOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQUF2-00GBVZ-1m;
	Mon, 31 Jul 2023 14:51:24 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQUEz-00GBUo-1d;
	Mon, 31 Jul 2023 14:51:22 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fe078dcc3aso28077595e9.2;
        Mon, 31 Jul 2023 07:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690815079; x=1691419879;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fAPrkbK19s/j5Zx9BvuYAYuY534VPCFu5UMSEPN+FAE=;
        b=ONefshDkN1jXMyg0wZ8QEmmAPXYcp3mA7Y4rLHbZ0B/sSm8FGewPffgqtdxTL/X1iT
         AtnNYgJ+osFjNol3DgEwCoRMsRzED9sEjdYo+XNB6jA/vpUD06z0WPGVpFwk6veFO9OU
         ibatrDvsrl3GB3m2uFuEY1sklgbBbV+M1ieeB/BLXlqQriOZZEEhJRnlTc6k3zry1pGI
         8gT4pqVcCYAqeSjkliWxyT6pMGXOg8y1USl58BKNqUR4FGu0Ju4rskBjkX0SaL4zQ9IR
         mABJjkmvgdQUqRb0sebjRifxOKcjyv4RmV6FD7aKFsKCahByl3oE/ln33nEvLUOnN/IR
         cPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690815079; x=1691419879;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fAPrkbK19s/j5Zx9BvuYAYuY534VPCFu5UMSEPN+FAE=;
        b=czzHfEWzaKptAq/20DaR7a87k0LYt2+BGMDX+5xJ+zmG2FGCyki1iIj6Ab+uIE8ATF
         LhVRfvzVFYz4Ea95cWuUPpn579zIVHKpz7pNy/dpe/tUP144ZkWlr/RC/DKoN39GJlSx
         yheKwbAMVLf6pXkP6lndhTG4dEYA7aLjauXqpUW0zrRIXs6hIWKjN6Rzu7NX2tMuaIsw
         gmIGH3vrh9TtwDEoYctCgwkVjO+Wx/XikcaC1pOAvjefKt44UkBvC2LtpNH221BFNvQS
         WJMvGtJ7BPsoB9Veh7ydBFTDe9/2/a4/sHjSLRMdFTkY23emLyuqGjY7f8Fjk91843Lb
         +euA==
X-Gm-Message-State: ABy/qLbjDCCkPHhjKBM6ulOQ3VhXLGybWLWS6iayQEsaRHXRdLU2L6Ci
	RA5/KzjGFECpq++p5ZelB4wxhwvR9ZF6Ck/iQzo=
X-Google-Smtp-Source: APBJJlHp9CxGwet2vmvPctm3AruUc8MW3kWbH5+YX2xIIUpW5tevxLfL1O+U73H0pP1U9NLaYEZRubIxIr3M2m/csAQ=
X-Received: by 2002:adf:e752:0:b0:314:3f98:a788 with SMTP id
 c18-20020adfe752000000b003143f98a788mr58676wrn.7.1690815079341; Mon, 31 Jul
 2023 07:51:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAF6AEGtan-bQ7syKAwOKDY=044aKu26SLPQ0j1ieLqXNyQQS3g@mail.gmail.com>
 <282e-64c7a800-77-46253680@38053863>
In-Reply-To: <282e-64c7a800-77-46253680@38053863>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 31 Jul 2023 07:51:07 -0700
Message-ID: <CAF6AEGufEzyOygPt6-tCbSC75GSD7sOB=FHE4nNGwPre6kHuOA@mail.gmail.com>
Subject: Re: [PATCH v10] drm: Add initial ci/ subdirectory
To: Helen Mae Koike Fornazier <helen.koike@collabora.com>
Cc: Daniel Stone <daniel@fooishbar.org>, emma@anholt.net, linux-doc@vger.kernel.org, 
	david.heidelberg@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, 
	corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, 
	gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, 
	daniels@collabora.com, martin.blumenstingl@googlemail.com, mripard@kernel.org, 
	anholt@google.com, linux-mediatek@lists.infradead.org, 
	robclark@freedesktop.org, matthias.bgg@gmail.com, 
	linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com, 
	neil.armstrong@linaro.org, guilherme.gallo@collabora.com, 
	linux-kernel@vger.kernel.org, tzimmermann@suse.de, 
	Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_075121_542885_4A9940CE 
X-CRM114-Status: GOOD (  31.19  )
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

T24gTW9uLCBKdWwgMzEsIDIwMjMgYXQgNToyNeKAr0FNIEhlbGVuIE1hZSBLb2lrZSBGb3JuYXpp
ZXIKPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gSGVsbG8gYWxsLAo+Cj4g
VGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLgo+Cj4gT24gRnJpZGF5LCBKdWx5IDI4LCAyMDIzIDEx
OjM3IC0wMywgUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToKPgo+ID4gT24g
VGh1LCBKdWwgMjcsIDIwMjMgYXQgMTA6MjbigK9QTSBEYW5pZWwgU3RvbmUgPGRhbmllbEBmb29p
c2hiYXIub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gVGh1LCAyNyBKdWwgMjAyMyBhdCAyMjo0
NywgUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiA+IEkgZGlk
IHJ1biBpbnRvIGEgYml0IG9mIGEgY2hpY2tlbiB2cy4gZWdnIHByb2JsZW0gd2l0aCB0ZXN0aW5n
IHRoZSAiaW4KPiA+ID4gPiA+IHRyZWUiIHZlcnNpb24gKGNvbXBhcmVkIHRvIGVhcmxpZXIgdmVy
c2lvbnMgd2hpY2gga2VwdCBtb3N0IG9mIHRoZSB5bWwKPiA+ID4gPiA+IGFuZCBzY3JpcHRzIGlu
IGEgc2VwYXJhdGUgdHJlZSksIGlzIHRoYXQgaXQgYWN0dWFsbHkgcmVxdWlyZXMgdGhpcwo+ID4g
PiA+ID4gY29tbWl0IHRvIGV4aXN0IGluIHRoZSBicmFuY2ggeW91IHdhbnQgdG8gcnVuIENJIG9u
LiAgTXkgZWFybGllcgo+ID4gPiA+ID4gd29ya2Fyb3VuZCBvZiBwdWxsaW5nIHRoZSBkcm0vY2kg
Y29tbWl0IGluIHZpYQo+ID4gPiA+ID4gJHticmFuY2huYW1lfS1leHRlcm5hbC1maXhlcyBubyBs
b25nZXIgd29ya3MuCj4gPiA+ID4KPiA+ID4gPiBBZnRlciB1bndpbmRpbmcgc29tZSBtb3JlIGdp
dGxhYiByZXBvIHNldHRpbmdzIHRoYXQgd2VyZSBmb3IgdGhlCj4gPiA+ID4gcHJldmlvdXMgb3V0
LW9mLXRyZWUgeW1sIHNldHVwLCBJIGhhdmUgdGhpcyB3b3JraW5nLgo+ID4gPiA+Cj4gPiA+ID4g
VGVzdGVkLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+Cj4gPiA+ID4gQWNrZWQt
Ynk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4KPiA+ID4KPiA+ID4gQW5kIGl0J3Mg
YWxzbzoKPiA+ID4gQWNrZWQtYnk6IERhbmllbCBTdG9uZSA8ZGFuaWVsc0Bjb2xsYWJvcmEuY29t
Pgo+ID4gPgo+ID4gPiBJdCdzIGJlZW4gYmFjayBhbmQgZm9ydGggYSBmZXcgdGltZXMgYnkgbm93
IGFuZCByZXZpZXdlZCBwcmV0dHkKPiA+ID4gaGVhdmlseSBieSBhbGwgdGhlIHBlb3BsZSB3aG8g
YXJlIGFjcm9zcyB0aGUgQ0kgZGV0YWlscy4gSSB0aGluayB0aGUKPiA+ID4gbmV4dCBzdGVwIGlz
IHRvIGFuc3dlciBhbGwgdGhlIHdvcmtmbG93IHF1ZXN0aW9ucyBieSBhY3R1YWxseSBnZXR0aW5n
Cj4gPiA+IGl0IGludG8gdHJlZXMgYW5kIHVzaW5nIGl0IGluIGFuZ2VyLiBUaGVyZSB3YXMgc29t
ZSBkaXNjdXNzaW9uIGFib3V0Cj4gPiA+IHdoZXRoZXIgdGhpcyBzaG91bGQgY29tZSBpbiBmcm9t
IGRybS1taXNjLCBvciB0aGUgY29yZSBEUk0gdHJlZSwgb3IgYQo+ID4gPiBjb21wbGV0ZWx5IHNl
cGFyYXRlIHB1bGwsIGJ1dCBJJ20gbm90IHN1cmUgd2hhdCB0aGUgY29uY2x1c2lvbiB3YXMgLi4u
Cj4gPiA+IG1haW50YWluZXJzLCB0aG91Z2h0cz8KPiA+Cj4gPiBJJ2QgcHJlZmVyIGEgc2VwYXJh
dGUgcHVsbCwgc28gdGhhdCBJIGNvdWxkIG1lcmdlIGl0IGludG8gbXNtLW5leHQgYXMKPiA+IHdl
bGwgd2l0aG91dCBoYXZpbmcgdG8gcHVsbCBpbiBhbGwgb2YgZHJtLW1pc2MKPgo+IFNob3VsZCB3
ZSBjcmVhdGUgYSBkcm0tY2kgPwoKSSBndWVzcyB3ZSBjYW4ganVzdCB3YWl0IGFuZCBzZWUgaG93
IG9mdGVuIGl0IGlzIHRoYXQgZHJtL2NpIHVwZGF0ZXMKbmVlZCB0byBiZSBtZXJnZWQgaW50byBt
dWx0aXBsZSBkcml2ZXIgdHJlZXMuICBIb3BlZnVsbHkgbW9zdCBvZiB0aGUKZHJtL2NpIGNoYW5n
ZXMgYXJlIGp1c3QgZXhwZWN0YXRpb24gZmlsZSB1cGRhdGVzIHdoaWNoIHNob3VsZCBnbyB2aWEK
ZHJpdmVyIHRyZWUuICBNYXliZSBpLWctdCB1cHJldnMsIGlmIHRoZXkgaGF2ZSBhIGxvdCBvZiBl
eHBlY3RhdGlvbgpjaGFuZ2VzIHdvdWxkIGJlIHNvbWV0aGluZyBkcml2ZXJzIHdvdWxkIHdhbnQg
dG8gbWVyZ2UgaW50byB0aGVpciBvd24KdHJlZT8gIEJ1dCBJIGd1ZXNzIHdlIGNhbiBzZWUgaG93
IGl0IGdvZXMuCgo+ID4KPiA+IFBvc3NpYmx5IHNvbWUgb3RoZXIgZHJpdmVyIHRyZWVzIHdvdWxk
IGxpa2UgdG8gZG8gc2ltaWxhcj8KPiA+Cj4gPiBCUiwKPiA+IC1SCj4KPiBBbHNvLCBwbGVhc2Ug
d2FpdCBmb3IgdjExLCBJIGhhdmUgYSBmZXcgYWRqdXN0bWVudHMgdG8gbWFrZSBhcyBwb2ludGVy
IGJ5Cj4gc29tZSBjb21tZW50cywgYW5kIGFsc28gcmVnYXJkaW5nIHhmYWlscyBsaXN0IGFuZCBo
b3cgdGhlIGNvbmZpZ3Mgc2hvdWxkCj4gYmUgb3JnYW5pemVkICh1bmxlc3MgaWYgeW91IGFyZSBm
aW5lIG1lcmdpbmcgdGhpcyB2ZXJzaW9uIGFuZCBJIGNhbiBzdWJtaXQKPiB0aGUgYWRqdXN0bWVu
dHMgbGF0ZXIpLgoKT2sKCkJSLAotUgoKPiBUaGFua3MsCj4gSGVsZW4KPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
