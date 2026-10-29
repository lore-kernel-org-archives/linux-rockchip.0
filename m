Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB97E606A336
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 10:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SRdik4nU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Jv5eE9hu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Dm55ERSnxfrJ//M41rAESEh4q9ULEtf33Jke72GVBSw=; b=SRdik4nU/6gOuEV5MmmmfgZWb8
	BxqCUiOdgUzFPd5ckVfuNEWwlfenNfabSb9D6M1VPleijbBXS770M06Z1CY5k7iPSrCfMYt6bfrUD
	ne/AJGlQbYYLqbMqgomo+u2rBatfMSF+W7FphasbY/kjH9/v9VLs1oFjgTalWPJhT4URPUxIAPva3
	SucD7Er8SeyqfVsqE+be4LKHHrjMewGBmnJDl9R+Rx/JbI3OsspJ5uMFXBDQ19hTUcmRFfjvL4BSM
	PbALeuJGJvTtr3tl8vjMnzLr9AoEFUVSPYBQRLhsgu4hm4QdNOu3GyUUA2lhTam0efMDzQGAdLhTM
	+gAZDQ9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMNI8-00000008yHv-1UV4;
	Thu, 29 Oct 2026 10:23:28 +0000
Received: from mail-ed2-x0b.google.com ([2a00:1450:4864:33::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMNI6-00000008yG7-0Tfn
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 10:23:27 +0000
Received: by mail-ed2-x0b.google.com with SMTP id 4fb4d7f45d1cf-6b1b64e7f0dso912614a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 03:23:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793269404; cv=none;
        d=google.com; s=arc-20260327;
        b=D2YTbpnjXouBQELaxOUqRuB5vakpcaDgUF+25OpbmOBXX+n5DSF0DFTa1JFK0jPalR
         M/t9tTuALIrDXeYAPgsJhn0kzabn3LXS/wqiy3PcUP8AnpBFIt5LmMxchXSfL9TAQ1No
         GJS8uIctG+O3hdMwn5p+qAl1nz6dIZfRCPc9BhbOyp87X1ASM2g4QZz8b60HF2ByxMeX
         kUjmnaOeuvkn/HWmun5nbSLgjAkZ8X5TXCafpNx0xTUD0IqBKSmp6XzK/QIMp0NxuaQV
         VAYI9cwymVbhOoWvZB9HXiGsJvsezDJ8OrRObmztjEyC+GCvciuMbzf7jo4SjgKU5YI0
         ELZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BA+kSJSuqF0Tp/mjbmAU8rE7i18xLMiTHg0IlzoVm5Y=;
        fh=agH4lcytJwPFqULWnL0In09ho92Ayi+n46S+irGVWKg=;
        b=WabarIXPkD7+1hWkQEuNLFdYTBmH6S5xoJZB3g3uxBq1OlY3xtl0V6WXJFpY1GdsTM
         AInD7d9pOaTSbJuKmR990XNu5VTzQeIDS4ZHU0YtcmaO8Q+Yfi5fghEl4sZKj4PiRpg0
         4AXUpHP8hJt7esHxRnnJQPCWK8XWsPj4ff6STRqBorx5DrplBNYyLpP/jk57Vl3SP0Y7
         Agy5iku/oWu+nxMsei3PcM81Cdcuxz6+j4z97TtL24W9zx9Sbg3jrdxobrRyESYudGX1
         C40H6u0lvIfPg7NcfLI4trH6akBBh1KS/gK+kB91pgAWT5LuNq+Jdgzief4+iO7XF1X9
         NwNg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793269404; x=1793874204; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=BA+kSJSuqF0Tp/mjbmAU8rE7i18xLMiTHg0IlzoVm5Y=;
        b=Jv5eE9hu0lE5gy7iJKYSOOFQ4zzshX01yo7X48XsH9vSDWXtRnoiTVSDLA7QYLk6Mz
         y8jYt4KD2lKFsXEg+NNTiaBMBKSH9SWlQdXEe5Gfpsa//HHhVDUf5ChmKC/yICBkwVUN
         UUdAm/PR4JSTYwCLHHuY0VYj+AqzN24bdsu6IBxVgU5PmI2T8AQ1C98j/TbeYcOvAPK5
         goZAqfzjJMqRpsaP+CVirE42u769E5anU0k+PGhwVjFkpk2YaTWbHQH+N07Gv0qTwhy2
         5Tc/Nwue8nj5eSlp5G2vaZm5EAsRClb8CngOn9JUJiKZIxcHkw4oQ1jc81DjshNNsEmS
         2WaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793269404; x=1793874204;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BA+kSJSuqF0Tp/mjbmAU8rE7i18xLMiTHg0IlzoVm5Y=;
        b=c61y/blvCOEhEW02g+syyqHUGn6tkkTG1xUPA7r4HoT0ZQWXJqJBvy64eQbq4i0+Ts
         NEmkZmg/cTafQBUyDrPSLWypPQ7T7Ago+RGfSHyFXIk/S8zd9OSEjjVNAP2Tgrc4WIF+
         g5g8WEP4ZavT6augxTYvASrJAWGHxNE65hFcqATjsAq2HHD+KjkgkH//mkq7G3Z0EvYM
         N+yJrFW6nWPN+ved3DiUYooT8Y2C3vnEZpJ84+DCBxVkXXhippp2fhNstvGfBB4yvCmQ
         MhnSdUc764RJKURn80idwV9kTyDULF+nyuJyr/mllNOdFIdMsvo6LB+j+Bp/slTM0U4y
         VjqQ==
X-Forwarded-Encrypted: i=1; AKwUvBw/NpFMtbPDK03AHOYRuCVAOxtgNhedyj7KaDVNDmDFrQAclMSbgkbag4dS++f2HmG11gOkEH+KytxSrhK2+A==@lists.infradead.org
X-Gm-Message-State: AFq9FYKtdBa8ujUeEUbDWzuo3bXmGx08hOvtjgFNiQWJNrqY101FAshn
	nZ6RPaKGLfLnNGCUyRonSAARtLeLyPXYIyiq04RpUG8Fe3a/fgJOQh2j+OY+1V9fba3qFLB6fCw
	kVDrc1Eix9UlrAKNsMLHGXcEwExiLaJ4=
X-Gm-Gg: AYBFou0/019pAQKvIjBq+9GL3DBFKf0mfKZyX+DvISQP7r3EgJDN78EDkfz1YbIfU4r
	D97SCjIwO0SsoEzfNSaFTdxnuj1kaRBlt2JvHV5HjxgMSBwzkdEukdOgXBA1EbG8xkPHuFvmDpC
	AW7QuRMQUdH6CH2escgQZANo4+XzEtI4dckQUk29iQ9XHZUCG/jntTPtjjuz0sEcfU1AGOAUWyT
	YrdTNh1Nneq8aCOSzI6md+8ueCv87CnvgVF+Ihom0YOpN/CuhoaLcfGT15PDuyEdOPkhVFzFq+W
	L6oC0pf4/tAVIw8QbgCz0HS67vtJd8f8T/FyDmJuFVX/Xpevv7/1JQpYCziZiOsZ82SGT/pBhRj
	a44t6ZCZt8Z0Puero3IJSJagMDLaHndao7TMGXKM=
X-Received: by 2002:a17:907:5c1:b0:c44:9a32:b27 with SMTP id
 a640c23a62f3a-c49bdf3efccmr409763966b.25.1793269403495; Thu, 29 Oct 2026
 03:23:23 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261029094916.3127193-2-coiaprant@gmail.com> <179326779144.3327.11596356628770174944@kernel.org>
In-Reply-To: <179326779144.3327.11596356628770174944@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 29 Oct 2026 18:23:08 +0800
X-Gm-Features: AclHuK8EImYqqF5YHtT2i1-3dqjgRi3f79j4EOfGIpng75DJLEaq2ArfexxeNFU
Message-ID: <CALj3r0hX3Ded4G0KY+f5uhoJzRB4ivW+Sa3R-TeDcq=O6eaGDw@mail.gmail.com>
Subject: Re: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
To: netdev-bot+sinfo@kernel.org
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_032326_168103_2B5CCD0D 
X-CRM114-Status: GOOD (  22.10  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

PG5ldGRldi1ib3Qrc2luZm9Aa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyIMjnml6Xlkajlm5sg
MTc6NTblhpnpgZPvvJoKPgo+IEhpIQo+Cj4gVGhpcyBpcyBhbiBhdXRvbWF0ZWQgbWVzc2FnZS4g
VGhpcyBzZXJpZXMgbG9va3MgbGlrZSBhIGZpeCwgYnV0IGl0cwo+IGNvbW1pdCBtZXNzYWdlcyBz
ZWVtIHRvIGJlIG1pc3Npbmcgc29tZSBpbmZvcm1hdGlvbjoKPgo+ICAtIEhvdyB0aGUgaXNzdWUg
d2FzIGRpc2NvdmVyZWQsIGUuZy4gaGl0IGluIHByb2R1Y3Rpb24sIGhpdCBkdXJpbmcKPiAgICBk
ZXZlbG9wbWVudCwgc3l6Ym90IHJlcG9ydCwgbWFudWFsIGNvZGUgaW5zcGVjdGlvbiwgTExNIG9y
IHN0YXRpYwo+ICAgIGFuYWx5c2lzIHRvb2wgc2Nhbi4KPgo+ICAtIFdoZXRoZXIgdGhlIGlzc3Vl
IHdhcyBhY3R1YWxseSB0cmlnZ2VyZWQsIG9yIGlzIG9ubHkgdGhlb3JldGljYWwKPiAgICAoZS5n
LiBmb3VuZCBieSBjb2RlIGluc3BlY3Rpb24pLiBJZiBpdCB3YXMgdHJpZ2dlcmVkIHBsZWFzZSBp
bmNsdWRlCj4gICAgdGhlIHN5bXB0b21zLCBsaWtlIHRoZSBzdGFjayB0cmFjZSBvciBlcnJvciBt
ZXNzYWdlcy4KPgo+IFBsZWFzZSBkbyBub3QgcmVwb3N0IHRoZSBzZXJpZXMganVzdCB0byBhZGRy
ZXNzIHRoZSBhYm92ZS4gSW5zdGVhZCwKPiByZXBseSB0byB0aGlzIGVtYWlsIHdpdGggdGhlIG1p
c3NpbmcgaW5mb3JtYXRpb24sIHNvIHRoYXQgcmV2aWV3ZXJzCj4gY2FuIHRha2UgaXQgaW50byBh
Y2NvdW50LiBJZiB0aGUgc2VyaWVzIG5lZWRzIGFub3RoZXIgcmV2aXNpb24gZm9yCj4gb3RoZXIg
cmVhc29ucywgcGxlYXNlIGluY2x1ZGUgdGhlIGluZm9ybWF0aW9uIGluIHRoZSBjb21taXQgbWVz
c2FnZXMKPiB0aGVuLgo+Cj4gVGhlIGV2YWx1YXRpb24gaXMgZG9uZSBieSBhbiBMTE0gc28gaXQg
bWF5IGJlIHdyb25nLCBpZiB5b3UgdGhpbmsKPiB0aGF0IGlzIHRoZSBjYXNlIHBsZWFzZSByZXBs
eSBhbmQgZXhwbGFpbi4KCkhpLAoKVGhhbmtzIGZvciB0aGUgY2hlY2suIFJlcGx5aW5nIHdpdGgg
dGhlIG1pc3NpbmcgaW5mb3JtYXRpb24gYW5kIGEKcmVzcGluIHRoYXQgZm9sZHMgYSByZWxhdGVk
IGNvcmUgZml4IGludG8gdGhlIHNhbWUgcGF0Y2guCgpIb3cgdGhlIGlzc3VlIHdhcyBkaXNjb3Zl
cmVkOiB0aGlzIGlzIGEga25vd24gZ2FwIHByZXZpb3VzbHkgZmxhZ2dlZCBieQpTYXNoaWtvIHJl
dmlldy4geHBjc19maW5kX2NvbXBhdCgpIG9ubHkgd2Fsa3MgZGVzYy0+Y29tcGF0W10gYW5kIG5l
dmVyCmxvb2tzIGF0IHBjcy5zdXBwb3J0ZWRfaW50ZXJmYWNlcywgc28gdGhlIG1hc2sgdGhlIGds
dWUgc2V0cyBpcyB3cml0dGVuCmJ1dCBuZXZlciBjb25zdWx0ZWQgYnkgdGhlIGNvcmUuIFRoZSBz
YW1lIHJldmlldyBwb2ludGVkIG91dCB0aGF0IHRoZQpnZW5lcmljIHhwY3MgY29yZSBmaWxscyBw
Y3Muc3VwcG9ydGVkX2ludGVyZmFjZXMgZnJvbSB0aGUgY29tcGF0IHRhYmxlLAp3aGljaCBmb3Ig
dGhlIFN5bm9wc3lzIElEIGluY2x1ZGVzIDEwMDBCQVNFLVgsIDI1MDBCQVNFLVgsIFVTWEdNSUkg
YW5kCnRoZSAxMEcvMjVHIG1vZGVzLiBUaGUgUkszNTY4IFhQQ1Mgc3VwcG9ydHMgMTAwMEJBU0Ut
WCwgU0dNSUkgYW5kClFTR01JSSBpbiBoYXJkd2FyZSwgYnV0IGRvZXMgbm90IGltcGxlbWVudCB0
aGUgQzczIDEwRyBvciAyNTAwQkFTRS1YCm1vZGVzLCBhbmQgdGhlIFJLMzU2OCBNQUMgc2lkZSBj
dXJyZW50bHkgb25seSBzdXBwb3J0cyBTR01JSS4KClRoZSByZXNwaW4gZml4ZXMgYm90aCBzaWRl
cyBpbiBvbmUgcGF0Y2g6IHRoZSBnbHVlIG5hcnJvd3MgdGhlIG1hc2sgdG8KU0dNSUksIGFuZCB0
aGUgY29yZSByZXNwZWN0cyBpdCBpbiB4cGNzX2ZpbmRfY29tcGF0KCkuCgpXaGV0aGVyIGl0IHdh
cyBhY3R1YWxseSB0cmlnZ2VyZWQ6IG5vLCB0aGlzIGlzIHRoZW9yZXRpY2FsLiBUaGUKYWZmZWN0
ZWQgUm9ja2NoaXAgcGxhdGZvcm0gaXMgbm90IHByZXNlbnQgaW4gYW55IHJlbGVhc2VkIGtlcm5l
bCwgYW5kCnRoZSBNQUMgc2lkZSBmb3JjZXMgdGhlIHBoeSBtb2RlLCBzbyBwaHlsaW5rIHN0YXJ0
IHBhc3NlcyB0aGUgbW9kZQpleHBsaWNpdGx5IGFuZCBkb2VzIG5vdCBub3JtYWxseSBwYXNzIGFu
IGludGVyZmFjZSBvdXRzaWRlIHRoZSBtYXNrLgpUaGUgcGF0Y2ggbWFrZXMgdGhlIG1hc2sgdGhl
IHNpbmdsZSBzb3VyY2Ugb2YgdHJ1dGggZm9yIGJvdGggdGhlIGNvcmUKYW5kIHRoZSBnbHVlLgoK
cHctYm90OiBjcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
