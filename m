Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25391C79F99
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2026 06:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9IW4oPEDjKoASxVsxukX+2axO8ZkItVEryyGRwH68sM=; b=lQ5pIUmG1iCdKz
	4wsJsBuUM8b+bbQQJiDu3RG56BNfUpoz1W6DT13B3oMtLuuuYwR0BzIfE11E5Ef7sYKOTMCi+HlWS
	cwe95HwyjzwhNNlGUT67rdJJDbXUJ7xGTQn5xAsUb9xnvn5oKiBvzs+pw7vb++vwNKfm3yO+q801Q
	iYWBNi71/yOaKrSC1YOqSg840Rm/qrDnysy0nIrtaxTkJtY2U4MPs7oQDsKYnkuHj+khW09Oyszmb
	or9SYwgHKqw5fYrlKZTRz6XlseIzZDi98yIl8GGlSZNo22zwGz+SyyHvmTeGvo4gGiaViBqM0YA40
	LKpfqhXn7IDyFofhfR9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x36Pl-00000004lMP-3HDz;
	Sun, 06 Sep 2026 06:31:41 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x36Pj-00000004lLI-0soA
	for linux-rockchip@lists.infradead.org;
	Sun, 06 Sep 2026 06:31:41 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-c20ce3c118aso486537666b.0
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Sep 2026 23:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788676294; cv=none;
        d=google.com; s=arc-20260327;
        b=MaWWYNb8xOoPy+OZZmadDd7UYW9qeE38rTpwbpMHlW2Oz7Mo17BgCTFGixiUnaRvQP
         YysqtnqbwrWp++KirabAlWoyc576ia/9ViTXhg6z47+iy5YwKazN+YSknQIGIUhiS3zv
         3QJiWER277atcG6gcgJ6p0n68SqWUXdiDH3+ymej9k0AgRDolwbCBZ5AQvZFh2qXpGfl
         5BKdYLJzxTSGWAlHuFA24O6gAigBObYn6LPMD1Y3EAd8jVTjYf3+VBYHw/q7b9sAqqYj
         ag/XMiP/pNK4ur4y4dCMaW22LQyqIwUXAPwGwA2ApMP+wKORDRH007E0qcWkIepNCG/+
         d89Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CowhusBJtkVgTxM1sMewOhXaozR9ys1uAKwcRp0eiRc=;
        fh=08+bG6CITRzsMmGru3DQ9XzusV38RlEQBiyyQSBT5YQ=;
        b=Afgs+2JnF3K3RAvxh256BRUhjegahgH2P2G0+O6CrOrbrB2SBwv6bMNTZYT9qw2Jna
         XCX44eCqfsGwyZQSA5pSl9Ld2CXmmynZuigXIQoTHW9iD3FsBe2m5NWrTzn5upwlxTdp
         JdbesJdw1VOt8b8cAQ+qSaPUO1TECfftT4ig6l+mYSpmNw3crUP4Dz72R7smuN3FVR/w
         T224fOIP8Xlgn4poepc3VfmmElYKFkNUp4ZPl3vnmBcKcXJxC4SFB1CoYYk+P9pyG2Ww
         5tZR4t7Xh7EvoIrjNM/U0n7ZLM/fH68M/TUvPYtv3ic9MLW9UzhQ2HvpNCTsS7DoiFfs
         0bew==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788676294; x=1789281094; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=CowhusBJtkVgTxM1sMewOhXaozR9ys1uAKwcRp0eiRc=;
        b=wgBF0PuEyVq6rPFWoCse8w9Lp4rDPDLGkS7WsI2XcJN+5ydg3Ax0IZZ6Kwug2nJGQA
         06qN5wVgrJTAFeZvQivYKCLrNHxsy5vzk7LquYbdpTYHy17n5Y6R4/Kz9j34frCUNlJn
         uUNtXNbV7nOIdMGMqwxkmQQqGPsNX3JiKqn/cHVWJd5RUlWl+/Y16nwYMrxtAySE9+t/
         peHPY7rG1H16OFG0hEVss1wVJwg4QSPPAB4dN37UCy3Ee0rIUIUhIOAVyx4znzrU4yKr
         TfXN7pfbTv4XLqETrOHfW26Clp98LfoBTtUrMYU7rUdkmWKdVGGhHGQXkpPZYt4B8cTZ
         JB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788676294; x=1789281094;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CowhusBJtkVgTxM1sMewOhXaozR9ys1uAKwcRp0eiRc=;
        b=eRLO/P0XhJLxQMnf1HBp7yUxmFCxlwQX2Qj2xg20YIgSVLK/hthCUi7vxqYFgz7lRy
         83gpuNaH+JBwjrpGyHrG54D8JSqoHQEdUKv7Y61wNIfF4s0WbnPQyUuVnYIVjyeBNGPk
         JHzX0NdwnZQEXw1J2GoJ8PegNAM0k20JE8ZrAVLD4bOVATvFF4tZ7F+jLqc90zISpt+4
         C+PFFATpP+vseU0iN6M1/BFZpL6cdlwG1w/KY4L9D4Nh4G0FFLQiVU9uwPlacuVYJ+ZM
         gz9nanBOnOh1RhqyvpG6uISsVOy2/VcXQBt6Ssr4TttnbCe34pa6R1qfMvaT8YcY31jc
         0Zfg==
X-Forwarded-Encrypted: i=1; AKwUvByIAumntg/4rVakEXdMRni6ft602GR11gLMbbaRax9NyeWod9eOdV69C0wxBAQLZZCaKBKGez9DRD2a361jKg==@lists.infradead.org
X-Gm-Message-State: AFuF++mQXN+gYTwEqrRWnmydQ1EmUwPULPyq3KYj9QFkeNerGzsLxqLQ
	niH/19sEzWrzvzdQFd9waNw73cKWhRaXDykUgoHB9rpbtcj+zKcQcB+0HGFrUqNcV+Dfi1JcpXW
	ZNEJHfJQNvPSez292eeeIIaAWWynYfBMYGqDVS/RoEw==
X-Gm-Gg: AYBFou1r9MG2yd86nW3a7UWGMweVOdUCE5KTU1r2Hp0/o1/tqDfP6KpyROBxhN8Nn3+
	1j0Dh25IbgkznRt/MbNF4iWKRugdSCedtpWvgaw7tp0pfF0XGS3GIo2nl4dCYVdP31ZCUEp2s7x
	iJnvY62v6l35uNBL3vcjNbmaXvWKr3jQKwZkz+bB0HtIqmotqK1tX09YysN9J66u/QzTXMoESnk
	vEs4g6pQjVO3Ock+RIrLgD61vr+uzpKekQBMjH2yexc8DK8bmgveICdprcyAhihI3LtgCdBi+Cb
	nxL3VLBYXKObUp+Ius1uOy53dBqqrw+glT+bKV1xGtUm3WlCDXqNqYxUwyrHJzUx0lWdm9KoLR9
	XyrI=
X-Received: by 2002:a17:907:c80d:b0:c25:f7dc:2d5 with SMTP id
 a640c23a62f3a-c25f7dc0956mr720225966b.22.1788676294144; Sat, 05 Sep 2026
 23:31:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260901234351.190506-1-anarsoul@gmail.com> <CAKTNdwFqSBt4QVCuYJxTyEDsxkW96JbUirFNAgJYWVLHzGpk4A@mail.gmail.com>
 <CA+E=qVcizyQZytw8M6DA72YGrRDDNx_cCvYj565zf9wjMWh8tg@mail.gmail.com>
 <CAKTNdwFQvKtHQA0JD-GAq3bgr5Brq2NyLfccenkHcrKcjeptwg@mail.gmail.com> <CA+E=qVcwtnU_Gg6_oFmWqMpCEF8vOvB_G+H-ihfbiAr0PpFUJw@mail.gmail.com>
In-Reply-To: <CA+E=qVcwtnU_Gg6_oFmWqMpCEF8vOvB_G+H-ihfbiAr0PpFUJw@mail.gmail.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Sun, 6 Sep 2026 10:31:23 +0400
X-Gm-Features: AcwNN1WMMbAQ2CuZOa8tZDe3nBXerl1P7S6WAcKAg4su3ebkGU8XnfBv_73Boic
Message-ID: <CAKTNdwGTacFvn5BEN+iu0OBG2BUas7Vfj=YYF8OhAhNq-9kmyg@mail.gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: rk3399: add 85.5 MHz rate to PLL rate table
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_233139_293006_F7DD518E 
X-CRM114-Status: GOOD (  26.45  )
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

T24gU3VuLCBTZXAgNiwgMjAyNiBhdCAxMDowOeKAr0FNIFZhc2lseSBLaG9ydXpoaWNrIDxhbmFy
c291bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBTZXAgNCwgMjAyNiBhdCAyOjM24oCv
QU0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+IHdyb3RlOgo+Cj4gPiA+IFNl
ZSBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1iYXNlLmR0c2ksIGhkbWkgcmVm
IGNsb2NrIGlzCj4gPiA+IHdpcmVkIGRpcmVjdGx5IHRvIFZQTEwsIGFuZCBkd19oZG1pLXJvY2tj
aGlwIGNhbGxzIGNsa19zZXRfcmF0ZSgpIHdpdGgKPiA+ID4gcGl4ZWwgY2xvY2sgZm9yIHJlZiBj
bG9jaywgc2VlCj4gPiA+IGR3X2hkbWlfcm9ja2NoaXBfZW5jb2Rlcl9hdG9taWNfbW9kZV9zZXQo
KS4gU28gYXQgbGVhc3QgaW4gdGhlIHJrMzM5OQo+ID4gPiBjYXNlIFZQTEwgaXMgc3VwcG9zZWQg
dG8gc3VwcG9ydCB0aGUgcmVxdWlyZWQgcGl4ZWwgY2xvY2suIFdpdGhvdXQgdGhlCj4gPiA+IGZp
cnN0IHBhdGNoIDEzNjZ4NzY4IG1vZGUgd2l0aCA4NS41TUh6IHBpeGVsIGNsb2NrIGlzIGp1c3Qg
cmVqZWN0ZWQuCj4gPgo+ID4gSSBzdHJvbmdseSBzdXNwZWN0IHRoYXQgdGhlIGR0c2kgZG9lc24n
dCBkZXNjcmliZSB0aGUgcmVhbCBjbG9jayB1c2FnZQo+ID4gaGVyZS4gVGhlIFRSTSBmb3IgUksz
Mzk5IGRvZXNuJ3Qgc2hvdyBhbnkgInJlZiIgY2xvY2sgZm9yIEhETUksIGFuZCBubwo+ID4gVFJN
LWRvY3VtZW50ZWQgVlBMTCB1c2VycyBsb29rIGxpa2UgYW55dGhpbmcgdGhhdCBjb3VsZCBjb25u
ZWN0Cj4gPiBkaXJlY3RseSB0byB0aGUgSERNSSBjb250cm9sbGVyLgo+Cj4gU2VlICIxLjEuMTEg
SERNSSBJbnRlcmZhY2UiLCBpdCBleHBsaWNpdGx5IG1lbnRpb25zIDEzLjXigJM2MDBNSHogaW5w
dXQKPiByZWZlcmVuY2UgY2xvY2sKCldoaWNoIG1hdGNoZXMgdGhlIHBpeGVsIGNsb2NrIChkY2xr
KSByYW5nZSBmb3IgSERNSSAyLjAsIHNvIG5vdGhpbmcgaXMKZGlzcHJvdmVuIHlldAoKPiA+IEkg
YmVsaWV2ZSBzb21ldGhpbmcgaXMgaGFyZGNvZGluZyB0aGUgZGl2aXNvciAob3IgbGVhdmluZyBp
dCBhdCB0aGUKPiA+IHBvd2VyLW9uIGRlZmF1bHQpIGluIHRoZSBhY3R1YWwgRENMSyBvZiBhIFZP
UCB3aGljaCB0aGUgSERNSQo+ID4gY29udHJvbGxlciB1c2VzLCBpbnN0ZWFkIG9mIG1vZGVsbGlu
ZyBpdCBwcm9wZXJseSBhcyBhIG11eCAoZnJhYy9kaXYpCj4gPiBmZWVkaW5nIG9mZiBWUExMIHZp
YSBhbm90aGVyIG11eCAtIGJvdGggcGVyZmVjdGx5IHJlcHJlc2VudGFibGUgaW4gdGhlCj4gPiBj
bG9jayBmcmFtZXdvcmsgYW5kIGFscmVhZHkgZW52aXNhZ2VkIGluIHRoZSBjbG9jayBkcml2ZXIs
IG1ha2luZyB0aGUKPiA+IFBMTCB0YWJsZSBwYXRjaGluZyB1bm5lY2Vzc2FyeS4KPiA+Cj4gPiBD
YW4geW91IHBsZWFzZSB0cnkgcmUtcG9pbnRpbmcgdGhlICJyZWYiIGNsb2NrIGF0IERDTEtfVk9Q
MCAob3IgMSwKPiA+IGRlcGVuZGluZyBvbiB3aGljaCBvbmUgeW91ciBIRE1JIGNvbnRyb2xsZXIg
dXNlcyk/IFlvdXIgY2xvY2sgc3VtbWFyeQo+ID4gYWxyZWFkeSBzaG93cyB0aGF0IHNvbWV0aGlu
ZyBpcyBhc3NpZ25pbmcgaXRzIHBhcmVudCB0byBEQ0xLX1ZPUHhfRElWCj4gPiBhbmQgdGhlIGxh
dHRlcidzIHBhcmVudCB0byBQTExfVlBMTCwgc28gcmF0ZSBjaGFuZ2VzIHRoZSBjdXJyZW50Cj4g
PiBkcml2ZXIgY29kZSBkb2VzIG9uIFZQTEwgcHJvcGFnYXRlIHRvIHRoZSBtdXhlZCBhbmQgZGl2
aWRlZCBkb3duc3RyZWFtCj4gPiBjb25zdW1lciBhcyBhIHNpZGUtZWZmZWN0IHJhdGhlciB0aGFu
IGFzIGFuIGFjdHVhbCByYXRlIHJlcXVlc3QuCj4KPiBJIGRvbid0IHRoaW5rIGl0IGlzIGEgcmVh
c29uYWJsZSBhc2suIFdyb25nIGNsb2NrIGZvciB0aGUgSERNSSBlbmNvZGVyCj4gd291bGQganVz
dCByZXN1bHQgaW4gbm9uLXdvcmtpbmcgSERNSSBvdXRwdXQgYW5kIG5vIGZlYXNpYmxlIHdheSBm
b3IKPiBtZSB0byBkZWJ1ZyB3aGF0IGlzIHdyb25nLgoKSG9wZSB5b3UgaGF2ZSBhIHNlcmlhbCBj
b25zb2xlIG9yIHNzaCBjb25uZWN0aW9uIHRvIHRoZSBib2FyZC4gSWYgaXQKZG9lc24ndCB3b3Jr
IHlvdSdsbCBrbm93IHNvb24gZW5vdWdoLgoKV2hhdCBJJ20gcG9pbnRpbmcgb3V0IGlzIHRoYXQg
dGhlIGNsb2NrIHNldHVwIGltcGxpZWQgYnkgdGhlIGN1cnJlbnQKZHRzaSBkb2Vzbid0IG1ha2Ug
bXVjaCBzZW5zZTogVk9QJ3MgZGNsayBpcyBkcml2ZW4gb2ZmIFZQTEwgdmlhIGEgbXV4CmFuZCBk
aXZpc29yLiBJZiB0aGUgZW5jb2RlcidzIHBpeGVsIGNsb2NrIGlzIHRydWx5IGRyaXZlbiBkaXJl
Y3RseSBvZmYKVlBMTCB0aGVuIFJvY2tjaGlwIGRlc2lnbmVkIHRoZSBtdXhlcyBhbmQgZGl2aWRl
cnMgZm9yIG5vdGhpbmcsIGFzCnRoZXkgd2lsbCBhbHdheXMgYmUgbm8tb3BzLiBUaGlzIGRvZXNu
J3Qgc3F1YXJlLCBzbyBzb21ldGhpbmcgbXVzdCBiZQp3cm9uZywgYW5kIEkgYmVsaWV2ZSBpdCdz
IHRoZSBkdHNpLgoKSSdsbCBiZSBoYXBweSB0byBiZSBwcm92ZW4gd3JvbmcgaGVyZS4KCkJlc3Qg
cmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
