Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22041C6FD19
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 06:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVN1wo88hiLd1R0lisTy98dLA6rnvTD4wy3CEYMgwqM=; b=stXc+r5gnJO8gK
	QNblVrZCL3/Yoy28IQ1YLnMOPnQPQjvo6RWgqRHpKQnlYp7eTT+TO6lJEepQg6m1RBpt1lUTBycqw
	4WpUqLsnijTDzKbvtSzDQgFLKpIfbyd74pHvO11A5EeBVr2k/FptckytbrliML7maF3m7AbF++Qyn
	SyzQYg1sOLi+RD1ummv9v0z5vFPQdlclZPB2l6HW72FDUi+yc3PgvauwuCo/ZGT2zowLEaDg3yOjW
	SHfo1XI50Mqhlb++6EZQuASqt9lBJjYxQYyKzfGj4haoxSrh//wHSjdtJysv3FWx+62M/hmckR2EI
	hqLRxm4xJkSpbfVnICHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pch3r-00FLoY-2O;
	Thu, 16 Mar 2023 06:26:03 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pch3n-00FLnD-23;
	Thu, 16 Mar 2023 06:26:01 +0000
Received: by mail-ed1-x533.google.com with SMTP id x3so3323156edb.10;
        Wed, 15 Mar 2023 23:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678947958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6uZ4jN92GiZ4W0MGudnlAhsr4/aq12M9FC/ERUX3tKY=;
        b=J3JSeGrqYPstvafF3+Fa30BoDbXRvsJ2uoOGfwd4Z9IX0iwzKAaJXCbr/7mEhb2gcV
         C18dejcLFksRV4C8kesIWm8aUGca5xfhgwS0Ng8hQqgdDK58VZSWa9kqWpyjoKmCDplG
         IANYmTWwyAytuuPuZp/YLDAnZaOU9a7rcX6FC4zu3sU4TKGrws3H/k11B+ASYHLbU970
         CWx43Owa7awuFEZYArLY94cJ4vIBaFN7c5luExbpYLS8iEiwoV3MBTLKZtZQ1bC+D09/
         wZoZSTmv1uxD+YfyRi8/O688gjCeQcy0a1NtG/34iTrNO27a4tMWAowMuyVz6hAmvrP0
         R97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678947958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6uZ4jN92GiZ4W0MGudnlAhsr4/aq12M9FC/ERUX3tKY=;
        b=HcC1mnQPXmD9zqxLmIaxmC0vxggi7panClgVLbW0xS/v5WKtZrsoFvU6WmRqkkUH/n
         Z1/NDYW1RjucbYhPY4giz2J2LOWeshcOqLwHwnU/dbgyi6P5a5XJX7crc2lq2sOV860j
         sEA0lcct/fKvNChE8mJRek2RAilOeyVZSBkmq1YGZstqeo8kizIM4nNssLaBKFPO3RFE
         o/ZLQk57nJxDlmiSrnejJTJtueqIbqJdVORNpFrEO5vVKnPXhdXhCOV/Ru4Z30id/P/E
         o0WPQrdKLGPh6sp8K+PRrUkGvEp0vneuGZjyN9nhkvQ93PT2KvNITEobOSIVQ4XdEb7R
         MM1w==
X-Gm-Message-State: AO0yUKXeirdZVl314No3ZXqqMPYgdDRYc1PVZAYhcaJuNiN/uGXyt+Rt
	wjtZGcesamSKvx2L+2XuxhAnwvyKCvo6ADk2Wxg=
X-Google-Smtp-Source: AK7set8UnRz6OAnYSjZpykIzZSrQeCCNq55Zjv7Ei91DkblwdmeQqQBYTYSJF8vk4HTxbUhlXKoIxTr+uKZOoZY8aNg=
X-Received: by 2002:a50:d08e:0:b0:4fe:9251:d4fc with SMTP id
 v14-20020a50d08e000000b004fe9251d4fcmr2858219edd.4.1678947957946; Wed, 15 Mar
 2023 23:25:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230315160228.2362-1-cnsztl@gmail.com> <20230315160228.2362-6-cnsztl@gmail.com>
 <CA+E=qVcL1PNMcJ5M1zHQhZNpajxLJWWGQoXYeLER+OmV5Qz33A@mail.gmail.com>
In-Reply-To: <CA+E=qVcL1PNMcJ5M1zHQhZNpajxLJWWGQoXYeLER+OmV5Qz33A@mail.gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Thu, 16 Mar 2023 14:25:45 +0800
Message-ID: <CAOP2_Tjg=Y4XRTT-WyHfTP_YgBx3PvXEHEbrMRgSHgY96C+_xA@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: enable rk809 audio codec on the
 NanoPi R5 series
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>, 
	Andy Yan <andyshrk@163.com>, Brian Norris <briannorris@chromium.org>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andrew Lunn <andrew@lunn.ch>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>, 
	Andrew Powers-Holmes <aholmes@omnom.net>, Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_232559_694702_0B6142DA 
X-CRM114-Status: GOOD (  17.84  )
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

SGksCgpPbiBUaHUsIE1hciAxNiwgMjAyMyBhdCA3OjU04oCvQU0gVmFzaWx5IEtob3J1emhpY2sg
PGFuYXJzb3VsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1hciAxNSwgMjAyMyBhdCA5
OjAz4oCvQU0gVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBU
aWFubGluZywKPgo+ID4gKyAgICAgICByazgwOS1zb3VuZCB7Cj4KPiBUaGVyZSBpcyBubyBhdWRp
byBqYWNrIG9uIG15IFI1Uywgc2VlIFsxXSBhbmQgSSBkb24ndCBzZWUgaXQgb24gUjVDCj4gZWl0
aGVyLCBzZWUgWzJdLiBJIGRvbid0IHNlZSBhdWRpbyBvdXRwdXQgb24gdGhlIHBpbiBoZWFkZXIg
ZWl0aGVyLgo+IEhvdyBpcyBpdCBzdXBwb3NlZCB0byB3b3JrPwoKSSB3YXMgY29uZnVzZWQgYnkg
dGhlIHZlbmRvciBkdHMuIEkgZm91bmQgdGhlbSBlbmFibGVkIHJrODA5IGF1ZGlvCmNvZGVjIFsx
XSxidXQgYWxzbyBkaXNhYmxlZAp0aGUgSTJTMSBURE0gYXVkaW8gY29udHJvbGxlci4gSSdtIG5v
dCBzdXJlIHdoYXQgdGhleSB3YW50IHRvIGRvLgoKQnV0IGZyb20gbXkgc2lkZSBJIGFncmVlIHRo
aXMgc2hvdWxkIG5vdCBiZSBhZGRlZC4gQW5kIHRoZSBpMnMxXzhjaApub2RlIGluIGN1cnJlbnQg
ZHRzCnNob3VsZCBiZSByZW1vdmVkIGFzIHdlbGwuCgpUaGFua3MsClRpYW5saW5nLgoKMS4gaHR0
cHM6Ly9naXRodWIuY29tL2ZyaWVuZGx5YXJtL2tlcm5lbC1yb2NrY2hpcC9ibG9iLzJiMjJmY2Nj
Y2IwYzZmZjE4YTZjOTUyZmU4MWUxM2JhNGM5YmE2YTEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtbmFub3BpNS1jb21tb24uZHRzaSNMMTI1LUwxMzgKMi4gaHR0cHM6Ly9naXRo
dWIuY29tL2ZyaWVuZGx5YXJtL2tlcm5lbC1yb2NrY2hpcC9ibG9iLzJiMjJmY2NjY2IwYzZmZjE4
YTZjOTUyZmU4MWUxM2JhNGM5YmE2YTEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjgtbmFub3BpNS1jb21tb24uZHRzaSNMNTkyLUw2MDAKCj4KPiA+ICsgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gInNpbXBsZS1hdWRpby1jYXJkIjsKPiA+ICsgICAgICAgICAgICAgICBzaW1w
bGUtYXVkaW8tY2FyZCxmb3JtYXQgPSAiaTJzIjsKPiA+ICsgICAgICAgICAgICAgICBzaW1wbGUt
YXVkaW8tY2FyZCxuYW1lID0gIkFuYWxvZyBSSzgwOSI7Cj4gPiArICAgICAgICAgICAgICAgc2lt
cGxlLWF1ZGlvLWNhcmQsbWNsay1mcyA9IDwyNTY+Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICAg
IHNpbXBsZS1hdWRpby1jYXJkLGNwdSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBzb3Vu
ZC1kYWkgPSA8JmkyczFfOGNoPjsKPiA+ICsgICAgICAgICAgICAgICB9Owo+ID4gKwo+ID4gKyAg
ICAgICAgICAgICAgIHNpbXBsZS1hdWRpby1jYXJkLGNvZGVjIHsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHNvdW5kLWRhaSA9IDwmcms4MDk+Owo+Cj4gSXQgbG9va3MgbGlrZSByazgwOSBk
b2Vzbid0IGhhdmUgI3NvdW5kLWRhaS1jZWxscyBwcm9wZXJ0eSBhbmQgaXQKPiByZXN1bHRzIGlu
IGEgd2FybmluZzoKPgo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LW5hbm9w
aS1yNXMuZHRzaTo0OC4yNy01MC41Ogo+IFdhcm5pbmcgKHNvdW5kX2RhaV9wcm9wZXJ0eSk6IC9y
azgwOS1zb3VuZC9zaW1wbGUtYXVkaW8tY2FyZCxjb2RlYzoKPiBNaXNzaW5nIHByb3BlcnR5ICcj
c291bmQtZGFpLWNlbGxzJyBpbiBub2RlIC9pMmNAZmRkNDAwMDAvcG1pY0AyMCBvcgo+IGJhZCBw
aGFuZGxlIChyZWZlcnJlZCBmcm9tIHNvdW5kLWRhaVswXSkKClllYWgsIEkgZGlkIG1pc3Mgc29t
ZSBwcm9wZXJ0aWVzIGhlcmUuIFRoZXJlIGFyZSBzb21lIG1pbm9yIGRpZmZlcmVuY2VzIGJldHdl
ZW4KdmVuZG9yIGJpbmRpbmdzIGFuZCB1cHN0cmVhbSBvbmVzLgoKPgo+IFJlZ2FyZHMsCj4gVmFz
aWx5Cj4KPiBbMV0gaHR0cHM6Ly93aWtpLmZyaWVuZGx5ZWxlYy5jb20vd2lraS9pbmRleC5waHAv
TmFub1BpX1I1Uwo+IFsyXSBodHRwczovL3dpa2kuZnJpZW5kbHllbGVjLmNvbS93aWtpL2luZGV4
LnBocC9OYW5vUGlfUjVDCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
