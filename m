Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9BEC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 09:53:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5439461B64
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 09:53:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5439461B64
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZcIQyK9Xay/I55KZsAyBs1W2BV6bCUdZT7ecdoGw5A=; b=a+4S6lsdBGRMfq
	2PzwpLkX+YIgsbruGgChEQ8nUgLx5UoPiNmPvcHx/kS9qbAeVbTR/sZoHrfj1vaE0HnROklSzvpWD
	g5UqrWyzPdm4UiHKwvCU375yD08VJB4o3PDSHU9TNOVbuC67mhBUNgvdOArUfi4xEjM98pa4wuaD3
	+S+UEc8ggOOv1Jh8IHf2mAAZCEihIjd5SK6+wLk6clzAdg2pwCZwKvyJj5suWSLUrpNoSc6/5wm+6
	jhDA57KwzVJaRY+Qmapv1/1weQGpEIRZU7yLUQddlSCBqftEXc8tbX0EQYYxSQKJVYeQc9Pt6ANbb
	Ol3NZZPu0lppvAapCi0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mne6j-007NVe-1P; Thu, 18 Nov 2021 09:53:29 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mne6g-007NTZ-0j
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 09:53:27 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id v7so16502946ybq.0
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Nov 2021 01:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MSn2l1CqdA8yauQEkr9Er3RNk6u1ntHr6p1PYu6dVHg=;
 b=dDOwOtPhdIx/Z6wlXdmhq5eHw+zn3sTxhiwhM8bwK0qsSjMrv87LuWgGjB+hvBF1gO
 KAkU4dZQDEFk8bJ9kl6vT0RtgwW37qkbVh+eqDqShAqujemCxqj74rDSFOBDnmtMWJfd
 Wa59tfUQ5Xt1k1lQBQPszUiMcZ8ao42aLt6J7mAsB9DeGD6VmaRQyzfWXIkDmTKD0+A5
 HuGxufiKqxsqU7yk2T68PV36jEw8yr4m0iDPwjA/OGi7c47YWvqgmbA4uEu7zu55DZNI
 FNJyOcN0GkcuA17E+CIwIzaGXX2Jj3HFsgE8Oi1Na2jK+jRhYQUYpjc4fBnvrmcOh9cL
 tS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MSn2l1CqdA8yauQEkr9Er3RNk6u1ntHr6p1PYu6dVHg=;
 b=pklUZiUUHmYTNFY7deDkWdTs4nVSeqJb+RvXxtxUtXsNSrCt7HfW+CXbcQa/3xIPm8
 7hQe6YablDjIBZM/ALOaQKdOoub12rHwCs/+eG1bvrOfv4y6wRo59u240cx/5W5Kq+6W
 c5WLgQx9wlWUM9Penl1WLlU4W3KoYX1NzR5EbXjoP8LXiRyG7chE2Xxbp0lA0jQ9d7Ua
 ZwUlIn6hbhyMQu3FzHETNg4qyL7oo+ppaNdYESyQsyS5BVcTJ2F3w3nx7VoMz0lHsB7m
 M98iRZl8ZIeCxzDRf+cBte6V2omYKntv4CFitJLkdAUT4b5agzRXUkDXS2aGbXKfvcME
 DklQ==
X-Gm-Message-State: AOAM530K0u3Ra3erZMg505j0ksHPPDLODRvHU/bwzDThBhfvPAr32zcb
 4+bIsLkvid01l6jWP6p2e7cTMX8dxsivcgelLyUOQA==
X-Google-Smtp-Source: ABdhPJzWC+pD/mBRLS7w06KhnNT4hJCKzQOj9GIHlCC3obzrQKAOBWZGePiBMEvH6LBikSDUuXIczk0NDRtKOW5Pp9o=
X-Received: by 2002:a25:73d0:: with SMTP id o199mr24604313ybc.87.1637229203749; 
 Thu, 18 Nov 2021 01:53:23 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
 <4310886.V3yF0ifEZO@diego>
In-Reply-To: <4310886.V3yF0ifEZO@diego>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 18 Nov 2021 09:53:11 +0000
Message-ID: <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>, 
 linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_015326_115125_589DECBD 
X-CRM114-Status: GOOD (  29.79  )
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

SGksCgpPbiBUaHUsIDE4IE5vdiAyMDIxIGF0IDA5OjI2LCBIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKPiBBbSBEb25uZXJzdGFnLCAxOC4gTm92ZW1iZXIgMjAyMSwgMDI6
Mjc6MTAgQ0VUIHNjaHJpZWIgS2V2ZXIgWWFuZzoKPiA+IEkgZG9uJ3QgYWdyZWUgd2l0aCB0aGlz
LCB3ZSBkbyBiZWxpZXZlIHlvdSBoYXZlIGRvIHNvbWUgY2xlYW4gdXAgdG8gbWVldAo+ID4gdGhl
IHJlcXVpcmVtZW50Cj4gPgo+ID4gb2YgdXBzdHJlYW0sIGJ1dCBhbGwgdGhlIGZyYW1ld29yayBh
bmQgZmVhdHVyZSBpbXBsZW1lbnQgYXJlIGZyb20KPiA+IFJvY2tjaGlwIGVuZ2luZWVyLAo+ID4K
PiA+IHdlIGhhdmUgbWFkZSBhIGdyZWF0IGVmZm9ydCB0byBtYWtlIGV2ZXJ5dGhpbmcgd29yayB3
aGljaCBibG9jayB1cyB0bwo+ID4gdXBzdHJlYW0gdGhpcyBkcml2ZXIgZm9yIG5vdy4KPgo+IEkg
ZG9uJ3QgZnVsbHkgdW5kZXJzdGFuZCB3aGF0IHlvdSBtZWFuIGhlcmUgKGxhbmd1YWdlIGJhcnJp
ZXIgcHJvYmFibHkpLAo+IGJ1dCBkcm9wcGluZyBub24tZXNzZW50aWFsIGZ1bmN0aW9uYWxpdHkg
aW4gYSBmaXJzdCByb3VuZCBpcyBwcmV0dHkgY29tbW9uCj4gdG8gYXQgbGVhc3QgZ2V0IGJhc2lj
IGZ1bmN0aW9uYWxpdHkgd29ya2luZyBmb3IgZXZlcnlvbmUuIFdpdGggdGhlIHNwZWNpYWwKPiBm
ZWF0dXJlcyBnZXR0aW5nIGFkZGVkIGFnYWluIGluIGxhdGVyIHBhdGNoZXMgb3ZlciB0aW1lLiBU
aGlzIGhhcHBlbmVuZWQKPiBvbiB0aGUgb2xkIHZvcCBhcyB3ZWxsLgo+Cj4gQW5kIG9mIGNvdXJz
ZSwgaGF2aW5nIGEga2VybmVsIHRoYXQgY2FuICJqdXN0IiBkbyBub3JtYWwgZ3JhcGhpY3Mgd2l0
aG91dAo+IHRoZSBhZGRpdGlvbmFsIGZlYXR1cmVzIGlzIHN0aWxsIHByZWZlcmFibGUgb3ZlciBo
YXZpbmcgX05PXyBncmFwaGljcyBzdXBwb3J0Cj4gYXQgYWxsIDstKQo+Cj4gPiBOQUsgZm9yIHRo
aXMgc2VyaWVzLgo+Cj4gQXMgeW91IG1pZ2h0J3ZlIHNlZW4gZnJvbSBwcmV2aW91cyBncmFwaGlj
cyByZWxhdGVkIHBhdGNoZXMsIHRoZXJlCj4gaXMgYSBiaWcgbnVtYmVyIG9mIHBlb3BsZSBfYW5k
IGNvbXBhbmllc18gdGhhdCBzZWVtcyB0byB3YW50L25lZWQKPiB0byB3b3JrIHdpdGggdGhlIHJr
MzU2Ni9yazM1Njggd2l0aCBhIGtlcm5lbCBiYXNlZCBvbiBtYWlubGluZS4KPgo+IC0tPiBNb3N0
IGxpa2VseSBldmVuIGluIHJlYWwgcHJvZHVjdHMhCgpZZXMsIHdlJ3ZlIGJlZW4gdHJ5aW5nIHRv
IHNoaXAgYSByZWFsIHByb2R1Y3QgYmFzZWQgb24gUkszNTZ4LiBXZQpzdGFydGVkIGJ5IHVzaW5n
IHRoZSB2ZW5kb3IgVk9QMiBkcml2ZXIsIGJ1dCBpdCBpcyBicm9rZW4gYmV5b25kCmJlbGllZi4g
VGhlIGRyaXZlciBuZWVkcyBhIGZ1bmRhbWVudGFsIGdyb3VuZC11cCByZXdvcmssIGFuZCBhbGwg
dGhlCmFkZGl0aW9uYWwgZmVhdHVyZXMgZ2V0IGluIHRoZSB3YXkgb2YgZG9pbmcgdGhpcyBjb3Jl
IHJld29yayB0byBtYWtlCml0IGFjdHVhbGx5IGZ1bmN0aW9uIGNvcnJlY3RseS4KClNvLCBOQUsg
dG8gdGhlIE5BSy4gSSB3b3VsZCBsaWtlIHRvIHNlZSB0aGUgVk9QMiBzdXBwb3J0IHN0YXJ0IHNp
bXBsZSwKd2l0aCBtb3JlIGZlYXR1cmVzIGJlaW5nIGFkZGVkIG9uZSBieSBvbmUuCgo+IFdoaWxl
IFJvY2tjaGlwIGRpZCBzYXkgdGhhdCB0aGV5IHdhbnQgdG8gdXBzdHJlYW0gVk9QMiBzdXBwb3J0
LCB0aGVyZQo+IGhhcyBiZWVuIF9OT18gbW92ZW1lbnQgb3IgZXZlbiBpbmZvcm1hdGlvbiBhdCBh
bGwgb24gdGhpcyBvdmVyIGF0IGxlYXN0Cj4gdGhlIGxhc3QgeWVhcighKSwgc28gaXQncyBwcmV0
dHkgdW5kZXJzdGFuZGFibGUgdGhhdCBkZXZlbG9wZXJzIHdpbGwgZG8gdGhpcwo+IHRoZW1zZWxm
IGF0IHNvbWUgcG9pbnQsIGJlY2F1c2UgdGhleSBkb24ndCB3YW50IHRvIHdhaXQgYW55bW9yZSBm
b3IKPiBzb21ldGhpbmcgdGhhdCBtaWdodCBuZXZlciBoYXBwZW4uCj4KPiBTbyBhIHNpbXBsZSAi
TkFLIiB3aXRob3V0IGFkZGl0aW9uYWwgaW5mb3JtYXRpb24gaXMgbm90IHJlYWxseSBoZWxwZnVs
IGhlcmUuCj4KPiBJZiB5b3UgZG9uJ3QgbGlrZSBTYXNjaGEncyBzZXJpZXMsIEkgcmVhbGx5IHdh
bnQgdG8ga25vdyBfV0hFTl8gUm9ja2NoaXAKPiBwbGFucyBvbiB1cHN0cmVhbWluZyBhdCBsZWFz
dCBiYXNpYyBncmFwaGlzIHN1cHBvcnQgdGhlbXNlbGYuCj4KPiBUaGUga2VybmVsIGlzIG9mdGVu
IGNhbGxlZCBhIGRvLW9jcmFjeSAtIHRoZSBvbmUgd2hvIGRvZXMgdGhlIHdvcmssIGdldHMKPiB0
byBkZWNpZGUuIFNvIGlmIHlvdSByZWFsbHkgZG9uJ3QgbGlrZSBTYXNjaGEncyBzZXJpZXMgYXQg
YWxsLCBJIGRvIGV4cGVjdAo+IFJvY2tjaGlwIHRvIHN0ZXAgdXAgYW5kIHByb3ZpZGUgYSBzb2x1
dGlvbiB0aGVtc2VsZiAtIGFuZCBpbiBhIHVzYWJsZQo+IHRpbWVmcmFtZS4KCkV4YWN0bHkgd2hh
dCBIZWlrbyBzYWlkLiBJZiB5b3Ugd291bGQgbGlrZSB0byB1cHN0cmVhbSB0aGUgZHJpdmVyIHRo
ZW4KdGhhdCB3b3VsZCBiZSBmYW50YXN0aWMgdG8gc2VlLCBidXQgSSdtIGFmcmFpZCB5b3UgZG8g
bm90IGdldCB0bwpwcmV2ZW50IHNvbWVvbmUgZWxzZSBmcm9tIGRvaW5nIHRoZSB3b3JrIHRoZW1z
ZWx2ZXMuCgpDaGVlcnMsCkRhbmllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
