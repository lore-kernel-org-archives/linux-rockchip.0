Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 997CDC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Mar 2022 16:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQC7JCLM5IXel/XKoQRtnQCXFJSwKi7kmraBxGEtjjE=; b=21lGrugpG03QEp
	ZyQlR5l1cfMYgmTyHuTdZBLMFuYK6UJ2ZlE4deDfsMuK9LP3t7DPm6LBIEtPwDA50IEEJUHy2ciUB
	d7Mtgh1kXawDHUKf6vqR0s4i9SNbsdKp6NQpjRVDRdw4vIUV2ynsmWMPWifPDXoYe/k/mU7EVVVNf
	RwEkU1QoQkqbaSx2+qluYU6KNT8BebyVWOI/50KT61tkUotqOtiDYu4fqNgbizwsDfMUlyDA3W+JO
	vBceDes/ZQkxriTs1GYuo6pvCseW7KiLHZkX40rXI0m41X0tSQ6MV3Xi8G5tE9QyfGdYll7mIPRaA
	fScGp6I3xH8/NNBBoKrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTQry-0037vw-Lv; Sun, 13 Mar 2022 16:14:58 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTQrv-0037vU-Uh
 for linux-rockchip@lists.infradead.org; Sun, 13 Mar 2022 16:14:57 +0000
Received: by mail-lj1-x235.google.com with SMTP id y17so1517348ljd.12
 for <linux-rockchip@lists.infradead.org>; Sun, 13 Mar 2022 09:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=MdfBfkBUpL2bSvoudLMFBEa9b6pECpCEDNH8K1hwrao=;
 b=L2N2StlxKHhQG9J2PUUQ8BMT81Woo2WARfqwCCCaRsZCgYrB8qKZW7nYAVcxEV0MvG
 tAmI14/Fy2JGdqKqs3PVqlGuqRQ8BpIEoEsS7WIDwUntQH4fhtauk18n+SdaBbTbknEg
 T43aEH7UMyT7VepC/Q6G9X121xGeTZWPVzIIumRjSQd+j/Vsp8I3qJKLKqIHRBdZT7HA
 IFOc9cqMtBzSi/mt6pNoqCZZ9zAy3mGmED4YPsP4Q4Bi1DVExMV9Xnghx4G6cvj1mZcn
 G+f98Oe6HB9hQIR/VdLOmejfPMCiVKHSSa//IqLdDWqFJHs/Hn1z4ifHEnaaCzJ5VGYV
 oyIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=MdfBfkBUpL2bSvoudLMFBEa9b6pECpCEDNH8K1hwrao=;
 b=ltLOD675ZB+UTww44dbTPfzePZNIUOy0EP88nNFjnCuTwOyJuO05t3LnD89rDzd9ye
 lONJQZntEjZcyJStdgENCt5H6etaWqtUk/OfjmJymNDlVmN6Z9v4McsRqDQr7f5JzbVB
 CuDMGzJUlNx1Kqzpe1vRlQKSp9GIgH3+Odcw/27moF4VoLP0Ns0eEziulTtjPSvadfJZ
 wfSQOxu92s0zS/uxLff3VpSr7n8gSPUglDGNTcCQfw5vLUQitSV4uhhEzgW0jSC4+hHl
 5bz2GXMVmzVHZvXAlRCDsGnOJ8PSvISC0U2RI8oRYx96lLfrZjIewyd8tOqtqTZGFDHH
 EyCA==
X-Gm-Message-State: AOAM533IkuRGW+tSSb73AFWSkAEjdXBWis9ZPGxe+DB6UHofyY1ES7g0
 qm5IAZB7OwZoXfu+qAWD4PQ=
X-Google-Smtp-Source: ABdhPJywSUqzwjhi8sTT2bXMPlpeMIA9hr6XzmiR9VlakP+DJzJlrecpRXrO/NRoaY3lGt7mgYEN8Q==
X-Received: by 2002:a2e:320c:0:b0:247:ec95:fdea with SMTP id
 y12-20020a2e320c000000b00247ec95fdeamr11940110ljy.288.1647188093586; 
 Sun, 13 Mar 2022 09:14:53 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 f17-20020a2e1f11000000b00247f8eb86a7sm3158089ljf.108.2022.03.13.09.14.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Mar 2022 09:14:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYq06QSmFAwCuTmBYy4LfQAQDxzx2PGc8HOB1iEjxXHGyg@mail.gmail.com>
Date: Sun, 13 Mar 2022 17:14:49 +0100
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Pierre-Hugues Husson <phh@phh.me>, Archit Taneja <architt@codeaurora.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-Id: <E86F11A4-011B-43ED-90D2-BB6BA9353A3F@gmail.com>
References: <20220126202427.3047814-1-pgwipeout@gmail.com>
 <3AFD1DD4-AF0A-4ECC-B4F5-E6BD6B9F1BB7@gmail.com>
 <CAMdYzYq06QSmFAwCuTmBYy4LfQAQDxzx2PGc8HOB1iEjxXHGyg@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_091456_016414_E9B3AE6D 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAxMy4wMy4yMDIyLCBvIGdvZHouIDEzOjU2Ogo+IAo+PiAKPiAKPiBJIHdh
cyB3b3JyaWVkIGFib3V0IHRoYXQsIHRoYW5rcyBmb3IgdGVzdGluZyBpdC4KPiBDYW4geW91IHNl
bmQgbWUgdGhlIGNlY19jbGsgcmF0ZSBiZWZvcmUgYW5kIGFmdGVyIHRoaXMgcGF0Y2g/Cj4gCgpI
ZXJlIGl0IGlzOgoKd29ya2luZzoKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5h
YmxlICBwcmVwYXJlICBwcm90ZWN0ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkdXR5
ICBoYXJkd2FyZQogICBjbG9jayAgICAgICAgICAgICAgICAgICAgICAgICAgY291bnQgICAgY291
bnQgICAgY291bnQgICAgICAgIHJhdGUgICBhY2N1cmFjeSBwaGFzZSAgY3ljbGUgICAgZW5hYmxl
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KY2xrX2hkbWlf
Y2VjICAgICAgICAgICAgICAgICAgICAgIDEgICAgICAgIDIgICAgICAgIDAgICAgICAgMzI3NDMg
ICAgICAgICAgMCAgICAgMCAgNTAwMDAgICAgICAgICBZCgoKCm5vbi13b3JraW5nOgogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBlbmFibGUgIHByZXBhcmUgIHByb3RlY3QgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGR1dHkgIGhhcmR3YXJlCiAgIGNsb2NrICAgICAgICAg
ICAgICAgICAgICAgICAgICBjb3VudCAgICBjb3VudCAgICBjb3VudCAgICAgICAgcmF0ZSAgIGFj
Y3VyYWN5IHBoYXNlICBjeWNsZSAgICBlbmFibGUKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQpjbGtfaGRtaV9jZWMgICAgICAgICAgICAgICAgICAgICAgMSAg
ICAgICAgMiAgICAgICAgMCAgICAgICAzMjc2OCAgICAgICAgICAwICAgICAwICA1MDAwMCAgICAg
ICAgIFkKCgoKZG1lc2cKWyAgIDUyLjc0NTk4OF0gY2VjLWR3X2hkbWk6IG1lc3NhZ2UgNDQgdGlt
ZWQgb3V0ClsgICA1NC44NzkzMDddIGNlYy1kd19oZG1pOiBtZXNzYWdlIDQ0IHRpbWVkIG91dApb
ICAgNTcuMDEyNjU0XSBjZWMtZHdfaGRtaTogbWVzc2FnZSA4OCB0aW1lZCBvdXQKWyAgIDU5LjE0
NTk3M10gY2VjLWR3X2hkbWk6IG1lc3NhZ2UgODggdGltZWQgb3V0CgoKCnBsYXllcjoKMjAyMi0w
My0xMyAxMTowNDo0MC45MzgzNTUgRSBDRUNBZGFwdGVyOiBDTGludXhDRUNBZGFwdGVyQ29tbXVu
aWNhdGlvbjo6V3JpdGUgLSBpb2N0bCBDRUNfVFJBTlNNSVQgZmFpbGVkIC0gdHhfc3RhdHVzPTAw
IGVycm5vPTIyCjIwMjItMDMtMTMgMTE6MDQ6NDAuOTM4MzY2IEUgQ0VDQWRhcHRlcjogQ0xpbnV4
Q0VDQWRhcHRlckNvbW11bmljYXRpb246OldyaXRlIC0gaW9jdGwgQ0VDX1RSQU5TTUlUIGZhaWxl
ZCAtIHR4X3N0YXR1cz0wMCBlcnJubz0yMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
