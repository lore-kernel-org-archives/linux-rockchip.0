Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A14F1FF885D
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Apr 2026 23:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G46hsGiyJx/SG6ODVqEd7xLac+axUX7Tyeuizv4p9wU=; b=1CI2H7scPPz7cS
	LurgZ+GUSG7sTVcqAFD9X5rERqBmWjiRYaQNoioYWG1X0Rt7WmsYz1HP0y5/mu84bsEgw6obScQ7Z
	tMZN3I30BcN8dnXQgajcOdl7NJ/0xpfJ4JLVTSluUQSVMuhOPOtrOsSHJbv+n4YL2pyFC5xpyr2y7
	soJ9CTNqKx+GlubT+3tQgT4dDlYYAgZ3MaenlgTke3eQGB9x34D7WOB5QXPGMYDFK2loei7xwK/o/
	ON3+pJ3yXVKbS3pmqTVEQThxu9pJxz4UI4pBW1LODuPQ5Bvb/GphGBTCjygGSVZ9vl0Gicktwx/t4
	0yLrKgQB1/vTavLhR/ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH95p-0000000FwZZ-2Yfk;
	Sun, 26 Apr 2026 23:40:53 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wH95m-0000000FwYs-0bV6
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Apr 2026 23:40:51 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-c6e2355739dso3744056a12.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Apr 2026 16:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777246849; cv=none;
        d=google.com; s=arc-20240605;
        b=LhLM18uZix/+HwQr4q/5C3P9t2VV0ZZn3Dcaq2XUL9KkLUXaQQwWASAlFZE9Y0bKoT
         SsTLsZ3IK6cjr6VrsqcWI2NrOwlfrcfjh5ia8xXJBy4BSwIhOaF9Jo86B0HxDrOUR28q
         UvBBlkRCcNhr1rydCSkvS07GnYNJ6g+NkVeuPOaNUUZ3zkUb69aqCKSbhxqyOwLevhPY
         EWQpD98mv5olP1b5ijKJ+HR85hnVB43GHnjRUdCFW0l7HsL0D24uFVPW6/Bcy3A6oNzK
         34eFMgx+OSWpDT2Wj1wrh+7+qGXj1c3hgOwR3vbjkd2NxLlDiuxTQI7MWkEtXFi1Wwo7
         jazw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y0mG82ZqnbNgU5UbwCZHANJfxcxBs7X3CB8+aFRbO3g=;
        fh=jUWzWzZuQjxrz1RCodiAVvdGR6lbDW7OcrOevHdQeC0=;
        b=Z8LrUmaqeNeMvn+Qpbctza8pzQN6w0k3vWCVYo4SYDo+WLmOzJPPWGBhxqrQFtNCYW
         01NmuQ2vSAPuP7temi9OOC81Wh4YjBLk5xdpddO8fWFxu3xvDwSJy8mI+5uGCl5x9eVD
         oAGpEPJVIlDSdxOVMwDGJeLlw+Hv6fOHCX/NHzdd6tHpHhL1AoDZcbdlEu6XvuBkfB2t
         fkJzB66ORDWdpYa5IlCQtJwhJlIZScePWMb7eees2WwSqabUFO0oavzx8cKJfe1NPI6v
         VBDIYF/1ZQeud4+6KjP/jdD4HwcHsilzH82y3AWUjMCjR/jgY0IW9VFWBVXdcns7qtrn
         Odgg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777246848; x=1777851648; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0mG82ZqnbNgU5UbwCZHANJfxcxBs7X3CB8+aFRbO3g=;
        b=Zd0m/gz9Z9JM9IC/9PCy8M6dYdkywndH1BOoNA5vYj/C834tXrUyVTzEwMNORTfFvU
         GR8zYNvdVy+eH0R1xKyQOvaHAC5EpTUx9q39osNsrfXqUZ87jeZmI6vwa5tGktSauNcg
         0JCU/2xHxAvl/mYaJSMBO4QUi1lUe2/bnQfAZEu8a16pSRaINx4SxUlpCGC+Aa5z6WlU
         +6t8oNEmtcuc4yLWM97773jNAefCzQNJKtXUu9hUBC/7VmyISD2cT9tWaS+VunfExD5k
         PGKZ/nofMQFhW64c973exVBaB75jq7q6HpKAgax4vfBehK15MwMxPnDyjFmjqP3Q9ZB/
         JjLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777246849; x=1777851649;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y0mG82ZqnbNgU5UbwCZHANJfxcxBs7X3CB8+aFRbO3g=;
        b=DbsFe+nrSYp0Dr1CDas0F8YkV2K6yVHEm6ZBxIT2uBz/SbIoFmgRc+Ea4kRGevV5Z+
         Hm+jgb4fQqMsZPCKKmzV7E7YyCOpby7/ttOJALVJJK1nCtVoZeTNC7uBAWpxEK9J2n/M
         v00lBgoc9EF2J7BCbnjHB9CpL6yT/cgFXy/XkmXbBmOvh4LaOWCGD0WjwatMAHBSqZRP
         w7HkBQfW3avj6aQ6XCe0KInl/eZvh3koE5sE6OwaL3EonTLt6HAq6QfWo9hnhepiApqC
         1icYgclKGgRwLkR1rgNifpM6fZUY6sebxRkmMtcV7qWWmk9mnxJz4cg3izac9aoXd9FZ
         vcwA==
X-Forwarded-Encrypted: i=1; AFNElJ+C5ytZ0fy45eo1ora/Xstg9LFnRb+wrLSKDuJ5NsfhZ117T8bgnwS2haWyj9fG4dKwgphuabmLEeVJhlS5Rg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwaWdCGU5nZUuM9h7weWx+CK4otIf+jaSR+hT35CQwgfB+czqxI
	xLAk8QUvQr8mtna0QbGUE0rHH8wIvjN8N76ohhH+bur1V8Jjumqjc463Ko9qv4fEhUrvHorUGaB
	ow2n5ud5m4v+U+DZF3ZugOQo71jXckFg=
X-Gm-Gg: AeBDiet8iJAWnBgTB+hwCH0PxQSHbaPqG2qf+UfCYtdpkJu6XIAFoyd3E0uDEMfg8e6
	E0imZ9/ezvYpVLy0DxeKKuEQ765xKBKFJseAZVFu2z2KTOD6VRhvmJeQaOtFK12T5FFcuKLky7L
	e+JRV5XLpTNaBGLLkMaVDrJ9rA8YltS6TsB0MTNQiSI6r7D1Ibx4M6+K1/+V5oMsYhIikOjvx8h
	JxwRTF2F13DppApaLBtSYwKnHgvmwDp6awwMKoapZZ9qqipbUfZ42q1ILgP4Gou/9lEMbDSUoJF
	XRcaeckYSNCUmzVRv+ncwJpHGEuKo+lAvlUQulw782VffIg=
X-Received: by 2002:a05:6300:6d8f:20b0:398:8870:b531 with SMTP id
 adf61e73a8af0-3a08d70a1famr25303284637.14.1777246848558; Sun, 26 Apr 2026
 16:40:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260423042831.21114-1-phucduc.bui@gmail.com> <20260423042831.21114-2-phucduc.bui@gmail.com>
 <20260423-ingenious-psychedelic-jaybird-40bb4d@quoll>
In-Reply-To: <20260423-ingenious-psychedelic-jaybird-40bb4d@quoll>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Mon, 27 Apr 2026 06:40:31 +0700
X-Gm-Features: AQROBzALmqPDt_24g1IGVKGMMWkAGDfkR70trABOv_7t1jBQYK1ibQPH5H_P7bg
Message-ID: <CAABR9nGH4yZcgyzm=wNYVHB2vLhojZJSHKOC6dSeQPm0rbh4KQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: drop redundant wakeup-source definitions
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Joseph Chen <chenjh@rock-chips.com>, 
	Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
	David Rau <David.Rau.opensource@dm.renesas.com>, 
	Animesh Agarwal <animeshagarwal28@gmail.com>, devicetree@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_164050_192407_8A3CEA56 
X-CRM114-Status: GOOD (  13.73  )
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

SGksCgo+ID4gVGhlICd3YWtldXAtc291cmNlJyBwcm9wZXJ0eSBhbHJlYWR5IGhhcyBpdHMgdHlw
ZSBkZWZpbmVkIGluIHRoZSBjb3JlCgoKPiBUWVBFUy4gSXQgaXMgcGx1cmFsLgoKClRoYW5rIHlv
dSBmb3IgcG9pbnRpbmcgdGhhdCBvdXQuIFRoYXQgd2FzIGEgbWlzdGFrZSBpbiBteSB3b3JkaW5n
LgpSZWdhcmRpbmcgdGhlIHR3byBkYXRhIHR5cGVzLCBJ4oCZbSBhbHJlYWR5IGF3YXJlIG9mIHRo
aXMgYW5kIGhhdmUKZGlzY3Vzc2VkIGl0IGluIGEgcHJldmlvdXMgcGF0Y2guCgpodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvQ0FBQlI5bkgzaHIrWTVrc0QwY24zR2Q5WFV2bWIwN1g3ekp3MGI0
a195VmJuQXV6OT13QG1haWwuZ21haWwuY29tLwoKPiA+IC0gIHdha2V1cC1zb3VyY2U6Cgo+ID4g
LSAgICB0eXBlOiBib29sZWFuCgo+ID4gLSAgICBkZXNjcmlwdGlvbjoKCj4gPiAtICAgICAgRmxh
ZyB0byBpbmRpY2F0ZSB0aGlzIGRldmljZSBjYW4gd2FrZSBzeXN0ZW0gKHN1c3BlbmQvcmVzdW1l
KS4KCj4gPiArICB3YWtldXAtc291cmNlOiB0cnVlCgo+Cgo+IFRoYXQncyB3cm9uZy4gQ29tbWl0
IG1zZyBpcyBtYWtpbmcgaGVyZSBmYWxzZSBzdGF0ZW1lbnRzIHRoYXQgaXQgaXMKCj4gcmVkdW5k
YW50LiBJIGNoZWNrZWQgKGFuZCB5b3Ugc2hvdWxkIHRvbyEpIGFuZCBkcml2ZXIgZG9lcyBjbGVh
cmx5Cgo+IGRldmljZV9wcm9wZXJ0eV9yZWFkX2Jvb2woKSB0aHVzIHRoZSBwcm9wZXJ0eSBDQU5O
T1QgYmUgdGhlIHNlY29uZCB0eXBlLgoKSSB0aGluayBEZXZpY2UgVHJlZSBiaW5kaW5ncyBzaG91
bGQgZGVzY3JpYmUgdGhlIGhhcmR3YXJlIGNhcGFiaWxpdHkuCklmIHRoZSBoYXJkd2FyZSBzdXBw
b3J0cyB3YWtldXAgZnVuY3Rpb25hbGl0eSwKcmVmZXJlbmNpbmcgdGhlIGNvcmUgc2NoZW1hIGlz
IHN1ZmZpY2llbnQuIEhhcmR3YXJlIGRlc2NyaXB0aW9uIHNob3VsZApub3QgYmUgY29uc3RyYWlu
ZWQgYnkgdGhlIGN1cnJlbnQgZHJpdmVyIGltcGxlbWVudGF0aW9uCiggZS5nLiB0aGUgdXNlIG9m
IGRldmljZV9wcm9wZXJ0eV9yZWFkX2Jvb2woKSApLgpCaW5kaW5ncyBzaG91bGQgcmVtYWluIHN0
YWJsZSBhbmQgZ2VuZXJpYywgd2hpbGUgZHJpdmVycyBjYW4gZXZvbHZlIG92ZXIgdGltZS4KClJl
LWRlZmluaW5nIHRoZSB0eXBlIGxvY2FsbHkgZHVwbGljYXRlcyB0aGUgY29yZSBkZWZpbml0aW9u
LiBJZiB0aGUKY29yZSBzY2hlbWEgZXZvbHZlcywKdGhpcyBhcHByb2FjaCB3b3VsZCByZXF1aXJl
IHRvdWNoaW5nIG1hbnkgYmluZGluZ3MgaW5zdGVhZCBvZiB1cGRhdGluZwpvbmUgY2VudHJhbCBw
bGFjZS4KClRoaXMgZm9sbG93cyB0aGUgcmVjZW50IGNsZWFudXBzIHN1Z2dlc3RlZCBieSBSb2IK
Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8xNzc2Mjg4ODgyNjAuNTkyMTEwLjExNzI3ODEz
ODIwNDk5NjAxNjY5LnJvYmhAa2VybmVsLm9yZy8KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzE3NzY3OTY4NzI3Mi4xNDU4MzY1LjEzMjg0ODUzMjQ2NzM5Mjg0MzMucm9iaEBrZXJuZWwub3Jn
LwoKQmVzdCByZWdhcmRzLApQaHVjCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
