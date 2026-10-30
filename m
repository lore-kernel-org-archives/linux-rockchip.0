Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72FF606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 08:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vCkzrSgv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=6DhOsruf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RFZEs9+ewTB5HKHx8cKRvztXqhmLJarEolbmQ5wm4vA=; b=vCkzrSgvHirmY/ShYQ9GqKJCzi
	Lm/atinnKiIBTPIo+Y6qakpNh/eSBDhzjSPeV+9moeX5BeSHimXuYWhN+xbvjirAE2HzJkSqGcoAF
	P7569nGAStIgz8RHsUpzvX0OPZ3WdD31Wi09wFYHJPi/SwovX/WpP41o13RmgrOGezAB+Ga+it9Vg
	UR/aXwCIofhBa86g06XUDkwJ9j5QSdPsGG6JbYHGysILL5kbFKXCvn4G8FGu9TfkX0n3ythfjcNL3
	VW7ffTLAstvG6g4LQpYP2FKhpuH31N/hE/IhVTGzKG11RSSJe5kpWEEFlAu6ISF+6U7kLk8A7ZOQ4
	YaS3d9Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMhX2-0000000B3pv-2ozz;
	Fri, 30 Oct 2026 08:00:12 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMhWz-0000000B3oF-13Fh
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 08:00:11 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-c4caf490606so16517666b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 01:00:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793347204; cv=none;
        d=google.com; s=arc-20260327;
        b=LmpHBit6Oex6Yw9OxW3FDsjCuPnvG3YuTSldNlet556PMxWtCgFir2TKuOT8A0OTN6
         0niCsXBnt61pf0U99jvKKiozovp2Z2oP3nEWXwv1KjIpGaKLsD1t6wYxryUeEr814pLN
         g8tuLkZnGpAkHMce3ARe194yPyLrLY6T6D0C9lR+0pzr0edNiPBWfBLChqr7VYJCVEri
         joVXcK57Ogu6R0jwHZ8sC1e2CTUPOP8wUrp5HUlttDfpLxRAFWPc1twzw/vIbZsmeCnF
         yU7EwDOTzeb3XOYnIWNypASpvzb9RDqntxjAvjgp7n5ZSJD0EcXItjx7Z9S/82gDguRJ
         xPqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Q/eIx/IUOdi7y2UVsh8BBzkkFOgj24Cn4YadoL10m2E=;
        fh=yEw0DdY4AFvbdrPSNrrJ96zxQUDjb0ABFZoT6O90itg=;
        b=hirrY22YoKZk3GsxVq/DNjcinGpoDeHCx276HoXFN+B3M4kbzMShWpsNmvMgQ+HoSo
         5mbq5NjRGnkxh5kxNCWn4d61QUx6j2wOc9Mln4vq34RdNVXY/i3Wx0+ayR2rWGIS3oFM
         z4VUGi3GJuyT2xmH6JKm5vqSqFzs9fXDG38ktKPU0ZFSQWnM7QqrWkQZnkKTf9NO5I7R
         CoHvYExEqTqyPZqIUDgdfBpphSizds/EbP8dbGvr3K6lBwxUdEc6biaa54FQQYuPastn
         VFu+Vkrmi/ckpuan6X2dGfy2fabuA6N7cQ04FO23RCA9iqtgRj+G9xnKZuWfZEHwx7sk
         VuKA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1793347204; x=1793952004; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Q/eIx/IUOdi7y2UVsh8BBzkkFOgj24Cn4YadoL10m2E=;
        b=6DhOsrufn4rXZTZv7grvYezQd19jGIdyVrV/TRkLKM6pYcCPD4lOHnYc+JlMbWKTNR
         JnzlFZDrmT0XAi5EiGrLd9Y/gl34oMvOlnjnQQV9gffw+rVI9V9YYe/3yoxfc9k+1FgX
         xLN/seLZAreMIj2AbC5xiLUk2zI2wyw3PWsXJfzU4oHOPOmgDn/F1YsvHm9sCbr497s6
         O2yiuVHzyKlVGJprLWijhTOhMX3IVPrO2criyOGddt2IWmktbbForvZnqrsW2x5yb3II
         UBOoKLRhZvOqeFvfvmoXsHEgmLvunFE1npTFYRM1no4d9yaxVO5zkp6vczeg6sX7NUtZ
         Zl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793347204; x=1793952004;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q/eIx/IUOdi7y2UVsh8BBzkkFOgj24Cn4YadoL10m2E=;
        b=XcrjJxeKPRLtgO4tZK+gR1HN/9zz2ryZaGWItIdu3L3XH9YOIlWrwd65C/lAXvl4rH
         EOHsJ28xL91KBp4DMv4Q9b299q2OpyRPlvU1DdzuwTi8wvUID2YgvMwLS/kvSGolWnE6
         A9QoYNeTSnduCjvVk4Mz+PNERXIEZ0sfMhGsKEyunp69XgW4ntLhknZnJVkQRbBPOFHL
         JaSC1JTYSx3mbmY/Hyp6QH9w69w/WYzz0wbTlUeuckXha4GpDuauhae7M4a0B4dnHm7B
         TjmREtAz6W5YLNpoqIalcgipvVCTH7Xi7dRph83eUpgl/NiNm3L2hoh/aSISTz5436ZM
         ABSg==
X-Forwarded-Encrypted: i=1; AKwUvBxVTNUgzjNnfTqgU7zgkxqpgUO36uQ0+64ICkbJGx0Xqt/2gZOUtKBRJE8hli9gUgIOnwmxGBdAKgTpxY6W+A==@lists.infradead.org
X-Gm-Message-State: AFq9FYIrSIj49pWH6eTGGznpg5pQrFBsZC7EYVpuWFnBFHKMx3vzOJPz
	Bpqsr4+bWj80wjZSQKpxaiz/JIJf/IpMbhyrinAViPWTS6gJRp5dfKcRkWajhmekHlNuBu7WNXz
	a0If1ehtFvJIpc8U/vjud30ZvzmgL/dy7X2Vm+GnboQ==
X-Gm-Gg: AYBFou1U+O6NYSTm2oxCrlkgtMR6rjFlbGWYArrsW+XsTUqPfTTp5Iect8Rl9apIGAa
	6km57pGaZrCcaEpmsrbuW2/yku1NfXsJvQPJwHaFqjrkrCUfyNuRlvqYx1IrDsc4KXv9vGrSoqa
	XWqTP6GwS6hNuLEu4o1CtXqwB4JhzUNXjoDZC4sDnbyi1YTJD1/KXrCO6HAM6lhJI+68gHOqoHz
	5eHjfTxu5uKTjzHas6tsk7F59B5bm24bOS6mm0EwauVYFdR+0ONzTff8o81eY2Bnza9ghQUbW1C
	TYYFZhZjA1fJhSIG6NY6MUk9mkJQVOHNVX7Rii1/gQ47owLPe+ezI6fewfunJdWjvI/+R2rsyKX
	NBYPU9U84NTFvmFi17P+9msVoZP2LQ8pZWjTssyJvwskE5Xy9yULTnax3NVP0NNdvpx/dEQ==
X-Received: by 2002:a17:907:c23:b0:c49:cfcf:8d7f with SMTP id
 a640c23a62f3a-c4ca7ae8ad6mr121607566b.46.1793347203897; Fri, 30 Oct 2026
 01:00:03 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20260901234351.190506-1-anarsoul@gmail.com> <CAKTNdwFqSBt4QVCuYJxTyEDsxkW96JbUirFNAgJYWVLHzGpk4A@mail.gmail.com>
 <CA+E=qVcizyQZytw8M6DA72YGrRDDNx_cCvYj565zf9wjMWh8tg@mail.gmail.com>
 <CAKTNdwFQvKtHQA0JD-GAq3bgr5Brq2NyLfccenkHcrKcjeptwg@mail.gmail.com>
 <CA+E=qVcwtnU_Gg6_oFmWqMpCEF8vOvB_G+H-ihfbiAr0PpFUJw@mail.gmail.com>
 <CAKTNdwGTacFvn5BEN+iu0OBG2BUas7Vfj=YYF8OhAhNq-9kmyg@mail.gmail.com> <CA+E=qVf=oBf9a=nrN-F2gGGY60+Gfuj3NMvuW4pWAdbU6NKceA@mail.gmail.com>
In-Reply-To: <CA+E=qVf=oBf9a=nrN-F2gGGY60+Gfuj3NMvuW4pWAdbU6NKceA@mail.gmail.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 30 Oct 2026 11:59:55 +0400
X-Gm-Features: AclHuK80eGfXzrhDU1BJmzUNyq0YUUcHy3czLcESvjD2RbRa1URB1Gh73rfRLng
Message-ID: <CAKTNdwEiNjjX3DgBm5whH0HHvAfZQFgF4LhKf7PJ+1p7MJ=QJg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20261030_010009_642579_4697F773 
X-CRM114-Status: GOOD (  43.30  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgVmFzaWx5LAoKT24gRnJpLCBPY3QgMzAsIDIwMjYgYXQgOTowMeKAr0FNIFZhc2lseSBLaG9y
dXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gU2F0LCBTZXAgNSwgMjAy
NiBhdCAxMTozMeKAr1BNIEFsZXhleSBDaGFya292IDxhbGNoYXJrQGZsaXBwZXIubmV0PiB3cm90
ZToKPiA+ID4gPiBJIGJlbGlldmUgc29tZXRoaW5nIGlzIGhhcmRjb2RpbmcgdGhlIGRpdmlzb3Ig
KG9yIGxlYXZpbmcgaXQgYXQgdGhlCj4gPiA+ID4gcG93ZXItb24gZGVmYXVsdCkgaW4gdGhlIGFj
dHVhbCBEQ0xLIG9mIGEgVk9QIHdoaWNoIHRoZSBIRE1JCj4gPiA+ID4gY29udHJvbGxlciB1c2Vz
LCBpbnN0ZWFkIG9mIG1vZGVsbGluZyBpdCBwcm9wZXJseSBhcyBhIG11eCAoZnJhYy9kaXYpCj4g
PiA+ID4gZmVlZGluZyBvZmYgVlBMTCB2aWEgYW5vdGhlciBtdXggLSBib3RoIHBlcmZlY3RseSBy
ZXByZXNlbnRhYmxlIGluIHRoZQo+ID4gPiA+IGNsb2NrIGZyYW1ld29yayBhbmQgYWxyZWFkeSBl
bnZpc2FnZWQgaW4gdGhlIGNsb2NrIGRyaXZlciwgbWFraW5nIHRoZQo+ID4gPiA+IFBMTCB0YWJs
ZSBwYXRjaGluZyB1bm5lY2Vzc2FyeS4KPiA+ID4gPgo+ID4gPiA+IENhbiB5b3UgcGxlYXNlIHRy
eSByZS1wb2ludGluZyB0aGUgInJlZiIgY2xvY2sgYXQgRENMS19WT1AwIChvciAxLAo+ID4gPiA+
IGRlcGVuZGluZyBvbiB3aGljaCBvbmUgeW91ciBIRE1JIGNvbnRyb2xsZXIgdXNlcyk/IFlvdXIg
Y2xvY2sgc3VtbWFyeQo+ID4gPiA+IGFscmVhZHkgc2hvd3MgdGhhdCBzb21ldGhpbmcgaXMgYXNz
aWduaW5nIGl0cyBwYXJlbnQgdG8gRENMS19WT1B4X0RJVgo+ID4gPiA+IGFuZCB0aGUgbGF0dGVy
J3MgcGFyZW50IHRvIFBMTF9WUExMLCBzbyByYXRlIGNoYW5nZXMgdGhlIGN1cnJlbnQKPiA+ID4g
PiBkcml2ZXIgY29kZSBkb2VzIG9uIFZQTEwgcHJvcGFnYXRlIHRvIHRoZSBtdXhlZCBhbmQgZGl2
aWRlZCBkb3duc3RyZWFtCj4gPiA+ID4gY29uc3VtZXIgYXMgYSBzaWRlLWVmZmVjdCByYXRoZXIg
dGhhbiBhcyBhbiBhY3R1YWwgcmF0ZSByZXF1ZXN0Lgo+ID4gPgo+ID4gPiBJIGRvbid0IHRoaW5r
IGl0IGlzIGEgcmVhc29uYWJsZSBhc2suIFdyb25nIGNsb2NrIGZvciB0aGUgSERNSSBlbmNvZGVy
Cj4gPiA+IHdvdWxkIGp1c3QgcmVzdWx0IGluIG5vbi13b3JraW5nIEhETUkgb3V0cHV0IGFuZCBu
byBmZWFzaWJsZSB3YXkgZm9yCj4gPiA+IG1lIHRvIGRlYnVnIHdoYXQgaXMgd3JvbmcuCj4gPgo+
ID4gSG9wZSB5b3UgaGF2ZSBhIHNlcmlhbCBjb25zb2xlIG9yIHNzaCBjb25uZWN0aW9uIHRvIHRo
ZSBib2FyZC4gSWYgaXQKPiA+IGRvZXNuJ3Qgd29yayB5b3UnbGwga25vdyBzb29uIGVub3VnaC4K
PiA+Cj4gPiBXaGF0IEknbSBwb2ludGluZyBvdXQgaXMgdGhhdCB0aGUgY2xvY2sgc2V0dXAgaW1w
bGllZCBieSB0aGUgY3VycmVudAo+ID4gZHRzaSBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZTogVk9Q
J3MgZGNsayBpcyBkcml2ZW4gb2ZmIFZQTEwgdmlhIGEgbXV4Cj4gPiBhbmQgZGl2aXNvci4gSWYg
dGhlIGVuY29kZXIncyBwaXhlbCBjbG9jayBpcyB0cnVseSBkcml2ZW4gZGlyZWN0bHkgb2ZmCj4g
PiBWUExMIHRoZW4gUm9ja2NoaXAgZGVzaWduZWQgdGhlIG11eGVzIGFuZCBkaXZpZGVycyBmb3Ig
bm90aGluZywgYXMKPiA+IHRoZXkgd2lsbCBhbHdheXMgYmUgbm8tb3BzLiBUaGlzIGRvZXNuJ3Qg
c3F1YXJlLCBzbyBzb21ldGhpbmcgbXVzdCBiZQo+ID4gd3JvbmcsIGFuZCBJIGJlbGlldmUgaXQn
cyB0aGUgZHRzaS4KPiA+Cj4gPiBJJ2xsIGJlIGhhcHB5IHRvIGJlIHByb3ZlbiB3cm9uZyBoZXJl
Lgo+Cj4gSGV5IEFsZXhleSwKPgo+IFNvcnJ5IGZvciB0aGUgbG9uZyBkZWxheSAtIE5WTWUgaW4g
bXkgbGFwdG9wIGRpZWQgYW5kIEkgaGFkIHRvIHdhaXQKPiBmb3IgYSB3YXJyYW50eSByZXBsYWNl
bWVudCB0byBhcnJpdmUuIEkgd291bGQgaGF2ZSBib3VnaHQgYSBuZXcgb25lIGlmCj4gdGhlIHBy
aWNlIHdhc24ndCByaWRpY3Vsb3VzIDopCj4KPiBUaGUgZHRzaSBkZXNjcmliZXMgdGhlIGhhcmR3
YXJlIGNvcnJlY3RseS4gVGhlIEhETUkgUEhZJ3MgcmVmZXJlbmNlCj4gY2xvY2sgaW5wdXQgKFRS
TSBQYXJ0IDEsIDEuMS4xMTogIjEzLjUtNjAwTUh6IGlucHV0IHJlZmVyZW5jZSBjbG9jayIpCj4g
aXMgd2lyZWQgdG8gVlBMTCB3aXRoIG5vIG11eCBvciBkaXZpZGVyIGluIGJldHdlZW47IGl0IGlz
IG5vdCBvbmUgb2YKPiB0aGUgQ1JVIGNsb2NrcyBpbiB0aGUgVFJNJ3MgY2xvY2sgdHJlZSBhdCBh
bGwuCgpUaGUgVFJNIHVuZm9ydHVuYXRlbHkgb25seSBzYXlzIHRoZXJlIGlzIGFuIGlucHV0IHJl
ZmVyZW5jZSBjbG9jayBidXQKZ2l2ZXMgbm8gZGV0YWlsIG9uIGhvdyBpdCdzIHdpcmVkLgoKPiBU
aGF0J3MgZXhhY3RseSB3aGF0IHRoZSBjb21taXQgdGhhdCBpbnRyb2R1Y2VkIHRoZSAidnBsbCIg
Y2xvY2sgc2F5cywKPiBmcm9tIFJvY2tjaGlwJ3Mgb3duIGVuZ2luZWVycywgc2VlIDVlM2JjNmQx
YWI0OCAoImRybS9yb2NrY2hpcDoKPiBkd19oZG1pOiBpbnRyb2R1Y2UgdGhlIFZQTEwgY2xvY2sg
c2V0dGluZyIpCgpUaGF0IGNvbW1pdCBpbmRlZWQgbWVudGlvbnMgdGhhdCB0aGVyZSBpcyBubyBk
aXZpZGVyIGJldHdlZW4gdGhlIFZQTEwKYW5kIEhETUkgUEhZLiBMb29rcyBsaWtlIGl0J3Mgb3Vy
IG9ubHkgZXZpZGVuY2UsIGJ1dCBJIGJlbGlldmUgd2UKc2hvdWxkIHRydXN0IHRoZSBpbmZvcm1h
dGlvbiBpbiBNYXJrIFlhbydzIGNvbW1pdCBtZXNzYWdlLCBnaXZlbiBoaXMKUm9ja2NoaXAgc2ln
bi1vZmYgbGluZS4KCj4gVGhpcyBidWcgcmVwb3J0IGl0c2VsZiBpcyBhIHNvbGlkIHByb29mIG9m
IHRoaXMgd2lyaW5nLiBXaXRoIFZQTEwgbGVmdAo+IGF0IDc0LjI1IE1IeiBhbmQgdGhlIFZPUCBv
biBHUExMLzcgPSA4NC44NTcgTUh6LCB0aGUgbW9uaXRvciByZXBvcnRlZAo+IHRoZSBtb2RlIGFz
IDExOTV4NzY4LiA3NC4yNS84NC44NTcgPSAwLjg3NSwgYW5kIDEzNjYgKiAwLjg3NSA9IDExOTUu
Cj4gVGhlIFRNRFMgY2xvY2sgY2FtZSBmcm9tIFZQTEwgd2hpbGUgdGhlIHN5bmMgdGltaW5nIGNh
bWUgZnJvbSB0aGUgVk9QLgo+IElmIHRoZSBQSFkgd2VyZSBjbG9ja2VkIGZyb20gdGhlIGRjbGsg
bXV4IG91dHB1dCwgdGhhdCBtaXNtYXRjaCBjb3VsZAo+IG5vdCBleGlzdC4KCkZhaXIgZW5vdWdo
LgoKPiBUaGUgbXV4IGFuZCBkaXZpZGVycyBhcmUgbm90IGZvciBub3RoaW5nOiB0aGVyZSBpcyBv
bmUgVlBMTCBhbmQgdHdvCj4gVk9QcywgYW5kIGVhY2ggVk9QIGNhbiBhbHNvIGRyaXZlIGVEUCwg
TUlQSSBEU0kgYW5kIERQLCB3aG9zZSBQSFlzCj4gaGF2ZSB0aGVpciBvd24gUExMcy4gV2hlbiBW
T1BCIGRyaXZlcyBIRE1JIGZyb20gVlBMTC8xLCBWT1BMIGhhcyB0bwo+IHJ1biBmcm9tIENQTEwg
b3IgR1BMTCB0aHJvdWdoIHRoZSBkaXZpZGVyLCBhbmQgdGhlIGZyYWN0aW9uYWwgZGl2aWRlcgo+
IGV4aXN0cyBmb3IgRFNJIHBhbmVscyB3aXRoIG9kZCBwaXhlbCBjbG9ja3MuIEZvciBIRE1JIHRo
ZSBkaXZpZGVyIGlzCj4gbGVnaXRpbWF0ZWx5IDEuCj4KPiBUaGlzIGlzIGFsc28gd2h5IHRoZSBQ
TEwgdGFibGUgcGF0Y2ggaXMgbmVlZGVkIHVuZGVyIGFueSBzY2hlbWU6IHRoZQo+IFJLMzM5OSBQ
TEwgZHJpdmVyIGlzIHRhYmxlLW9ubHkgKHJvY2tjaGlwX3BsbF9kZXRlcm1pbmVfcmF0ZSgpIHNu
YXBzCj4gdG8gdGhlIG5lYXJlc3QgbG93ZXIgdGFibGUgZW50cnkpLCBhbmQgdGhlIFBIWSByZWZl
cmVuY2UgaGFzIHRvIGJlCj4gODUuNSBNSHogZXhhY3RseSBiZWNhdXNlIG5vdGhpbmcgYmV0d2Vl
biBWUExMIGFuZCB0aGUgUEhZIGNhbiBkaXZpZGUKPiBpdC4KPgo+IEFuZCB0aGUgVk9QIHBhdGNo
IGRvZXNuJ3QgaGFyZGNvZGUgYSBkaXZpc29yLiBUaGUgVk9QIHN0aWxsIG1ha2VzIGEKPiByZWFs
IGNsa19zZXRfcmF0ZSgpIG9uIGl0cyBkY2xrIGF0IGVuYWJsZSB0aW1lLiBUaGUgYnVnIHdhcyBv
cmRlcmluZzoKPiBtb2RlX2ZpeHVwKCkgcm91bmRlZCB0aGUgcGl4ZWwgY2xvY2sgdGhyb3VnaCB0
aGUgZGNsayB3aGlsZSBWUExMIHdhcwo+IHN0aWxsIGF0IGl0cyBvbGQgcmF0ZSwgc28gdGhlIGNv
bXBvc2l0ZSBjaG9zZSBHUExMLzcgYW5kIHRoZSBlbmNvZGVyCj4gdGhlbiBhc2tlZCBWUExMIGZv
ciA4NC44NTcgTUh6LCB3aGljaCB0aGUgdGFibGUgc25hcHBlZCB0byA3NC4yNSBNSHouCj4gV2l0
aCBWUExMIHByb2dyYW1tZWQgZmlyc3QsIHRoZSBjb21wb3NpdGUgcGlja3MgVlBMTCB3aXRoIGRp
dmlkZXIgMQo+IGJlY2F1c2UgaXQgaXMgdGhlIGV4YWN0IG1hdGNoLgoKQWNrLiBUaGFua3MgYSBs
b3QgZm9yIGRvdWJsZS1jaGVja2luZyBhbGwgb2YgdGhlc2UgLSBpdCdzIGdyZWF0IHRvCmhhdmUg
eW91ciBleHBsYW5hdGlvbnMgcmVjb3JkZWQgb24gdGhlIG1haWxpbmcgbGlzdCBmb3IgcG9zdGVy
aXR5IQoKQmFjayB0byB0aGUgcGF0Y2ggaXRzZWxmLiBUaGUgbmV3IHJhdGUgeW91J3JlIGRlZmlu
aW5nIGlzIGNvbnNpc3RlbnQKd2l0aCB0aGUgZXhpc3RpbmcgZW50cnkgZm9yIFJLMzAzNl9QTExf
UkFURSgxMzY4MDAwMDAwLCAxLCA1NywgMSwgMSwKMSwgMCksIGFuZCB0aGUgcGFyYW1ldGVycyBh
cmUgd2l0aGluIHNwZWMgKFZDTyByYXRlIG9mIDEzNjgwMDAwMDAKZmFsbHMgd2l0aGluIHRoZSBk
b2N1bWVudGVkIHJhbmdlIG9mIDgwMCBNSHogdG8gMy4yIEdIeikuIEZlZWwgZnJlZSB0bwppbmNs
dWRlIG15OgoKUmV2aWV3ZWQtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGZsaXBwZXIubmV0
PgoKT24gdGhlIGV4aXN0aW5nIDEzNjgwMDAwMDAgZW50cnksIEknbSBwcmV0dHkgc3VyZSBpdCB3
b3VsZCBwcm9kdWNlCmxlc3Mgaml0dGVyIGFzIFJLMzAzNl9QTExfUkFURSgxMzY4MDAwMDAwLCAx
LCAxMTQsIDIsIDEsIDEsIDApLCBieSB0aGUKdmlydHVlIG9mIEZWQ089MjczNk1IeiBmYWxsaW5n
IGludG8gdGhlIGhpZ2hlciBlbmQgb2YgdGhlIGFsbG93ZWQKYmFuZC4gVGhpcyB3b24ndCBhcHBs
eSB0byB5b3VyIDg1LjVNSHogcmF0ZSB0aG91Z2gsIGJlY2F1c2UgdGhlCnJlcXVpcmVkIGRpdmlz
b3JzIHdvbid0IGZpdCBpbiB0d28gMy1iaXQgcmVnaXN0ZXJzLgoKQmVzdCByZWdhcmRzLApBbGV4
ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
