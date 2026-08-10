Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A04EC5AD55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTSOumMczpJpFY5p7v2UfaH84jEbhfwpb4VR30Mkp5I=; b=trscNPYFocCJzo
	3eoTR6VyncWgoyNmz7gxYY34HCTv2HSHEqUy157fZFGmJ8gRkJk4trtjDzxZdhRzMIkOXFcMOxotx
	ni61mjCUaN9WQA7388xOjSOh5JRJRLJkySp22ioZHKVYYdIR8FbR3ul5IKPMLkCqVMx+YdJSSBZts
	abD8jBprA/j5JNfD/yJjJsko7F3WLgKrYvqzbWrcaqRsMTxRnj004MpLIpqGW55uk6jkSs31xW0P6
	L2eZqtk8rTthVSiYtIB2t/fR9rEf9ZLmFZQAhixanBUPgNLAIAJdUud6A0Pbz4awlFBVD4WQGnSng
	UgeTIMAtoLVtQoCtxbZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOoP-0000000Bgx4-0MSG;
	Mon, 10 Aug 2026 12:09:01 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOoM-0000000BgwH-1557
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 12:09:00 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-c2074710751so233183466b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 05:08:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786363735; cv=none;
        d=google.com; s=arc-20260327;
        b=Cr4u4RZpAZMyizIY+D3Tv6Yxp6DFv6sUKLsqIvOcoeQbN85Lru+PSClO+X6AXTgcUn
         U4cEJxODsC9+P3hvXWYaaJL3sVXE+EV4YNja87WNw1CbWCGsrypIFJ9E2aKoSppz7Ti8
         ZXamRvcY12OCatKzSXbQ4zgo+6Kip5uTN7XqSRTuM160maHI6OlxBRYeGynuQ9Zhpml+
         MxHIZHSwrTP0tQMb9swIg41m+TXpGViEajVFijwAMC/zEEA0p9k7vEkCpPbOrKibv+zZ
         oJhyKZd89/RF+ABO7D5N+Smeu0hqqxIeos30dflYs1qloWXNGwHLejn1l00Bpd7+nXFO
         i0bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qQpWbJttwi61w+33UaX9aual3LIjiZRDlQt6M32wCuQ=;
        fh=Gt2ebLk+yloDnFk+AD8d6Y0AQFnYTzkBMir+RNRDTfo=;
        b=HiIQrXxosxLeqYP6MA9pVNTLwU0GVlThO8803AHAH1/AXsFF4s55+HWGF+UMsPW60V
         I2w5FaHqt123eRZ3HmZQU+2qqbzC9mwAO3PRPtObS/zO1LjHgzefzisAwnshHDy+L8ZH
         NlbVR95q7g1MQXwK5Tw9p1pHyFJwCvdXIkEpbNhVYKezMu9C/Hy3CCDHvMuldB+NR5Fu
         agltIW1oEHgHR6A2kDguPrA9CgJJwzEvTSBoAPDpuv8H6koErvJ4ncXDYSfvM0/o/sp1
         76TBTcPkcuCRtY+OWHwMDT4AgL3Ietlz1nLVtrgl0MYi8QM30X4IibXU7zUx9ndCP7h9
         +Wkw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1786363735; x=1786968535; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qQpWbJttwi61w+33UaX9aual3LIjiZRDlQt6M32wCuQ=;
        b=bXYcCsYuvXws5MiAg75L+M0NZyLE0n9DQoXiKiOGVXJnqzU0ziOveH3k5fDysGqgUq
         KgoC6ESVLuYILxwIR7gAwFqrrKaKeig479BwOFXjq2o58J7R7erSEwCm+1iGVQqGA+KQ
         hcH02QKTM95HKsTk/3ypr6T9jcMUyKAn2x9GTpSqma+hLw7ngGdVDSNxH5Z+/P9o15VC
         gIZt7aDv2NzBtX//HepjdWiWfIF37kYtmkdYD35ji8SJThxsiqR1kd/pGoEJ4jh6vz1w
         fQgrqN+jBX+iXomjoUDg6K0bKXfRIYkiLbk2rbw06S8Kuzh7lBTt173t4hKkZyP8Jgxx
         5uHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786363735; x=1786968535;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qQpWbJttwi61w+33UaX9aual3LIjiZRDlQt6M32wCuQ=;
        b=QaVtlJemNlFDjiQ1idElXVZBISJl3bXoQt+lkx8JAEJnPc16H0RXgMyaTpWSjWHFcF
         gZ9cZeNxj0DiiJvuYiMPPnPmKfzHeUcHys+FUGdJDisQKtgO9tvolQTnKmdugTTiD3LE
         3j9aucgmh8lT3jGRU1/ItQWfZKsXGHpaLNPaAc2ZBv1aa4Aeo5t0tNUxjYpCxTcw3KzG
         UjurE5Arzy3wZl8NG4qPcuhRqj4FnxMMzQG68ZmlLYbxDQKXCCI9B3W8V8UrXzUKbJSl
         bsnvBf22RRz6Jj1pDkVVVOtmmSt11AXYpcd2oXqF1mR+eGENXnuxV96YjM41c0EW2WoR
         itHQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro/UCRJ/Xjl8ICkGKsJsPPSBbi6Oh8CwR8caXJWAmNGZmguJwr3HbS3T9N0mYsDXd7QwETSfVDQJlfPIaREZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkSgDJnVWzOlhYikXBLjN6z7bqFtv6c8XKx3Du7T3M4Xl7/Kl5
	zVqSN0P+rJz+FJcR1dvdKJLI8O4xXPPB4pHGlHaxXIwqSOvBD5Jn19aE/07n2RG61Xqx27XrV1U
	uXb3ZKsVNMo+AznYjgeGtyyFdfHYulWNykHbMQjrtig==
X-Gm-Gg: AR+sD12xBiKoIpMJ6/fDJ18bFENw9JM9rEHynShAiyb88e6VAyCmccH2vgufMhvkenU
	MCvlp+HzYfB/8/EEvAFksp1DRr1tJKbalqdLLfZwDDLU5cpD1mDGGlq6HPerDIW/3qch8TvSUDz
	OtSWuAxTAB+pFnFoA0f9PrQZnAkdEtOCnnez3n+7YFsBLQaO363BKj9SLWVAtHALkPGcBhQSPgY
	5E5YGRsycaE3c1Y+c/O97lIKs+awrqXnQY/L7bhg6jlc67vRLCUD1c3taCbpY5UqV5ix9/KCnhn
	nuTNMJIkOZoCh1CctWU364CWDyvJEAu9m+yOQm3ZeTtSfMXJenU1AiWou3ClAHe3EEH3sqw5y+C
	t
X-Received: by 2002:a17:907:728b:b0:c1c:4858:251a with SMTP id
 a640c23a62f3a-c20c6782f60mr50310366b.8.1786363735166; Mon, 10 Aug 2026
 05:08:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20767137.geO5KgaWL5@diego>
In-Reply-To: <20767137.geO5KgaWL5@diego>
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 10 Aug 2026 16:08:36 +0400
X-Gm-Features: AUfX_mzk8t-Db9KtlR_l-8Y27DWWGagvh3frNOmzayIZmNSq8DatjvUHckrxFLI
Message-ID: <CAKTNdwFPhVrjb4iVpN19f0Nw+MA_BxXLOLs4V50fuyf+_rbEPg@mail.gmail.com>
Subject: Re: [PATCH v11 00/21] Synopsys DisplayPort Controller improvements
 for Rockchip platforms
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_050858_320743_EE8538B1 
X-CRM114-Status: GOOD (  20.55  )
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
Cc: Sashiko <sashiko-bot@kernel.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiBNb24sIEF1ZyAxMCwgMjAyNiBhdCAzOjQ54oCvUE0gSGVpa28gU3TDvGJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBTZWJhc3RpYW4sCj4KPiBBbSBEb25u
ZXJzdGFnLCA2LiBBdWd1c3QgMjAyNiwgMTk6MDI6MDYgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1l
cnplaXQgc2NocmllYiBTZWJhc3RpYW4gUmVpY2hlbDoKPiA+IFRoaXMgcGF0Y2ggc2VyaWVzIHVw
ZGF0ZXMgdGhlIFN5bm9wc3lzIERlc2lnbndhcmUgRGlzcGxheVBvcnQgYnJpZGdlCj4gPiB0b2dl
dGhlciB3aXRoIHRoZSBvbmx5IGV4aXN0aW5nIHVzZXI6IFRoZSBSb2NrY2hpcCBSSzM1NzYvUksz
NTg4Ogo+ID4KPiA+ICAxLiBGb2xsb3ctdXAgYnJpZGdlcyAoUEhZLCBVU0ItQyBjb25uZWN0b3Ip
Cj4gPiAgICAgVGhpcyBpcyBuZWVkZWQgdG8gZ2V0IFVTQi1DIERQIEFsdE1vZGUgd29ya2luZzsg
SSd2ZSBmb2xsb3dlZAo+ID4gICAgIHRoZSBRdWFsY29tbSBkcml2ZXIgYXMgcmVmZXJlbmNlCj4g
Pgo+ID4gIDIuIFJ1bnRpbWUgUE0KPiA+ICAgICBUaGUgaW5pdGlhbCBkcml2ZXIgaGFzIGJlZW4g
dXBzdHJlYW1lZCB3aXRob3V0IFJQTTsgYWRkIGl0IHRvCj4gPiAgICAgYXZvaWQgd2FzdGluZyBw
b3dlciB3aGVuIG5vdGhpbmcgaXMgcGx1Z2dlZAo+ID4KPiA+ICAzLiBBdWRpbwo+ID4gICAgIFRo
ZSBpbml0aWFsIGRyaXZlciBoYXMgYmVlbiB1cHN0cmVhbWVkIHdpdGhvdXQgYXVkaW8gc3VwcG9y
dDsKPiA+ICAgICB0aGlzIGFkZHMgYWxsIG1pc3NpbmcgYml0cyBmb3IgYXVkaW8gd2l0aCBzaW5n
bGUgc3RyZWFtIHRyYW5zcG9ydAo+ID4KPiA+IFRvIHByb3Blcmx5IG1ha2UgdXNlIG9mIHRoZSBi
cmlkZ2UgY29kZSB0aGUgZm9sbG93aW5nIFVTQkRQIFBIWSBzZXJpZXMKPiA+IGlzIGFsc28gbmVl
ZGVkOgo+ID4KPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDcxNC1yb2NrY2hp
cC11c2JkcC1jbGVhbnVwLXYxMy0wLTZjYjNlNzY5ZDRjNUBjb2xsYWJvcmEuY29tLwo+Cj4gSSd2
ZSBub3cgaGFkIHRpbWUgdG8gdGVzdCBib3RoIHNlcmllcyAoZHctZHAgKyB1c2JkcCkgOi0pCj4K
PiAtIE9uIG15IDEwODBwIGRpc3BsYXkgSSBnZXQgbmljZSBvdXRwdXQKPiAtIE9uIG15IDRLIGRp
c3BsYXkgSSBnZXQgInNvbWUiIG91dHB1dCBhZnRlciBpbmNyZWFzaW5nIHRoZSBBQ0xLX1ZPUCB0
bwo+ICAgNzUwTUh6IC0gYWx0aG91Z2ggdGhlIG91dHB1dCBpdHNlbGYgaXMgZ2FyYmxlZC4gQmVm
b3JlIHRoZXJlIHdhcyBubwo+ICAgb3V0cHV0IGF0IGFsbAoKT25lIG1vcmUgdGhpbmcgbGlrZWx5
IHRvIGdvIHdyb25nIG9uIGFuIG90aGVyd2lzZSB1bnBhdGNoZWQga2VybmVsIGlzCmRjbGsuIENv
dWxkIHlvdSBwbGVhc2UgY2hlY2sgd2hhdCBwaXhlbCBjbG9jayB5b3VyIDRLIGRpc3BsYXkgbW9k
ZQp3YW50cz8gSSBiZXQgaXQncyBub3QgdGhlIDExODggTUh6IHRoZSBkZWZhdWx0IFBMTCBjb25m
aWd1cmF0aW9uCnByb3ZpZGVzLgoKV2hlbiBteSBjb2xsZWFndWVzIGFuZCBJIHRlc3RlZCBhIHBy
ZXZpb3VzIGl0ZXJhdGlvbiBvZiB0aGVzZSBvbiBvdmVyCmhhbGYgYSBkb3plbiBUeXBlLUMgbW9u
aXRvcnMgd2UgY291bGQgZ2V0IG91ciBoYW5kcyBvbiwgSSBoYWQgdG8gcGF0Y2gKYSB3aG9sZSBi
dW5jaCBvZiBQTEwgcmF0ZXMgWzFdIGludG8gdGhlIHRhYmxlLCBhbmQgcmVwYXJlbnQgdGhlIHZp
ZGVvCnBvcnQgY2xvY2sgZHJpdmluZyB0aGUgRFAgb3V0cHV0IHRvIGFuIG90aGVyd2lzZSB1bnVz
ZWQgc3lzdGVtIFBMTAp3aXRoIGZyYWN0aW9uYWwgY2FwYWJpbGl0eSAoVlBMTCBpbiBjYXNlIG9m
IFJLMzU3NikuIEknbSBub3QgeWV0CnRyeWluZyB0byB1cHN0cmVhbSB0aG9zZSByYXRlIGNoYW5n
ZXMgdGhvdWdoLCBiZWNhdXNlIG91ciBwcm90b3R5cGUKYm9hcmQsIHdoaWNoIHdlIHdlcmUgdGVz
dGluZyB0aG9zZSBvbiwgaGFkIHNpZ25hbCBpbnRlZ3JpdHkgaXNzdWVzIG9uCnR3byBvdXQgb2Yg
Zm91ciBEUCBwYWlycywgc28gdGhleSBuZWVkIGFkZGl0aW9uYWwgdGVzdGluZy4KCkluIG15IGV4
cGVyaWVuY2UsIGFueSBkY2xrIG1vcmUgdGhhbiAwLjElIG9mZiB0aGUgcmF0ZSByZXF1aXJlZCBi
eSB0aGUKZGlzcGxheSBtb2RlIGlzIHZlcnkgbGlrZWx5IHRvIHByb2R1Y2UgYSBibGFuayBzY3Jl
ZW4gb24gRFAuCgpHYXJibGVkIG91dHB1dCBzb3VuZHMgbW9yZSBsaWtlIGFuIGFydGlmYWN0IG9m
IGFuIG92ZXJjbG9ja2VkIFZPUDIgdGhvdWdoLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9mbGlw
cGVyZGV2aWNlcy9mbGlwcGVyLWxpbnV4LWtlcm5lbC9jb21taXQvYTRjOGNlNzczYjA2OTY3MmYw
ZGQ0ZWNiNzk3MTFiYzdkMzMxOWIzOAoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
