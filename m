Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 741DDC5AC67
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 04:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBokrw8/lgBJDo7PcIHtERV5E0u48QcDB3n89kxAeqc=; b=WTe8qIXJkiO31v
	ZJsjpczS6Gvh7Eml62u5KU4T2V6TqksSeMJnbQ15ArXIvZ+SAq33lvJKZcM5LgmriatpZ+83Vr9fw
	y7dBnSu/y2xA8zORPtEC0FGZ9IItz7iUquNaIlXWszXzyG62VA//DRL8KMRRu/pyh0hdaIjH3HY1G
	ukTs26Y/6ubz1go7GSAJNnEeT3LsGpjBap7p7Kf5thmBQcPJwh1y7Ta2DDJo+Q4PcYVcrCclxOZx/
	6cYJJj2VYcQ1QgJ+ghTknYhXenZ9TiaT0JfWpSGWs3es54yfXYXUaUdIQWMtKfmO3boK5m5ykx9aJ
	ulLKavdehuANEU3hrDsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wteHQ-0000000DHkg-3xoZ;
	Tue, 11 Aug 2026 04:40:00 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wteHN-0000000DHje-0XBm
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 04:39:59 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4953de5be0aso18931705e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 21:39:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786423195; cv=none;
        d=google.com; s=arc-20260327;
        b=RNvLTMA6tIQxzuOqcbddn8v347tIyCv/POUSv/3QlzbUIjU4OaIuraewOzppb+0Xq/
         OJ+uNOStSpO6IkvSu/+Now10kPjdmQ6wGJorA3IZCIHk5JaP3XF7gJP8wO68kFPg2cfV
         EZGLkqpKwdGOz1B+/mKJfeUvDpdeYmZl9+TuZpdq5uL/4r85WZ8r3kFwJheSnjvL1BBV
         HVRlaZ5Lye1fMV3GuO4wZfdBzBTKBUBepAf/PoFoCdOKy/bqo0KauDYvDdDAa8owTfCW
         kRXwqd0yZAEm0Q19j0lPSXvQRjnzL3wquzTaoFqgrMbrF83s014ceqcjZdHmiDLqsBVz
         drEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0OhMOSuXOUEXfdlbZU0t+HljDfm8+At7UQaWOLB5k7o=;
        fh=uKD74nK9AS4ndcCZZ7E0c212rPIHak4pPW/VAxIbjv0=;
        b=NhwDyH9hZAuw0aDTqY51q00/ubnTk/LcswDMJ7YBnU2xUkY9xZBpwD/2G2ztMgosHV
         t0t1m6JfBeta/SpMEddf99l8x6uELwZ6sP9zCU/FuhO40TfFvFlBPpERRUq1VnoluNr0
         sS9P7Z1imh99Vya7VlZNMrrvG1u6a+oxAmigPPUT/09tBFxImGpSd2NPQ2qxO6wIMZWY
         7YcWNJbCiNJvkyXovibm6BHi/5OfXE0r+CPSXq+ZeRPs8Ujb4cskMhJRXN8hdnzAPHGn
         2XPn3Pn9fhRa1nRCoQwa76EKNqv0vr0U95uzTT+Mzjk1eLDHH2Uo2CBetLdkOKYf9G0b
         zD6g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786423195; x=1787027995; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0OhMOSuXOUEXfdlbZU0t+HljDfm8+At7UQaWOLB5k7o=;
        b=mlXzPQb0lMi90mrXDfM1Zqm0LL8hjD5YcRAjLoWtqFPy3OnbUMe9RO9GzHELwFD6vV
         CrqqzCvc6GovRB+PfSJs7fnL24lxRwvjRt3fwdtAaRstWEB4kh+TAk0NXophR89oIpMP
         7sl9+liNGxy3bocot8zcCxRdLOwFQVWB6HbsASlswFSDkuyDdsqflLBT951H/ThXAWnP
         KYCe5UOZnN2hcZKdOvlxk7OEPsCheWPSs+87OVKL1b+wQdMpBKDSqAxDkWgINPt+G7w9
         l1D2kYuGR0hcUYT2Yh/df+163tL3AtAgiwtqqEseVn+m6LHTdIEACKA8Jfmjv6asCNyn
         baYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786423195; x=1787027995;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0OhMOSuXOUEXfdlbZU0t+HljDfm8+At7UQaWOLB5k7o=;
        b=i+7m5ilTU7rUyiGC8BxeeoNNhsbQbwskLcIGS4Wj7EbDvVzHQosBSpTYDBvT7P8HZO
         ysBAsQHUdMcdp3rZiDTDDDVQOfXzUsjmEBxeU0+6XyraFTnC55fqzW7m3Vvys5XZAAtH
         rZN5gp70y0xtph9FjUZD9vYViVG+D8jzFnLKbJko/IjF/hJQ2BVx4PjFD9A2IRbYRPld
         oClbkKsZ4BVJgK3vefjYl1CEj0nXzCaW8W5wMuC27Dz1CA3VmMeiHX0i4sybRHXHYoFh
         atdFSoYQFyVZ89yXXAPZvnBhpK89q7vWCo82VXvmD8ExyB2l4pL1iQyEVpf9OE2Mlxx1
         bZPg==
X-Forwarded-Encrypted: i=1; AHgh+Rqc9KNO9LgU2y6/zmuEcQOc5EykPMmaaYCVC8pIEP8lzmbMAF2dwm34acDV2BitKweEYzLtI7vo2JD2QayShA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8dCtIOpsK4PBWmn4Y/4/fXYTqPBblQ6IXYirMM6m8fDZZeHNp
	+lw7jx3tYVsmv4SU9dTqJHbMCJTtfhmPP/nC79sa90HFUL5kEOQhCgaKHxfSkGgI9CA5Nq7rGbB
	TYmsqqhWFySD/aXwn4fLkj39j4oQ98Uk=
X-Gm-Gg: AR+sD13dkhgy7jQtJ3t/21A3+xt3/g4uLnuZcWquzmTJbFz0pWSVm+zAf0NirrvGu6r
	cC69V5WIioCoXnWZrnqM1N7Xj7NUspixIw94RX2Krlrd7cQX24Eoli34xB4j8iMustQr9TRxgUQ
	ZggItwgRexT1hpTFtNwAcRzvmRa5ovwpyM6z4LsW11T1aGzGclJcr+HF6zOciays1Av9NchCPNQ
	NVjbTZ0wvBE6dKev1uqdjGTQ6L7wCzDVkEg8sNY9qz0sel9VYb/9JoC8Ogl1Y+uuGy9AYzFhLJb
	KedTtgXex1RaYAm/7Dt75HJtjINGVr/mi3EwZQGnh9iYSYHvi6s5KdFR67geL0Ky8TRjPl75Cl6
	l
X-Received: by 2002:a05:600c:1381:b0:495:5fdf:2075 with SMTP id
 5b1f17b1804b1-499783a9ef4mr9152235e9.0.1786423194546; Mon, 10 Aug 2026
 21:39:54 -0700 (PDT)
MIME-Version: 1.0
References: <20260810100000.2643814-1-amadeus@jmu.edu.cn>
In-Reply-To: <20260810100000.2643814-1-amadeus@jmu.edu.cn>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Mon, 10 Aug 2026 23:39:42 -0500
X-Gm-Features: AUfX_mza-VJwrK6CpIT8Ad35vh98xr4X4uqgmOeZ7lmZ7Zm9P_j5It8RrMjWN74
Message-ID: <CALWfF7K2t4nt05a4TugBjOQkaQK=M=+wDSeG26B33znyMMzhAQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable NPU on Radxa E52C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_213957_172899_7FBCF3D0 
X-CRM114-Status: GOOD (  14.13  )
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgNjoyMOKAr0FNIENodWt1biBQYW4gPGFtYWRldXNAam11
LmVkdS5jbj4gd3JvdGU6Cj4KPiBMaWtlIHRoZSBSSzM1ODgsIHRoZSBSSzM1ODIgaGFzIE5QVXMu
IEVuYWJsZSB0aGUgTlBVIGNvcmVzIGFuZCB0aGVpcgo+IE1NVXMsIGFuZCBjb25uZWN0IHRoZSBy
ZWd1bGF0b3JzLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1
LmNuPgo+IC0tLQo+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTgyLXJhZHhhLWU1MmMuZHRz
ICAgfCAzNCArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzNCBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODItcmFkeGEtZTUyYy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4Mi1y
YWR4YS1lNTJjLmR0cwo+IGluZGV4IDg1NGMxMTg0MThlYi4uZGQyOWEzZWE3MDMxIDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTgyLXJhZHhhLWU1MmMuZHRz
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODItcmFkeGEtZTUyYy5k
dHMKPiBAQCAtMzAwLDYgKzMwMCwxMCBAQCAmcGNpZTJ4MWwyIHsKPiAgICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPiAgfTsKPgo+ICsmcGRfbnB1IHsKPiArICAgICAgIGRvbWFpbi1zdXBwbHkgPSA8
JnZkZF9ucHVfczA+Owo+ICt9OwpOb3cgdGhhdCB0aGUgcG93ZXIgZG9tYWluIGhhcyBjb250cm9s
IG9mIHRoZSByZWd1bGF0b3IuIFRoZSByZWd1bGF0b3IKc2hvdWxkIGhhdmUgcmVndWxhdG9yLWFs
d2F5cy1vbiByZW1vdmVkLCBzbyBpdCBjYW4gYmUgcG93ZXJlZCBkb3duLgoKSmltbXkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
