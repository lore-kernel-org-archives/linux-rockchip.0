Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E875C74A5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 16:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvVaZ7KuqQvqlVHulcs1DgItaKm4m3ygG1mdJGaOs1g=; b=vnbVCGH5CUegLK
	wOmXXTTt1M+ENJCbzhBRHrfndGDIWnIR6M/7BM8LCWcpymGnOxyS3kiqRO1vgZnyr8oa9im/utLT8
	i/8PJPP/+QwZWlZGZ/PNv3N5pX8iCia+JVhlNmQ4tHSPR9g8RHQbu4VFKLZwlutdA4YCCXZ5nUMRD
	rQpnfQTw53y9ivlXKNNjNR35nLi3f4SHm6H+QLlQ0mvO4gVnjBM4EJanHnwVductTEP8gpJZFsDh5
	0SG7biYRznhky9NtLJDG9gvQ+d6PTC2GFOVWvML1LSl5e0Fb6fypX0xiVBL/6BaC4qph1oQcwWfPa
	1xaVbb8+HCv5hAk5kigg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgTgF-008qQU-1g;
	Sun, 26 Mar 2023 16:57:19 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgTgB-008qPI-36;
	Sun, 26 Mar 2023 16:57:17 +0000
Received: by mail-wr1-x42c.google.com with SMTP id q19so3248577wrc.5;
        Sun, 26 Mar 2023 09:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679849831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b5QdxNjjZRZ0PDxQDn1YuSSVtqF8SC5453jOB4hYT5g=;
        b=k3sRQUiZjU5LJAwQvgLaAo8oHqjvzZ1Xiut5EtrtakbkKdg+fUoo9Nao+pranX0Klp
         HV9rsQryr1O9uVdPZzknU6rlIzV7aCrVPVXdQ2bQoEkB84YXhA8cMT6IxE+ZfVdxqc3z
         hJrETS9YFo6nw85i8U/u9FUJ6wjJx8jNeHugA7DAAE2JxHyTt3fRll9/NZ2qlWKl6xgT
         Wp43C7lBZg2Gmn7oQMZDp35ecpF1VKdbJM3QvrVrjvnU9iSZk5LIPYp2j8AV2b2CQ1Xt
         543OX3aKp/jkzbNt2rIsjb8DSIJizHIDb3pMxtKqK+mBEpCVk1Q0qRtdLw3aJmL2MXkS
         adeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679849831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b5QdxNjjZRZ0PDxQDn1YuSSVtqF8SC5453jOB4hYT5g=;
        b=7v+3ZKWK4xk6Md7fuBKpkHFpYeR4JwMcNFiEYVpoyy6phyuuHEfivcIhg3dl3vrU6b
         BVHldA+iIJo5rwdzJbkTwOF0N46Q6GFMKedvWEbdroyGPGcg2A5AMJDHvcXjWTxDN6w+
         6+cPnsVL9RdoSSJFkEph9Wt5BEunQkiiG/7IApA8ipHDnUZvd8jj5Y/07wSDSjrdFpVd
         2q2fxgfTNqxnJogTdK9JGsxBlg8ZzzdroUQwBnnJRTUWK/oZPemly5+Mhv8h1BsAkMCZ
         +NqPHnTXs5C9qQBmoGP3RuTvH83ffuw8IXJXto7mmthfFUoxsxHrT+a3Hy4yOX9hJCg5
         5xIA==
X-Gm-Message-State: AAQBX9e08vD+GRJkwVlU6E6YY9O7rVRwNzD12GjoB31Y0W5FjcnTHmRN
	nLTfRfkaaUoAI/7/XSZv598uSGDEH7KtPq87z3Q=
X-Google-Smtp-Source: AKy350ZQJxyFHb+gYWiDsIv/lZd04YiXPEsVLN4AhFyx1FayiiHaNfFXf94JSdtHVVCwz/tSBiobq0QujLGK4Y/nBWY=
X-Received: by 2002:a5d:59a6:0:b0:2cf:eff8:48a1 with SMTP id
 p6-20020a5d59a6000000b002cfeff848a1mr4501392wrr.2.1679849831193; Sun, 26 Mar
 2023 09:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com> <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
 <CABnpCuCzdbWTTp1Gc6wWPsB80J5GYw1QzKtZzzyEYU456E=1JA@mail.gmail.com> <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org>
In-Reply-To: <1b9c8e19-10f2-824d-9b50-51e7a9287bb1@linaro.org>
From: Shane Francis <bigbeeshane@gmail.com>
Date: Sun, 26 Mar 2023 17:57:00 +0100
Message-ID: <CABnpCuCKYBb_JBqBgMfjEvzUjkzQ6RgKbz9Ny78L+tPKs55wwQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_095715_996685_2DC1BC31 
X-CRM114-Status: GOOD (  21.68  )
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

SGkgS3J6eXN6dG9mCgpTbyBtZW50aW9uIHRoaXMgaW4gdGhlIGNvbW1pdCBtc2cuCgpPbiBTdW4s
IE1hciAyNiwgMjAyMyBhdCAzOjUx4oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraQo8a3J6eXN6dG9m
Lmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDI2LzAzLzIwMjMgMTQ6MDIsIFNo
YW5lIEZyYW5jaXMgd3JvdGU6Cj4gPj4gUGxlYXNlIHdyYXAgY29tbWl0IG1lc3NhZ2UgYWNjb3Jk
aW5nIHRvID4gPiBMaW51eCBjb2Rpbmcgc3R5bGUgLwo+ID4gc3VibWlzc2lvbgo+ID4KPiA+IFdp
bGwgZG8sIEkgaGF2ZW4ndCBzdWJtaXR0ZWQgcGF0Y2hlcyBmb3IgYSB3aGlsZSB0b3RhbGx5IGZv
cmdvdCB0aGUKPiA+IHdyYXBwaW5nIGd1aWRlbGluZXMKPiA+Cj4gPj4gVW5mb3J0dW5hdGVseSB0
aGUgcmVhc29uIGlzIG5vdCBnb29kIGVub3VnaCA+IGZvciBBQkkgYnJlYWsuIFJlcGxhY2UKPiA+
PiB2ZW5kb3IgYm9vdCB1Ym9vdHMgd2l0aCBvcGVuLXNvdXJjZSBvbmUgb3IgPiBqdXN0IGNvcnJl
Y3QgdGhlbSAoaXQncyBzdGlsbAo+ID4+IFUtQm9vdCBzbyBldmVuIGZvciB2ZW5kb3Igb25lIHlv
dSBoYXZlIHRoZSBzb3VyY2UpLgo+ID4KPiA+IFJlcGxhY2luZyB1Ym9vdCBpcyBmaW5lIGZvciB0
aGlzIGNhc2UsIGhvd2V2ZXIgSSBjYW4gZm9yZXNlZSB0aGF0IGNhbiBjYXVzZQo+ID4gaXNzdWVz
IGZ1cnRoZXIgZG93biB0aGUgbGluZS4KPiA+Cj4gPgo+ID4gMS4gTm8gdWJvb3Qgc291cmNlIGZy
b20gdGhlIHZlbmRvciwgd2UgYWxsIGtub3cgbm8gZXZlcnlvbmUgcmVzcGVjdHMgY29kZQo+ID4g
bGljZW5jaW5nCj4gPgo+ID4gMi4gU2VjdXJlIGVudmlyb25tZW50cyAobGlrZSBhbmRyb2lkIHRh
YmxlcyksIHRoaXMgY2hpcHNldCB3aWxsIGxpa2VseSBlbmQKPiA+IHVwIGluIGFuZHJvaWQgdGFi
bGV0cyB0aGF0IGhhdmUgdGhlIHNlY3VyZSBib290IGNoYWluIGVuYWJsZS4gVGhlc2Ugd2lsbCBi
ZQo+ID4gdW5hYmxlIHRvIHJlcGxhY2UgdWJvb3QgZXZlbiBpZiBzb3VyY2UgaXMgYXZhaWxhYmxl
Lgo+Cj4gU28gbWVudGlvbiB0aGlzIGluIHRoZSBjb21taXQgbXNnLgo+Cj4gPgo+ID4gQXMgdGhp
cyBTb0MgaXMgbmV3IHRvIHRoZSBMaW51eCBrZXJuZWwgKG5vdCBldmVuIHVzZWFibGUgZm9yIG11
Y2ggaXQncwo+ID4gY3VycmVudCBzdGF0ZSkgd291bGQgaXQgbm90IGJlIGJldHRlciB0byBhbGlu
ZyBvbiB0aGlzIHNvIHZlbmRvciBhbmQKPiA+IG1haW5saW5lIERUUyAiYWdyZWUiIG5vdyByYXRo
ZXIgdGhhbiBwb3NzaWJseSBoYXZlIHRvIGFkZHJlc3MgaXMgaW4gdGhlCj4gPiBmdXR1cmUgPwo+
Cj4gVGhlbiBjb21taXQgbXNnIHNob3VsZCBhbHNvIG1lbnRpb24gaXQuCj4KPgo+Cj4gQmVzdCBy
ZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
