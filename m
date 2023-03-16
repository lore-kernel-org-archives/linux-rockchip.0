Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F85CC6FD19
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 14:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wridmyN1B4W+oxSJbTeYN3yLYSXyUnsu1BsSXZbGIVI=; b=iSI++U2R+jB4sI
	JlOzNwCTXmc9X6GTkt10vhj8clKz3iGoXXZFcjZPQu2oQwdwg8o7T511LT4IV4W+dqWslWyMIAUqz
	PxFpyXPWlHTPQqqmZ0dnrz30ed9LroyzDthGOIGWqNwDGy7q8kdepSlwvEGdeW8GYipbvuJzVLt1w
	HHZkxkpbhAUgZ2+pWg0EiKiH/ge+hR+/IKYDJmC7QHlEd/M75eBMF0ZPheAdDXRXjpJYniuM9Db+9
	0zyLfWzNerxyWA4HVuw8+oh/tlHNvITs0/Hpahbtmq65kSxxz4piWj5hf7jwtMkhzM1f2GbIgnieU
	HSA/fQs/aisRJC7fcnvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcotn-00GjWP-2K;
	Thu, 16 Mar 2023 14:48:11 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcotk-00GjVC-0b;
	Thu, 16 Mar 2023 14:48:09 +0000
Received: by mail-ed1-x534.google.com with SMTP id y4so8736202edo.2;
        Thu, 16 Mar 2023 07:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678978085;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iKWEEXtwpzWyoke4EDt/SjsZs9hzq1bNd8Ga2FZNSkY=;
        b=R2baROw3Ek92CnTov526LJmaVacryhnvdk1pmAOCFMq0bxAt8jLYnm/3vwU0Xtyebd
         tciViUG94zTQf6BBD1yMAqUykGu40R45DlkwuCeZ7kdOY2DWawvscv1JZqcw1jRa4tw9
         alitaa+86NgYQX4u48ENXgyRqPqLVnjiQbGW3ZUrZpGmeD/DGNkq5BGYjueTM1QNNgzw
         ULe/wHcltfT9nsmGMbWRHbKf2VUlGEsHzjFk070gyhYlMmpmy5ny7xzc+ZpkNwnnss68
         qx5fs2QW7uT+KSv0+Z/Lek2F+aLUU3qv1Hhfd/DQ0flZHcg2ptaBoUnGA11rbLPm5Pb/
         /7kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678978085;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iKWEEXtwpzWyoke4EDt/SjsZs9hzq1bNd8Ga2FZNSkY=;
        b=epO9YoV41ICdOE7q3IPes2pMNfrRzWVexc0IxuhoX1R0r+kQWhLOsgMTBNdDGhcv93
         NB+uUHHIZWFd2tFMN/MkuNo4dba40bDD9HFyUVu3auJPCjPAO/0aF93hhF4L7D8mFARX
         cAJpJbjDEPK0VgJrx/wiqP48Dj++eaDIOvmlbGXVEtcbWgegt8o1LfK25ESMoSF6HXh4
         8yCf3Dl+AtdIISmLW2pBScH07r50NzcrMFbSXhU9cQqgOh5ToI0IeRJpq+hywnr7+29k
         9f7U9NfpdKvhQ0l6fzChuvwRjzX1TuI+eC8tEhCWYvolLLUulDl+EbMoDdTwtWuQh8hU
         /J/w==
X-Gm-Message-State: AO0yUKX0svO/15YUWzZA8tHjtD+rZucdihsgxOBPaCJ0QOj/wKd2nn0B
	oEsRQ+2h0TVqMiL3xGTH+5Ae0ble/CaCbKtiGWY=
X-Google-Smtp-Source: AK7set/xWVcJOMfkQHMVyXDiy81VQPzKWcMSSS6wnn/vPpsZk8RESi9bQhzNLJ68PkVD0u1TpUCENB3mosHwO6afNtk=
X-Received: by 2002:a50:99d6:0:b0:4fb:f19:883 with SMTP id n22-20020a5099d6000000b004fb0f190883mr3700885edb.1.1678978084578;
 Thu, 16 Mar 2023 07:48:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230315160228.2362-1-cnsztl@gmail.com> <20230315160228.2362-5-cnsztl@gmail.com>
 <CA+E=qVei7T4T0FWhdUFnr5JbCWSgFbGLcmU2OHxx54yvnNR6mw@mail.gmail.com>
 <CAOP2_TiU815F528jVGvDbcg3kSG+ykepU-ZYz7VWMO84GgcwMg@mail.gmail.com>
 <71b16513-49b1-d9b3-b0b9-4c47e68563ba@kwiboo.se> <CAOP2_TgieY2PNBJz9tE_+hxX14wBQ7RtFNfFhYd2_MCSnoZLxg@mail.gmail.com>
In-Reply-To: <CAOP2_TgieY2PNBJz9tE_+hxX14wBQ7RtFNfFhYd2_MCSnoZLxg@mail.gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Thu, 16 Mar 2023 22:47:53 +0800
Message-ID: <CAOP2_Tii7auK7rHrFF1FT76LnC5coBfhZtGaEpk6Nd=az0UQVg@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: fix gmac support for NanoPi R5S
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
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
X-CRM114-CacheID: sfid-20230316_074808_243581_5E15E307 
X-CRM114-Status: GOOD (  17.60  )
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

SGksCgpPbiBUaHUsIE1hciAxNiwgMjAyMyBhdCA0OjQ24oCvUE0gVGlhbmxpbmcgU2hlbiA8Y25z
enRsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBKb25hcywKPgo+IE9uIFRodSwgTWFyIDE2LCAy
MDIzIGF0IDM6MzfigK9QTSBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+IHdyb3RlOgo+
ID4KClsuLi5dCgo+ID4KPiA+IEdlbmVyaWMgZXRoZXJuZXQgcGh5IGRyaXZlciBpcyBub3QgcmVz
ZXR0aW5nIHRoZSBwaHkgaW4gdGhlIHNhbWUgd2F5Cj4gPiB0aGF0IHNuc3AscmVzZXQtZ3BpbyBk
b2VzLCBwbGVhc2Ugc2VlIHRvcCB0d28gY29tbWl0cyBhdCBbMV0uCj4gPgo+ID4gSSBoYXZlIGJl
ZW4gbWVhbmluZyB0byBzZW5kIHRoYXQgb3V0IGFzIGFuIFJGQyBidXQgSSBnb3Qgc3R1Y2sgaW4g
YQo+ID4gdS1ib290IHJhYmJpdCBob2xlLCBhbmQgSSBhbHNvIGRvIG5vdCBrbm93IHdoYXQgdGhl
IGNvcnJlY3Qgd2F5IHRvIGZpeAo+ID4gdGhpcyB3b3VsZCBiZSwgc28gSSBwbGF5ZWQgd2l0aCBi
b3RoIGRldmljZSB0cmVlIGFuZCBjb2RlIGNoYW5nZXMuCj4gPiBXaWxsIHByaW9yaXRpemUgdGhp
cyBhbmQgc2VuZCBvdXQgYSBSRkMgbGF0ZXIgdG9kYXkuCj4gPgo+ID4gWzFdIGh0dHBzOi8vZ2l0
aHViLmNvbS9Ld2lib28vbGludXgtcm9ja2NoaXAvY29tbWl0cy9yazM1NjgtZXRoLXBoeS1yZXNl
dAo+Cj4gVGhhbmtzIGZvciB0aGUgaGludCEgSSB3aWxsIHRlc3QgeW91ciBwYXRjaGVzIHRvbmln
aHQuCgpJJ20gY3VycmVudGx5IHBsYXlpbmcgeW91ciBwYXRjaGVzIGF0Cmh0dHBzOi8vZ2l0aHVi
LmNvbS8xNzE1MTczMzI5L2ltb3V0b3dydC9jb21taXRzL21hc3Rlci1yb2NrY2hpcC1tZGlvCgpJ
IGFwcGxpZWQgY29tbWl0IDg1OTdmY2ZhMGM1Yzc5MmRhYmI0NGEyZGI3YjI4M2M1NmM5OWVjNmEg
dG8gTmFub1BpClI1UywgaXQgd29ya2VkIHBlcmZlY3RseS4KCkhvd2V2ZXIsIHdpdGggY29tbWl0
IGMzMzhlZDI2MGJmZDg3Mjc3YzQxYWEwMjkwZjFmMmFhZDhkNjI5YjEgKyBtb3ZpbmcKcmVzZXQg
cHJvcGVydGllcyBpbnRvIHRoZSBwaHkgbm9kZSwKdGhlIGRyaXZlciBzdGlsbCBmYWlsZWQgdG8g
bG9va3VwIHBoeS4gSSdtIG5vdCBzdXJlIGlmIEkgbWlzc2VkIC8KbWlzdW5kZXJzdG9vZCBhbnl0
aGluZy4KClRoYW5rcywKVGlhbmxpbmcuCgpbLi4uXQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
