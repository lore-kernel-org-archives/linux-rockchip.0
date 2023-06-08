Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 891BFC7EE23
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jun 2023 10:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP1u7TowAK0+ZiUN5H8tbMZBOo4I3zfmG3qtZnQ74vE=; b=wPQkoNqDM4YDGu
	CZ/QPofMLPFHKIeDpPo4O4alfe+2qBpZdXKnmHAExKqlojbh2j2Uko0aF2IQxQII42xP8ptGohQpa
	h2el+ZFBzcRhZPhLl3xFYQVw2If/DiYpgoYe3V3AJEhCpHBfm6GZ3BIqdWoapA0hT/kcZAaPXZW2D
	gP7qTda9ekBtDRD6/0zCEdjwMC71ZMreY7q2k4dXkCkuZ7kMiF6xtfDA+MyydJyGWhgLTOa17dABa
	04Y6nGXG3t8T0gYuQR0g2FG/HMVoF5/fbEjvfLEJJxbPnd49D5wj3+Cl8TsM2GB7zTfkMItGGd7gO
	Oyu+br/OeKY1QBGrQo2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7CpK-008pfF-2q;
	Thu, 08 Jun 2023 10:25:10 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7CpH-008pcU-20
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jun 2023 10:25:09 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-6260de7cfaeso3697636d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Jun 2023 03:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686219901; x=1688811901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M4tpowvLajrSGqwxArwQ8XTVeRE5lzXRcv/YtqNdBw4=;
        b=MTA84B0sr5UDGyDh5iVn5msSmAbrDm74UHfyejmOT+JGvEDf6wd4Is4XJesA/gh+/a
         XJqwzSWwyaifR7HuhXwN9A6CpAiG0Wbfa0lHg6Cz8rRrfoNOoxbQgveuYuIZwi65dPYk
         dVpMzwlSqrICOxm2BPty+v/UdVd/kKV9aTz+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686219901; x=1688811901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M4tpowvLajrSGqwxArwQ8XTVeRE5lzXRcv/YtqNdBw4=;
        b=Q0CXhBa+7wMgjX+QnG+n4A0YswbArBDXNXTterJ/TjNjUo/SanvY5JNML4fNIGxjXp
         VPwKdfSiS/p17QzBYZiEzw65o89Cbc95KRPe3Q+LCGvH12bJ51bZPGORFMoukUfsVD0D
         Y+EQu0nRgbnX8B3f2Z7jFrwOlixfs+fZccAEnKl2P22T7BAYsIDxJoGBECvAcDFVclbg
         AJPyYzLlIVYUrmH+tzWDEJ6Qa2UmHi1/L1nWq7nbF+BQ9UclfzGq8NRNP3wP9ca4KWS6
         Y4r8iYT3+ljwdpQza2Sy2h248PdJRRyKxrhYfXngEXtmksfQEHFRSqACK8fOjWGQB3NF
         p2Rw==
X-Gm-Message-State: AC+VfDwJZkv/UcE4BCn/qn/ge85biEXi1IJSQRDstrWdtYsySqUUfrwF
	Ht/kCZh4VuthMHcVMefsufz2xgje0dwXFMisD9kIUw==
X-Google-Smtp-Source: ACHHUZ4uzPloK0Gd7GFdqLWmGacikfAqRU0Y4mic5Wc5aN0Rp9M4Ixbq3T6ATEqnKu6xHMe8LwDIJg==
X-Received: by 2002:a05:6214:21ae:b0:628:6255:b4e6 with SMTP id t14-20020a05621421ae00b006286255b4e6mr1200075qvc.12.1686219900898;
        Thu, 08 Jun 2023 03:25:00 -0700 (PDT)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com. [209.85.160.177])
        by smtp.gmail.com with ESMTPSA id p8-20020a0ce188000000b006261a1cd7f7sm312669qvl.10.2023.06.08.03.25.00
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 03:25:00 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-3f9baa69682so4034391cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Jun 2023 03:25:00 -0700 (PDT)
X-Received: by 2002:ad4:5f0e:0:b0:623:690c:3cd7 with SMTP id
 fo14-20020ad45f0e000000b00623690c3cd7mr1200397qvb.47.1686219880090; Thu, 08
 Jun 2023 03:24:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230321102855.346732-1-benjamin.gaignard@collabora.com>
 <20230321102855.346732-4-benjamin.gaignard@collabora.com> <6c4658fd-3a64-b3f8-67cd-17ed2d7d3567@xs4all.nl>
 <20230531080331.GB6496@pendragon.ideasonboard.com> <608ae7d6-3f3b-137d-08d2-d41a240be2c4@xs4all.nl>
 <20230531123945.GF27043@pendragon.ideasonboard.com>
In-Reply-To: <20230531123945.GF27043@pendragon.ideasonboard.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 8 Jun 2023 19:24:29 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A6sz1BhEjiWyXH6B1TBTLt0ivAc6N0Vd73hebnpc7fKQ@mail.gmail.com>
Message-ID: <CAAFQd5A6sz1BhEjiWyXH6B1TBTLt0ivAc6N0Vd73hebnpc7fKQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] media: videobuf2: Add a module param to limit vb2
 queue buffer storage
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, m.szyprowski@samsung.com, 
	mchehab@kernel.org, ming.qian@nxp.com, shijie.qin@nxp.com, eagle.zhou@nxp.com, 
	bin.liu@mediatek.com, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, tiffany.lin@mediatek.com, 
	andrew-ct.chen@mediatek.com, yunfei.dong@mediatek.com, 
	stanimir.k.varbanov@gmail.com, quic_vgarodia@quicinc.com, agross@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, ezequiel@vanguardiasur.com.ar, 
	p.zabel@pengutronix.de, daniel.almeida@collabora.com, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_032507_662898_65C80874 
X-CRM114-Status: GOOD (  43.80  )
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

T24gV2VkLCBNYXkgMzEsIDIwMjMgYXQgOTozOeKAr1BNIExhdXJlbnQgUGluY2hhcnQKPGxhdXJl
bnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1heSAzMSwg
MjAyMyBhdCAxMDozMDozNkFNICswMjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiBPbiA1LzMx
LzIzIDEwOjAzLCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gPiBPbiBXZWQsIE1heSAzMSwg
MjAyMyBhdCAwODozNjo1OUFNICswMjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiA+PiBPbiAy
MS8wMy8yMDIzIDExOjI4LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+ID4+PiBBZGQgbW9k
dWxlIHBhcmFtZXRlciAibWF4X3ZiX2J1ZmZlcl9wZXJfcXVldWUiIHRvIGJlIGFibGUgdG8gbGlt
aXQKPiA+ID4+PiB0aGUgbnVtYmVyIG9mIHZiMiBidWZmZXJzIHN0b3JlIGluIHF1ZXVlLgo+ID4g
Pj4+Cj4gPiA+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdh
aWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiA+Pj4gLS0tCj4gPiA+Pj4gIGRyaXZlcnMvbWVkaWEv
Y29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jIHwgMTUgKysrLS0tLS0tLS0tLS0tCj4g
PiA+Pj4gIGluY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaCAgICAgICAgICAgICAgICAgIHwg
MTEgKysrKysrKysrLS0KPiA+ID4+PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCsp
LCAxNCBkZWxldGlvbnMoLSkKPiA+ID4+Pgo+ID4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYyBiL2RyaXZlcnMvbWVkaWEvY29t
bW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4gPiA+Pj4gaW5kZXggYWU5ZDcyZjRkMTgx
Li5mNGRhOTE3Y2NmM2YgMTAwNjQ0Cj4gPiA+Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24v
dmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMKPiA+ID4+PiArKysgYi9kcml2ZXJzL21lZGlhL2Nv
bW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYwo+ID4gPj4+IEBAIC0zNCw2ICszNCw4IEBA
Cj4gPiA+Pj4gIHN0YXRpYyBpbnQgZGVidWc7Cj4gPiA+Pj4gIG1vZHVsZV9wYXJhbShkZWJ1Zywg
aW50LCAwNjQ0KTsKPiA+ID4+Pgo+ID4gPj4+ICttb2R1bGVfcGFyYW0obWF4X3ZiX2J1ZmZlcl9w
ZXJfcXVldWUsIHVsb25nLCAwNjQ0KTsKPiA+ID4+Cj4gPiA+PiBUaGVyZSBpcyBubyBNT0RVTEVf
UEFSTV9ERVNDIGhlcmU/IFBsZWFzZSBhZGQuIEkgc2VlIGl0IGlzIG5vdCB0aGVyZSBmb3IKPiA+
ID4+IHRoZSBkZWJ1ZyBwYXJhbSBlaXRoZXIsIGl0IHNob3VsZCBiZSBhZGRlZCBmb3IgdGhhdCBh
cyB3ZWxsLgo+ID4gPgo+ID4gPiBXb3VsZCB0aGlzIGJlIHRoZSByaWdodCB0aW1lIHRvIGNvbnNp
ZGVyIHJlc291cmNlIGFjY291bnRpbmcgaW4gVjRMMiBmb3IKPiA+ID4gYnVmZmVycyA/IEhhdmlu
ZyBhIG1vZHVsZSBwYXJhbWV0ZXIgZG9lc24ndCBzb3VuZCB2ZXJ5IHVzZWZ1bCwgYW4KPiA+ID4g
YXBwbGljYXRpb24gY291bGQgZWFzaWx5IGFsbG9jYXRlIG1vcmUgYnVmZmVycyBieSB1c2luZyBi
dWZmZXIgb3JwaGFuaW5nCj4gPiA+IChhbGxvY2F0aW5nIGJ1ZmZlcnMsIGV4cG9ydGluZyB0aGVt
IGFzIGRtYWJ1ZiBvYmplY3RzLCBhbmQgZnJlZWluZyB0aGVtLAo+ID4gPiB3aGljaCBsZWF2ZXMg
dGhlIG1lbW9yeSBhbGxvY2F0ZWQpLiBSZXBlYXRpbmcgYWxsb2NhdGlvbiBjeWNsZXMgdXAgdG8K
PiA+ID4gbWF4X3ZiX2J1ZmZlcl9wZXJfcXVldWUgd2lsbCBhbGxvdyBhbGxvY2F0aW5nIGFuIHVu
Ym91bmRlZCBudW1iZXIgb2YKPiA+ID4gYnVmZmVycywgdXNpbmcgYWxsIHRoZSBhdmFpbGFibGUg
c3lzdGVtIG1lbW9yeS4gSSdkIHJhdGhlciBub3QgYWRkIGEKPiA+ID4gbW9kdWxlIGFyZ3VtZW50
IHRoYXQgb25seSBnaXZlcyB0aGUgaW1wcmVzc2lvbiBvZiBzb21lIGtpbmQgb2Ygc2FmZXR5Cj4g
PiA+IHdpdGhvdXQgYWN0dWFsbHkgcHJvdmlkaW5nIGFueSB2YWx1ZS4KCkdvb2QgcG9pbnQuIEl0
J3MgZXZlbiBzaW1wbGVyLCBqdXN0IGtlZXAgb3BlbmluZyBuZXcgdmltMm0gaW5zdGFuY2VzCmFu
ZCByZXF1ZXN0aW5nIG1heCBidWZmZXJzIDopLgoKPiA+Cj4gPiBEb2VzIGRtYWJ1ZiBpdHNlbGYg
cHJvdmlkZSBzb21lIGFjY291bnRpbmcgbWVjaGFuaXNtPyBKdXN0IHdvbmRlcmluZy4KPiA+Cj4g
PiBNb3JlIHNwZWNpZmljIHRvIFY0TDI6IEknbSBub3Qgc28gc3VyZSBhYm91dCB0aGlzIG1vZHVs
ZSBwYXJhbWV0ZXIgZWl0aGVyLgo+ID4gSXQgbWFrZXMgc2Vuc2UgdG8gaGF2ZSBhIGNoZWNrIHNv
bWV3aGVyZSBhZ2FpbnN0IHJpZGljdWxvdXMgdmFsdWVzIChpLmUuCj4gPiBhbGxvY2F0aW5nIE1B
WElOVCBidWZmZXJzKSwgYnV0IHRoYXQgY2FuIGJlIGEgZGVmaW5lIGFzIHdlbGwuIEJ1dCBvdGhl
cndpc2UKPiA+IEkgYW0gZmluZSB3aXRoIGFsbG93aW5nIGFwcGxpY2F0aW9ucyB0byBhbGxvY2F0
ZSBidWZmZXJzIHVudGlsIHRoZSBtZW1vcnkKPiA+IGlzIGZ1bGwuCj4gPgo+ID4gVGhlIHF1ZXN0
aW9uIGlzIHJlYWxseTogd2hhdCBpcyB0aGlzIHBhcmFtZXRlciBzdXBwb3NlZCB0byBkbz8gVGhl
IG9ubHkKPiA+IHRoaW5nIGl0IGRvZXMgaXMgdG8gc2FuaXRpemUgdW5saWtlbHkgaW5wdXRzIChl
LmcuIGFsbG9jYXRpbmcgTUFYSU5UIGJ1ZmZlcnMpLgo+ID4KPiA+IEkgcHJlZmVyIHRoYXQgYXMg
YSBkZWZpbmUsIHRvIGJlIGhvbmVzdC4KPiA+Cj4gPiBJIHRoaW5rIGl0IGlzIHBlcmZlY3RseSBm
aW5lIGZvciB1c2VycyB0byB0cnkgdG8gcmVxdWVzdCBtb3JlIGJ1ZmZlcnMgdGhhbgo+ID4gbWVt
b3J5IGFsbG93cy4gSXQgd2lsbCBqdXN0IGZhaWwgaW4gdGhhdCBjYXNlLCBub3QgYSBwcm9ibGVt
Lgo+ID4KPiA+IEFuZCBpZiBhbiBhcHBsaWNhdGlvbiBpcyBkb2luZyBzaWxseSB0aGluZ3MgbGlr
ZSBidWZmZXIgb3JwaGFuaW5nLCB0aGVuIHNvCj4gPiB3aGF0PyBJcyB0aGF0IGFueSBkaWZmZXJl
bnQgdGhhbiBhbGxvY2F0aW5nIG1lbW9yeSBhbmQgbm90IGZyZWVpbmcgaXQ/Cj4gPiBFdmVudHVh
bGx5IGl0IHdpbGwgcnVuIG91dCBvZiBtZW1vcnkgYW5kIGNyYXNoLCB3aGljaCBpcyBub3JtYWwu
Cj4KPiBMaW51eCBwcm92aWRlcyBBUElzIHRvIGFjY291bnQgZm9yIGFuZCBsaW1pdCB1c2FnZSBv
ZiByZXNvdXJjZXMsCj4gaW5jbHVkaW5nIG1lbW9yeS4gQSBzeXN0ZW0gYWRtaW5pc3RyYXRvciBj
YW4gcHJldmVudCByb2d1ZSBwcm9jZXNzZXMKPiBmcm9tIHN0YXJ2aW5nIHN5c3RlbSByZXNvdXJj
ZXMuIFRoZSBtZW1vcnkgY29uc3VtZWQgYnkgdmIyIGJ1ZmZlciBpc24ndAo+IHRha2VuIGludG8g
YWNjb3VudCwgbWFraW5nIFY0TDIgZXNzZW50aWFsbHkgdW5zYWZlIGZvciB1bnRydXN0ZWQKPiBw
cm9jZXNzZXMuCgpJIGFncmVlIHRoYXQgcHJvcGVyIGFjY291bnRpbmcgd291bGQgYmUgdXNlZnVs
LCBhbHRob3VnaCBJIHdvdWxkbid0CnJlYWxseSBtYWtlIHRoaXMgcGF0Y2ggc2VyaWVzIGRlcGVu
ZCBvbiBpdCwgc2luY2UgaXQncyBub3QgaW50cm9kdWNpbmcKdGhlIGxvb3Bob2xlIGluIHRoZSBm
aXJzdCBwbGFjZS4KV2UgaGFkIHNvbWUgZGlzY3Vzc2lvbiBhYm91dCB0aGlzIGluIENocm9tZU9T
IGxvbmcgYWdvIGFuZCB3ZSB0aG91Z2h0Cml0IHdvdWxkIGJlIHJlYWxseSB1c2VmdWwgZm9yIGtp
bGxpbmcgYnJvd3NlciB0YWJzIHdpdGggYmlnIHZpZGVvcywKYnV0IG90aGVyd2lzZSB1c2luZyB2
ZXJ5IGxpdHRsZSByZWd1bGFyIG1lbW9yeSAoZS5nLiB2aWEgamF2YXNjcmlwdCkuCgpPbmUgY2hh
bGxlbmdlIHdpdGggYWNjb3VudGluZyBWNEwyIGFsbG9jYXRpb25zIGlzIGhvdyB0byBjb3VudCBz
aGFyZWQKRE1BLWJ1ZnMuIElmIG9uZSBwcm9jZXNzIGFsbG9jYXRlcyBhIFY0TDIgYnVmZmVyLCBl
eHBvcnRzIGl0IHRvCkRNQS1idWYgYW5kIHRoZW4gc2VuZHMgaXQgdG8gYW5vdGhlciBwcm9jZXNz
IHRoYXQga2VlcHMgaXQgYWxpdmUsIGJ1dApmcmVlcyB0aGUgVjRMMiBidWZmZXIgKGFuZCBldmVu
IGNsb3NlcyB0aGUgRE1BLWJ1ZiBmZCksIHNob3VsZCB0aGF0Cm1lbW9yeSBiZSBzdGlsbCBhY2Nv
dW50ZWQgdG8gaXQgZXZlbiB0aG91Z2ggaXQgZG9lc24ndCBob2xkIGEKcmVmZXJlbmNlIHRvIGl0
IGFueW1vcmU/Cgo+Cj4gTm93LCB0byBiZSBmYWlyLCB0aGVyZSBhcmUgbWFueSByZWFzb25zIHdo
eSBhbGxvd2luZyBhY2Nlc3MgdG8gdjRMMgo+IGRldmljZXMgdG8gdW50cnVzdGVkIGFwcGxpY2F0
aW9ucyBpcyBhIGJhZCBpZGVhLCBhbmQgbWVtb3J5IGNvbnN1bXB0aW9uCj4gaXMgbGlrZWx5IG5v
dCBldmVuIHRoZSB3b3JzdCBvbmUuIFN0aWxsLCBpcyB0aGlzIHNvbWV0aGluZyB3ZSB3YW50IHRv
Cj4gZml4LCBvciBkbyB3ZSB3YW50IHRvIGNvbnNpZGVyIFY0TDIgdG8gYmUgcHJpdmlsZWRnZWQg
QVBJIG9ubHkgPyBSaWdodAo+IG5vdyB3ZSBjYW4ndCBkbyBzbywgYnV0IHdpdGggbWFueSBMaW51
eCBzeXN0ZW1zIG1vdmluZyB0b3dhcmRzIHBpcGV3aXJlLAo+IHdlIGNvdWxkIHBvc3NpYmx5IGhh
dmUgYSBzeXN0ZW0gZGFlbW9uIGlzb2xhdGluZyB1bnRydXN0ZWQgYXBwbGljYXRpb25zCj4gZnJv
bSB0aGUgcmVzdCBvZiB0aGUgc3lzdGVtLiBXZSBtYXkgdGh1cyBub3QgbmVlZCB0byBmaXggdGhp
cyBpbiB0aGUKPiBWNEwyIEFQSS4KPgo+IC0tCj4gUmVnYXJkcywKPgo+IExhdXJlbnQgUGluY2hh
cnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
