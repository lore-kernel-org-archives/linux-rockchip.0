Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1601FECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 17:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJQ53OlT/+PE7alMZMbL7pu2/LVYObtN2fKE6/CW0Tg=; b=BLsOOgZHghQkjT
	yLd3sQWXmUxmu/IyU0/kdTrDpKQtk0R/U5+M4polNwgIJEDiojMhqNqZ52vxGKdJQBN9HWn86w8ED
	wjauF3z2Dbl/81lM02wq6xdGpDgojkaURKqA1Wagsp5wNiflLruP7lWrDLs9B2KBjyisZ4shbfk6d
	DHCJK64wtE5VHs4YLG+VWHhM4RqpWrSWSPlpVijnbygWDZFUU2WhdZZTTdija70bpW2e1xRGmdCsD
	GjhIWziXj8BZGzaL0fZrbyCSVSfAVxZJhu8sm3OAIqJHnhLz4/6m/UAEQtDQqfJM7HvJ+1XS+BjX4
	76PF7LUEWKBAcwudX45A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcpy-00GBjn-2p; Tue, 06 Sep 2022 17:58:14 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcps-00GBen-NO; Tue, 06 Sep 2022 17:58:11 +0000
Received: by mail-lf1-x134.google.com with SMTP id z25so18598930lfr.2;
        Tue, 06 Sep 2022 10:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=ZTVrtBjQcjDz2HXOGZHir7kyjFYYhDnVRv7D7CHaO+8=;
        b=KK7KHRMtwl9+8HYywuHrGYpuJRzYwogYCmFt11etZs1KJ9SU9xCFEX2Dd3uE+lgIZp
         Q9ubct+zSFOd8O+jiZT7A1AiRpnzCnhgmiJ6EiDql57zRJDjvpG/ekbVso1zPLzrHrmV
         cddZOHdxFPyQB/Xm7KuY5iN4AqkUXfcNe+Hv9xhyB2IdXvK03qUATSyemy5eZ0LyVIar
         Mx12NCKgBNN8CPX2tOllFh1edhngP+27yZMPATW594l4ADyts39mr/v1nNa5HdpWoD7s
         iRlyA+UJM8rAhYb+HdRZBz05aGZfbv/jXahYATpFM42RN4NFiscIHN4dZxnOX+YQYbkf
         /yWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ZTVrtBjQcjDz2HXOGZHir7kyjFYYhDnVRv7D7CHaO+8=;
        b=2eMcyYBlTkwSfnepQXJGDV9WlzgE02lsStLmo1R+t5BwUEWMLs0+z+EXFBXSXRv64z
         zSpVHV0ay52JrOaLeRqGOQuA+IkeznATeWtRxNzAfXHuAiBJsLg6aCcF+QJfDMZG2fLv
         U4UlffP17PCl7M1hSqvXyD2WhF2wV3njo+LwUzWXPgizvFXcTZlP1EUZtMab0bg4NDw0
         HxkkZjf7CERyugiu9ELmw2rusJFymFHcd3H7vT2XsyGtfmz2cll4zTHYfWReoUDmnTvj
         fsysBvYQmcIeSIBKompHbcYrhZOhS4zO+FdOz05nHTWyMP3P1By3ikdIR0LhH6U/9l8L
         VwgQ==
X-Gm-Message-State: ACgBeo04W8b/iC+mjAjdvYNJIUNQN9Q0tM/D08u0hViTD00ExfuqMxug
	JHQ/jUKSJ8T+OEKMgVn+pWoZ5++uB2CjHIUEP+Y=
X-Google-Smtp-Source: AA6agR6JaySd7fHnpjySEXtyO5OIRPGjYFXIHEOWdxj6R0A4R9Jb3TlvKFf1KOTkbV0TvdpzisNEqC4cOUxAPw3EmF0=
X-Received: by 2002:a05:6512:2083:b0:496:272:627d with SMTP id
 t3-20020a056512208300b004960272627dmr5417670lfr.115.1662487084959; Tue, 06
 Sep 2022 10:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220906174823.28561-1-macroalpha82@gmail.com>
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
From: Maya Matuszczyk <maccraft123mc@gmail.com>
Date: Tue, 6 Sep 2022 19:57:28 +0200
Message-ID: <CAO_MupLcjY=3mWA7_RN4AAPir1Gu_GR4q1=5_9wdSEi-qcHKSQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] rockchip-dsi for rk3568
To: Chris Morgan <macroalpha82@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-phy@lists.infradead.org, 
	devicetree <devicetree@vger.kernel.org>, dri-devel@lists.freedesktop.org, 
	cl@rock-chips.com, Sascha Hauer <s.hauer@pengutronix.de>, 
	Peter Geis <pgwipeout@gmail.com>, vkoul@kernel.org, kishon@ti.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_105808_864001_D5A43A3C 
X-CRM114-Status: GOOD (  20.32  )
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

SGVsbG8sCldoYXQgb3RoZXIgcGF0Y2hlcyB3b3VsZCBJIG5lZWQgdG8gYXBwbHkgdG8gdGVzdCB0
aGlzIHNlcmllcwpvbiBBbmJlcm5pYyBSRzUwMz8KCkJlc3QgUmVnYXJkcywKTWF5YSBNYXR1c3pj
enlrCgoKd3QuLCA2IHdyeiAyMDIyIG8gMTk6NTIgQ2hyaXMgTW9yZ2FuIDxtYWNyb2FscGhhODJA
Z21haWwuY29tPiBuYXBpc2HFgihhKToKPgo+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3Jn
YW5AaG90bWFpbC5jb20+Cj4KPiBUaGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBkc2kg
YW5kIGRwaHkgY29udHJvbGxlcnMgb24gdGhlCj4gUm9ja2NoaXAgUkszNTY4LiBJIGNhbiBjb25m
aXJtIHRoYXQgZm9yIHRoZSBSb2NrY2hpcCBSSzM1NjggdGhpcwo+IGN1cnJlbnQgc2VyaWVzIERP
RVMgV09SSyBub3csIGJ1dCBpdCByZXF1aXJlcyByb2xsaW5nIGJhY2sgY2xrIGNoYW5nZXMKPiBt
YWRlIGZvciB0aGUgSERNSSBkcml2ZXIuIElmIHRoZSBjbG9jayBjaGFuZ2VzIGFyZSBub3Qgcm9s
bGVkIGJhY2ssIHRoZQo+IGltYWdlIG9uIHRoZSBzY3JlZW4gaXMgc2hpZnRlZCBhYm91dCAxMDAg
cGl4ZWxzIHRvIHRoZSByaWdodC4KPgo+IENsayBjaGFuZ2VzIGluIHF1ZXN0aW9uOgo+IGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC9jb21taXQvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU2OC5jP2lkPWZmMzE4N2Vh
YmI1Y2U0NzhkMTViNmVkNjJlYjI4Njc1NmFkZWZhYzMKPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0L2RyaXZl
cnMvY2xrL3JvY2tjaGlwL2Nsay1yazM1NjguYz9pZD02ZTY5MDUyZjAxZDkxMzEzODhjZmNmYWVl
OTI5MTIwMTE4YTI2N2Y0Cj4KPiBUZXN0ZWQgb24gYW4gQW5iZXJuaWMgUkc1MDMgYW5kIFJHMzUz
UCB3aXRoIGNsb2NrIGNoYW5nZXMgcm9sbGVkIGJhY2ssCj4gdGhlIGhhcmR3YXJlIHdvcmtzIGNv
cnJlY3RseSBvbiBib3RoIGRldmljZXMuCj4KPiBDaGFuZ2VzIHNpbmNlIFJGQ3YxOgo+ICAtIElk
ZW50aWZpZWQgY2F1c2Ugb2YgaW1hZ2Ugc2hpZnQgKGNsb2NrIGNoYW5nZXMpLgo+ICAtIE5vdGVk
IHRoYXQgZHJpdmVyIHdvcmtzIG5vdy4KPiAgLSBBZGRlZCBkZXZpY2V0cmVlIG5vZGVzIGZvciBy
azM1NnguZHRzaS4KPgo+IENocmlzIE1vcmdhbiAoNSk6Cj4gICBkdC1iaW5kaW5nczogZGlzcGxh
eTogcm9ja2NoaXAtZHNpOiBhZGQgcmszNTY4IGNvbXBhdGlibGUKPiAgIGR0LWJpbmRpbmdzOiBw
aHktcm9ja2NoaXAtaW5uby1kc2lkcGh5OiBhZGQgY29tcGF0aWJsZSBmb3IgcmszNTY4Cj4gICBk
cm0vcm9ja2NoaXA6IGRzaTogYWRkIHJrMzU2OCBzdXBwb3J0Cj4gICBwaHkvcm9ja2NoaXA6IGlu
bm8tZHNpZHBoeTogQWRkIHN1cHBvcnQgZm9yIHJrMzU2OAo+ICAgYXJtNjQ6IGR0czogcm9ja2No
aXA6IEFkZCBEU0kgYW5kIERTSS1EUEhZIG5vZGVzIHRvIHJrMzU2eAo+Cj4gIC4uLi9kaXNwbGF5
L3JvY2tjaGlwL2R3X21pcGlfZHNpX3JvY2tjaGlwLnR4dCB8ICAgMSArCj4gIC4uLi9iaW5kaW5n
cy9waHkvcm9ja2NoaXAscHgzMC1kc2ktZHBoeS55YW1sICB8ICAgMSArCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kgICAgICB8ICA3MiArKysrKysrCj4gIC4uLi9n
cHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMgICB8ICA1MSArKysrLQo+ICAu
Li4vcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYyAgfCAyMDQgKysrKysr
KysrKysrKystLS0tCj4gIDUgZmlsZXMgY2hhbmdlZCwgMjgxIGluc2VydGlvbnMoKyksIDQ4IGRl
bGV0aW9ucygtKQo+Cj4gLS0KPiAyLjI1LjEKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
