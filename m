Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591446075267
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 21:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pCX/t12H;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mHFQnuLw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Rk2bfbgGZlqGwWJ/SzpQ+nH+Kuwhs5hPcDUNsk0Ch7M=; b=pCX/t12HZgWxbHiT2cde+1xMLD
	LUIzeMWpxQJFTILm0EaQ1u5xFpbSfXYj9uDNh5PtCcJQBBPRPNN4wto4lQW3tjEveewHE2KRsy9ls
	ojtkqLic4NGHrIAdrb0YZKZReYoqpu/1EhK0F4slVfpL1pWRLM3PCTRtyy0D/azX+h5KbeKzLK/q/
	BT0/DffUqxb2H0goeM9uhoahYFgZXFG/5+NEW2vZcXy9z4557wIRaJcSJfk5zgO+qnfBUt1vUetky
	anhtjqm9I0TAfWsNE1JwLcmfT0QPt91SYlOABvkfPmeK7ARLEN6kP7iDFSc/uLoHN+DUkzfYh8EgO
	YpOshDvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOj0S-000000076hK-2RpC;
	Wed, 04 Nov 2026 21:58:56 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOj0P-000000076fk-42fO
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 21:58:55 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a20a37703bso9155385e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2026 13:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793829532; x=1794434332; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+AqvPVUykAPDceQuc3GQUkBSHmzMNEYjFHX35nxghcw=;
        b=mHFQnuLwZARX90E1xI3hirgPRkFQspPrrd/Nz8dPykR4VdM/uAH/FSduXK+Fs59AZQ
         /Aq4j6GL5MUjYddv4jPfHhZ4io1ENcR0KjdF3AtSy9T8dNi/YecIriE5gqwW5PahnuMe
         SLUlsDcmqjsHXh+3zdvRYGEfFmXiJvb1MfCt/5cg3NRuD4iQM/uvUAH3Ffvgj+sQH1hT
         vgUq6n648rnuykfBASwNvM75HavqUIAX3ExsNrAcWISUkzVefTz6ZQjr4u1e2KQVezvu
         x/MIHNR3ZoZhn/nP00AG4dcW6Pt3gXRF4i3/Rn27/QADyqg/Cem7Ijvzstzhxwze7K5T
         MBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793829532; x=1794434332;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+AqvPVUykAPDceQuc3GQUkBSHmzMNEYjFHX35nxghcw=;
        b=zNs0cMstuxFC+qXl8jw4Oi4Ga8wjXjI99es7MbBnwaW+IPbooPxUwb3HC2ZZa/v7N2
         Bki7j0pfy6rk9zN1BbvyRpmKyJvUNXQIunBLVnhAQPdFX9PSpVkZzgoqAovZ7OfV8jDx
         5Wi8AvjMaXEEDzrvPHGeAlcVbXjP//nYwNmXZVU7/bUf9dl38Iayl/iKKZLtM20uApTv
         VqWwVM0Vd1TAMHRvXuuJLpTWQkm8mVJe+GwPUMwJNceaHV7BshvaLWV7b+d/gC2nYFun
         6lrEss5qgAwl2ZR+054j+GjdFK6kZRvoFUTcF4jrbFj26Z2exJ4TCW5C2LVh0y+TerRu
         DTyA==
X-Forwarded-Encrypted: i=1; AKwUvBwQFWDaUhDGb9eNxLxI5M9/yFS1LcejdWSwA46VkqOBH2AgUnZBPh4OlRe2pb7VvbfUEXXnvYKd4i/8lMvJUA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/xEfGaLbY4geD37aNx2COuUwR69LuOqYLeJBA0Hx8rv3rXHVnX
	x5000VAeMs6U7yvBBjBrMoNgNKMCMsP01rkdv0dOOBQ6yn8Y0x4Z9fDT
X-Gm-Gg: AYBFou19j/egGNX0ai/BczSNWMzo6uxegssdpIyXLGBUtlCeC7w6rZR4i+h5kCnKDke
	8bKLNJB7eMcjZNsjTlxWu7UowT4xMuXJmPBQd+tmVQsqHwRXFZjkd6o+RLUG8nbQmbeluCgQDLC
	SGUsxgqYDBLAEQl98DbIgu360VaXwHz0xg7GdVFlNj0ghy0wfeNPaHUGYI5YdtQLKaVbwQuy05H
	wFuxyrHtdCYRoseZcIg/quzwqY6LVK/Qzq7YwkTANf93qv/mLW7z2JfLVukU26VKc6sQnSYhqAI
	AQzusJir+YnTQF8Rzq6Uvwo2KNQ9Minfjz4srPUsB6j847//lTfook1Q+TDA9nkA9J0ntjjRhOz
	OaUVjCKl5D56USmwLz17MtSnp0w+V/ExPuQCKdvFD5Ncw85dPSO9EPCUAWCbAAPmfAIsdCztMRC
	jQnRWeiuKx6ZqM3ZZWN/s3SVjDuaAxfrLhi/gxNHzMcEcOjQbN0I5iSC50aRBV/ytyezZRNEq6M
	FKzx29dm4H0UdOj6L0zo0FLMrKzh09Dngqvq1ocyrWV537CChI2JWKpcrmR7g+4J0v30YATurxN
	9HLY5nQclApGKggjrsBPuHk/fzO6v9A/HxID7JxgccAs2aN6Lha0cHu29tzgkQae+TN6y8AEluU
	loz3A1DVWHeirLoExFRybJlzvnHgs73vR1O+ic27YyC4Nng==
X-Received: by 2002:a05:600c:314a:b0:4a2:fd2:985d with SMTP id 5b1f17b1804b1-4ac1775316amr368381185e9.12.1793829531676;
        Wed, 04 Nov 2026 13:58:51 -0800 (PST)
Received: from tachyon.internal (2.155.41.158.dyn.user.ono.com. [2.155.41.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b56f5e65b0sm15526735e9.11.2026.11.04.13.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 13:58:51 -0800 (PST)
From: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
To: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	dlemoal@kernel.org,
	iav@iav.lv,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
Subject: [PATCH v5 0/2] PCI: rockchip-host: Make the PERST# inactive delay configurable
Date: Wed,  4 Nov 2026 21:58:45 +0000
Message-ID: <20261104215848.2087944-1-ehbello@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_135854_021138_460652B4 
X-CRM114-Status: GOOD (  14.57  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

cm9ja2NoaXBfcGNpZV9ob3N0X2luaXRfcG9ydCgpIHdhaXRzIFRfUFZQRVJMLCAxMDAgbXMsIGJl
Zm9yZSByZWxlYXNpbmcKUEVSU1QjLiBUaGUgbGluZSBoYXMgYmVlbiBhc3NlcnRlZCBzaW5jZSB0
aGUgR1BJTyB3YXMgYWNxdWlyZWQgZWFybHkgaW4KcHJvYmUsIHNvIHRoYXQgd2FpdCBpcyBhbHNv
IHRoZSByZXNldCBwdWxzZSB3aWR0aC4KCkVuZHBvaW50cyBkbyBub3QgYWdyZWUgb24gd2hhdCB0
aGV5IHdhbnQgdGhlcmUuIFNvbWUgbmVlZCBsb25nZXIgdG8gc2V0dGxlOwphIEpNQjU4NSBiZWhp
bmQgYSBST0NLIFBpIDRDIHN0b3BzIGFuc3dlcmluZyBjb25maWd1cmF0aW9uIHJlYWRzIGlmIHRo
ZQpwdWxzZSBpcyBzdHJldGNoZWQgdGhhdCBmYXIuIFRoZSBtZWFzdXJlbWVudHMgYXJlIGluIHBh
dGNoIDIuCgpTbywgYXMgU2hhd24gc3VnZ2VzdGVkLCB0YWtlIHRoZSBkZWxheSBmcm9tIHRoZSBk
ZXZpY2UgdHJlZSBpbnN0ZWFkIG9mCmNoYW5naW5nIGl0IGZvciBldmVyeW9uZS4gUGF0Y2ggMSBk
b2N1bWVudHMgcm9ja2NoaXAscGVyc3QtaW5hY3RpdmUtbXMgYW5kCnJvY2tjaGlwLHMyci1wZXJz
dC1pbmFjdGl2ZS1tcywgbmFtZWQgYWZ0ZXIgdGhlIHByb3BlcnRpZXMgdGhlIFJvY2tjaGlwCnZl
bmRvciBkcml2ZXIgYWxyZWFkeSBjYXJyaWVzIGZvciB0aGUgZHdjLWJhc2VkIGNvbnRyb2xsZXJz
OyBwYXRjaCAyIHJlYWRzCnRoZW0uIFRoZSBkZWZhdWx0cyBsZWF2ZSBjdXJyZW50IGJlaGF2aW91
ciB1bnRvdWNoZWQsIHNvIHRoZXJlIGlzIG5vIEZpeGVzOgp0YWcgYW5kIG5vdGhpbmcgdG8gYmFj
a3BvcnQuCgpUaGVyZSBpcyBubyBEVCBwYXRjaCBmb3IgbXkgYm9hcmQgaW4gdGhpcyBzZXJpZXMu
IEl0cyBKTUI1ODUgc2l0cyBvbiBhIFJhZHhhClBlbnRhIFNBVEEgSEFULCB3aGljaCBpcyBub3Qg
ZGVzY3JpYmVkIHVwc3RyZWFtLCBzbyB0aGUgcHJvcGVydHkgYmVsb25ncyBpbgphbiBvdmVybGF5
LgoKVGVzdGVkIG9uIHRoYXQgYm9hcmQgd2l0aCB0aGUgc2VyaWVzIGJhY2twb3J0ZWQgdG8gNi4x
OC41OCwgdGhlIGtlcm5lbApUYWxvcyBMaW51eCBzaGlwczsgb25seSB0aGUgY29udGV4dCBvZiB0
aGUgI2luY2x1ZGUgaHVuayBkaWZmZXJzLiBPbmUKa2VybmVsIGJ1aWxkLCB0d28gaW1hZ2VzIHRo
YXQgZGlmZmVyIG9ubHkgaW4gdGhlIG92ZXJsYXk6IHdpdGgKcm9ja2NoaXAscGVyc3QtaW5hY3Rp
dmUtbXMgPSA8MD4sIHRoZSBKTUI1ODUgZW51bWVyYXRlZCBvbiA0IGJvb3RzIG91dCBvZgo0OyB3
aXRob3V0IHRoZSBwcm9wZXJ0eSwgYWxsIDMgYm9vdHMgaGl0IHRoZSBzYW1lIFNFcnJvciBpbgpy
b2NrY2hpcF9wY2llX3JkX2NvbmYoKSBkdXJpbmcgcHJvYmUgdGhhdCB0aGUgYm9hcmQgaGl0cyB3
aXRob3V0IHRoZQpzZXJpZXMuCgpJZ29yLCBzaW5jZSB0aGUgZGVmYXVsdHMgYXJlIHVuY2hhbmdl
ZCwgYSBIZWxpb3M2NCB3aXRoIG5vIERUIGNoYW5nZSBzaG91bGQKYmVoYXZlIGV4YWN0bHkgbGlr
ZSBwbGFpbiBtYWlubGluZS4gSWYgeW91IHdhbnQgdG8gZXhlcmNpc2UgdGhlIHByb3BlcnR5CmFz
IHdlbGw6CgoJJnBjaWUwIHsKCQlyb2NrY2hpcCxwZXJzdC1pbmFjdGl2ZS1tcyA9IDwxMD47Cgl9
OwoKQSB3YWl0IG9mIDAgdG8gMTUgbXMgZW51bWVyYXRlZCAxNyB0aW1lcyBvdXQgb2YgMTcgb24g
bXkgYm9hcmQsIGJ1dCB5b3VyCnNsb3Qgc3VwcGx5IGlzIGEgR1BJTy1zd2l0Y2hlZCByZWd1bGF0
b3Igd2hlcmUgbWluZSBpcyBhbHdheXMgb24sIHNvIEkKd291bGQgbm90IHRha2UgbXkgbnVtYmVy
cyBhcyBhIGd1aWRlIGZvciB5b3Vycy4KCnY0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNjEwMjgwMTQxMTYuMjQzMjQyNS0xLWVoYmVsbG9AZ21haWwuY29tLwp2MyAoZGlzY3Vzc2lv
biB3aXRoIFNoYXduKTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMDI4MDA1NjAz
LjIzOTkyMjAtMS1laGJlbGxvQGdtYWlsLmNvbS8KCkNoYW5nZXMgaW4gdjU6Ci0gVGFrZSB0aGUg
ZGVsYXkgZnJvbSB0aGUgZGV2aWNlIHRyZWUsIGFzIHN1Z2dlc3RlZCBieSBTaGF3biBMaW4sIGlu
c3RlYWQgb2YKICBzaG9ydGVuaW5nIHRoZSB3YWl0IGF1dG9tYXRpY2FsbHkgd2hlbiB0aGUgc2xv
dCBzdXBwbGllcyB3ZXJlIGZvdW5kCiAgYWxyZWFkeSBlbmFibGVkLgotIERyb3Agc3RydWN0IHJv
Y2tjaGlwX3BjaWU6OnN1cHBsaWVzX3ByZV9lbmFibGVkIGFuZAogIHJvY2tjaGlwX3BjaWVfc3Vw
cGxpZXNfZW5hYmxlZCgpIGFsdG9nZXRoZXIuIFRoYXQgYWxzbyByZXRpcmVzIHRoZSBob2xlCiAg
U2hhd24gZm91bmQgaW4gdGhlbTogZGV2bV9yZWd1bGF0b3JfZ2V0KCkgcmV0dXJucyBhIGR1bW15
IHJlZ3VsYXRvciBmb3IgYW4KICBhYnNlbnQgcmFpbCBhbmQgdGhlIGR1bW15IHJlcG9ydHMgaXRz
ZWxmIGVuYWJsZWQsIHNvIHRoZSBvbGQgdGVzdCB3YXMKICB1bmNvbmRpdGlvbmFsbHkgdHJ1ZSBv
biBhIGJvYXJkIGRlc2NyaWJpbmcgbm9uZSBvZiBpdHMgc3VwcGxpZXMsIG9uIHJlc3VtZQogIGlu
Y2x1ZGVkLgotIEtlZXAgdGhlIDEwMCB1cyBmbG9vciBmcm9tIHY0LCBub3cgZm9yIGFueSB2YWx1
ZSBhIGJvYXJkIGFza3MgZm9yLgotIFNwbGl0IGludG8gYSBiaW5kaW5ncyBwYXRjaCBhbmQgYSBk
cml2ZXIgcGF0Y2guCgpDaGFuZ2VzIGluIHY0OgotIEhvbGQgUEVSU1QjIGZvciBUX1BFUlNULUNM
SyBpbiB0aGUgc2hvcnRlbmVkIHBhdGguIE9sZCBwb3dlciBkb2VzIG5vdAogIGltcGx5IGFuIG9s
ZCBSRUZDTEs6IGluaXRfcG9ydCgpIHJ1bnMgcGh5X2luaXQoKS9waHlfcG93ZXJfb24oKSBvbiBl
dmVyeQogIHByb2JlIGFuZCByZXN1bWUsIHNvIHRoZSBQTEwgcmVsb2NrcyBtaWNyb3NlY29uZHMg
YmVmb3JlIHRoZSByZWxlYXNlLgogIE1lYXN1cmVkIDcyLTc1IHVzIGJ5IGZ0cmFjZSwgaS5lLiBh
IHJlYWwgdmlvbGF0aW9uIG9mIHRoZSAxMDAgdXMgbWluaW11bS4KCkVucmlxdWUgSGVybsOhbmRl
eiBCZWxsbyAoMik6CiAgZHQtYmluZGluZ3M6IFBDSTogcm9ja2NoaXAscmszMzk5LXBjaWU6IEFk
ZCBQRVJTVCMgaW5hY3RpdmUgZGVsYXkKICAgIHByb3BlcnRpZXMKICBQQ0k6IHJvY2tjaGlwLWhv
c3Q6IE1ha2UgdGhlIFBFUlNUIyBpbmFjdGl2ZSBkZWxheSBjb25maWd1cmFibGUKCiAuLi4vYmlu
ZGluZ3MvcGNpL3JvY2tjaGlwLHJrMzM5OS1wY2llLnlhbWwgICAgfCAxNSArKysrKysrKysrKwog
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYyAgIHwgMjYgKysrKysr
KysrKysrKysrKy0tLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmggICAg
ICAgIHwgIDIgKysKIDMgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCi0tIAoyLjU2LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
