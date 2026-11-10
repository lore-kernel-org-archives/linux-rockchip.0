Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A7C606A320
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 15:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RcGRu2bh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ouLOLSrb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ECGoK66EGlUnA7UnWl9JU6dOcCrca8B80MgRsLbon6Q=; b=RcGRu2bhc61AIoljusv/4pdpqc
	UNjV/MAlKkH06J7UCOGMh9y2ZV5ZUSKd3+VrkLMP9DzYuzhVgdPB+Jdx7opCQ4k4wlY+oG8nT22/J
	RRuA3U8MCno7iAVzVbK4p9r11cYI4bc/DQTKC/RVqtVCyNTQJFjeIQPzHHwxNrUdLwvmFG2Pw4c8r
	3qGrwMVylFQzf7aFJ8m3MNSqUkBOPxLMKY8aSUZtwvnMnt6VMYp1iD0s/t9PBsBbk6ENDrX0fFBIb
	3rL4S7cfzINyt2LO+r6d9Ek0vFPNWC1RgmmvDvl47p3bFmeq/yqzdNqteRRjFoG89ZSbjBiqLiFAy
	QEOVV+RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQoE9-00000004SkW-37pC;
	Tue, 10 Nov 2026 15:57:41 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQoE5-00000004SiD-3NDO
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 15:57:40 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c50515c3ba6so45817666b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 07:57:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794326255; cv=none;
        d=google.com; s=arc-20260327;
        b=rQ0LWBtrXXr7yFsmeSN1gyacATMM9w0V2q0nIUqHt4SuySV9TQYLq8tY3XMT7LYVxc
         FRGSBlxkYv5XyQBGplXgbmX/iQOWulRQISIoXQW20OJApLIebYL3HRIsinUcaLjPlJPR
         kDuPFfN/YQriQIHWddivznLmPN20iVdvDfo7sjgj5xNv9KCye8buLEGhq5Dr/aAqL+7r
         kr7BePtR5Frzq9gtFgGFXKw+8FlFq2vCCgXrmsfAWbKOmBVCVT7SkjLrOygnvPFMwIPn
         LG8wFpXHs6NFbLHa7CUWTx8VUWuHdxbQe9uEPYSHpTB5xOkmeD05raMMbjosGGBi79it
         3mBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AqOIoaAagfF8f+5anLVjn5ybzEQ34T4RWG7tiFaGW54=;
        fh=eibkVUIsYrWlr/CW6nloV++zNVnO7x8fjv5tpfuh+Cc=;
        b=cCeoraQKzx7iyMblwvBRYpHrQr8FLST+Fsap4GgxRzS0ZHJEZl9RSM6x0emCDWjKQo
         6OupmL3CSzbi7rRRHo9pde+kKSCB7e/Cbxrg5UrCuTb2h9E8NSnYrkF4+UVXNwNgvYKj
         c4mZwkn8a2DJ7MujX1XhhAEzyKS1/WaAvYfd9kuk75jRcH5HCDG8aiDtqpNcoYq4tdYv
         nKRsvhcsLEHt9W9pad4OXz188iYR435eGdJQ7UJDN9tCezx30BgYz6bq2TVnwAUHWnux
         Qhu7QKjkDLhqxqKftvnqD267+KNBwpksdOyJbwe0UGzNpbyXmkvG2YqNohSQlN7yWx/s
         SwSg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794326255; x=1794931055; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=AqOIoaAagfF8f+5anLVjn5ybzEQ34T4RWG7tiFaGW54=;
        b=ouLOLSrbqN3cUxmpUe5woK8R3DnDSx2ip//hr9paceeLyG+YVeGe3a88Nwr/8+AP3K
         iL6xnQBpsbOaoA3VaTDvzyWYEpeNo6qXlAWhbLBFVzVKm2YjhYk1lQADY6ui+pVPesrW
         Jf56y+b05jTCzgfYsoH5zLcG+gVGyq2iBERdMh9Gwk6tzmSq2Ie/Mk51VkoQQn0Jz/71
         Qp4scWjWPO9jnoCGe1LOLAIbMmY8n1ODaXuO55g8+Z9MkaW6NIjJXZ+nnuQ9FqEZ+YTe
         vXnX2Rm0QjXyZGuY0pePWqg8NKFHC6ZML568JDH/3d5PGqHEe2xxqBHrCgpnrZWfrfXC
         IkTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794326255; x=1794931055;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AqOIoaAagfF8f+5anLVjn5ybzEQ34T4RWG7tiFaGW54=;
        b=F9IiCOrA5my1sdfx14p9Dv0mBb9O1UQlDeuCTlS8MoJl1MfdYoH8Ifl7hfn1kBehRa
         uSlH25NNy6Gw1zJ0ZrKO167AFkpuvpks0d/i6HE6M+3ebP446xqNhLUGCuL9XHbsd8SM
         hApQiyCOf6DLNsCU5bUKkEPwpNlD4k/qBXe5HnS95DqMcLxNM+y95s5TlR81mph+ruXr
         SlG5bOP8JxvrwcJgg99MFTOEEpXiLaWNWtQ1JLOs1Myq9xm6m1tIQrf5rsEnd81oSEKN
         DCcA1xgoiluik/mfPD7JH4kbAGzCasFAgzBGsXlo5Dfg7+SbnwcALN+wijbO5yfJZtu9
         YUyQ==
X-Forwarded-Encrypted: i=1; AL+hErGbbRpGk9LnmSvzEn2k347xyHYrsuD0+QrxlUqbLO0OECFDOi7kkX6f6lmQL5MRuDomiFy+Wx6g5nbK/7lSdw==@lists.infradead.org
X-Gm-Message-State: APuU4Z93R7SVSxcDx261O8Lugu89WyTvSy/TMIi0reHFFYrIzLbTpTp6
	e+lHPooQ08QB7UFQenOAnnmc8c4r8wyJdGVAt2XdJDMk3ckRz7NO78zU88uzG0KNpxcWepgGI+Q
	uRF3s63FsQpE/+zWWfQs1jvhyUg3PJyAO/23Qxp54AA==
X-Gm-Gg: AYBFou09+S8ZU/g6veul4Qchwad18YtkqtUgup20JIkmG0TKIVvHsP5r5uVayZwdJIH
	PzgqhTDNYawnEM0Bm52/z6e7gfr+Bz4CAKDV8AxxZkBPlXEDvg0ddYakRARTFhCSG8bCvqF74XM
	Kndu0mO18yExeLzKxVhxTQNgjqV0HAqjCOARTAx55l4HSusHddhTCfM4LGll5OTwubj5ydVwSP8
	QAvYuVM06k712Kjz9awIlsk1zWDVNiQ3PC83woIMhztY1p8qflREKjIl9eg7qdcAgNVuXNUleDy
	vHKfApuXPpBg/tfVn/HEJar4z/KMCSHX1G2skQp3HAT3Tjizh0ewicGkRLELMO4mOo4pKmElbFZ
	Wl6sMhstLx73iAbdnRCixRLmwMvHHabYIytEPV13U5H+I79sTfEY9WX9GoupseVPCu0pBVD2E
X-Received: by 2002:a17:906:f58d:b0:c46:7ec3:fdfc with SMTP id
 a640c23a62f3a-c5049655093mr330817366b.34.1794326255020; Tue, 10 Nov 2026
 07:57:35 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261102212506.3348537-1-coiaprant@gmail.com> <20261102212506.3348537-4-coiaprant@gmail.com>
 <1754e4c8-3b6e-4983-a7fb-d3444c1156c1@redhat.com>
In-Reply-To: <1754e4c8-3b6e-4983-a7fb-d3444c1156c1@redhat.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 10 Nov 2026 23:57:21 +0800
X-Gm-Features: AclHuK8jzcDwnWHZT9BxNPqc1Y_PBqiAP6DVGP8roGJ07xtaPAuYBnsbVsZu0DY
Message-ID: <CALj3r0h5yTq41tQnGo4ECCmoAx5_2B7VFkYq62aA8e+qjKJ0tA@mail.gmail.com>
Subject: Re: [PATCH net v3 2/2] net: pcs: xpcs: make supported_interfaces authoritative
To: Paolo Abeni <pabeni@redhat.com>
Cc: Jakub Kicinski <kuba@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>, 
	Mengyuan Lou <mengyuanlou@net-swift.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Heiko Stuebner <heiko@sntech.de>, Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
	Fabio Baltieri <fabio.baltieri@gmail.com>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_075737_887386_08748418 
X-CRM114-Status: GOOD (  18.13  )
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
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

UGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPiDkuo4yMDI25bm0MTHmnIgxMOaXpeWRqOS6
jCAyMjo0MeWGmemBk++8mgo+Cj4gT24gMTEvMi8yNiAyMjoyNSwgQ29pYSBQcmFudCB3cm90ZToK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYyBiL2RyaXZlcnMv
bmV0L3Bjcy9wY3MteHBjcy1yay5jCj4gPiBpbmRleCA2ZjBhMTEwZTMyZDIuLjI1ZmRjOWM2Yjcy
YyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jCj4gPiArKysg
Yi9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYwo+ID4gQEAgLTQ4Myw2ICs0ODMsNyBAQCBz
dHJ1Y3QgZHdfeHBjcyAqeHBjc19ya19jcmVhdGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKnBjcywgaW50Cj4gPiAgICAgICBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2Owo+ID4gICAgICAgc3RydWN0IGR3X3hwY3NfcmsgKnB4cGNzOwo+ID4gICAgICAgc3RydWN0
IGR3X3hwY3MgKnhwY3M7Cj4gPiArICAgICBERUNMQVJFX1BIWV9JTlRFUkZBQ0VfTUFTS19aRVJP
KHN1cHBvcnRlZF9pbnRlcmZhY2VzKTsKPgo+IFBsZWFzZSByZXNwZWN0IHRoZSByZXZlcnNlIGNo
cmlzdG1hcyB0cmVlIG9yZGVyIGFib3ZlLgo+Cj4gPgo+ID4gICAgICAgaWYgKCFvZl9kZXZpY2Vf
aXNfYXZhaWxhYmxlKHBjcykpCj4gPiAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9E
RVYpOwo+ID4gQEAgLTUzNiw2ICs1MzcsMTUgQEAgc3RydWN0IGR3X3hwY3MgKnhwY3NfcmtfY3Jl
YXRlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9ub2RlICpwY3MsIGludAo+ID4g
ICAgICAgICAgICAgICByZXR1cm4geHBjczsKPiA+ICAgICAgIH0KPiA+Cj4gPiArICAgICAvKgo+
ID4gKyAgICAgICogVGhlIFJLMzU2OCBYUENTIHN1cHBvcnRzIDEwMDBCQVNFLVgsIFNHTUlJIGFu
ZCBRU0dNSUkuCj4gPiArICAgICAgKi8KPiA+ICsgICAgIF9fc2V0X2JpdChQSFlfSU5URVJGQUNF
X01PREVfMTAwMEJBU0VYLCBzdXBwb3J0ZWRfaW50ZXJmYWNlcyk7Cj4gPiArICAgICBfX3NldF9i
aXQoUEhZX0lOVEVSRkFDRV9NT0RFX1NHTUlJLCBzdXBwb3J0ZWRfaW50ZXJmYWNlcyk7Cj4gPiAr
ICAgICBfX3NldF9iaXQoUEhZX0lOVEVSRkFDRV9NT0RFX1FTR01JSSwgc3VwcG9ydGVkX2ludGVy
ZmFjZXMpOwo+Cj4gU2FzaGlrbyB0aGlua3MgdGhpcyBsYXN0IHN0YXRlbWVudCBpcyBhIG5vIG9w
Ogo+Cj4gaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3BhdGNoc2V0
LzIwMjYxMTAyMjEyNTA2LjMzNDg1MzctMS1jb2lhcHJhbnRAZ21haWwuY29tCj4KPiBJIGRvbid0
IHRoaW5rIHRoaXMgaXMgJ25ldCcgbWF0ZXJpYWwsIEkgc3VnZ2VzdCByZXN1Ym1pdHRpbmcgZm9y
Cj4gbmV0LW5leHQuCj4KPiAvUAoKSGkgUGFvbG8sCgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgox
LiBSZXZlcnNlIENocmlzdG1hcyB0cmVlOiBNeSBiYWQsIEkgd2lsbCBtb3ZlIHRoZQogICBgREVD
TEFSRV9QSFlfSU5URVJGQUNFX01BU0tfWkVST2AgZGVjbGFyYXRpb24gdG8gdGhlIHRvcCBvZiB0
aGUKICAgZnVuY3Rpb24gdG8gY29tcGx5IHdpdGggdGhlIHZhcmlhYmxlIG9yZGVyaW5nLgoKMi4g
UVNHTUlJIG5vLW9wOiBTYXNoaWtvIGlzIHJpZ2h0LCBpdCBpcyBjdXJyZW50bHkgYSBuby1vcC4g
VGhlIGNvcmUncwogICBjb21wYXQgdGFibGUgZG9lcyBub3QgaGF2ZSBhbiBlbnRyeSBmb3IgUVNH
TUlJLCBzbyB0aGUgaW50ZXJzZWN0aW9uCiAgIChwaHlfaW50ZXJmYWNlX2FuZCkgZmlsdGVycyBp
dCBvdXQuIFRoaXMgYWN0dWFsbHkgZGVtb25zdHJhdGVzIHRoZQogICBpbnRlbmRlZCBiZWhhdmlv
ciBwZXJmZWN0bHk6IHRoZSBnbHVlIHJlcG9ydHMgd2hhdCB0aGUgaGFyZHdhcmUgY2FuCiAgIGRv
LCBhbmQgdGhlIGNvcmUgZmlsdGVycyBpdCBiYXNlZCBvbiB3aGF0IGl0IGFjdHVhbGx5IHN1cHBv
cnRzLiBJZgogICB0aGUgY29yZSBhZGRzIFFTR01JSSBzdXBwb3J0IGluIHRoZSBmdXR1cmUsIHRo
ZSBnbHVlIHdpbGwKICAgYXV0b21hdGljYWxseSBwaWNrIGl0IHVwLiBJJ2xsIGFkZCBhIGJyaWVm
IG5vdGUgaW4gdGhlIGNvbW1pdAogICBtZXNzYWdlIHRvIGNsYXJpZnkgdGhpcy4KCjMuIFRyZWUg
c2VsZWN0aW9uOiBVbmRlcnN0b29kLiBJIHdpbGwgcmViYXNlIGFuZCByZXN1Ym1pdCB0aGUgc2Vy
aWVzCiAgIGZvciBuZXQtbmV4dC4KCkNvaWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
