Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 277CCC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 18:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EY79fuq/FqL3iiPeAoTDQ7hxR0z77aGO57j6w1ToPc=; b=HWs4ghk/bSNvV4
	CzOLQswKRT/aXTwOA+mr/nEJmJsPRfvzgKKMIm8YNfmJdAKPjgDhoT7WOzrrx8CY52gsW6mbNZQvh
	frk0C9IPW4uSb6/lMrVC48Np48RTCKcni5nG9YrY3mHxiPxE3cQ3Q3gJVoRv5j2HqLibgK1D3esez
	ieRC2DgDO+YB25blShxzNEGVfKajNVWfyU11/oU0I/7Q22i9+YqH6pzdj9JsN1ArtiBkX6y54n372
	tVUt/A6orjMiXiG/zTUCPU9r7dwwPp3t8GcsubDMPNq+sRvjVo099Yh+of7dhBqluZEr/IulBKu95
	cVut7lXAKoCeDjCdLQVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUCHu-00AMRC-O8; Tue, 15 Mar 2022 18:52:54 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUCHr-00AMPV-0x; Tue, 15 Mar 2022 18:52:52 +0000
Received: by mail-ot1-x32d.google.com with SMTP id
 o106-20020a9d2273000000b005b21f46878cso14569701ota.3; 
 Tue, 15 Mar 2022 11:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zNTJopoLGltecGhSY1J4R8lxzUea0zgkojqKJ4ephYk=;
 b=QKqrXEraFO3Q3uNBiyoVf+76YiOzMhP9FHgSq5y/4jPXEHcYc3eyCOAjQg6UCpL4OQ
 Qf9+d3Uo2az+gLFI1IyvbHSH5ZV1ysaDuDFj0/qNCK9moMY7s8Gs9YFgbndXfkrVyUUx
 LQyl9nSQ0peCvu1hpg91TKQWHAt/3dkBPOLcX0NgebyxbORQyqK+3W6dxjnxGHIE8Xhd
 CTz8OSJhD9stugfUoZ8mPXpKMCRH1HOkp0cRsOstlyL7j8RirvS3d+MTNd7tR8HfmlLk
 iNxLnCVWd7/fV7L0LaXkpC7HRsH6dWSpW6SspqpszrTSx4ODFCNv8fk16O4pru+WhBVH
 zVZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zNTJopoLGltecGhSY1J4R8lxzUea0zgkojqKJ4ephYk=;
 b=IbOwa6tFrPPcF53vOJbsxO3NNPgtRfKCXzc6UNaI6iXiYVj5ozNDfcBpA0DZJZheVN
 24w95yQueE3Cm0QmhUYPt11LJEc3nyLSQymNUcpgw/XU+IJtkbWOCFVZDWAtYGuPiEIo
 sYT6krLE1kL193fdnn5kH9yNGsyj1YZQSsBmO767MzMeWocIVZ1zqHfORpwzV4ZQ3Y4v
 2JJ8MMEo0CPhgEacaugsvcURpxvjAbCmcBqiZPabf/crZbLaF1XqolTymiwl4SplNrCb
 LJHbL6SB4z4ECKpjFmPhJqasZ01SzOqgmUsnGc1aM5VKjSuyA/b6pk/hVjXpBUJuC1vx
 dB7g==
X-Gm-Message-State: AOAM533xssrbYsJN4SgJyfDmqwX2Yt1YAU6l+DmVGtEipE/q5ebvmZsa
 g0GHDUUGS6JijohdG++IrsDlr1/efdzWFT0HK5I=
X-Google-Smtp-Source: ABdhPJzPCJIJm2LwauK3uaMNRrspjb+0HPgBwT8LZe/bTDIdcPf8RkEU23DNd13AaKZGCPpi0IDa/fHQYab6R7PD2VI=
X-Received: by 2002:a05:6830:2709:b0:5b0:196:dcf with SMTP id
 j9-20020a056830270900b005b001960dcfmr13485823otu.357.1647370369237; Tue, 15
 Mar 2022 11:52:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <Yi+9n0eGn3rNKb4X@intel.com>
In-Reply-To: <Yi+9n0eGn3rNKb4X@intel.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 15 Mar 2022 14:52:38 -0400
Message-ID: <CADnq5_NS07TPBWSnETRhjzqtX_oUuCu86ewurFT3MJO=PcLAuQ@mail.gmail.com>
Subject: Re: [PATCH 00/22] drm: Review of mode copies
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Emma Anholt <emma@anholt.net>, Neil Armstrong <narmstrong@baylibre.com>, 
 Xinliang Liu <xinliang.liu@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Sam Ravnborg <sam@ravnborg.org>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, 
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>, 
 Chen Feng <puck.chen@hisilicon.com>, Alain Volmat <alain.volmat@foss.st.com>, 
 Harry Wentland <harry.wentland@amd.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Maxime Ripard <mripard@kernel.org>, Nikola Cornij <nikola.cornij@amd.com>, 
 John Stultz <john.stultz@linaro.org>, Sean Paul <sean@poorly.run>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Tomi Valkeinen <tomba@kernel.org>, 
 Jyri Sarha <jyri.sarha@iki.fi>, Sandy Huang <hjc@rock-chips.com>, 
 Robert Foss <robert.foss@linaro.org>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, 
 Rob Clark <robdclark@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>, 
 freedreno <freedreno@lists.freedesktop.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_115251_096646_F818D1EB 
X-CRM114-Status: GOOD (  11.84  )
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

T24gTW9uLCBNYXIgMTQsIDIwMjIgYXQgNjoxMiBQTSBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgRmViIDE4LCAyMDIyIGF0
IDEyOjAzOjQxUE0gKzAyMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gPiAgIGRybTogQWRkIGRy
bV9tb2RlX2luaXQoKQo+ID4gICBkcm0vYnJpZGdlOiBVc2UgZHJtX21vZGVfY29weSgpCj4gPiAg
IGRybS9pbXg6IFVzZSBkcm1fbW9kZV9kdXBsaWNhdGUoKQo+ID4gICBkcm0vcGFuZWw6IFVzZSBk
cm1fbW9kZV9kdXBsaWNhdGUoKQo+ID4gICBkcm0vdmM0OiBVc2UgZHJtX21vZGVfY29weSgpCj4g
VGhlc2UgaGF2ZSBiZWVuIHB1c2hlZCB0byBkcm0tbWlzYy1uZXh0Lgo+Cj4gPiAgIGRybS9hbWRn
cHU6IFJlbW92ZSBwb2ludGxlc3Mgb24gc3RhY2sgbW9kZSBjb3BpZXMKPiA+ICAgZHJtL2FtZGdw
dTogVXNlIGRybV9tb2RlX2luaXQoKSBmb3Igb24tc3RhY2sgbW9kZXMKPiA+ICAgZHJtL2FtZGdw
dTogVXNlIGRybV9tb2RlX2NvcHkoKQo+IGFtZGdwdSBvbmVzIGFyZSByZXZpZXdlZCwgYnV0IEkn
bGwgbGVhdmUgdGhlbSBmb3IgdGhlCj4gQU1EIGZvbGtzIHRvIHB1c2ggdG8gd2hpY2hldmVyIHRy
ZWUgdGhleSBwcmVmZXIuCgpJIHB1bGxlZCBwYXRjaGVzIDIsIDQsIDUgaW50byBteSB0cmVlLiAg
Rm9yIDMsIEknbSBoYXBweSB0byBoYXZlIGl0CmxhbmQgdmlhIGRybS1taXNjIHdpdGggdGhlIHJl
c3Qgb2YgdGhlIG1vZGVfaW5pdCBjaGFuZ2VzIGlmIHlvdSdkCnByZWZlci4KCkFsZXgKCgpBbGV4
Cgo+Cj4KPiBUaGUgcmVzdCBhcmUgc3RpbGwgaW4gbmVlZCBvZiByZXZpZXc6Cj4gPiAgIGRybS9y
YWRlb246IFVzZSBkcm1fbW9kZV9jb3B5KCkKPiA+ICAgZHJtL2dtYTUwMDogVXNlIGRybV9tb2Rl
X2NvcHkoKQo+ID4gICBkcm0vaGlzaWxpY29uOiBVc2UgZHJtX21vZGVfaW5pdCgpIGZvciBvbi1z
dGFjayBtb2Rlcwo+ID4gICBkcm0vbXNtOiBOdWtlIHdlaXJkIG9uIHN0YWNrIG1vZGUgY29weQo+
ID4gICBkcm0vbXNtOiBVc2UgZHJtX21vZGVfaW5pdCgpIGZvciBvbi1zdGFjayBtb2Rlcwo+ID4g
ICBkcm0vbXNtOiBVc2UgZHJtX21vZGVfY29weSgpCj4gPiAgIGRybS9tdGs6IFVzZSBkcm1fbW9k
ZV9pbml0KCkgZm9yIG9uLXN0YWNrIG1vZGVzCj4gPiAgIGRybS9yb2NrY2hpcDogVXNlIGRybV9t
b2RlX2NvcHkoKQo+ID4gICBkcm0vc3RpOiBVc2UgZHJtX21vZGVfY29weSgpCj4gPiAgIGRybS90
aWxjZGM6IFVzZSBkcm1fbW9kZV9jb3B5KCkKPiA+ICAgZHJtL2k5MTU6IFVzZSBkcm1fbW9kZV9p
bml0KCkgZm9yIG9uLXN0YWNrIG1vZGVzCj4gPiAgIGRybS9pOTE1OiBVc2UgZHJtX21vZGVfY29w
eSgpCj4gPiAgIGRybTogVXNlIGRybV9tb2RlX2luaXQoKSBmb3Igb24tc3RhY2sgbW9kZXMKPiA+
ICAgZHJtOiBVc2UgZHJtX21vZGVfY29weSgpCj4KPiAtLQo+IFZpbGxlIFN5cmrDpGzDpAo+IElu
dGVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
