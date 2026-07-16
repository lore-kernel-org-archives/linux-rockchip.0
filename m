Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47FD2C44510
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 03:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FoR7eifCeVevbUP5FTumhFlUE5YvqMMNZk1G7orXZo=; b=Pq8Mf4rim3UHlS
	hdg8AnAxbh0RVk/P8DmMqt5Z6YU0bXZHx6kzO7abzoY5zDeTPz0Atc9U+1CrzK4E7x/FVCyJKs1Q8
	LqdZ3pItaL/87eKiJW4fvC56hF946RFfKUYxbD5cegM8TvChrEyj7kMzazU25vwpM/WQ1vLrDxxib
	FO0luSPTLIAbyGY6Fwpdhe2vIhYxrsxyDPywHdcCJ/cseXK8p2qoCYTK/RWN5+P8QEu+ngXQrPc24
	mKrZcwj4fCAERVwEtrYXIWt64iQ1POwEgWEQvNFRuvZwEN5ss8Y9MbOgOKr7n53uKK5GS0QaD1nfc
	KmZreBkAiVVQBx949zdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkCwK-0000000GMaX-1xQV;
	Thu, 16 Jul 2026 03:39:12 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkCwH-0000000GMZj-3hX0
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 03:39:11 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-47f3e6cc44aso3501287f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 20:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784173147; cv=none;
        d=google.com; s=arc-20260327;
        b=OlK543uv7Rm55b3Ued/N2xS2rRCtFilam91Yc/5o8t5rWuDPJ5JjW+au8lYcB5blxw
         ARkFvqBUUOb83nwTf75oYQRaXSfLGoYf/Yc+N+e2goPZWvbVMO4b6itBdFi4g2CAqUAs
         bgsctsbI63qigboAV6rRalko0Pv0xDraZu2YHZslW3wdtiuK/EOP/TEA9xGCq5TLlXTF
         vjs/oSxmiV97aDAOgM+Ug5AznKBFD2RLXQMRFRfPgRvp80H49Z01M434UMNbJEkOryjD
         BI6nc+am/z9UXv9eIBBjTVExTTle5EoLIKy1FGFMOqtXotDvtEtCampbMRUnMl0dUOp+
         QeUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HaAi6r0o04lXEAunGEp84mPQVwuTB4awISro/owjdbQ=;
        fh=X/dWL3SmLtt1YGE/vcPecoP7ZWLLLt9rVK+z2lb9ILM=;
        b=MFLtZkRBJwv6oYcr6rvRz1HxB5JTnZeAuQRuHJYXMF3olSZ1g/Bvog7ttGvFH/2oCh
         F43W09BHd/d0nvQvVuyUDj0TLpou7fDcgGnzNccTZ4lEEIGzIcEFYt5T4wK+zwtAqyo4
         Gup94/ThSNsvPRKEBoQeZnEbEvnE23wK3+D6vBEKi1de77DAsfZbvnliqsjTlccUwts6
         SET4swdDQdeGbbwWf02wf03nhAK7YStXaR0M7K4wXZAr/thx0c1GnHdZtrm+fAovXUYN
         QFNaPdgvAVPc5J6bUPsW7E/SeMzB4jFOicTg7m1KXy2qEl+ykcYkmhkmB11RmUh13HI+
         yJ0Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784173147; x=1784777947; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=HaAi6r0o04lXEAunGEp84mPQVwuTB4awISro/owjdbQ=;
        b=Tw3pOt7trewIv30g4S2N2qfefH4uPIfS09o8+FoLcaYerqM4rV1UQsbZdhL0y8ZnfD
         wk9krdK27P1gYhScG8GgPlkDiHzCo8GG4CwhuPl24uL17pVCMJbipacBTSzh0XxbE0FY
         vtNqrsfZFrc54eTgXtwCZBlRfUGtivlWezbqkS/c7ue7V/jVLFKsNz14wX3K0qdWE0vN
         JSrnMgJLGeXCVSU7ZhYohiXUV0PdBtyvwIxNFvucm5fdF9NjgJuerh7Lbq/Dfr030Q7B
         YLQKAd5el6B3OmBIGP9nAphSGZKCRdF/x22fqlTu/krRIeSuMVt07p3jJz1qWl80Q7dp
         /7Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784173147; x=1784777947;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HaAi6r0o04lXEAunGEp84mPQVwuTB4awISro/owjdbQ=;
        b=aTEe07zCN5gwZuqGPb4geN8wuNUThWQKzRExYFdw7s9mXWH1zAm0s518Cx6I5wPyjq
         Ey6Di8OrUkkAUHf6n4LCr9VLmeSxcFj5A/HXPa4c78vVIF8RniBvG7Xe0FjN9Ki9VO5C
         m4Dp86YWIkar14E6AFaE9DndyiKBwxFKTD2fIg8Cj09D2lHTzEtGTn4WA44/lxsZxutl
         XkmEX3QamK/Qvld0h+h5FZUxxQRHsy7fM3dNLCPKbqBzAaI6hAOsY4jcWYWJQ/VGjX9i
         wrJ0wh2t9gp4ipornIbcBwQwGgXc6GoKD4u9Bf0XEjDEVQY5LkbtMCdcBwincpsxBXIO
         XzYg==
X-Forwarded-Encrypted: i=1; AHgh+Rp0BpKjF9t6jNXDpa0IslWm4Nh9YmA5FjUqgfEWtIQIM/jDCzvyzYWwpfy/R4GLngMzfABeMB8o6LMQTIbW5w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsXzHgJrDV/6Ph4Z6AganTvCUVB09jGHjVqjXUo5k9qKviSGi0
	VYl/W6xL8Nh2PyJrNE7sMvQvM3k40I1RxqluUU+GGmvkBYSaon+hr57pnDM4JeBHB9R+LWDHg+4
	dHsxn5mxz4fZ23y/RLygimgaB7TogPfM=
X-Gm-Gg: AfdE7clerd981zEm+eOA4N41ctPHJbzJklcc457mwI9Je2zx8RQ9oa/q9pEK6AQO+pd
	1I+yDystKPmI4fnZerXccbkddfGBFyXYU5qcoLMblx6S9HrBPcx2xeIBXKTUJS9kHWeyLMydPDS
	AuKiZqa/KIPMKjcR8Pa/SBSqrB9J4vSjoq4EBkNGi3csZUo+IRt8dJIuMUXyIRq+XgwMfDUcss2
	6joUZoVh/ed1lOVnyQq6ERC5SLSOaym1Ne2w3ZC6OecGhYtThwhNHMtn05P/6Baepdu+bqb
X-Received: by 2002:a05:6000:461c:b0:473:506a:e47c with SMTP id
 ffacd0b85a97d-47f4886399amr11638724f8f.26.1784173146909; Wed, 15 Jul 2026
 20:39:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260612-synopsys-dw-dp-improvements-v3-0-dc61e6352508@collabora.com>
 <CANbgqATR-V0rRGfzj0hdJ2hsJex-iWzHMwD1L4vavTi2Jd79Kw@mail.gmail.com>
 <alfV1691ZgZ6KylX@venus> <2301403.NgBsaNRSFp@phil>
In-Reply-To: <2301403.NgBsaNRSFp@phil>
From: Andy Yan <andyshrk@gmail.com>
Date: Thu, 16 Jul 2026 11:38:53 +0800
X-Gm-Features: AUfX_myr_sOq7hYE4m85iq51mdLC4kRmODLTYq7q95ypFNA8vqcVX-4llt0DR9M
Message-ID: <CANbgqASSwGjnUsqmpyPgYQ8Qy_6++krbVMQQywB8oJv8Jziz-g@mail.gmail.com>
Subject: Re: [PATCH v3 08/10] drm/rockchip: dw_dp: Add runtime PM support
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_203909_964951_C7667D18 
X-CRM114-Status: GOOD (  26.23  )
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
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, yubing.zhang@rock-chips.com, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8g77yMCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiDkuo4yMDI25bm0N+ac
iDE25pel5ZGo5ZubIDAzOjMw5YaZ6YGT77yaCj4KPiBBbSBNaXR0d29jaCwgMTUuIEp1bGkgMjAy
NiwgMjE6MDA6MTIgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBTZWJhc3Rp
YW4gUmVpY2hlbDoKPiA+IEhlbGxvIEFuZHksCj4gPgo+ID4gT24gVHVlLCBKdWwgMTQsIDIwMjYg
YXQgMDY6MDg6MDZQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4gPiA+ID4gQEAgLTU4LDYgKzU5
LDggQEAgc3RhdGljIHZvaWQgZHdfZHBfcm9ja2NoaXBfaHBkX3N3X3NlbCh2b2lkICpkYXRhLCBi
b29sCj4gPiA+ID4gZm9yY2VfaHBkX2Zyb21fc3cpCj4gPiA+ID4KPiA+ID4gPiAgICAgICAgIGRw
LT5ocGRfc2VsID0gZm9yY2VfaHBkX2Zyb21fc3c7Cj4gPiA+ID4KPiA+ID4gPiArICAgICAgIEFD
UVVJUkUocG1fcnVudGltZV9hY3RpdmVfYXV0bywgcG0pKGRwLT5kZXYpOwo+ID4gPgo+ID4gPiBU
aGlzIGNhbiB0cmlnZXIgIEhQRCBpcnEgZm9yIFVTQi1DIERQIEFsdE1vZGUsIGJ1dCBmb3IgYSBz
dGFuZGFyZAo+ID4gPiBEUCBwb3J0LCB0aGlzIGlzIG5vIHdheSB0byBhY3F1aXJlIHJ1bnRpbWUs
IHNvIHRoZXJlIHdpbGwgbm8gaXJxCj4gPiA+IHdoZW4gcGx1ZyBpbi4KPiA+Cj4gPiBSaWdodC4g
SSBkb24ndCBoYXZlIGFueSBSSzM1ODggb3IgUkszNTc2IHN5c3RlbSBleHBvc2luZyBhIERQCj4g
PiBjb25uZWN0b3IgZGlyZWN0bHkuIFRoaXMgdGhpcyBpcyBub24tdHJpdmlhbCB0byB0ZXN0IGZv
ciBtZSA6Lwo+ID4KPiA+IEkgc2VlIHRoZSBmb2xsb3dpbmcgb3B0aW9uczoKPiA+Cj4gPiAxLiBP
bmx5IGVuYWJsZSBydW50aW1lIFBNIHdoZW4gcnVubmluZyBpbiBVU0ItQyBtb2RlCj4gPiAyLiBN
dXggdGhlIEhQRCBwaW4gYXMgR1BJTyB0byBzdXBwb3J0IHdha2luZyB1cCB3aXRoIHRoZSBjb250
cm9sbGVyCj4gPiAgICBiZWluZyBzdXNwZW5kZWQ7IGVpdGhlciByZW11eCB3aGVuIHRoZSBjb250
cm9sbGVyIGlzIGF3YWtlIG9yIHVzZQo+ID4gICAgdGhlIHNhbWUgbWVjaGFuaXNtIGFzIFVTQi1D
IHRvIGRvIHNvZnR3YXJlIGJhc2VkIEhQRCBvbiB0b3Agb2YgdGhlCj4gPiAgICBHUElPICh3aGlj
aCB3b3VsZCBhbGxvdyB1c2luZyBhbnkgR1BJTyBhcyBIUEQpLgo+ID4gMy4gSGF2ZSBhIHBvbGwg
ZnVuY3Rpb24sIHdoaWNoIHdha2VzIHVwIHRoZSBjb250cm9sbGVyIHJlZ3VsYXJseSB0bwo+ID4g
ICAgY2hlY2sgdGhlIHN0YXR1cwo+ID4KPiA+IEkgY29uc2lkZXIgZ29pbmcgZm9yIG9wdGlvbiAx
IGZvciBub3csIHdoaWNoIGFsbG93cyBvcHRpb24gMiB0byBiZQo+ID4gaW1wbGVtZW50ZWQgYXMg
YSBmb2xsb3cgdXAuIE1vc3RseSB0byBhdm9pZCB0aGF0IHRoZSBzZXJpZXMgYmVjb21lcwo+ID4g
YXMgYmlnIGFuZCBtZXNzeSBhcyB0aGUgVVNCRFAgUEhZIHNlcmllcyBiZWNhbWUuCj4KPiBJJ2Qg
YWdyZWUgd2l0aCB0aGF0IHNvbHV0aW9uLgo+IEkgdGhpbmsgd2UgY2FuIGFsbCBhZ3JlZSB0aGF0
IG9wdGlvbiAzIGlzIGJhYWFhZCA6LSkgLgoKICBJJ20gYWxzbyBpbiBmYXZvciBvZiBtb3Zpbmcg
YWhlYWQgd2l0aCAxLgoKICBBYm91dCBPcHRpb24gMjogd2UndmUgZ290IGEgR1BJTy1iYXNlZCBI
UEQgd29ya2Fyb3VuZCBpbiBvdXIgIEJTUAp0cmVlLCBidXQgaXQncyBhIGJpdCBmbGFreSBpbiBz
b21lIHVzZS1jYXNlc++8mgogIEFjY29yZGluZyB0byB0aGUgRFAgc3BlYywgdGhlcmUgYXJlIHR3
byB0eXBlcyBvZiBpbnRlcnJ1cHRzOgogIDEuICBIT1RQTFVHX0lSUTogQSBsZXZlbC10cmFuc2l0
aW9uIHB1bHNlIHRoYXQgbXVzdCBiZSBzdXN0YWluZWQgZm9yCmF0IGxlYXN0IDLigK9tcy4KICAy
LiBIUERfSVJROiAgQSBsb3ctbGV2ZWwgcHVsc2Ugd2l0aCBhIGR1cmF0aW9uIGJldHdlZW4gMC4y
NeKAr21zIH4gMuKAr21zLgogV2l0aCB0aGUgR1BJTy1iYXNlZCBzb2x1dGlvbiwgaXQgaXMgZGlm
ZmljdWx0IHRvIHJlbGlhYmx5IGRldGVjdCBzdWNoCnNob3J0IHB1bHNlcy4KCgo+Cj4gU28gd2l0
aCAxLCBmdW5jdGlvbmFsaXR5IGtlZXBzIHdvcmtpbmcsIGFuZCB0aGVuIHNvbWVvbmUgY2FuIHB1
dCB0aGUKPiBzcGVjaWFsIEhQRCBoYW5kbGluZyBvbiB0b3AgbGF0ZXIgLSB0aGUgUm9jay01LUlU
WCBkb2VzIGV4cG9zZSB0aGUgRFAxCj4gKG9uIGEgaGRtaSBwb3J0KQo+Cj4KPiBIZWlrbwo+Cj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
