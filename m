Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5A8EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Mar 2022 20:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voDFwlg0wcjB9L4pnbuKftZRO6HoYj5BN8DSn9CRVjQ=; b=QEeScFTHY1zQqG
	5ICsn3xAZSQgI50flKB6ei+jX6d8bQjgXkKxe58iz4d6LUKb2oWiGSMQlONu5GbeC31VXh3ST/DHT
	H1c2P20udH2G7UBJ7/dLDKhW4mvqG8lr1DczX7LZ/PlxEDRuHAQ03cPiLtYDhQkNiL4qG3lTdznDK
	j4tnR5iVWAfKtwjE9NFvw+GaQ+eX723uawbVaH49bobP5BQWfbN2VCoEJvv3NonZXUfcoc9DC3uGs
	iF0PSohv1Q+jZp9TBmLpFh0c28XmF98PKuhFvE7uLSewcnENnXQaB2EoprKrUswbm6gB+gxnjn+m/
	pV6NpnOdo9J8jDIdoZiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nX7wT-00EqnQ-M8; Wed, 23 Mar 2022 20:50:53 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX7wQ-00Eqmi-V1; Wed, 23 Mar 2022 20:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1648068650; x=1679604650;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Le8vCkALSx2+L8taW7J6S8H+GoppDn/GSqrf/tx19rg=;
 b=X+G4KiNGpsm7LYgTAj9SRlCx6D+fAOmmIq6qN7rDgzT7O6I5KOt0Qpts
 WXNb/5KTwx/iXf5StngSb5LBYW9Lhudtio2MNhI1LB40g2tAblV84fm4r
 Hj5/kIG0tc8RU+ey6FgqgyFlYyquKLbv8U2saB0EnT0oLvl+qTTn4Nl/F I=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 23 Mar 2022 13:50:49 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 13:50:48 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 23 Mar 2022 13:50:48 -0700
Received: from [10.110.52.81] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Wed, 23 Mar
 2022 13:50:46 -0700
Message-ID: <c9899a30-df55-06b1-c99d-66ccc9fa3edf@quicinc.com>
Date: Wed, 23 Mar 2022 13:50:46 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH 00/22] drm: Review of mode copies
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Alex
 Deucher" <alexdeucher@gmail.com>
CC: Emma Anholt <emma@anholt.net>, Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, Maling list - DRI developers
 <dri-devel@lists.freedesktop.org>, Thierry Reding <thierry.reding@gmail.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Sam Ravnborg <sam@ravnborg.org>, Rodrigo Siqueira
 <Rodrigo.Siqueira@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 <linux-rockchip@lists.infradead.org>, Xinwei Kong
 <kong.kongxinwei@hisilicon.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, 
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Alain Volmat
 <alain.volmat@foss.st.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, "Jonas
 Karlman" <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>, Chen Feng
 <puck.chen@hisilicon.com>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>, Nikola Cornij <nikola.cornij@amd.com>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, Tomi Valkeinen <tomba@kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>, Sandy Huang
 <hjc@rock-chips.com>, Robert Foss <robert.foss@linaro.org>, Alex Deucher
 <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>, Jyri Sarha
 <jyri.sarha@iki.fi>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <Yi+9n0eGn3rNKb4X@intel.com>
 <CADnq5_NS07TPBWSnETRhjzqtX_oUuCu86ewurFT3MJO=PcLAuQ@mail.gmail.com>
 <Yjj+RSVBWk6UO2C7@intel.com>
 <e9937a37-70c8-cc6f-15f2-1dbbb7f1bfba@linaro.org>
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
In-Reply-To: <e9937a37-70c8-cc6f-15f2-1dbbb7f1bfba@linaro.org>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_135051_077947_08D59B17 
X-CRM114-Status: GOOD (  15.17  )
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

CgpPbiAzLzIzLzIwMjIgMzozOSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiAyMi8w
My8yMDIyIDAxOjM3LCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4+IE9uIFR1ZSwgTWFyIDE1LCAy
MDIyIGF0IDAyOjUyOjM4UE0gLTA0MDAsIEFsZXggRGV1Y2hlciB3cm90ZToKPj4+IE9uIE1vbiwg
TWFyIDE0LCAyMDIyIGF0IDY6MTIgUE0gVmlsbGUgU3lyasOkbMOkCj4+PiA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gT24gRnJpLCBGZWIgMTgsIDIwMjIg
YXQgMTI6MDM6NDFQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPj4+Pj4gwqDCoCBkcm06
IEFkZCBkcm1fbW9kZV9pbml0KCkKPj4+Pj4gwqDCoCBkcm0vYnJpZGdlOiBVc2UgZHJtX21vZGVf
Y29weSgpCj4+Pj4+IMKgwqAgZHJtL2lteDogVXNlIGRybV9tb2RlX2R1cGxpY2F0ZSgpCj4+Pj4+
IMKgwqAgZHJtL3BhbmVsOiBVc2UgZHJtX21vZGVfZHVwbGljYXRlKCkKPj4+Pj4gwqDCoCBkcm0v
dmM0OiBVc2UgZHJtX21vZGVfY29weSgpCj4+Pj4gVGhlc2UgaGF2ZSBiZWVuIHB1c2hlZCB0byBk
cm0tbWlzYy1uZXh0Lgo+Pj4+Cj4+Pj4+IMKgwqAgZHJtL2FtZGdwdTogUmVtb3ZlIHBvaW50bGVz
cyBvbiBzdGFjayBtb2RlIGNvcGllcwo+Pj4+PiDCoMKgIGRybS9hbWRncHU6IFVzZSBkcm1fbW9k
ZV9pbml0KCkgZm9yIG9uLXN0YWNrIG1vZGVzCj4+Pj4+IMKgwqAgZHJtL2FtZGdwdTogVXNlIGRy
bV9tb2RlX2NvcHkoKQo+Pj4+IGFtZGdwdSBvbmVzIGFyZSByZXZpZXdlZCwgYnV0IEknbGwgbGVh
dmUgdGhlbSBmb3IgdGhlCj4+Pj4gQU1EIGZvbGtzIHRvIHB1c2ggdG8gd2hpY2hldmVyIHRyZWUg
dGhleSBwcmVmZXIuCj4+Pgo+Pj4gSSBwdWxsZWQgcGF0Y2hlcyAyLCA0LCA1IGludG8gbXkgdHJl
ZS4KPj4KPj4gVGhhbmtzLgo+Pgo+Pj4gRm9yIDMsIEknbSBoYXBweSB0byBoYXZlIGl0Cj4+PiBs
YW5kIHZpYSBkcm0tbWlzYyB3aXRoIHRoZSByZXN0IG9mIHRoZSBtb2RlX2luaXQgY2hhbmdlcyBp
ZiB5b3UnZAo+Pj4gcHJlZmVyLgo+Pgo+PiBFaXRoZXIgd2F5IHdvcmtzIGZvciBtZS4gSSBkb24n
dCB5ZXQgaGF2ZSByZXZpZXdzIHlldCBmb3IKPj4gdGhlIG90aGVyIGRyaXZlcnMsIHNvIEknbGwg
cHJvYWJseSBob2xkIG9mZiBmb3IgYSBiaXQgbW9yZQo+PiBhdCBsZWFzdC4gQW5kIHRoZSBpOTE1
IHBhdGNoIEknbGwgYmUgbWVyZ2luZyB2aWEgZHJtLWludGVsLgo+Pgo+Pj4+PiDCoMKgIGRybS9y
YWRlb246IFVzZSBkcm1fbW9kZV9jb3B5KCkKPj4+Pj4gwqDCoCBkcm0vZ21hNTAwOiBVc2UgZHJt
X21vZGVfY29weSgpCj4+Pj4+IMKgwqAgZHJtL3RpbGNkYzogVXNlIGRybV9tb2RlX2NvcHkoKQo+
Pj4+PiDCoMKgIGRybS9pOTE1OiBVc2UgZHJtX21vZGVfY29weSgpCj4+Cj4+IFRob3NlIGFyZSBu
b3cgYWxsIGluLgo+Pgo+PiBXaGljaCBsZWF2ZXMgdXMgd2l0aCB0aGVzZSBzdHJhZ2dsZXJzOgo+
Pj4+PiDCoMKgIGRybS9oaXNpbGljb246IFVzZSBkcm1fbW9kZV9pbml0KCkgZm9yIG9uLXN0YWNr
IG1vZGVzCj4gCj4+Pj4+IMKgwqAgZHJtL21zbTogTnVrZSB3ZWlyZCBvbiBzdGFjayBtb2RlIGNv
cHkKPj4+Pj4gwqDCoCBkcm0vbXNtOiBVc2UgZHJtX21vZGVfaW5pdCgpIGZvciBvbi1zdGFjayBt
b2Rlcwo+Pj4+PiDCoMKgIGRybS9tc206IFVzZSBkcm1fbW9kZV9jb3B5KCkKPiAKPiBUaGVzZSB0
aHJlZSBwYXRjaGVzIHdlbnQgYmVuZWF0aCBteSByYWRhciBmb3Igc29tZSByZWFzb24uCj4gCj4g
SSBoYXZlIGp1c3Qgc2VudCBhIHJlcGxhY2VtZW50IGZvciB0aGUgZmlyc3QgcGF0Y2ggKFsxXSku
IE90aGVyIHR3byAKPiBwYXRjaGVzIGNhbiBiZSBwdWxsZWQgaW4gbXNtL21zbS1uZXh0IChvciBt
c20vbXNtLWZpeGVzKSBkdXJpbmcgdGhlIG5leHQgCj4gZGV2ZWxvcG1lbnQgY3ljbGUgaWYgdGhh
dCB3b3JrcyBmb3IgeW91Lgo+IAo+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzEwMTY4Mi8KCkFncmVlIHdpdGggdGhpcyBhcHByb2FjaC4KCldlIGNhbiByZXBs
YWNlIHRoZSBmaXJzdCBwYXRjaCB3aXRoIApodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzEwMTY4Mi8uCgpUaGFua3MKCkFiaGluYXYKCj4gCj4+Pj4+IMKgwqAgZHJtL210
azogVXNlIGRybV9tb2RlX2luaXQoKSBmb3Igb24tc3RhY2sgbW9kZXMKPj4+Pj4gwqDCoCBkcm0v
cm9ja2NoaXA6IFVzZSBkcm1fbW9kZV9jb3B5KCkKPj4+Pj4gwqDCoCBkcm0vc3RpOiBVc2UgZHJt
X21vZGVfY29weSgpCj4+Pj4+IMKgwqAgZHJtOiBVc2UgZHJtX21vZGVfaW5pdCgpIGZvciBvbi1z
dGFjayBtb2Rlcwo+Pj4+PiDCoMKgIGRybTogVXNlIGRybV9tb2RlX2NvcHkoKQo+Pgo+IAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
