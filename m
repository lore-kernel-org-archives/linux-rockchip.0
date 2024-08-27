Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B1AAC54735
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwwEMTfSXpWQV7wRx6Z9vQor2V6TkWVYvY4LZOoEUG4=; b=I4CnWh7yoshGFV
	UzT6ylAHaRYmhiNLfeUjxPQLgJUTxGRQz4xtcefrTPraRHIek9Il/apgT0doDlLWAvhD7OqkLZ2d2
	cKJuhXqUuxJB9F3+pwt4UIhJkbdCl0vzZdhkXgw7zxgIbGAxbQNSXydNp1gKVch6rNx4Nes2UJ/w7
	WAz2TuBNL/oZCfq24Q+tn+h0z0Mwa6J97OUqSzHacJAlIfqhcPZViOyLLAYEmFvg9C8SWmCrMtG8y
	1/sATsoyseIbgBqA1iZxPXZazU32Ct+DRMK3j1EnKeXXIYVUtVZMo1XwgDzrW0LOq9f7RL2evw9ZX
	7g5ZRstskV4wnX3tYkbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitsv-0000000Atvm-04Ra;
	Tue, 27 Aug 2024 10:57:13 +0000
Received: from mail-yb1-f174.google.com ([209.85.219.174])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitri-0000000AtgJ-1vdx;
	Tue, 27 Aug 2024 10:56:00 +0000
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e11693fbebaso5615286276.3;
        Tue, 27 Aug 2024 03:55:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724756155; x=1725360955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qo2NMwoxAQ1U2hSpFIW4sKP1B7w0umymouG5LJGc8hU=;
        b=PpIfMNat7LCfIeWAUFz+sxL860hWDv16yygFhsqGfNEXfPJZ7ykDNP4MFcgUmMPj52
         Prezjy4CcP7tS17Vdn6WSpiObirAnJ0FTc5p8tQItHuVwsk9l3gINyBoAbBb6P5HNSfD
         F3hAp1xCnXL8iL0X5Cba7eUWi5R6YqjAJ3IETLkYXWE2UMpsXyBM9e+Z0pomjVE1PvfH
         QJ+22lb8HAqanZW9gZxpOj6VBpEq/Y2xVPLeYqAYOz1YqnpDqBGlNbumkHUUk6qWstRz
         g8NPn3eYguz3wmIZgHF9ArDRGUb+idlO1EFreIBlO3mzi5P1nnZAVDvhoFprh+Ngyuz4
         iL0g==
X-Forwarded-Encrypted: i=1; AJvYcCUeS8v9REwk88PjHoDdHkBXOA9zJcx054Y2eM3ipv8+YkPXjnzbJlBu7IcsCPlZyrKFSUMeKBhTW3ssWcjOzCU=@lists.infradead.org, AJvYcCUzLPRWqfrcBYIoMuoVKahcLTWmVPTVDAqzH4Em8e7OgA6/o442XzaYnBu5y8PVc54et3eBUE38iBlqtD3sjzdL@lists.infradead.org
X-Gm-Message-State: AOJu0Yweule/litORvYIGf9Ycf08BKsHklgihIFuZnZjBImJYYV+DlWf
	n/ceaar1+miId3rzTZ1vRB23WUvuioR0487iWwlJ5Sli/M8RoeXEN8LXTYx7
X-Google-Smtp-Source: AGHT+IFSUG/L7DKmbOvrCvebj5G/qDjg876Mvoe/pzhifg+Rtv4DcBIWBA5uO9vsCUv3HbxYm5ITeQ==
X-Received: by 2002:a05:6902:842:b0:e13:dfdc:d856 with SMTP id 3f1490d57ef6-e1a2a38d2c7mr2848730276.0.1724756155553;
        Tue, 27 Aug 2024 03:55:55 -0700 (PDT)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com. [209.85.128.176])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e178e4b3972sm2470423276.30.2024.08.27.03.55.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 03:55:54 -0700 (PDT)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6c130ffa0adso54028347b3.3;
        Tue, 27 Aug 2024 03:55:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWJEIjTIoFSEPiKkIG+fx2f1vUN1TVIUEYDiXyzvL3Qrg/2SJh25cLUAW8nwAXkVrQrNeD17sUZnK+1V3wj8Kg=@lists.infradead.org, AJvYcCWK00ZnLHesoDqPNte3qt6KIbbu9Kj5DyPvN6DxbXYCtrUZSzaGHhqqhjZ5UV8F6ew573aaxwHBIIKTOWjXuArX@lists.infradead.org
X-Received: by 2002:a05:690c:9e:b0:6b2:28c3:b706 with SMTP id
 00721157ae682-6cfbb6fe00dmr29288707b3.34.1724756154320; Tue, 27 Aug 2024
 03:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
 <20240823-cleanup-h-guard-pm-domain-v1-9-8320722eaf39@linaro.org>
 <CAMuHMdV0R0+u1eCiUOHhL5w-wzge9KhgyumJSd28oF9kQmnx_Q@mail.gmail.com>
 <a48f1a0b-0e20-4782-bf6b-c430da9ae391@linaro.org> <58f5d332-2f2a-4607-9662-e71fd23b1316@linaro.org>
In-Reply-To: <58f5d332-2f2a-4607-9662-e71fd23b1316@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Aug 2024 12:55:40 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUQ5AD1QoO5F1nAy+GJoGtbi2ztKfK=2buU1MNeO8etJw@mail.gmail.com>
Message-ID: <CAMuHMdUQ5AD1QoO5F1nAy+GJoGtbi2ztKfK=2buU1MNeO8etJw@mail.gmail.com>
Subject: Re: [PATCH 09/10] pmdomain: renesas: rcar-gen4-sysc: Use scoped
 device node handling to simplify error paths
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_035558_523268_1D1CA2C8 
X-CRM114-Status: GOOD (  36.94  )
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

SGkgS3J6eXN6dG9mLAoKT24gVHVlLCBBdWcgMjcsIDIwMjQgYXQgMTE6MznigK9BTSBLcnp5c3p0
b2YgS296bG93c2tpCjxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+IE9u
IDI3LzA4LzIwMjQgMTE6MzMsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiBPbiAyNy8w
OC8yMDI0IDA5OjQ4LCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPj4gT24gRnJpLCBBdWcg
MjMsIDIwMjQgYXQgMjo1MeKAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPiA+PiA8a3J6eXN6dG9m
Lmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Pj4gT2J0YWluIHRoZSBkZXZpY2Ugbm9k
ZSByZWZlcmVuY2Ugd2l0aCBzY29wZWQvY2xlYW51cC5oIHRvIHJlZHVjZSBlcnJvcgo+ID4+PiBo
YW5kbGluZyBhbmQgbWFrZSB0aGUgY29kZSBhIGJpdCBzaW1wbGVyLgo+ID4+Pgo+ID4+PiBTaWdu
ZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFy
by5vcmc+Cj4gPj4KPiA+PiBUaGFua3MgZm9yIHlvdXIgcGF0Y2ghCj4gPj4KPiA+Pj4gLS0tIGEv
ZHJpdmVycy9wbWRvbWFpbi9yZW5lc2FzL3JjYXItZ2VuNC1zeXNjLmMKPiA+Pj4gKysrIGIvZHJp
dmVycy9wbWRvbWFpbi9yZW5lc2FzL3JjYXItZ2VuNC1zeXNjLmMKPiA+Pj4gQEAgLTMwMywxMiAr
MzA0LDEyIEBAIHN0YXRpYyBpbnQgX19pbml0IHJjYXJfZ2VuNF9zeXNjX3BkX2luaXQodm9pZCkK
PiA+Pj4gICAgICAgICBjb25zdCBzdHJ1Y3QgcmNhcl9nZW40X3N5c2NfaW5mbyAqaW5mbzsKPiA+
Pj4gICAgICAgICBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsKPiA+Pj4gICAgICAg
ICBzdHJ1Y3QgcmNhcl9nZW40X3BtX2RvbWFpbnMgKmRvbWFpbnM7Cj4gPj4+IC0gICAgICAgc3Ry
dWN0IGRldmljZV9ub2RlICpucDsKPiA+Pj4gICAgICAgICB2b2lkIF9faW9tZW0gKmJhc2U7Cj4g
Pj4+ICAgICAgICAgdW5zaWduZWQgaW50IGk7Cj4gPj4+ICAgICAgICAgaW50IGVycm9yOwo+ID4+
Pgo+ID4+PiAtICAgICAgIG5wID0gb2ZfZmluZF9tYXRjaGluZ19ub2RlX2FuZF9tYXRjaChOVUxM
LCByY2FyX2dlbjRfc3lzY19tYXRjaGVzLCAmbWF0Y2gpOwo+ID4+PiArICAgICAgIHN0cnVjdCBk
ZXZpY2Vfbm9kZSAqbnAgX19mcmVlKGRldmljZV9ub2RlKSA9Cj4gPj4+ICsgICAgICAgICAgICAg
ICBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5VTEwsIHJjYXJfZ2VuNF9zeXNjX21h
dGNoZXMsICZtYXRjaCk7Cj4gPj4KPiA+PiBUaGlzIGJyZWFrcyB0aGUgZGVjbGFyYXRpb25zL2Js
YW5rLWxpbmUvY29kZSBzdHJ1Y3R1cmUsIHNvIHBsZWFzZSBtb3ZlCj4gPj4gdGhpcyB1cC4KPiA+
Cj4gPiBXaGF0IGRvIHlvdSBtZWFuICJkZWNsYXJhdGlvbiBzdHJ1Y3R1cmUiPyBUaGF0J3MgdGhl
IHdheSBob3cgdmFyaWFibGVzCgpGaXJzdCBhIGJsb2NrIHdpdGggZGVjbGFyYXRpb25zLCB0aGVu
IGEgYmxhbmsgbGluZSwgZm9sbG93ZWQgYnkgdGhlIGFjdHVhbCBjb2RlCih5ZWFoLCB0aGUgcHJl
LUM5OSBzdHlsZSA7LSkKCj4gPiB3aXRoIGNvbnN0cnVjdG9ycyBhcmUgZXhwZWN0ZWQgdG8gYmUg
ZGVjbGFyZWQgLSB3aXRoaW4gdGhlIGNvZGUuCgpXaGVuIGl0IG1hdHRlcnMuCgo+IENvbnRpbnVp
bmcgdGhvdWdodHMsIHNvIHlvdSBwcmVmZXI6Cj4KPiAgICAgICAgIHN0cnVjdCByY2FyX2dlbjRf
cG1fZG9tYWlucyAqZG9tYWluczsKPiAgICAgICAgIHZvaWQgX19pb21lbSAqYmFzZTsKPiAgICAg
ICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgX19mcmVlKGRldmljZV9ub2RlKSA9Cj4gICAgICAg
ICAgICAgICAgIG9mX2ZpbmRfbWF0Y2hpbmdfbm9kZV9hbmRfbWF0Y2goTlVMTCwgcmNhcl9nZW40
X3N5c2NfbWF0Y2hlcywgJm1hdGNoKTsKPgo+IChhc3N1bWluZyBJIHdpbGwgcHV0IGl0IGF0IHRo
ZSBlbmQgb2YgZGVjbGFyYXRpb25zKS4KPgo+IEFyZSB5b3Ugc3VyZSB0aGlzIGlzIG1vcmUgcmVh
ZGFibGU/IEl0J3MgcmVhbGx5IGxvbmcgbGluZSBzbyBpdAo+IG9iZnVzY2F0ZXMgYSBiaXQgdGhl
IGRlY2xhcmF0aW9ucy4gVGhlIHBvaW50IG9mIHRoZSBzY29wZWQgYXNzaWdubWVudCBpcyB0aGF0
Cj4geW91IGRlY2xhcmUgaXQgYXQgcG9pbnQgb2YgbmVlZC9maXJzdCB1c2UuCgpZb3UncmUgbWlz
c2luZyByZXZlcnNlIENocmlzdG1hcyB0cmVlIG9yZGVyLi4uCgo+ID4+IElmIHlvdSBpbnNpc3Qg
b24ga2VlcGluZyBhc3NpZ25tZW50IHRvIGFuZCB2YWxpZGF0aW9uIG9mIG5wIHRvZ2V0aGVyLAo+
ID4+IHRoZSBsaW5lIHNob3VsZCBiZSBzcGxpdCBpbiBkZWNsYXJhdGlvbiBhbmQgYXNzaWdubWVu
dC4KPiA+Cj4gPiBObywgdGhhdCB3b3VsZCBiZSBpbmNvbnNpc3RlbnQgd2l0aCBjbGVhbnVwL2Nv
bnN0cnVjdG9yIGNvZGluZyBzdHlsZS4KPiA+IE1heWJlIHRoaXMgaXMgc29tZXRoaW5nIG5ldywg
c28gbGV0IG1lIGJyaW5nIHByZXZpb3VzIGRpc2N1c3Npb25zOgoKWy4uLl0KCj4gPiBhbmQgZmlu
YWxseSBpdCB3aWxsIHJlYWNoIGRvY3VtZW50YXRpb24gKGFsdGhvdWdoIGl0IGZvY3VzZXMgb24K
Ck9oLCAiZmluYWxseSIgYXMgaW4gbm90IHlldCB1cHN0cmVhbSA7LSkKCj4gPiB1bndpbmRpbmcg
cHJvY2VzcyB0byBiZSBzcGVjaWZpYyAtICJXaGVuIHRoZSB1bndpbmQgb3JkZXIgLi4uIik6Cj4g
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMTcxMTc1NTg1NzE0LjIxOTI5NzIuMTI2NjE2
NzU4NzYzMDAxNjc3NjIuc3RnaXRAZHdpbGxpYTIteGZoLmpmLmludGVsLmNvbS8KCiJXaGVuIHRo
ZSB1bndpbmQgb3JkZXIgbWF0dGVycy4uLiIKClNvIGl0J3MgcGVyZmVjdGx5IGZpbmUgdG8gaGF2
ZToKCiAgICBzdGF0aWMgaW50IF9faW5pdCByY2FyX2dlbjRfc3lzY19wZF9pbml0KHZvaWQpCiAg
ICB7CiAgICAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgX19mcmVlKGRldmljZV9ub2Rl
KSA9IE5VTEw7CiAgICAgICAgICAgIHN0cnVjdCByY2FyX2dlbjRfcG1fZG9tYWlucyAqZG9tYWlu
czsKICAgICAgICAgICAgY29uc3Qgc3RydWN0IHJjYXJfZ2VuNF9zeXNjX2luZm8gKmluZm87CiAg
ICAgICAgICAgIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgKm1hdGNoOwogICAgICAgICAgICB2
b2lkIF9faW9tZW0gKmJhc2U7CiAgICAgICAgICAgIHVuc2lnbmVkIGludCBpOwogICAgICAgICAg
ICBpbnQgZXJyb3I7CgogICAgICAgICAgICBucCA9IG9mX2ZpbmRfbWF0Y2hpbmdfbm9kZV9hbmRf
bWF0Y2goTlVMTCwKcmNhcl9nZW40X3N5c2NfbWF0Y2hlcywgJm1hdGNoKTsKICAgICAgICAgICAg
aWYgKCFucCkKICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKCiAgICAgICAgICAg
IC4uLgogICAgfQoKQnV0IG15IGZpcnN0IHN1Z2dlc3Rpb246CgogICAgc3RhdGljIGludCBfX2lu
aXQgcmNhcl9nZW40X3N5c2NfcGRfaW5pdCh2b2lkKQogICAgewogICAgICAgICAgICBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wIF9fZnJlZShkZXZpY2Vfbm9kZSkgPQogICAgICAgICAgICAgICAgICAg
IG9mX2ZpbmRfbWF0Y2hpbmdfbm9kZV9hbmRfbWF0Y2goTlVMTCwKcmNhcl9nZW40X3N5c2NfbWF0
Y2hlcywgJm1hdGNoKTsKICAgICAgICAgICAgc3RydWN0IHJjYXJfZ2VuNF9wbV9kb21haW5zICpk
b21haW5zOwogICAgICAgICAgICBjb25zdCBzdHJ1Y3QgcmNhcl9nZW40X3N5c2NfaW5mbyAqaW5m
bzsKICAgICAgICAgICAgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7CiAgICAgICAg
ICAgIHZvaWQgX19pb21lbSAqYmFzZTsKICAgICAgICAgICAgdW5zaWduZWQgaW50IGk7CiAgICAg
ICAgICAgIGludCBlcnJvcjsKCiAgICAgICAgICAgIGlmICghbnApCiAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9ERVY7CgogICAgICAgICAgICAuLi4KICAgIH0KCmlzIHNhZmVyIHcuci50
LiB0byBmdXR1cmUgbW9kaWZpY2F0aW9uLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAg
ICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxv
dHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNv
bmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEg
aGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJw
cm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
