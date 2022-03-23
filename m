Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FA52C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Mar 2022 10:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pofd75Um4B0ecO901T38YhYUJbAOrAEgH043IkpQZRU=; b=TZeyMNT/m5ontT
	POUWAZgKdj/aAYM+KpzseP8e/aCFI9vdvFPlP1rp8UARR3FH/iJRBkIRCzAAvgU9XOhwopAl/paHg
	PengJQCCKxRanhnY+vUy4OSpmfZtBPej7Ek3FQqtuhBQHu6iBRMwghkaFewuFqI32utxGJrw9ssgA
	tOmkHaAcfXZZmySxnRjAIP2exVGQqWNkA7j0k5jdR8PiNYpm8rhLg33FiSdLTDPGt2eEEKR+zFEoV
	CmVxv7bzKlt0JYc2ZOiHkJoV6ttafbTQQ2hJgAYENM85bpX2wffEhSJKPgemRmSkIANyo97+7PThq
	Qby+2H+u2wYHx+tSniHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWyPI-00DLgQ-V6; Wed, 23 Mar 2022 10:40:00 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWyP6-00DLeD-W3
 for linux-rockchip@lists.infradead.org; Wed, 23 Mar 2022 10:39:50 +0000
Received: by mail-lf1-x129.google.com with SMTP id w7so1959053lfd.6
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Mar 2022 03:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=LJG6LchEWg7eLND4+i+6tV16qS1u0tcHKvRxEtTuG+w=;
 b=yAkPXvHZVB3DXiA6lnV3OJs4l7boHKACGrx2zNN0q0WdW4bDDBFu/J4udxtyTi4LnD
 EW5GVcRjYXzEeDLkpqeGo1qdR36WyqvDgbQswBau6NJctIIV72R0Wo2Kj1TEosLVpGaq
 UvO0sdl+erB80ekBTDMX7IEdiKF3ft8qxVaWiecxxSgBJsWhhrQHl5YOnjDD05TZdcGP
 GDOInQ2USvHXmJkV5XU+7gTi59xIrI9Dv6xe++mHYqDqDI5n+u4nmlN8qRthsqM0DM33
 fzmhSc0ONmXxs82ScbBBb79fjsbtQFhKXPJYW/HWmd9J56xvz4lQapq28hyricqZ/Ueu
 gp4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=LJG6LchEWg7eLND4+i+6tV16qS1u0tcHKvRxEtTuG+w=;
 b=Sx63M86smi/GucO4Krl5Bt1eUUmhaYk7JDMqP4wts1hkhCqcE6IaUFvs8llJcvs0Tp
 vgDw+BElVbKxqrHaOHhMCWq2J1N5vHeLyRA1GZz83s+NXtNi1OWGHqwh5w1Bh6B0G/3N
 eejBsGBd3vM6o9ATvcD9L/jIgQrQRqH0g2yiZKilHI6qDakxLCUD6LJCuls1U9OCu1in
 85eLMheleveoxCa5uR8rMd3xMKyX/WMRinCrCEosNXnkD55QACVwMxs4tVs7K6aY5J5e
 fH5ylxtYnb3EQkHwv4dcPn8d7MbOyH637+mmjQJme7TSqFwLct80LevszicTqlsgVqZ/
 eRMA==
X-Gm-Message-State: AOAM531KZAtso271y8YzLGOCtOrQXtQU9UQOYMEi/gXMgZzhaDikNgyV
 z6H1RDTVaGUdSAlDI3TUB0JHAw==
X-Google-Smtp-Source: ABdhPJxdoE2MJzCwqFEPkOY+WggWU0jxIXl/lqXQbtd4rieBWf/meitV/U1e3m4J8NKMlt9q9m+iIA==
X-Received: by 2002:a05:6512:34c7:b0:44a:37de:9d74 with SMTP id
 w7-20020a05651234c700b0044a37de9d74mr6436931lfr.314.1648031986613; 
 Wed, 23 Mar 2022 03:39:46 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 x33-20020a0565123fa100b00443d3cffd89sm2479850lfa.210.2022.03.23.03.39.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Mar 2022 03:39:46 -0700 (PDT)
Message-ID: <e9937a37-70c8-cc6f-15f2-1dbbb7f1bfba@linaro.org>
Date: Wed, 23 Mar 2022 13:39:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH 00/22] drm: Review of mode copies
Content-Language: en-GB
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Alex Deucher <alexdeucher@gmail.com>
Cc: Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>, Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>,
 Chen Feng <puck.chen@hisilicon.com>, Alain Volmat
 <alain.volmat@foss.st.com>, Harry Wentland <harry.wentland@amd.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Leo Li <sunpeng.li@amd.com>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Maxime Ripard
 <mripard@kernel.org>, Nikola Cornij <nikola.cornij@amd.com>,
 John Stultz <john.stultz@linaro.org>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Tomi Valkeinen <tomba@kernel.org>, Jyri Sarha <jyri.sarha@iki.fi>,
 Sandy Huang <hjc@rock-chips.com>, Robert Foss <robert.foss@linaro.org>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <Yi+9n0eGn3rNKb4X@intel.com>
 <CADnq5_NS07TPBWSnETRhjzqtX_oUuCu86ewurFT3MJO=PcLAuQ@mail.gmail.com>
 <Yjj+RSVBWk6UO2C7@intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Yjj+RSVBWk6UO2C7@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_033949_038841_26FEFFC2 
X-CRM114-Status: GOOD (  18.44  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjIvMDMvMjAyMiAwMTozNywgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIFR1ZSwgTWFy
IDE1LCAyMDIyIGF0IDAyOjUyOjM4UE0gLTA0MDAsIEFsZXggRGV1Y2hlciB3cm90ZToKPj4gT24g
TW9uLCBNYXIgMTQsIDIwMjIgYXQgNjoxMiBQTSBWaWxsZSBTeXJqw6Rsw6QKPj4gPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPj4+Cj4+PiBPbiBGcmksIEZlYiAxOCwgMjAy
MiBhdCAxMjowMzo0MVBNICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+Pj4+ICAgIGRybTog
QWRkIGRybV9tb2RlX2luaXQoKQo+Pj4+ICAgIGRybS9icmlkZ2U6IFVzZSBkcm1fbW9kZV9jb3B5
KCkKPj4+PiAgICBkcm0vaW14OiBVc2UgZHJtX21vZGVfZHVwbGljYXRlKCkKPj4+PiAgICBkcm0v
cGFuZWw6IFVzZSBkcm1fbW9kZV9kdXBsaWNhdGUoKQo+Pj4+ICAgIGRybS92YzQ6IFVzZSBkcm1f
bW9kZV9jb3B5KCkKPj4+IFRoZXNlIGhhdmUgYmVlbiBwdXNoZWQgdG8gZHJtLW1pc2MtbmV4dC4K
Pj4+Cj4+Pj4gICAgZHJtL2FtZGdwdTogUmVtb3ZlIHBvaW50bGVzcyBvbiBzdGFjayBtb2RlIGNv
cGllcwo+Pj4+ICAgIGRybS9hbWRncHU6IFVzZSBkcm1fbW9kZV9pbml0KCkgZm9yIG9uLXN0YWNr
IG1vZGVzCj4+Pj4gICAgZHJtL2FtZGdwdTogVXNlIGRybV9tb2RlX2NvcHkoKQo+Pj4gYW1kZ3B1
IG9uZXMgYXJlIHJldmlld2VkLCBidXQgSSdsbCBsZWF2ZSB0aGVtIGZvciB0aGUKPj4+IEFNRCBm
b2xrcyB0byBwdXNoIHRvIHdoaWNoZXZlciB0cmVlIHRoZXkgcHJlZmVyLgo+Pgo+PiBJIHB1bGxl
ZCBwYXRjaGVzIDIsIDQsIDUgaW50byBteSB0cmVlLgo+IAo+IFRoYW5rcy4KPiAKPj4gRm9yIDMs
IEknbSBoYXBweSB0byBoYXZlIGl0Cj4+IGxhbmQgdmlhIGRybS1taXNjIHdpdGggdGhlIHJlc3Qg
b2YgdGhlIG1vZGVfaW5pdCBjaGFuZ2VzIGlmIHlvdSdkCj4+IHByZWZlci4KPiAKPiBFaXRoZXIg
d2F5IHdvcmtzIGZvciBtZS4gSSBkb24ndCB5ZXQgaGF2ZSByZXZpZXdzIHlldCBmb3IKPiB0aGUg
b3RoZXIgZHJpdmVycywgc28gSSdsbCBwcm9hYmx5IGhvbGQgb2ZmIGZvciBhIGJpdCBtb3JlCj4g
YXQgbGVhc3QuIEFuZCB0aGUgaTkxNSBwYXRjaCBJJ2xsIGJlIG1lcmdpbmcgdmlhIGRybS1pbnRl
bC4KPiAKPj4+PiAgICBkcm0vcmFkZW9uOiBVc2UgZHJtX21vZGVfY29weSgpCj4+Pj4gICAgZHJt
L2dtYTUwMDogVXNlIGRybV9tb2RlX2NvcHkoKQo+Pj4+ICAgIGRybS90aWxjZGM6IFVzZSBkcm1f
bW9kZV9jb3B5KCkKPj4+PiAgICBkcm0vaTkxNTogVXNlIGRybV9tb2RlX2NvcHkoKQo+IAo+IFRo
b3NlIGFyZSBub3cgYWxsIGluLgo+IAo+IFdoaWNoIGxlYXZlcyB1cyB3aXRoIHRoZXNlIHN0cmFn
Z2xlcnM6Cj4+Pj4gICAgZHJtL2hpc2lsaWNvbjogVXNlIGRybV9tb2RlX2luaXQoKSBmb3Igb24t
c3RhY2sgbW9kZXMKCj4+Pj4gICAgZHJtL21zbTogTnVrZSB3ZWlyZCBvbiBzdGFjayBtb2RlIGNv
cHkKPj4+PiAgICBkcm0vbXNtOiBVc2UgZHJtX21vZGVfaW5pdCgpIGZvciBvbi1zdGFjayBtb2Rl
cwo+Pj4+ICAgIGRybS9tc206IFVzZSBkcm1fbW9kZV9jb3B5KCkKClRoZXNlIHRocmVlIHBhdGNo
ZXMgd2VudCBiZW5lYXRoIG15IHJhZGFyIGZvciBzb21lIHJlYXNvbi4KCkkgaGF2ZSBqdXN0IHNl
bnQgYSByZXBsYWNlbWVudCBmb3IgdGhlIGZpcnN0IHBhdGNoIChbMV0pLiBPdGhlciB0d28gCnBh
dGNoZXMgY2FuIGJlIHB1bGxlZCBpbiBtc20vbXNtLW5leHQgKG9yIG1zbS9tc20tZml4ZXMpIGR1
cmluZyB0aGUgbmV4dCAKZGV2ZWxvcG1lbnQgY3ljbGUgaWYgdGhhdCB3b3JrcyBmb3IgeW91LgoK
WzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTAxNjgyLwoKPj4+
PiAgICBkcm0vbXRrOiBVc2UgZHJtX21vZGVfaW5pdCgpIGZvciBvbi1zdGFjayBtb2Rlcwo+Pj4+
ICAgIGRybS9yb2NrY2hpcDogVXNlIGRybV9tb2RlX2NvcHkoKQo+Pj4+ICAgIGRybS9zdGk6IFVz
ZSBkcm1fbW9kZV9jb3B5KCkKPj4+PiAgICBkcm06IFVzZSBkcm1fbW9kZV9pbml0KCkgZm9yIG9u
LXN0YWNrIG1vZGVzCj4+Pj4gICAgZHJtOiBVc2UgZHJtX21vZGVfY29weSgpCj4gCgoKLS0gCldp
dGggYmVzdCB3aXNoZXMKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
