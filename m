Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F554CD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 07:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/S0AbfkTcdsXSUhwxYmZCjkHz9CXLw+Eb+r3dgCug+0=; b=OtkX8Y0AXHBwXX
	uoFOHVhWYRw76w3xdCmmfGfZhSDcMKsWEBzPLZcdY8J5wo2KL9qHC6EHuNMsooeAs9S11FdXxVCxS
	eA/7/M5ScagcCH2TvRAOnmHfKqpTZ5ofVdYTXEsUlNFE4VohX8wMBaapCOfXfsQhAOC4DYDcC2hS8
	YFww0NCX9sU/Yzwf38WVCAARc+F5AIq/sBtvjEqSN45MAy4kzgksuTxLTK7wpSvewVQZPPVujtcx6
	3dZIQlhs4/eIo7yXSSDLNQ45ffiXmE4QVsiWkw8OJWPPQD4GfTrgKGIzID5XN8bLyzrnobDkyGlIe
	G1swdy3Wm7OzgFcdkHNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvWx-0000000Egyz-05AE;
	Wed, 03 Apr 2024 07:59:35 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvWr-0000000EguW-0lWq;
	Wed, 03 Apr 2024 07:59:31 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6e8f765146fso5174881b3a.0;
        Wed, 03 Apr 2024 00:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712131168; x=1712735968; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YeXMBV/DDbXYMSIOdbEvhHUID1HnBQQHNSOBZwWjgL8=;
        b=gQ2pwL75t5fx/RC1wR8i64qzklzDb1vSobtkD/j3v2ipjLlYfdJo9NB/UFM+56OUBH
         mxMqPb1glGh3H4YWXN8dOGix3rlMkCt8Q5lyI8lIDTvQ3lcPyRf8Bv55tsuFpkIoJaoO
         EWZPBsWtt9fM/Tyslt92y2sgQNA+1vi+Nb8oj1zEN3rfOBJCvdsMHsnRDpmHDhfwg+g9
         oA4OlzJfHbldY5Y7kx7terTuArmh4fusHV+4Xj60WJfUVWUK52FF5bJuedfikOM3dPY+
         Y8o9lsDOIgRtlq0NXvOKzHfo6WvkPMrFrY3UcqrMvrlTb/lq4nhokrEzh3HQkpd3BvI+
         5y9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712131168; x=1712735968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YeXMBV/DDbXYMSIOdbEvhHUID1HnBQQHNSOBZwWjgL8=;
        b=J1JROA5sZ82QJ3OLOgQy2WuJrsn9iCF3OSKLUyR/j4krVT0eZZcYb28ynSIsl2AIQd
         09sYOSCTTlEi2KMFehKovUEYYG3Re7YcW1ENM+CRXdZuaJ2pDYR7CTpHgEYbsRkRL6NV
         EkPdPAAS8x/RIK3HynlaTLOLiLuHnftalFV6GV27YZNNAjLnd4WvJ5tRvWkL9mtSl/vk
         uf25LtzkcB1VfAOoHRAMRX/TeeDlh6JZHoclzEk5/3iBNB/E7y+Nwz3qF/hVMgtC4jjm
         NMpW3uFvE+i36NanTeznAyKqhpFYx4qaWNH9qluRi/7PwVuuEsA4rQhS9l03ZVS9MlCR
         zcQg==
X-Forwarded-Encrypted: i=1; AJvYcCVUOwLCrO4w8ZeNC26AgCduBuK4lw6lyJZ2dkabIqFN3Ojh1rmVEyFIO9MypsF0ogHyHXCKx7NkcZL+SN7pY/vk51sAiUrvEtww3y7iZTJq4ci4MrPNyflte67w8eNcFamG+0NfAkalEBPF9PmI+6Upn7e0G9byQkY=
X-Gm-Message-State: AOJu0YxL4fAQUQiJLLDxzCbpHfA0mMMvP2h7YLhETuDH60FqSeJQTuAC
	KJnrvI/tGFqaZRXZ3thNjF4kP2vMt7SJhCcc8ztqC0MyzDhN6S09
X-Google-Smtp-Source: AGHT+IGy1/ipZnnxBslaBMOtfbRbw5ZxCaIZRbUfDoiUz9M2U3w3UDxRiZx7620AoOukewYjyFNLmA==
X-Received: by 2002:a05:6a00:ccb:b0:6eb:3ffa:8131 with SMTP id b11-20020a056a000ccb00b006eb3ffa8131mr9378678pfv.12.1712131167725;
        Wed, 03 Apr 2024 00:59:27 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id fk15-20020a056a003a8f00b006e6c74eac34sm11108652pfb.151.2024.04.03.00.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:59:27 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	robh@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: Re: [PATCH] arm64: dts: rockchip: remove startup-delay-us from vcc3v3_pcie2x1l0 on rock-5b
Date: Wed,  3 Apr 2024 15:59:16 +0800
Message-Id: <20240403075916.1025550-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <2535182.Sgy9Pd6rRy@diego>
References: <2535182.Sgy9Pd6rRy@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_005929_404212_B0D84931 
X-CRM114-Status: GOOD (  10.26  )
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

SGkgSGVpa28sCgpUdWUsIDAyIEFwciAyMDI0IDEyOjM5OjE3ICswMjAwLCBIZWlrbyBTdMO8Ym5l
ciB3cm90ZToKPkRvZXMgdGhlIHBjaWUgZHJpdmVyIGVuYWJsZSB0aGUgcmVndWxhdG9yIHRvbyBs
YXRlIHNvbWVob3c/ClRoZSBwY2llIGRyaXZlciB3aWxsIGVuYWJsZSB0aGUgcmVndWxhdG9yIGlt
ZWRpYXRlbHkgd2hlbiBpdCBpcyBwcm9iZWQuCkkgYWRkZWQgbG9nIGF0IHdoZW4gZHJpdmVyIGlz
IHByb2JlZCBhbmQgd2hlbiByZWd1bGF0b3IgaXMgZW5hYmxlZC4KSGVyZSBpcyB0aGUgbG9nIHdp
dGggInN0YXJ0dXAtZGVsYXktdXMgPSA8NTAwMDA+IjoKYGBgClsgICAgMS41NzI5OTFdIHJvY2tj
aGlwLWR3LXBjaWUgYTQwODAwMDAwLnBjaWU6IHJvY2tjaGlwX3BjaWVfcHJvYmUgc3RhcnQKWyAg
ICAxLjU3MzY5N10gcm9ja2NoaXAtZHctcGNpZSBhNDA4MDAwMDAucGNpZTogZ29pbmcgdG8gZW5h
YmxlIHZwY2llM3YzIHJlZ3VsYXRvcgpbICAgIDEuNTc1MTk0XSByb2NrY2hpcC1kdy1wY2llIGE0
MDgwMDAwMC5wY2llOiBlbmFibGUgdnBjaWUzdjMgcmVndWxhdG9yIGRvbmUKYGBgCgpBbmQgaGVy
ZSBpcyB0aGUgbG9nIHdpdGhvdXQgInN0YXJ0dXAtZGVsYXktdXMiOgpgYGAKWyAgICAxLjUxODQ5
MF0gcm9ja2NoaXAtZHctcGNpZSBhNDA4MDAwMDAucGNpZTogcm9ja2NoaXBfcGNpZV9wcm9iZSBz
dGFydApbICAgIDEuNTE4NjAzXSByb2NrY2hpcC1kdy1wY2llIGE0MDgwMDAwMC5wY2llOiBnb2lu
ZyB0byBlbmFibGUgdnBjaWUzdjMgcmVndWxhdG9yClsgICAgMS41MTg2MTBdIHJvY2tjaGlwLWR3
LXBjaWUgYTQwODAwMDAwLnBjaWU6IGVuYWJsZSB2cGNpZTN2MyByZWd1bGF0b3IgZG9uZQpgYGAK
CldlIGNhbiBzZWUgc3RhcnR1cC1kZWxheS11cyB3aWxsIGRlbGF5IHRoZSBkcml2ZXIgcHJvYmUu
CgpJIGFsc28gdGFrZSBhIGxvb2sgYXQgcm9ja2NoaXAncyBTREsga2VybmVsLCB0aGVpciBwY2kg
ZHJpdmVyIGlzIHByb2JlZAp2ZXJ5IGxhdGU6CmBgYApbICAgIDMuMzk4NjgyXSBkdy1wY2llIGZl
MTcwMDAwLnBjaWU6IGludmFsaWQgcmVzb3VyY2UKWyAgICAzLjM5ODY4Nl0gZHctcGNpZSBmZTE3
MDAwMC5wY2llOiBGYWlsZWQgdG8gaW5pdGlhbGl6ZSBob3N0ClsgICAgMy4zOTg2ODhdIGR3LXBj
aWU6IHByb2JlIG9mIGZlMTcwMDAwLnBjaWUgZmFpbGVkIHdpdGggZXJyb3IgLTIyClsgICAgMy4z
OTkzOTZdIHJrLXBjaWUgZmUxNzAwMDAucGNpZTogaW52YWxpZCBwcnNudC1ncGlvcyBwcm9wZXJ0
eSBpbiBub2RlClsgICAgMy4zOTk0MTBdIHJrLXBjaWUgZmUxNzAwMDAucGNpZTogTG9va2luZyB1
cCB2cGNpZTN2My1zdXBwbHkgZnJvbSBkZXZpY2UgdHJlZQpbICAgIDMuNDA1MTk1XSByay1wY2ll
IGZlMTcwMDAwLnBjaWU6IGhvc3QgYnJpZGdlIC9wY2llQGZlMTcwMDAwIHJhbmdlczoKWyAgICAz
LjQwNTI1M10gcmstcGNpZSBmZTE3MDAwMC5wY2llOiAgICAgICBJTyAweDAwZjIxMDAwMDAuLjB4
MDBmMjFmZmZmZiAtPiAweDAwZjIxMDAwMDAKWyAgICAzLjQwNTI4M10gcmstcGNpZSBmZTE3MDAw
MC5wY2llOiAgICAgIE1FTSAweDAwZjIyMDAwMDAuLjB4MDBmMmZmZmZmZiAtPiAweDAwZjIyMDAw
MDAKWyAgICAzLjQwNTMxMF0gcmstcGNpZSBmZTE3MDAwMC5wY2llOiAgICAgIE1FTSAweDA5ODAw
MDAwMDAuLjB4MDliZmZmZmZmZiAtPiAweDA5ODAwMDAwMDAKWyAgICAzLjQwNTM3Ml0gcmstcGNp
ZSBmZTE3MDAwMC5wY2llOiBpQVRVIHVucm9sbDogZW5hYmxlZApbICAgIDMuNDA1MzgxXSByay1w
Y2llIGZlMTcwMDAwLnBjaWU6IGlBVFUgcmVnaW9uczogOCBvYiwgOCBpYiwgYWxpZ24gNjRLLCBs
aW1pdCA4RwpbICAgIDMuNjY2OTE3XSByay1wY2llIGZlMTcwMDAwLnBjaWU6IFBDSWUgTGluayB1
cCwgTFRTU00gaXMgMHgzMDAxMQpbICAgIDMuNjY2OTMyXSByay1wY2llIGZlMTcwMDAwLnBjaWU6
IFBDSWUgR2VuLjEgeDEgbGluayB1cApbICAgIDMuNjY3MTM5XSByay1wY2llIGZlMTcwMDAwLnBj
aWU6IFBDSSBob3N0IGJyaWRnZSB0byBidXMgMDAwMjoyMApgYGAKCkFuZCBpdCBpcyByZXBvcnRl
ZCB0aGF0IHN0YXJ0dXAtZGVsYXktdXMgaXMgbmVjZXNzYXJ5IGluIHJvY2tjaGlwJ3MgU0RLCmtl
cm5lbC4gQnV0IGluIG1haW5saW5lIGtlcm5lbCBpdCBpcyBkaWZmZXJlbnQuCgpKaWFuZmVuZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
