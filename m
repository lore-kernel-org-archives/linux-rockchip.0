Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E002D606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 03:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CnHDzi1w;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256 header.s=google header.b=kqkQBlrB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sr93xStWAutIyflO0XjoTPSrusaylATAcy7cIH3mZwY=; b=CnHDzi1wFkgLTGrAzVARGkRKBe
	qFSI/DjUz0VQ/aoBFDy7DxPh/+/ww0itTR74mugqAKEeSg+clVIOf8VY89U4AZ6Y94SY35GQFIm3l
	eJNtY4hPpf8hDaslazZx6TjdNwcs9l+32pg///W5QzNp56v3Fo+tf2vrufFUQBMT2kADkBPfnN3fe
	RC5JzC/nr4cihGUOvPiy0OFj9xcym5kwV9fL9x2P/Si1ps9+GBzEI368SzKcOZNGLzyR/UBdmu90i
	Jev7v/uzzWJwCSUdm0Jwlqwu5yJ9zgK5ozfZMUFci42eNvwlL35vW0zBFczdUkPiLX/c8Z+aOMLWI
	fm1MJ0vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLYFs-00000003ilk-2XDy;
	Tue, 27 Oct 2026 03:53:44 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLYFp-00000003il0-0zKG
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 03:53:43 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-8ab3d3c5761so32373327b3.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 20:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793073219; cv=none;
        d=google.com; s=arc-20260327;
        b=VqD720Ii/dc+hWU6wPgpL0rzbq8fdlnvc86Sjim5uDtSSemKAhGJuXOq/bLFOqI6Ly
         4QI3x7HPNgonLmGvhMPMDTG7mrakGKpNHL5Wk6P7McR2hSLvlre1qv2Vf9HZfEbyAB78
         +4m8FT7royju5sacyo5H96VTGuWw5D/9IKlILbEfBjlkA/ys3gqwGxxrDOlZENNr14uY
         Rnsi1b1hUW7G4BzLSGaf5QPEZxM2YwRnV2MOpSbFwcHih8xaB5x87PSCTX+YDpvKq5C0
         nzmKtR8E+SikL/TYAgFCOSNxCnCbnR+aFd8c/ym5ES/nXWq1UNwDiDGZFVF+eSH+nqos
         +Z8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=63XdMIgmDxPufVfDbiuncQKIwymV4Xhq1c62N9eTtiU=;
        fh=8WYcOyKditNop+CIPKZz/vwpD0fhSklUSSmv6sP6U9s=;
        b=dZUUVDogaldDXqfucGEIH0razY13u+iHqkfTcSWUqnKY6sXj60VIGfAHWAVzH8wixI
         7gBjnRkpG5xlkOPkv3wRBciBDBz4rIwCAyzOwDiVZcftKXWe9k+GFP83T4anmaxvXEDn
         XRMc0KGcTKZy/hs1cKP1SUrBo6K5Gxi9eA+Pz65Xw8H+zvGmVcgfKbrPC2fyck83TPHh
         vvUkUxS5pzukivbEr9+XCVc4X1LQN4PjcBkMZzQRg2yQS3Ja3Thpxm44HVpyEItvcRx3
         K7VacrAo4ChXH16yULv/jQ+DH9SFv2X0MoTKAg82rgwU4RV6W2la4YGzRdbAR6PtnsLH
         PeUg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1793073219; x=1793678019; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=63XdMIgmDxPufVfDbiuncQKIwymV4Xhq1c62N9eTtiU=;
        b=kqkQBlrBvt8HK6vGTJ+A6OFv+DC/0MfC4OwbVnqctZ5fMoZ3LHMlizpKD0+s35H2QT
         ElNAaz2IxcMyIsUHqx7l8KxVMT/BJJJ8gIPrzhpx17YcGhsozvc+toNe0szR3qmW3yME
         LZ/VE1+pZFF07RbLy7u7DEuqTHTO3GL0rEt/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793073219; x=1793678019;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=63XdMIgmDxPufVfDbiuncQKIwymV4Xhq1c62N9eTtiU=;
        b=ytVoZtBeyls2xp/m2rNp8Ga0CDPnaDX3qzbuqzeLSeBfGBJNXIPt4iG7dOA5Hauhy1
         Q4FmkVKHaAfz62obPglBZMczoMkHRzYsnRMLBMibjhDyuzG/3/dw3M2xKaDA5UleV5Qa
         Xh535e1FW3nIH4+zbn022BTkDA8KoaiDaWhvCZsuWnuCHReQN1GqgvkdZXqqE5AG4SEM
         uQ1tnJbV5zgrlHAIeMSRfMkD10vuPLnMHP0JU/uoBISvGigMTi02kaQU684f6aC6DLVD
         HEA9wwrq44qAPNi+YEcbFg7/DrhG2PNHQu//TtRkLMqtQ9GhnV16z769lOzSBkJfUsVc
         Kylg==
X-Forwarded-Encrypted: i=1; AKwUvBym/4xy+1Q1ip0mFWbsbci8tMcXJtx4OONSL1oQjgVdppHy8ceYX130e6sZHxO5EiZ6hx4DX+Ai95dbI7z+4w==@lists.infradead.org
X-Gm-Message-State: AFq9FYJmOiZW+ib5N2b7vJlTTC6KtTQZROfyKv0NFS1Bbm48IzvvOwJi
	dKOmnKW1wncjJ4m6fKQmiB1pExBJCh9psand2ZG0scTFAvcnnvAifXpYE5nQviC8hqkKUDF9FLx
	9lut82RIFKVIPbt67RS+RkIejtDlykq+mN1px+HRE
X-Gm-Gg: AYBFou2Tyjqnb5oinhC81gZ/eJZNiECC7hEPBUOzUVltY4YNasWNJhkYo3dUa/wi2/6
	sFfrMcJjin+MzbeB3j1EhRC0RIHOtz9K/Tu1mXRT6atb30lX978RERfOYEqHcXWny04dmZ590/I
	JKtNMAlPnK0dCjuKJk1Za+Ku91jniaX2gpvSCnKpauGH9yZiYAtnjN2BP/KBc30yvrR/U+tzL01
	CYfu3ArpJdyGWYxxIXY4gHCrZlQkYy5t+ix7kX7NU4EQWCcj2WEwFzoOPKo/S1G6EItr6b/wmiQ
	nVp5YScSQukuGi8fvg2zJNY2Gby2mxcPH8jSYTxTKUyfIjmBqeSlGjZqDbnndczX8DD0IC9RYyI
	T815FvegyeSD0cKJRLDvUIQr/BXgdItHqX5Hrc7AJ2IStGKdhrutZJJmL8lpCR0AEum0=
X-Received: by 2002:a53:b644:0:b0:677:d023:49b8 with SMTP id
 956f58d0204a3-67a4543f2demr5622996d50.66.1793073219651; Mon, 26 Oct 2026
 20:53:39 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261027002419.2099708-1-nbryskin@gmail.com>
In-Reply-To: <20261027002419.2099708-1-nbryskin@gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 27 Oct 2026 11:53:28 +0800
X-Gm-Features: AclHuK9fP-f3Hs_1VqqYwtoVLd1mzJ767fSZbB5u4Nm7cGL3-Cn95lyNs_2rirg
Message-ID: <CAGXv+5HiwX0R7a8gJeQMbZOB=AYEDUanD5ry6y0-X=wqO57RKg@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: rk3588: keep the OTP gates shared with the
 secure world on
To: Nikolay Bryskin <nbryskin@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>, 
	linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_205341_341525_3A3C160E 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -2.4 (--)
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
X-Spam-Status: No, score=-19.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCBPY3QgMjcsIDIwMjYgYXQgODoyOOKAr0FNIE5pa29sYXkgQnJ5c2tpbiA8bmJyeXNr
aW5AZ21haWwuY29tPiB3cm90ZToKPgo+IFRoZSBzZWN1cmUgT1RQIGNvbnRyb2xsZXIgKE9UUENf
Uykgc2hhcmVzIHRocmVlIGNsb2NrIGdhdGVzIGluCj4gQ1JVX0NMS0dBVEVfQ09OMTggd2l0aCB0
aGUgbm9uLXNlY3VyZSBvbmU6IGNsa19vdHBjX2FyYiwKPiBjbGtfb3RwY19hdXRvX3JkX2cgYW5k
IGNsa19vdHBfcGh5X2cuIFRoZSBrZXJuZWwgdHJlYXRzIHRoZW0gYXMgb3JkaW5hcnkKPiBnYXRl
czogY2xrX290cGNfYXV0b19yZF9nIGlzIGRpc2FibGVkIGFzIHVudXNlZCBhdCB0aGUgZW5kIG9m
IGJvb3QsIGFuZAo+IHRoZSByb2NrY2hpcC1vdHAgbnZtZW0gZHJpdmVyIGVuYWJsZXMgY2xrX290
cGNfYXJiIGFuZCBjbGtfb3RwX3BoeV9nCj4gYXJvdW5kIGVhY2ggcmVhZCBhbmQgZGlzYWJsZXMg
dGhlbSBhZ2FpbiBhZnRlcndhcmRzLgo+Cj4gRmlybXdhcmUgaW4gdGhlIHNlY3VyZSB3b3JsZCAo
T1AtVEVFIHJlYWRzIGl0cyBoYXJkd2FyZSB1bmlxdWUga2V5IGFuZAo+IHRoZSBzZWN1cmUgYm9v
dCBzdGF0ZSBmcm9tIE9UUENfUywgYW5kIHByb2dyYW1zIHRoZW0pIGhhcyBubyB3YXkgdG8gdGFr
ZQo+IGEgcmVmZXJlbmNlIG9uIHRoZXNlIGNsb2Nrcy4gT25jZSBMaW51eCBoYXMgZ2F0ZWQgdGhl
bSwgZXZlcnkgc2VjdXJlIE9UUAo+IGFjY2VzcyB0aW1lcyBvdXQsIGFuZCBhIG5vcm1hbC13b3Js
ZCBudm1lbSByZWFkIG9uIGFub3RoZXIgQ1BVIGNhbiBnYXRlCj4gdGhlbSBpbiB0aGUgbWlkZGxl
IG9mIGEgc2VjdXJlIGFjY2VzcywgaW5jbHVkaW5nIGEgZnVzZSBwcm9ncmFtbWluZwo+IGN5Y2xl
Lgo+Cj4gTWFyayB0aGUgdGhyZWUgZ2F0ZXMgY3JpdGljYWwgc28gdGhlIG5vcm1hbCB3b3JsZCBu
ZXZlciB0dXJucyB0aGVtIG9mZi4KPiBUaGV5IGFyZSAyNCBNSHogZ2F0ZXMgZm9yIHRoZSBPVFAg
YmxvY2sgb25seS4KCklmIE9QVEVFIG5lZWRzIHNvbWUgcmVzb3VyY2VzIGtlcHQgb25saW5lLCBt
YXliZSB0aGUgT1BURUUgRFQgbm9kZSBzaG91bGQKaGF2ZSBhIHJlZmVyZW5jZSB0byB0aGVtPwoK
T3RoZXJ3aXNlIGV2ZXJ5b25lIGlzIGp1c3QgcGxheWluZyB3aGFjay1hLW1vbGUgaW4gZWFjaCBz
ZXBhcmF0ZSBkcml2ZXIuCkFuZCBmb3IgZm9sa3MgdGhhdCBkb24ndCBoYXZlIE9QVEVFLCBpdCdz
IGEgcG90ZW50aWFsIHdhc3RlIG9mIHBvd2VyLgoKCkNoZW5ZdQoKPiBMaW5rOiBodHRwczovL2dp
dGh1Yi5jb20vT1AtVEVFL29wdGVlX29zL3B1bGwvODAzNAo+IFNpZ25lZC1vZmYtYnk6IE5pa29s
YXkgQnJ5c2tpbiA8bmJyeXNraW5AZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Nsay9yb2Nr
Y2hpcC9jbGstcmszNTg4LmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1yazM1ODguYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazM1ODguYwo+IGlu
ZGV4IDI0YmFhMGVmOWJmMy4uOGUwZjQwOGZkZmFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay1yazM1ODguYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1y
azM1ODguYwo+IEBAIC0xMTU4LDExICsxMTU4LDExIEBAIHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBf
Y2xrX2JyYW5jaCByazM1ODhfZWFybHlfY2xrX2JyYW5jaGVzW10gX19pbml0ZGF0YSA9IHsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICBSSzM1ODhfQ0xLR0FURV9DT04oMTgpLCA5LCBHRkxBR1Mp
LAo+ICAgICAgICAgR0FURShDTEtfT1RQQ19OUywgImNsa19vdHBjX25zIiwgInhpbjI0bSIsIDAs
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgUkszNTg4X0NMS0dBVEVfQ09OKDE4KSwgMTAsIEdG
TEFHUyksCj4gLSAgICAgICBHQVRFKENMS19PVFBDX0FSQiwgImNsa19vdHBjX2FyYiIsICJ4aW4y
NG0iLCAwLAo+ICsgICAgICAgR0FURShDTEtfT1RQQ19BUkIsICJjbGtfb3RwY19hcmIiLCAieGlu
MjRtIiwgQ0xLX0lTX0NSSVRJQ0FMLAo+ICAgICAgICAgICAgICAgICAgICAgICAgIFJLMzU4OF9D
TEtHQVRFX0NPTigxOCksIDExLCBHRkxBR1MpLAo+IC0gICAgICAgR0FURShDTEtfT1RQX1BIWV9H
LCAiY2xrX290cF9waHlfZyIsICJ4aW4yNG0iLCAwLAo+ICsgICAgICAgR0FURShDTEtfT1RQX1BI
WV9HLCAiY2xrX290cF9waHlfZyIsICJ4aW4yNG0iLCBDTEtfSVNfQ1JJVElDQUwsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgUkszNTg4X0NMS0dBVEVfQ09OKDE4KSwgMTMsIEdGTEFHUyksCj4g
LSAgICAgICBHQVRFKENMS19PVFBDX0FVVE9fUkRfRywgImNsa19vdHBjX2F1dG9fcmRfZyIsICJ4
aW4yNG0iLCAwLAo+ICsgICAgICAgR0FURShDTEtfT1RQQ19BVVRPX1JEX0csICJjbGtfb3RwY19h
dXRvX3JkX2ciLCAieGluMjRtIiwgQ0xLX0lTX0NSSVRJQ0FMLAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIFJLMzU4OF9DTEtHQVRFX0NPTigxOCksIDEyLCBHRkxBR1MpLAo+Cj4gICAgICAgICBH
QVRFKFBDTEtfU0FSQURDLCAicGNsa19zYXJhZGMiLCAicGNsa190b3Bfcm9vdCIsIDAsCj4gLS0K
PiAyLjU2LjAKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
