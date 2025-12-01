Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21F96D116F1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 19:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlQk7hs68a4XSvdvqPJnWBn8Xqoh7dgNuay5HyAIquY=; b=hXhj6KOIAskLTS
	TWyU3ERJMw+GLjTPCFrAVGlU7nSarNErK91xpQhiCVHA2XJPHcl7Q+pgfiJHrcZEBd5S++ERxDhr4
	EK6oR5r/GedYN0auDVpkq8I4FXrNq2UZYQr/lTyylH4U+8aqainmt1kN9n+k9jDAv291x51iqzg3z
	z5P8dr9dK0qtMTAPvAMLR9jieeTb9uixFvdyXeqtLk0rZv1D3KQ688Ykc69KhV9W0aBtXFgXNC7gH
	S2q8OxgWdFAz1fRBkOoCpMGftQRhjyG986SMEcTPRL0FRR6YI+MmvZnkd2QeSkP5JMcTD1FtFU/xS
	UrXePlcS9Zt5r/uLPl8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ9fi-00000004T0o-2uU0;
	Mon, 01 Dec 2025 19:34:54 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ9ff-00000004T0C-3cBC
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Dec 2025 19:34:53 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-4ee1e18fb37so45278331cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Dec 2025 11:34:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764617689; x=1765222489; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hrfv4uQbdf8StxC+iSo/uBPbeiOcK3CrZj4RJ6zLs4c=;
        b=aHpmWbM6Tjw33V825xG2H+fP6CtkCCHS56s/h+D//U3dg/IZOKzbr22TQrrLLxEGNi
         NP0Gcm7MW94A+TDRuBuIyW+KnM2uito0G7eX4vzx8sKzhQSCPJuCJvMkj5qBMzwXXyj+
         8pDThgZacyzo0KGM4w7Z3/c1XvdzUssnSscFrqT70XrWtYcSjQ7A6x6ufgtu1FwjvaJl
         6vLOooi0+VpVEA1vjOleJjAC92wA/WpC7DfLKYxhuNA4pnylatsgQ8LX5ByKusVhRm6U
         I+zqAdetNWNcp9QJDesje5Rq7Q6A30H7cSoW5g6xfxUYZ+xYyxDugy2RHFLH3djVyRVV
         smYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764617689; x=1765222489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hrfv4uQbdf8StxC+iSo/uBPbeiOcK3CrZj4RJ6zLs4c=;
        b=IRZ/Hin0RmGRoMzoPMB74jbGYEi9W/mqJuHijhN+cuN/zx6lwg8hhHTZFLeZnQLYw7
         7/yeaq4x2jPXO9B63O41X6Ivr14wH5nUhxLHBMvXSO4O10u7voN1iMi5qrJ4ck/iw9z4
         wfMVE7KIyw5J9VDSVveImthjCT06jMSEQdg7An/GeiLXc6v1gniz33yzofM0T6GsLksu
         sq8srZr9p3f4hLJ0Q+ILE3SCIcXnJvkEuhRgU5Spt4YydG2xd110WWK1r6F09tdSXohr
         Mo3IECeWyPL2B84WWaU72kWbDhJpbZDbW+YLVoMvaVeKdp6SIPd4c/zinaf939nOzON8
         bz+w==
X-Forwarded-Encrypted: i=1; AJvYcCXuj0l7kAPmKc1u9VNAkUlnwqe38177d7G4Rsn4wfMgKhAdHuTDXDPuXLiV7cVwB1aY/IMY/wnPHTH9F91QQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyRaDR+UdjEaJq6N2v8hlWKAFQzSoXwRF+2rTWE2nb82LWheXhW
	o2x17nHzzQkUE0il1DGcbNBwKwjtIE82Bus9o5/kgc/Y9ZIbALBYLaqsAu2onoszpL0UUOQ88He
	HqqNmgp7WdUc7rvoQ8DzZCr5u7eWPBZ8=
X-Gm-Gg: ASbGnctDKX+exFIpBK1BySCazIdAmxe7xzd4pcbqbVbmrlyNrdblZgAvVPUtEirUt1/
	rDMLQsY07GWHjlvchwtYpU6edCbnDXEr1H7r/MXHwrKVsp4gLmczOgQzJTmv/LX4cJ+IOsiIqZ6
	4Gv5w0QGc2RCdLAEDxozc+fPrRvzK/JbXKKhQ+RiVIzTmHNYLf2X7iSn4Hfbsai1Vi2vNGL90iE
	C5tdFZeW3oLAjD49juRoJ80Yn+09CkB+Srdtro7w6NJfvZI3ATRmFG7PVybx7ZQrjPdWps=
X-Google-Smtp-Source: AGHT+IFmpaTlE0AJcrh+QxTgK8vVtC9Vj6+bDrj0oNWe++M08sNSGuES2hkzGIvaWy1+DDrTM6TnlpfqbJJ0XAa4r+0=
X-Received: by 2002:ac8:7d0b:0:b0:4ee:84c:20c9 with SMTP id
 d75a77b69052e-4efbdafab77mr349104211cf.65.1764617689540; Mon, 01 Dec 2025
 11:34:49 -0800 (PST)
MIME-Version: 1.0
References: <CAAMcf8BfxMJx+5ttEXx0kONP2OYWSLFqEYF6rfVBKoRg5TKZzQ@mail.gmail.com>
 <bea50d14-2311-46ad-bb30-9d60a4c5e3a2@linux.dev> <ff21cbd1-dc77-43ae-85a8-dc6a56a1cefa@linux.dev>
In-Reply-To: <ff21cbd1-dc77-43ae-85a8-dc6a56a1cefa@linux.dev>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 1 Dec 2025 20:34:37 +0100
X-Gm-Features: AWmQ_bml5Hxt0ZY0wbmke64TybbEljkRASfjj-7FDHjmQsBWPE_Fq-D3Dj-00w8
Message-ID: <CAAMcf8Di8sc_XVZAnzQ9sUiUf-Ayvg2yjhx2dWmvvCnfF3pBRA@mail.gmail.com>
Subject: Re: [PATCH v13 3/4] drm/atomic-helper: Re-order bridge chain
 pre-enable and post-disable
To: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	alexander.sverdlin@siemens.com, andrzej.hajda@intel.com, 
	dri-devel <dri-devel@lists.freedesktop.org>, jernej.skrabec@gmail.com, 
	Jonas Karlman <jonas@kwiboo.se>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, lumag@kernel.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, nm@ti.com, rfoss@kernel.org, simona@ffwll.ch, 
	tomi.valkeinen@ideasonboard.com, tzimmermann@suse.de, vigneshr@ti.com, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Douglas Anderson <dianders@chromium.org>, Damon Ding <damon.ding@rock-chips.com>, 
	Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Linux Rockchip Support List <linux-rockchip@lists.infradead.org>, Devarsh Thakkar <devarsht@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_113451_937156_91A42C4B 
X-CRM114-Status: GOOD (  26.01  )
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

T24gTW9uLCBPY3QgNiwgMjAyNSBhdCA1OjMw4oCvUE0gQXJhZGh5YSBCaGF0aWEgPGFyYWRoeWEu
YmhhdGlhQGxpbnV4LmRldj4gd3JvdGU6Cj4KPiArcm9ja2NoaXAgbWFpbnRhaW5lcnMKPgo+IEhp
IFZpY2VudGUsIGFsbCwKCkhpIGV2ZXJ5Ym9keSwKcGxlYXNlLCBjYW4gc29tZSBleHBlcnQgb24g
dGhpcyBwbGF0Zm9ybSB0YWtlIGEgbG9vayBhdCB0aGlzIGJ1Zz8KClJlZ2FyZHMsCiAgVmljZW50
ZS4KCj4gSSB3ZW50IHRocm91Z2ggdGhlIGRyaXZlcnMgYW5kIHRoZSBhZmZlY3RlZCBhcmVhcyBp
biB0aGUgZ3J1LWtldmluCj4gY2hyb21lYm9vayBwaXBlbGluZSBsYXN0IHdlZWssIGJ1dCBub3Ro
aW5nIGhhcyBzdG9vZCBvdXQuCj4KPgo+IFBpcGVsaW5lOgo+Cj4gcm9ja2NoaXAsZGlzcGxheS1z
dWJzeXN0ZW0gLyByazMzOTktdm9wIChCaWcvTGl0ZSkgKENSVEMpIC0+Cj4gcmszMzk5LWVkcCAo
RW5jb2RlcikgLT4gYW5hbG9naXhfZHBfY29yZSAoQnJpZGdlKSAtPgo+IHNoYXJwLGxxMTIzcCAo
ZWRwLXBhbmVsKQo+Cj4gSSBhbSB1bmFibGUgdG8gZGVidWcgdGhpcyBmdXJ0aGVyIHNpbmNlIEkg
ZG8gbm90IGhhdmUgdGhlIGhhcmR3YXJlLgo+Cj4gSSBjb3VsZCB1c2Ugc29tZSBoZWxwLCBlc3Bl
Y2lhbGx5IGZyb20gZm9sa3Mgd2hvIHVuZGVyc3RhbmQgdGhlIGhhcmR3YXJlCj4gcmVxdWlyZW1l
bnRzIGJldHRlci4KPgo+Cj4gT24gMTEvMDkvMjUgMDk6MDEsIEFyYWRoeWEgQmhhdGlhIHdyb3Rl
Ogo+ID4gSGkgVmljZW50ZSwKPiA+Cj4gPiBUaGFuayB5b3UgZm9yIHRoZSBiaXNlY3Rpb24gYW5k
IHJlcG9ydGluZyB0aGUgaXNzdWUuCj4gPgo+ID4gT24gMTAvMDkvMjUgMTY6MTcsIFZpY2VudGUg
QmVyZ2FzIHdyb3RlOgo+ID4+IEhpLAo+ID4+IHRoaXMgcGF0Y2ggY2F1c2VzIGEgcmVncmVzc2lv
bi4gSXQgaGFzIGJlZW4gcmVwb3J0ZWQgaW4KPiA+PiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5v
cmcvc2hvd19idWcuY2dpP2lkPTIyMDU1NAo+ID4+Cj4gPj4gSXQgYWZmZWN0cyB0aGUgZ3J1L2tl
dmluIHBsYXRmb3JtIChhcm02NCxSSzMzOTkpIHdpdGggdGhlIFBhbmZyb3N0IERSTSBkcml2ZXIu
Cj4gPgo+ID4gSSBiZWxpZXZlIHRoZSBQYW5mcm9zdCBEUk0gZHJpdmVyIG1heSBvbmx5IGJlIGZv
ciB0aGUgR1BVLgo+ID4KPiA+IEJhc2VkIG9uIHRoZSBkdHMgZmlsZXMgaW4gYXJtNjQvcm9ja2No
aXAvLCB0aGlzIGlzIHRoZSBwaXBlbGluZSBvZiB0aGUKPiA+IGdydS1rZXZpbiBzZXR1cCB0aGF0
IEkgdW5kZXJzdGFuZC4KPiA+Cj4gPiAgICAgICByazMzOTktdm9wIChCaWcvTGl0ZSkgLT4gcmsz
Mzk5LWVkcCAtPiBzaGFycCxscTEyM3AgKGVkcC1wYW5lbCkKPiA+Cj4gPiBUaGUgc2V0dXAgc2Vl
bXMgdG8gYmUgdXNpbmcgdGhlIGRybS9yb2NrY2hpcCBkcml2ZXJzIGZvciB0aGUgZGlzcGxheQo+
ID4gY29udHJvbGxlciBhbmQgZm9yIHRoZSBicmlkZ2UuCj4gPgo+ID4+Cj4gPj4gV2hlbiBpdCBi
b290cyBpbiBjb25zb2xlIG1vZGUsIHRoZSBibGlua2luZyBvZiB0aGUgY3Vyc29yIGtlZXBzIHRo
ZSBkaXNwbGF5IG9uLgo+ID4+IElmIGl0IGlzIHR1cm5lZCBvZmYgdmlhIC9zeXMvY2xhc3MvZ3Jh
cGhpY3MvZmJjb24vY3Vyc29yX2JsaW5rLCB0aGVuCj4gPj4gdGhlIGRpc3BsYXkgYnJpZWZseSBz
aG93cyBlYWNoIGtleSBwcmVzcyBwcmVzZW50ZWQgb24gc2NyZWVuIGZvciBsZXNzCj4gPj4gdGhh
biBvbmUgc2Vjb25kIGFuZCB0aGVuIHBvd2VycyBvZmYuCj4gPj4KPiA+PiBXaGVuIHN0YXJ0aW5n
IHRoZSBncmFwaGljYWwgbW9kZSAod2F5bGFuZCksIGlmIHRoZXJlIGFyZSBubwo+ID4+IGFwcGxp
Y2F0aW9ucyBkcmF3aW5nIG9uIHRoZSBzY3JlZW4sIHRoZSBvbmx5IHdheSB0byBrZWVwIHRoZSBk
aXNwbGF5Cj4gPj4gb24gaXMgYnkgY29udGludW91c2x5IG1vdmluZyB0aGUgbW91c2UuCj4gPj4K
PiA+Cj4gPiBPa2F5IQo+ID4KPiA+IEkgd2lsbCBoYXZlIGEgbG9vayB0aHJvdWdoIHRoZSBkcml2
ZXJzLiBJbiB0aGUgbWVhbndoaWxlLCBwbGVhc2UgZG8KPiA+IHJlcG9ydCBiYWNrIGlmIHlvdSBm
aW5kIGFueSBvdGhlciBvYnNlcnZhdGlvbnMuCj4gPgo+ID4KPgo+IC0tCj4gUmVnYXJkcwo+IEFy
YWRoeWEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
