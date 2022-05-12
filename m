Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D82F7C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 May 2022 13:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tcw8heQOEYsW50fzCWz8RZWMd/3BWTIHAmM8n2R6q+A=; b=sKTF+lwgBw54CG
	4bXliBR60iX/2C48C1y4/a3D7rmS4LmGrtBXK+oIzt+BBeSJmq+4URdUqacP7u57pb71W99gjEkIb
	ju9tcoBtp7frBzRNElquNEcODgaEl2mhOjKbjVBXAXpAd2fFulESxu3rWMCIyu61EKjTqgdhtuu3c
	4NdCL/bK25Occd/JDiSAKMB3/Oo7Y3le3OqKAPn3rQOffTyEDGezw1HywLtL/2Me6DESu94Cx/tEu
	bOcQ5eOvDD6gcTnqe03vQRa1Ggg6voM8HWkua8nzFBdfs1RXACXeYIVezaC3zhAfqcQ4KLrP0dFWP
	mEeZssGFrElGb96mk2iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np8SO-00BxsF-VB; Thu, 12 May 2022 13:02:17 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np8SD-00BxqD-4i; Thu, 12 May 2022 13:02:06 +0000
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-2f863469afbso56018787b3.0; 
 Thu, 12 May 2022 06:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/lfDOlHUOek9C7jOeYtx9WxH1V373cmd8YRq+4P9J2c=;
 b=GYud4zcv0EeM2pj5bBFJ7Gx5ZbhNeLPcXkDE3z4HHDzIbpT5rKNFAPBjW0BjAykTcQ
 Ni3mPE5xhks+i1y+b3ogM1NXSaBN1oMzP65HmVHmZLwkBRxVsJWW+Aokhp8jBucY6egm
 S0w9Gg+EdjpKrPUBrJkt8SH+ngBX49iwlbVw8+L6+TcHd3k4xtuwiM1khtrl0SvmgBjw
 /hzs4tquEGLe8qgWvDbAJWGG2KRFEPnnC1msGvMp1aSQzc91YUhJKDk20zN2j+D3wSfV
 mlx5AxM3+PxE5j6PjG6F9UJwrqP5bx90EjBZjXnE9h9xMY+YNPuywbKk3DE6XmFYn6/8
 LbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/lfDOlHUOek9C7jOeYtx9WxH1V373cmd8YRq+4P9J2c=;
 b=PLV4BccADBCXs6bwatPg/iCsOHB++sEyxToKlP1DzlLvQV+T8bcOfASyS9vlY8LTQd
 jRhzLp91aQfwwz98ZgugpAWyMIYHEiBzHakCbGN4CTTLN9kypakwCZ1uH65z2eThhtVn
 ZClvc1oYm5PoLBLJHI++VQkPQhII0cAgs83/NkB/mS/upqHB1K21uCuodotrw045jj2q
 NXnVlnbonkXqjfk/j6JanRtjHQNYo1oCtg5ZecXkK/xDi5ENlwBD1dLjeytFF11t5/Fg
 j+atWkH4ea+Z4eziJJ1snLEbPMzEO9fs868AvLR9QqNFpqGudBYmGWgbpn7vnNc/w0uS
 2TPQ==
X-Gm-Message-State: AOAM531rSsuSe6KsxeUH5fcJBrwKkJiAGaj/ikjRRmItGLsdsz3fu5jY
 z2C6xk1B9bF6wm4LKVfqS5fzB6zb4rDKTyQ+754=
X-Google-Smtp-Source: ABdhPJxr+4PqP1umY344MY21ihPe1wrIT5axr773zAz5A3xpzxixjKeYkcEbuOgHgN3JC19k7gEnl0PyYaLMDp2pT7o=
X-Received: by 2002:a05:690c:89:b0:2d7:fb7d:db7 with SMTP id
 be9-20020a05690c008900b002d7fb7d0db7mr33062207ywb.219.1652360517202; Thu, 12
 May 2022 06:01:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <a85eca2e-61f0-8d4b-64db-dfcc2b97d6f7@arm.com>
In-Reply-To: <a85eca2e-61f0-8d4b-64db-dfcc2b97d6f7@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 12 May 2022 09:01:45 -0400
Message-ID: <CAMdYzYqGpf9mw5+tzvU_Xf3ePGCH1xF83iFPTqvOTjSukzniYA@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Robin Murphy <robin.murphy@arm.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Michael Riesch <michael.riesch@wolfvision.net>, dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_060205_210514_A2C758A8 
X-CRM114-Status: GOOD (  37.55  )
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

T24gVGh1LCBNYXkgMTIsIDIwMjIgYXQgODoxNyBBTSBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBo
eUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIDIwMjItMDUtMDggMTc6NTMsIFBldGVyIEdlaXMgd3Jv
dGU6Cj4gPiBPbiBTdW4sIE1heSA4LCAyMDIyIGF0IDk6NDAgQU0gUGlvdHIgT25pc3pjenVrCj4g
PiA8cGlvdHIub25pc3pjenVrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj4KPiA+Pgo+ID4+Cj4gPj4+
IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRy
b25peC5kZT4gdyBkbml1IDIyLjA0LjIwMjIsIG8gZ29kei4gMDk6Mjg6Cj4gPj4+Cj4gPj4+IEZy
b206IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4KPiA+Pj4K
PiA+Pj4gRW5hYmxlIHRoZSBSSzM1NnggVmlkZW8gT3V0cHV0IFByb2Nlc3NvciAoVk9QKSAyIG9u
IHRoZSBSYWR4YQo+ID4+PiBST0NLMyBNb2RlbCBBLgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5
OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAd29sZnZpc2lvbi5uZXQ+Cj4gPj4+IFJl
cG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiA+Pj4gTGluazog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIyMDMxMDIxMDM1Mi40NTExMzYtNC1taWNoYWVs
LnJpZXNjaEB3b2xmdmlzaW9uLm5ldAo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIg
PHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gPj4+IC0tLQo+ID4+Cj4gPj4gU2FzY2hhLCBNaWNo
YWVsLAo+ID4KPiA+IEdvb2QgQWZ0ZXJub29uLAo+ID4+Cj4gPj4gSSdtIHVzaW5nIHYxMSBzZXJp
ZXMgb24gNS4xOC1yYzUgb24gcmszNTY2IHR2Ym94IHdpdGggZ3JlYXQgc3VjY2Vzcy4KPiA+PiBS
ZWNlbnRseSBpIHN0YXJ0ZWQgdG8gd29yayBvbiByb2NrMy1hIChyazM1NjgpLgo+ID4+IHYxMSBn
aXZlcyBtZSB2aWRlbywgYXVkaW8gLSBidXQgY2VjIGlzIG5vdCB3b3JraW5nIG9uIHJvY2szLWEu
Cj4gPj4KPiA+PiBJIHdhcyB0b2xkOgo+ID4+Cj4gPj4gMzJrIGNsb2NrIG5lZWRlZCBmb3IgY2Vj
IGFuZCB0aGlzIGNsb2NrIGlzIGdlbmVyYXRlZCBieSB0aGUgcnRjIHdoaWNoIGlzIGVtYmVkZGVk
IGluIHRoZSByazh4eCByZWd1bGF0b3IuCj4gPj4gU28geW91IHNob3VsZCBtYWtlIHN1cmUgaXQg
aXMgZW5hYmxlZCB3aGVuIGhkbWkgaXMgcG93ZXJkIG9uLCBlZyBhZGRpbmcgaXQgdG8gdGhlIFJL
MzU2OF9QRF9WTyBwb3dlcmRvbWFpbiBzaG91bGQgaGVscAo+ID4+Cj4gPj4gSSB3YXMgdHJ5aW5n
IHRvIGRvIHRoaXMgaW4gZHRzIGh0dHBzOi8vcGFzdGViaW4uY29tLzY3d3U5UXJIIGJ1dCBjZWMg
aXMgc3RpbGwgbm9uLWZ1bmN0aW9uYWwKPiA+Pgo+ID4+IE1heWJlIFlvdSBoYXZlIHNvbWUgaGlu
dHMvcG9pbnRlcnMgaGVyZT8KPiA+Cj4gPiBBZGQgdGhlIGZvbGxvd2luZyB0byB0aGUgSERNSSBu
b2RlOgo+ID4gYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgQ0xLX0hETUlfQ0VDPjsKPiA+IGFzc2ln
bmVkLWNsb2NrLXJhdGVzID0gPDMyNzY4PjsKPiA+Cj4gPiBUaGUgaXNzdWUgaXMgdGhlIGNsa19y
dGMzMmtfZnJhYyBjbG9jayB0aGF0IGZlZWRzIGNsa19ydGNfMzJrIHdoaWNoCj4gPiBmZWVkcyBj
bGtfaGRtaV9jZWMgaXMgMjRtaHogYXQgYm9vdCwgd2hpY2ggaXMgdG9vIGhpZ2ggZm9yIENFQyB0
bwo+ID4gZnVuY3Rpb24uCj4gPiBJIHN1Ym1pdHRlZCBhIHBhdGNoIHRvIGhhdmUgdGhlIGhkbWkg
ZHJpdmVyIGhhbmRsZSB0aGlzLCBidXQgaXQgYnJva2UKPiA+IG90aGVyIFNvQ3MgYmVjYXVzZSAz
MmsgaXMgYW4gb3B0aW9uYWwgY2xvY2suCj4gPiBTaW5jZSB0aGlzIGlzIHRoZSBjYXNlLCBJJ2Qg
bGlrZSBSb2JpbiB0byB3ZWlnaCBpbiBvbiBnb2luZyB0aGUKPiA+IGFzc2lnbmVkLWNsb2NrIHJv
dXRlIGFnYWluLgo+Cj4gKGRpZCB5b3UgbWVhbiB0byBDQyBtZSBvciBoYXZlIEkgbWlzc2VkIGFu
b3RoZXIgdGhyZWFkIGVsc2V3aGVyZT8pCgpBcG9sb2dpZXMsIEkgbWFkZSBhbiB1bnNhZmUgYXNz
dW1wdGlvbiBoZXJlLgoKPgo+IEZXSVcgSSBzdGlsbCB0aGluayBpdCB3b3VsZCBiZSBnb29kIHRv
IGZpeCB0aGUgY2xvY2sgZHJpdmVyKHMpIGFuZC9vcgo+IERUcyB0byBjb3JyZWN0bHkgZGVhbCB3
aXRoIHRoZSBhdmFpbGFiaWxpdHkgYW5kIGNvbmZpZ3VyYXRpb24gb2YgeGluXzMyawo+IHdoZXJl
IGFwcHJvcHJpYXRlLiBIb3dldmVyLCBtdWNoIGxpa2UgdGhlIEhDTEtfVk8gbWVzcyBJIGd1ZXNz
IHRoYXQncyBhCj4gbGFyZ2VyIGNsZWFudXAgdGFuZ2VudCBpbiBpdHMgb3duIHJpZ2h0LCBzbyB1
c2luZyAiYXNzaWduZWQtY2xvY2tzIiBmb3IKPiB0aGlzIG9uZSBjYXNlIGluIHRoZSBtZWFudGlt
ZSBkb2Vzbid0IHNlZW0gdW5yZWFzb25hYmxlLiBJIHdhcwo+IG9wdGltaXN0aWMgZm9yIHRoZSBj
bGVhbmVzdCwgbW9zdCBnZW5lcmljIHNvbHV0aW9uLCBidXQgaWYgcmVhbGl0eSBnZXRzCj4gaW4g
dGhlIHdheSB0aGVuIG9oIHdlbGwuCgpJIHdhcyB0aGlua2luZyBhYm91dCB0aGlzIHByb2JsZW0g
YW5kIGNhbWUgdG8gYSByZWFsaXphdGlvbi4gVGhlIHJvb3QKZHRzaSBmaWxlcyBhbGwgaGF2ZSBj
bGszMmtfaW4gZGVmaW5lZCwgZXZlbiB0aG91Z2ggaXQncyBsaXN0ZWQgYXMgYW4Kb3B0aW9uYWwg
Y2xvY2suIEkgdGhpbmsgdGhpcyBzaG91bGQgbW92ZSB0byB0aGUgZGV2aWNlIGJvYXJkcyAobXVj
aApsaWtlIHRoZSBnbWFjIGlucHV0IGNsb2NrKSB0aGF0IGhhdmUgaXQuIFRoZSBjbG9jayBkcml2
ZXIgbWlnaHQgbmVlZApzb21lIGhlbHAgY29waW5nIHdpdGggaXQgYmVpbmcgbWlzc2luZywgSSBo
YXZlbid0IHRlc3RlZCB0aGlzLgoKPgo+IEp1ZGdpbmcgYnkgdGhlIGRhdGFzaGVldCwgUkszNTY4
IG1pZ2h0IGFjdHVhbGx5IGhhdmUgYSBzaW1pbGFyIHNpdHVhdGlvbgo+IHdpdGggaXRzIGNsazMy
a19pbiBwaW4sIHNvIHlvdSBtYXkgd2FudCAiYXNzaWduZWQtY2xvY2stcGFyZW50cyIgYXMgd2Vs
bAo+IHRvIGVuc3VyZSB0aGUgd2hvbGUgY2xrX3J0YzMyayBicmFuY2ggaXMgcmVhbGx5IHNldCB1
cCB0aGUgd2F5IHlvdQo+IGN1cnJlbnRseSBleHBlY3QgLSBiYWtpbmcgYW55IG1vcmUgYXNzdW1w
dGlvbnMgaW50byBEVEJzIG5vdyBvbmx5IHNlZW1zCj4gdG8gYWRkIHBvdGVudGlhbCBmb3IgYnJl
YWthZ2UgaWYga2VybmVsIGJlaGF2aW91ciBjaGFuZ2VzIGluIGZ1dHVyZS4KCnJrMzU2OCBkZWZh
dWx0cyB0byB1c2luZyBhIGNsb2NrIGRpdmlkZXIgZnJvbSB0aGUgMjRtIGNsb2NrLCBzbyBpdAp3
b3JrcyBldmVuIGluIHRoZSBhYnNlbmNlIG9mIGNsazMyX2luLiBJdCBzZWVtZWQgcmszMzk5IGRp
ZCBhcyB3ZWxsLApidXQgdW5saWtlIHJrMzU2OCBpdCB3b3VsZCBzd2l0Y2ggdG8gY2xrMzJrX2lu
IGlmIHRoZSBleGFjdCBmcmVxdWVuY3kKd2FzIGNob3Nlbi4gSW1wbGVtZW50aW5nIHRoZSBhYm92
ZSB3b3VsZCBmaXggdGhhdCBpc3N1ZSwgYW5kIHdlIGNhbgp0aGVuIGltcGxlbWVudCB0aGUgZHJp
dmVyIGZpeC4KCj4KPiBSb2Jpbi4KClZlcnkgUmVzcGVjdGZ1bGx5LApQZXRlcgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
